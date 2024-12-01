using System;
using System.Linq;
using System.Windows;
using System.Net.Mail;
using System.ServiceModel;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Threading;
using System.Xml.Serialization;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using System.Windows.Media.Imaging;
using log4net.Repository.Hierarchy;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class GameMatch : Page, IMatchManagerCallback {
        private List<Polyline> _allTraces;
        private DispatcherTimer _timer;
        private int _totalTime = 15;
        private double _remainingTime;
        private string _matchCode;
        private bool _isConnected;
        private MatchManagerClient _matchManagerClient;
        private bool _isDrawing = false;
        private List<TripasDeGatoServicio.TracePoint> _currentTracePoints = new List<TripasDeGatoServicio.TracePoint>();
        private Polyline _currentLine;
        private List<Node> nodes;
        private Dictionary<string, string> _nodePairs;
        private Node _startNode;
        private bool _isPlayerTurn = false;

        public GameMatch(string gameCode) {
            InitializeComponent();
            this._matchCode = gameCode;
            InstanceContext context = new InstanceContext(this);
            _matchManagerClient = new MatchManagerClient(context);
            ConnectionManager.Instance.InitializeMatchManager(context);
            InitializeMatch();
            _allTraces = new List<Polyline>();
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;
            StartTimer();
        }

        private async Task CheckCurrentTurn() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                string currentTurn = await Task.Run(() => _matchManagerClient.GetCurrentTurn(_matchCode));
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
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
        }

        private async void InitializeMatch() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                bool connected = _matchManagerClient.RegisterPlayerCallback(_matchCode, UserProfileSingleton.UserName);
                if (!connected) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogConnectionFailed);
                } else {
                    _isConnected = true;
                    UserProfileSingleton.UpdateMatchCode(_matchCode);
                    nodes = await Task.Run(() => _matchManagerClient.GetNodes(_matchCode));
                    _nodePairs = await Task.Run(() => _matchManagerClient.GetNodePairs(_matchCode));
                    if (nodes != null && nodes.Count > 0) {
                        DrawNodes();
                        await CheckCurrentTurn();
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNodesNotFound);
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
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
        }

        private void StartTimer() {
            _remainingTime = _totalTime;
            progressBarTimer.Value = 100;
            _timer = new DispatcherTimer();
            _timer.Interval = TimeSpan.FromMilliseconds(100);
            _timer.Tick += Timer_Tick;
            if (_isPlayerTurn) {
                _timer.Start();
            }
        }

        private void Timer_Tick(object sender, EventArgs e) {
            if (_remainingTime > 0) {
                _remainingTime -= 0.1;
                progressBarTimer.Value = (_remainingTime / _totalTime) * 100;
                if (_remainingTime > _totalTime * 0.5) {
                    progressBarTimer.Foreground = Brushes.Green;
                } else if (_remainingTime > _totalTime * 0.2) {
                    progressBarTimer.Foreground = Brushes.Orange;
                } else {
                    progressBarTimer.Foreground = Brushes.Red;
                }
            } else {
                _timer.Stop();
                drawingCanvas.Children.Remove(_currentLine);
                _matchManagerClient.EndTurnAsync(_matchCode, UserProfileSingleton.UserName);
                progressBarTimer.Foreground = Brushes.Gray;
            }
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            Point mousePosition = e.GetPosition(drawingCanvas);
            _startNode = FindNodeNearPoint(mousePosition);
            if (_startNode == null) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidStartNode);
                return;
            }
            _isDrawing = true;
            _currentTracePoints.Clear();
            _currentTracePoints.Add(new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y });
            _currentLine = new Polyline {
                Stroke = Brushes.Blue,
                StrokeThickness = 2
            };
            drawingCanvas.Children.Add(_currentLine);
            _currentLine.Points.Add(mousePosition);
        }

        public void NotifyYourTurn() {
            if (_timer != null) {
                _timer.Stop();
                _timer.Tick -= Timer_Tick;
            }
            _remainingTime = _totalTime;
            progressBarTimer.Value = 100;
            progressBarTimer.Foreground = Brushes.Green;
            drawingCanvas.IsEnabled = true;
            _isPlayerTurn = true;
            lbMatchStatus.Content = Properties.Resources.lbMatchStatusYourTurn;
            lbMatchStatus.Foreground = Brushes.Green;
            StartTimer();
        }

        public void NotifyNotYourTurn() {
            Application.Current.Dispatcher.Invoke(() => {
                if (_timer != null) {
                    _timer.Stop();
                    _timer.Tick -= Timer_Tick;
                }
                drawingCanvas.IsEnabled = false;
                _isPlayerTurn = false;
                lbMatchStatus.Content = Properties.Resources.lbMatchStatusNotYourTurn;
                lbMatchStatus.Foreground = Brushes.Red;
            });
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (!_isDrawing) return;
            Point mousePosition = e.GetPosition(drawingCanvas);
            var newPoint = new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y };
            DrawingValidation drawingValidation = new DrawingValidation();
            if (drawingValidation.IsPointInForbiddenArea(mousePosition)) {
                HandleInfraction(Properties.Resources.dialogForbiddenAreaWarning);
                return;
            }
            if (IsCollisionDetected(newPoint)) {
                HandleInfraction(Properties.Resources.dialogInfractionCollision);
                try {
                    _matchManagerClient.EndMatchAsync(_matchCode);
                } catch (EndpointNotFoundException endpointNotFoundException) {
                    logger.LogError(endpointNotFoundException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                } catch (TimeoutException timeoutException) {
                    logger.LogError(timeoutException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                } catch (CommunicationException communicationException) {
                    logger.LogError(communicationException);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                } catch (Exception exception) {
                    logger.LogError(exception);
                    DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
                }
                return;
            }
            Node currentNode = FindNodeNearPoint(mousePosition);
            if (currentNode != null && currentNode != _startNode) {
                if (!IsPair(_startNode, currentNode)) {
                    HandleInfraction(Properties.Resources.dialogInfractionInvalidNode);
                    return;
                }
            }
            _currentTracePoints.Add(newPoint);
            _currentLine.Points.Add(mousePosition);
        }

        private bool IsPointNearSegment(TripasDeGatoServicio.TracePoint point, Point start, Point end) {
            double distance = DistanceFromPointToSegment(point, start, end);
            return distance < 5;
        }

        private bool IsCollisionDetected(TripasDeGatoServicio.TracePoint newPoint) {
            foreach (var polyline in _allTraces) {
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
            if (!_isDrawing) return;
            _isDrawing = false;
            Point mousePosition = e.GetPosition(drawingCanvas);
            Node endNode = FindNodeNearPoint(mousePosition);
            if (endNode == null || !IsPair(_startNode, endNode)) {
                drawingCanvas.Children.Remove(_currentLine);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTraceMustConnectNodes);
                return;
            }
            if (_currentTracePoints.Count > 1) {
                _allTraces.Add(_currentLine);
                SendTrace(_currentTracePoints);
                Task.Run(() => _matchManagerClient.EndTurnAsync(_matchCode, UserProfileSingleton.UserName));
                if (AreAllNodesConnected()) {
                    _matchManagerClient.EndMatchAsync(_matchCode);
                }
            } else {
                drawingCanvas.Children.Remove(_currentLine);
            }
        }

        private bool AreAllNodesConnected() {
            foreach (var pair in _nodePairs) {
                bool isConnected = _allTraces.Any(trace =>
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
            return _nodePairs.ContainsKey(start.Id) && _nodePairs[start.Id] == end.Id;
        }

        private Node FindNodeNearPoint(Point point) {
            const double detectionRadius = 10;
            return nodes.FirstOrDefault(node =>
                Math.Sqrt(Math.Pow(node.X - point.X, 2) + Math.Pow(node.Y - point.Y, 2)) <= detectionRadius);
        }

        private void SendTrace(List<TracePoint> points) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (!_isConnected) return;
            var trace = new TripasDeGatoServicio.Trace {
                Player = UserProfileSingleton.UserName,
                TracePoints = points,
                Timestamp = DateTime.Now,
                Color = "Blue"
            };
            try {
                _matchManagerClient.RegisterTrace(_matchCode, trace);
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
        }

        private void HandleInfraction(string message) {
            _isDrawing = false;
            drawingCanvas.Children.Remove(_currentLine);
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
            _allTraces.Add(receivedLine);
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


        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                if (_isConnected) {
                    await _matchManagerClient.LeaveMatchAsync(_matchCode, UserProfileSingleton.UserName);
                    ExitUseSinglenton();
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
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
            ExitUseSinglenton();
        }

        private void ExitUseSinglenton() {
            UserProfileSingleton.ResetMatchCode();
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
                lbMatchStatus.Content = Properties.Resources.lbMatchStatusYouLost;
                lbMatchStatus.Foreground = Brushes.Red;
                drawingCanvas.IsEnabled = false;
                _timer?.Stop();
                //AQUÍ HAY QUE COLOCAR UNA INTERNACIONALIZACIÓN
                DialogManager.ShowSuccessMessageAlert("Has perdido");
                ExitUseSinglenton();
            });
        }

        public void NotifyYouWon() {
            DisableGameControls();
            Application.Current.Dispatcher.Invoke(() => {
                lbMatchStatus.Content = Properties.Resources.lbMatchStatusYouWon;
                lbMatchStatus.Foreground = Brushes.Green;
                drawingCanvas.IsEnabled = false;
                _timer?.Stop();
                //AQUÍ HAY QUE COLOCAR UNA INTERNACIONALIZACIÓN
                DialogManager.ShowSuccessMessageAlert("Has ganado");
                ExitUseSinglenton();
            });
        }


        public void NotifyDraw() {
            DisableGameControls();
            Application.Current.Dispatcher.Invoke(() => {
                lbMatchStatus.Content = Properties.Resources.lbMatchStatusDraw;
                lbMatchStatus.Foreground = Brushes.Orange;
                drawingCanvas.IsEnabled = false;
                _timer?.Stop();
                //AQUÍ HAY QUE COLOCAR UNA INTERNACIONALIZACIÓN
                DialogManager.ShowSuccessMessageAlert("Empate");
                ExitUseSinglenton();
            });
        }

        public void DisableGameControls() {
            Application.Current.Dispatcher.Invoke(() => {
                drawingCanvas.IsEnabled = false;
                _timer?.Stop();
            });
        }

        public void NotifyPlayerLeft() {
            DisableGameControls();
            Dispatcher.Invoke(async () => {
                await Task.Run(() =>
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogPlayerLeftWarning)
                );
                ExitUseSinglenton();
            });
        }
    }
}