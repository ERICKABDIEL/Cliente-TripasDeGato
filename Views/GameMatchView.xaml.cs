using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Xml.Serialization;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class GameMatch : Page, IMatchManagerCallback {
        private List<Polyline> allTraces;
        private DispatcherTimer timer;
        private int totalTime = 15;
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
        private bool isPlayerTurn = false;


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
        private async Task CheckCurrentTurn() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                string currentTurn = await Task.Run(() => matchManagerClient.GetCurrentTurn(matchCode));

                if (currentTurn == UserProfileSingleton.UserName) {
                    NotifyYourTurn();
                } else {
                    NotifyNotYourTurn();
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private async void InitializeMatch() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                bool connected = matchManagerClient.RegisterPlayerCallback(matchCode, UserProfileSingleton.UserName);
                if (!connected) {
                    DialogManager.ShowErrorMessageAlert("No se pudo conectar a la partida.");
                } else {
                    isConnected = true;
                    nodes = await Task.Run(() => matchManagerClient.GetNodes(matchCode));
                    nodePairs = await Task.Run(() => matchManagerClient.GetNodePairs(matchCode));
                    if (nodes != null && nodes.Count > 0) {
                        DrawNodes();
                        await CheckCurrentTurn();
                    } else {
                        DialogManager.ShowErrorMessageAlert("No se encontraron nodos para esta partida.");
                    }
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void StartTimer() {
            remainingTime = totalTime;
            timeProgressBar.Value = 100;
            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(100);
            timer.Tick += Timer_Tick;
            if (isPlayerTurn) {
                timer.Start();
            }
        }

        private void Timer_Tick(object sender, EventArgs e) {
            if (remainingTime > 0) {
                remainingTime -= 0.1;
                timeProgressBar.Value = (remainingTime / totalTime) * 100;
                if (remainingTime > totalTime * 0.5) {
                    timeProgressBar.Foreground = Brushes.Green;
                } else if (remainingTime > totalTime * 0.2) {
                    timeProgressBar.Foreground = Brushes.Orange;
                } else {
                    timeProgressBar.Foreground = Brushes.Red;
                }
            } else {
                timer.Stop();
                drawingCanvas.Children.Remove(currentLine);
                matchManagerClient.EndTurnAsync(matchCode, UserProfileSingleton.UserName);
                timeProgressBar.Foreground = Brushes.Gray;
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

        public void NotifyYourTurn() {
            if (timer != null) {
                timer.Stop();
                timer.Tick -= Timer_Tick;
            }

            remainingTime = totalTime;
            timeProgressBar.Value = 100;
            timeProgressBar.Foreground = Brushes.Green;

            drawingCanvas.IsEnabled = true;
            isPlayerTurn = true;
            labelMatchStatus.Content = "¡Es tu turno!";
            labelMatchStatus.Foreground = Brushes.Green;

            StartTimer();
        }

        public void NotifyNotYourTurn() {
            Application.Current.Dispatcher.Invoke(() => {
                if (timer != null) {
                    timer.Stop();
                    timer.Tick -= Timer_Tick;
                }

                drawingCanvas.IsEnabled = false;
                isPlayerTurn = false;
                labelMatchStatus.Content = "Aún no es tu turno";
                labelMatchStatus.Foreground = Brushes.Red;
            });
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());

            if (!isDrawing) return;

            Point mousePosition = e.GetPosition(drawingCanvas);
            var newPoint = new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y };

            if (IsCollisionDetected(newPoint)) {
                HandleInfraction("Parece que chocaste con algo, ¡perdiste!");
                try {
                    matchManagerClient.EndMatchAsync(matchCode);
                } catch (EndpointNotFoundException endpointNotFoundException) {
                    logger.LogError(endpointNotFoundException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                } catch (TimeoutException timeoutException) {
                    logger.LogError(timeoutException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                } catch (CommunicationException communicationException) {
                    logger.LogError(communicationException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                }
                return;
            }

            Node currentNode = FindNodeNearPoint(mousePosition);
            if (currentNode != null && currentNode != startNode) {
                if (!IsPair(startNode, currentNode)) {
                    HandleInfraction("Chocaste un nodo que no te pertenece, ¡Perdiste!");
                    return;
                }
            }

            currentTracePoints.Add(newPoint);
            currentLine.Points.Add(mousePosition);
        }

        private bool IsPointNearSegment(TripasDeGatoServicio.TracePoint point, Point start, Point end) {
            double distance = DistanceFromPointToSegment(point, start, end);
            return distance < 5;
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
                Task.Run(() => matchManagerClient.EndTurnAsync(matchCode, UserProfileSingleton.UserName));

                if (AreAllNodesConnected()) {
                    matchManagerClient.EndMatchAsync(matchCode);
                }
            } else {
                drawingCanvas.Children.Remove(currentLine);
            }
        }

        private bool AreAllNodesConnected() {
            foreach (var pair in nodePairs) {
                bool isConnected = allTraces.Any(trace =>
                    trace.Points.Any(point => FindNodeNearPoint(point) is Node start && start.Id == pair.Key) &&
                    trace.Points.Any(point => FindNodeNearPoint(point) is Node end && end.Id == pair.Value)
                );
                if (!isConnected) {
                    return false;
                }
            }
            return true;
        }

        private bool IsPair(Node start, Node end) {
            return nodePairs.ContainsKey(start.Id) && nodePairs[start.Id] == end.Id;
        }

        private Node FindNodeNearPoint(Point point) {
            const double detectionRadius = 10;
            return nodes.FirstOrDefault(node =>
                Math.Sqrt(Math.Pow(node.X - point.X, 2) + Math.Pow(node.Y - point.Y, 2)) <= detectionRadius);
        }

        private void SendTrace(List<TracePoint> points) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (!isConnected) return;
            var trace = new TripasDeGatoServicio.Trace {
                Player = UserProfileSingleton.UserName,
                TracePoints = points,
                Timestamp = DateTime.Now,
                Color = "Blue"
            };
            try {
                matchManagerClient.RegisterTrace(matchCode, trace);
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void HandleInfraction(string message) {
            isDrawing = false;
            drawingCanvas.Children.Remove(currentLine);
            DialogManager.ShowErrorMessageAlert(message);
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
            Application.Current.Dispatcher.Invoke(() => drawingCanvas.Children.Clear());
            foreach (var node in nodes) {
                var ellipse = new Ellipse {
                    Width = 10,
                    Height = 10,
                    Fill = new SolidColorBrush((Color)ColorConverter.ConvertFromString(node.Color)),
                    Stroke = Brushes.Black,
                    StrokeThickness = 1
                };
                Canvas.SetLeft(ellipse, node.X - ellipse.Width / 2);
                Canvas.SetTop(ellipse, node.Y - ellipse.Height / 2);
                Application.Current.Dispatcher.Invoke(() => drawingCanvas.Children.Add(ellipse));
            }
        }


        //Qeuda pendiente el metodo para desconectarse de la partida
        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                if (isConnected) {
                   // await matchManagerClient.LeaveMatchAsync(matchCode, UserProfileSingleton.UserName);
                    ExitUseSinglenton();
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ExitUseSinglenton();
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ExitUseSinglenton();
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ExitUseSinglenton();
            }
        }

        private void ExitUseSinglenton() {
            if (UserProfileSingleton.IdProfile < 100000) {
                GoToMenuView();
            } else {
                GoToLoginView();
            }
        }

        private void GoToMenuView() {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void GoToLoginView() {
            LoginView loginView = new LoginView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(loginView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        public void NotifyYouLost() {
            DisableGameControls();
            Application.Current.Dispatcher.Invoke(() => {
                labelMatchStatus.Content = "You lost!";
                labelMatchStatus.Foreground = Brushes.Red;
                drawingCanvas.IsEnabled = false;
                timer?.Stop();
            });
        }

        public void NotifyYouWon() {
            DisableGameControls();
            Application.Current.Dispatcher.Invoke(() => {
                labelMatchStatus.Content = "You won!";
                labelMatchStatus.Foreground = Brushes.Green;
                drawingCanvas.IsEnabled = false;
                timer?.Stop();
            });
        }

        public void NotifyDraw() {
            DisableGameControls();
            Application.Current.Dispatcher.Invoke(() => {
                labelMatchStatus.Content = "Draw!";
                labelMatchStatus.Foreground = Brushes.Orange;
                drawingCanvas.IsEnabled = false;
                timer?.Stop();
            });
        }

        public void DisableGameControls() {
            Application.Current.Dispatcher.Invoke(() => {
                drawingCanvas.IsEnabled = false;
                timer?.Stop();
            });
        }

        public void NotifyPlayerLeft() {
            DisableGameControls();
            Dispatcher.Invoke(async () => {
                await Task.Run(() =>
            DialogManager.ShowWarningMessageAlert("Un jugador abandonó")
                );
                ExitUseSinglenton();
            });
        }
    }
}