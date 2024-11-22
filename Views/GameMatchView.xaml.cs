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
        //NUEVO Y NECESARIO
        private MatchManagerClient matchManagerClient;
        private bool isDrawing = false; // Controla si el jugador está dibujando
        private List<TripasDeGatoServicio.TracePoint> currentTracePoints = new List<TripasDeGatoServicio.TracePoint>();
        private Polyline currentLine;

        public GameMatch(string gameCode) {
            InitializeComponent();
            this.matchCode = gameCode;
            matchManagerClient = new MatchManagerClient(new InstanceContext(this));
            InitializeMatch();

            allTraces = new List<Polyline>();

            // Asignar eventos para manejar el dibujo
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;
        }

        private async void InitializeMatch() {

            bool connected = matchManagerClient.RegisterPlayerCallback(matchCode, UserProfileSingleton.UserName);

            if (!connected) {
                DialogManager.ShowErrorMessageAlert("No se pudo conectar al lobby.");
            } else {
                isConnected = true;
            }

        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            isDrawing = true;

            // Inicia una nueva lista de puntos
            currentTracePoints.Clear();

            // Captura la posición inicial del mouse
            Point mousePosition = e.GetPosition(drawingCanvas);

            // Agrega el punto inicial
            currentTracePoints.Add(new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y });

            // Inicia un nuevo Polyline para mostrar el trazo
            currentLine = new Polyline {
                Stroke = Brushes.Blue, // Ejemplo de color
                StrokeThickness = 5
            };
            drawingCanvas.Children.Add(currentLine);

            // Dibuja el primer punto
            currentLine.Points.Add(mousePosition);
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            if (!isDrawing) return;

            // Captura la posición del mouse en movimiento
            Point mousePosition = e.GetPosition(drawingCanvas);

            // Agrega el punto actual a la lista
            currentTracePoints.Add(new TripasDeGatoServicio.TracePoint { X = mousePosition.X, Y = mousePosition.Y });

            // Actualiza el trazo visual
            currentLine.Points.Add(mousePosition);
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            isDrawing = false;

            // Enviar el trazo al servidor
            sendTrace(currentTracePoints);
        }

        private void sendTrace(List<TracePoint> points) {
            if (!isConnected) return;

            // Crear el objeto Trace
            var trace = new TripasDeGatoServicio.Trace {
                Player = UserProfileSingleton.UserName,
                TracePoints = points,
                Timestamp = DateTime.Now,
                Color = "Red" // Define el color del trazo (puedes personalizarlo)
            };

            try {
                // Enviar el trazo al servidor
                matchManagerClient.RegisterTrace(matchCode, trace);
            } catch (Exception ex) {
                // Manejar errores al enviar el trazo
                DialogManager.ShowErrorMessageAlert($"Error al enviar el trazo: {ex.Message}");
            }
        }

        public void MatchEnded(string matchCode) {
            throw new NotImplementedException();
        }

        public void TraceReceived(Trace trace) {
            // Crear un Polyline para representar el trazo
            var receivedLine = new Polyline {
                Stroke = new SolidColorBrush((Color)ColorConverter.ConvertFromString(trace.Color)),
                StrokeThickness = 2 // Puedes ajustar el grosor según sea necesario
            };

            // Convertir los puntos del trazo a puntos para el Polyline
            foreach (var point in trace.TracePoints) {
                receivedLine.Points.Add(new Point(point.X, point.Y));
            }

            // Agregar la línea al lienzo
            Application.Current.Dispatcher.Invoke(() => {
                drawingCanvas.Children.Add(receivedLine);
            });

            // Guardar la línea en la lista local de trazos (si lo necesitas)
            allTraces.Add(receivedLine);
        }
    }
}