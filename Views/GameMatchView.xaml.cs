using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class GameMatch : Page, IMatchManagerCallback {
        private List<Polyline> allTraces;
        private DispatcherTimer timer;
        private int totalTime = 30; // Tiempo total para el temporizador
        private double remainingTime;
        private string matchCode;
        private bool isConnected;
        private MatchManagerClient matchManagerClient;
        private bool isDrawing = false;
        private List<TripasDeGatoServicio.TracePoint> currentTracePoints = new List<TripasDeGatoServicio.TracePoint>();
        private Polyline currentLine;
        private List<Node> nodes;
        private Dictionary<string, string> nodePairs;
        private Node startNode;

        public GameMatch(string gameCode) {
            InitializeComponent();
            this.matchCode = gameCode;
            matchManagerClient = new MatchManagerClient(new InstanceContext(this));
            InitializeMatch();
            allTraces = new List<Polyline>();
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;
            StartTimer();
        }

        private async void InitializeMatch() {
            try {
                bool connected = matchManagerClient.RegisterPlayerCallback(matchCode, UserProfileSingleton.UserName);
                if (!connected) {
                    DialogManager.ShowErrorMessageAlert("No se pudo conectar al lobby.");
                } else {
                    isConnected = true;
                    nodes = await Task.Run(() => matchManagerClient.GetNodes(matchCode));
                    nodePairs = await Task.Run(() => matchManagerClient.GetNodePairs(matchCode));
                    if (nodes != null && nodes.Count > 0) {
                        DrawNodes();
                    } else {
                        DialogManager.ShowErrorMessageAlert("No se encontraron nodos para esta partida.");
                    }
                }
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al inicializar la partida: {ex.Message}");
            }
        }

        private void StartTimer() {
            remainingTime = totalTime; // Inicializa el tiempo restante con el valor total
            timeProgressBar.Value = 100; // Comienza con la barra de progreso llena
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(100); // Actualiza cada 100ms
            timer.Tick += Timer_Tick;
            timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e) {
            if (remainingTime > 0) {
                remainingTime -= 0.1; // Reduce el tiempo restante en cada tic
                timeProgressBar.Value = (remainingTime / totalTime) * 100; // Actualiza la barra de progreso
                if (remainingTime > totalTime * 0.5) {
                    timeProgressBar.Foreground = Brushes.Green; // Color verde al inicio
                } else if (remainingTime > totalTime * 0.2) {
                    timeProgressBar.Foreground = Brushes.Orange; // Color naranja cuando queda menos del 50%
                } else {
                    timeProgressBar.Foreground = Brushes.Red; // Color rojo cuando queda menos del 20%
                }
            } else {
                timer.Stop(); // Detiene el temporizador cuando el tiempo llega a 0
                timeProgressBar.Foreground = Brushes.Gray; // Cambia el color a gris cuando el tiempo se acaba

            }
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            Point mousePosition = e.GetPosition(drawingCanvas);
            startNode = FindNodeNearPoint(mousePosition);
            if (startNode == null) {
                DialogManager.ShowErrorMessageAlert("Debes iniciar el trazo desde un nodo válido.");
                return;
            }
            isDrawing = true;
            currentTracePoints.Clear();
            currentTracePoints.Add(new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y });
            currentLine = new Polyline {
                Stroke = Brushes.Blue,
                StrokeThickness = 2
            };
            drawingCanvas.Children.Add(currentLine);
            currentLine.Points.Add(mousePosition);
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            if (!isDrawing) return;
            Point mousePosition = e.GetPosition(drawingCanvas);
            var newPoint = new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y };
            if (IsCollisionDetected(newPoint)) {
                HandleInfraction("Parece que chocaste con algo, ¡perdiste!");
                return;
            }
            currentTracePoints.Add(newPoint);
            currentLine.Points.Add(mousePosition);
        }

        private bool IsPointNearSegment(TripasDeGatoServicio.TracePoint point, Point start, Point end) {
            double distance = DistanceFromPointToSegment(point, start, end);
            return distance < 5; // Ajustar el umbral según sea necesario
        }

        private bool IsCollisionDetected(TripasDeGatoServicio.TracePoint newPoint) {
            foreach (var polyline in allTraces) {
                for (int i = 1; i < polyline.Points.Count; i++) {
                    Point start = polyline.Points[i - 1];
                    Point end = polyline.Points[i];
                    if (IsPointNearSegment(newPoint, start, end)) {
                        return true;
                    }
                }
            }
            return false;
        }

        private double DistanceFromPointToSegment(TripasDeGatoServicio.TracePoint point, Point start, Point end) {
            double px = point.X;
            double py = point.Y;
            double sx = start.X;
            double sy = start.Y;
            double ex = end.X;
            double ey = end.Y;
            double dx = ex - sx;
            double dy = ey - sy;
            double lengthSquared = dx * dx + dy * dy;
            if (lengthSquared == 0) return Math.Sqrt((px - sx) * (px - sx) + (py - sy) * (py - sy));
            double t = ((px - sx) * dx + (py - sy) * dy) / lengthSquared;
            t = Math.Max(0, Math.Min(1, t));
            double projX = sx + t * dx;
            double projY = sy + t * dy;
            return Math.Sqrt((px - projX) * (px - projX) + (py - projY) * (py - projY));
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            if (!isDrawing) return;
            isDrawing = false;
            Point mousePosition = e.GetPosition(drawingCanvas);
            Node endNode = FindNodeNearPoint(mousePosition);
            if (endNode == null || !IsPair(startNode, endNode)) {
                drawingCanvas.Children.Remove(currentLine);
                DialogManager.ShowErrorMessageAlert("El trazo debe conectar dos nodos correspondientes.");
                return;
            }
            if (currentTracePoints.Count > 1) {
                allTraces.Add(currentLine);
                SendTrace(currentTracePoints);
            } else {
                drawingCanvas.Children.Remove(currentLine);
            }
        }

        private bool IsPair(Node start, Node end) {
            return nodePairs.ContainsKey(start.Id) && nodePairs[start.Id] == end.Id;
        }

        private Node FindNodeNearPoint(Point point) {
            const double detectionRadius = 15;
            return nodes.FirstOrDefault(node =>
                Math.Sqrt(Math.Pow(node.X - point.X, 2) + Math.Pow(node.Y - point.Y, 2)) <= detectionRadius);
        }

        private void SendTrace(List<TracePoint> points) {
            if (!isConnected) return;
            var trace = new TripasDeGatoServicio.Trace {
                Player = UserProfileSingleton.UserName,
                TracePoints = points,
                Timestamp = DateTime.Now,
                Color = "Blue"
            };
            try {
                matchManagerClient.RegisterTrace(matchCode, trace);
            } catch (CommunicationException) {
                DialogManager.ShowErrorMessageAlert("Error de comunicación con el servidor al enviar el trazo.");
            } catch (TimeoutException) {
                DialogManager.ShowErrorMessageAlert("El servidor tardó demasiado en responder.");
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al enviar el trazo: {ex.Message}");
            }
        }

        private void HandleInfraction(string message) {
            isDrawing = false;
            drawingCanvas.Children.Remove(currentLine);
            DialogManager.ShowErrorMessageAlert(message);
            if (isConnected) {
                //NotifyInfraction();
            }
        }

        /*
        private void NotifyInfraction() {
            try {
                MatchManagerClient.NotifyInfraction(matchCode, UserProfileSingleton.UserName);
            } catch (CommunicationException) {
                DialogManager.ShowErrorMessageAlert("Error de comunicación al notificar la infracción.");
            } catch (TimeoutException) {
                DialogManager.ShowErrorMessageAlert("El servidor tardó demasiado en responder a la infracción.");
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al notificar la infracción: {ex.Message}");
            }
        }*/

        public void MatchEnded(string matchCode) {
            throw new NotImplementedException();
        }

        public void TraceReceived(Trace trace) {
            var receivedLine = new Polyline {
                Stroke = Brushes.Red,
                StrokeThickness = 2
            };
            foreach (var point in trace.TracePoints) {
                receivedLine.Points.Add(new Point(point.X, point.Y));
            }
            Application.Current.Dispatcher.Invoke(() => {
                drawingCanvas.Children.Add(receivedLine);
            });
            allTraces.Add(receivedLine);
        }

        private void DrawNodes() {
            if (nodes == null) return;
            // Limpia el lienzo antes de dibujar nuevos nodos
            Application.Current.Dispatcher.Invoke(() => drawingCanvas.Children.Clear());
            foreach (var node in nodes) {
                // Representa cada nodo como un círculo en el lienzo
                var ellipse = new Ellipse {
                    Width = 10,
                    Height = 10,
                    Fill = new SolidColorBrush((Color)ColorConverter.ConvertFromString(node.Color)),
                    Stroke = Brushes.Black,
                    StrokeThickness = 1
                };
                // Ajusta la posición del nodo en el lienzo
                Canvas.SetLeft(ellipse, node.X - ellipse.Width / 2);
                Canvas.SetTop(ellipse, node.Y - ellipse.Height / 2);
                // Agrega el nodo al lienzo de forma segura
                Application.Current.Dispatcher.Invoke(() => drawingCanvas.Children.Add(ellipse));
            }
        }

        public void TurnChanged(string currentPlayer) {
            Dispatcher.Invoke(() => {
                MessageBox.Show($"Es el turno de: {currentPlayer}", "Cambio de turno");
            });
        }
    }
}