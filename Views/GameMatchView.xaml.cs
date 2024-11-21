using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace TripasDeGatoCliente.Views {
    public partial class GameMatch : Page {
        private Polyline currentLine;
        private List<List<Point>> traceCoordinatesList; // Lista para almacenar las coordenadas
        private List<Polyline> traceGraphicsList;       // Lista para almacenar los gráficos
        private List<Point> currentTraceCoordinates;    // Coordenadas del trazo actual
        private DispatcherTimer timer;
        private int totalTime = 20;
        private double remainingTime;
        //   private readonly IServerConnection server;  

        public GameMatch(/*IServerConnection serverConnection*/) {
            InitializeComponent();
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;

            //     this.server = serverConnection;
            traceCoordinatesList = new List<List<Point>>();
            traceGraphicsList = new List<Polyline>();
            currentTraceCoordinates = new List<Point>();

            // Suscribirse para recibir trazos desde el servidor
            //   this.server.OnTraceReceived += AddTraceFromServer;

            StartTimer();
        }

        private void StartTimer() {
            remainingTime = totalTime;
            timeProgressBar.Value = 100;

            timer = new DispatcherTimer();
            timer.Interval = TimeSpan.FromMilliseconds(100);
            timer.Tick += Timer_Tick;
            timer.Start();
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
            }
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            currentLine = new Polyline {
                Stroke = Brushes.Blue,
                StrokeThickness = 10
            };
            drawingCanvas.Children.Add(currentLine);
            currentTraceCoordinates.Clear();
            Point startPoint = e.GetPosition(drawingCanvas);
            currentTraceCoordinates.Add(startPoint);
            currentLine.Points.Add(startPoint);
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            if (e.LeftButton == MouseButtonState.Pressed && currentLine != null) {
                Point currentPoint = e.GetPosition(drawingCanvas);
                currentTraceCoordinates.Add(currentPoint);
                currentLine.Points.Add(currentPoint);
            }
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            // Guardar el trazo actual en las listas globales
            traceCoordinatesList.Add(new List<Point>(currentTraceCoordinates));
            traceGraphicsList.Add(currentLine);

            // Enviar el trazo al servidor
            SendTraceToServer(currentTraceCoordinates);

            // Verificar intersecciones con trazos anteriores
            if (CheckIntersection(currentTraceCoordinates)) {
                MessageBox.Show("¡Infracción detectada! Perdiste.");
                //          server.SendGameResult(false); 
            }

            currentLine = null;
        }

        private void SendTraceToServer(List<Point> traceCoordinates) {
            // Serializar las coordenadas y enviarlas al servidor
            //       server.SendTrace(traceCoordinates);
        }

        private void AddTraceFromServer(List<Point> traceCoordinates) {
            Polyline receivedLine = new Polyline {
                Stroke = Brushes.Red,
                StrokeThickness = 10
            };

            foreach (var point in traceCoordinates) {
                receivedLine.Points.Add(point);
            }

            // Agregar el trazo recibido a las listas globales
            traceCoordinatesList.Add(traceCoordinates);
            traceGraphicsList.Add(receivedLine);

            // Dibujar el nuevo trazo en el lienzo
            drawingCanvas.Children.Add(receivedLine);
        }

        private bool CheckIntersection(List<Point> newTrace) {
            // Comprobar si algún punto del nuevo trazo intersecta con trazos anteriores
            foreach (var trace in traceCoordinatesList) {
                foreach (var point in newTrace) {
                    if (trace.Any(existingPoint => ArePointsClose(point, existingPoint))) {
                        return true;
                    }
                }
            }
            return false;
        }

        private bool ArePointsClose(Point p1, Point p2, double threshold = 5.0) {
            // Determina si dos puntos están lo suficientemente cerca
            double distance = Math.Sqrt(Math.Pow(p1.X - p2.X, 2) + Math.Pow(p1.Y - p2.Y, 2));
            return distance <= threshold;
        }
    }

    // Interfaz de conexión con el servidor
    /* public interface IServerConnection {
         event Action<List<Point>> OnTraceReceived;
         void SendTrace(List<Point> traceCoordinates);
         void SendGameResult(bool isWinner);
     }*/
}
