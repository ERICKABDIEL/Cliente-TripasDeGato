using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class GameMatch : Page, IMatchManagerCallback {
        private List<Polyline> allTraces;
        private DispatcherTimer timer;
        private int totalTime = 20;
        private double remainingTime;
        private string matchCode;
        private bool isConnected;
        private MatchManagerClient matchManagerClient;
        private bool isDrawing = false;
        private List<TripasDeGatoServicio.TracePoint> currentTracePoints = new List<TripasDeGatoServicio.TracePoint>();
        private Polyline currentLine;
        private List<Node> nodes;
        private Dictionary<string, string> nodePairs;

        public GameMatch(string gameCode) {
            InitializeComponent();
            this.matchCode = gameCode;
            matchManagerClient = new MatchManagerClient(new InstanceContext(this));
            InitializeMatch();

            allTraces = new List<Polyline>();

            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;
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

                    DrawNodes();
                }
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al inicializar la partida: {ex.Message}");
            }
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            isDrawing = true;
            currentTracePoints.Clear();

            Point mousePosition = e.GetPosition(drawingCanvas);
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

            // Verificar si el punto está dentro del área permitida (según la geometría del clip)
            if (!allowedAreaGeometry(mousePosition)) {
                isDrawing = false; // Detener dibujo
                drawingCanvas.Children.Remove(currentLine); // Remover línea actual
                DialogManager.ShowErrorMessageAlert("El trazo está fuera del área permitida, intenta de nuevo.");
                return;
            }

            // Crear un nuevo punto de trazo
            var newPoint = new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y };

            // Validar colisiones
            if (IsCollisionDetected(newPoint)) {
                isDrawing = false; // Detener dibujo
                drawingCanvas.Children.Remove(currentLine); // Remover línea actual
                DialogManager.ShowErrorMessageAlert("Parece que chocaste con algo, ¡perdiste!");
                return;
            }

            // Si pasa las validaciones, agregar al trazo actual
            currentTracePoints.Add(newPoint);
            currentLine.Points.Add(mousePosition); // Actualizar línea
        }

        private bool allowedAreaGeometry(Point point) {
            // Obtener la geometría del área permitida (clip del Canvas)
            var geometry = drawingCanvas.Clip;
            if (geometry != null) {
                return geometry.FillContains(point);
            }
            return false; // Si no hay un clip definido, no se permite el trazo.
        }


        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            if (!isDrawing) return;

            isDrawing = false;

            if (currentTracePoints.Count > 1) {
                allTraces.Add(currentLine);
                SendTrace(currentTracePoints);
            } else {
                drawingCanvas.Children.Remove(currentLine);
            }
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

        private bool IsPointNearSegment(TripasDeGatoServicio.TracePoint point, Point start, Point end) {
            double distance = DistanceFromPointToSegment(point, start, end);
            return distance < 5; // Ajustar el umbral según sea necesario
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
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al enviar el trazo: {ex.Message}");
            }
        }

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

            foreach (var node in nodes) {
                var ellipse = new Ellipse {
                    Width = 10,
                    Height = 10,
                    Fill = new SolidColorBrush((Color)ColorConverter.ConvertFromString(node.Color)),
                    Stroke = Brushes.Black,
                    StrokeThickness = 1
                };

                Canvas.SetLeft(ellipse, node.X);
                Canvas.SetTop(ellipse, node.Y);

                Application.Current.Dispatcher.Invoke(() => drawingCanvas.Children.Add(ellipse));
            }
        }
    }
}
