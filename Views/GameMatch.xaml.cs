using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace TripasDeGatoCliente.Views {
    /// <summary>
    /// Lógica de interacción para GameMatch.xaml
    /// </summary>
    public partial class GameMatch : Page {
        private Polyline currentLine;

        public GameMatch() {
            InitializeComponent();
            // Suscribimos los eventos al Canvas
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;
        }

        private void Canvas_MouseDown(object sender, MouseButtonEventArgs e) {
            // Inicia un nuevo trazo
            currentLine = new Polyline {
                Stroke = Brushes.Blue, // Color de la línea
                StrokeThickness = 2     // Grosor de la línea
            };
            drawingCanvas.Children.Add(currentLine); // Agrega la línea al Canvas
            currentLine.Points.Add(e.GetPosition(drawingCanvas)); // Primer punto
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            // Solo agrega puntos si el botón izquierdo está presionado
            if (e.LeftButton == MouseButtonState.Pressed && currentLine != null) {
                // Agrega el punto actual a la línea
                currentLine.Points.Add(e.GetPosition(drawingCanvas));
            }
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            // Finaliza el trazo
            currentLine = null;
        }
    }
}

