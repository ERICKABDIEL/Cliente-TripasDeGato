using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace TripasDeGatoCliente.Views {
    /// <summary>
    /// Lógica de interacción para GameMatch.xaml
    /// </summary>
    public partial class GameMatch : Page {
        private Polyline currentLine;
        private DispatcherTimer timer;
        private int totalTime = 20;
        private double remainingTime;

        public GameMatch() {
            InitializeComponent();
            drawingCanvas.MouseDown += Canvas_MouseDown;
            drawingCanvas.MouseMove += Canvas_MouseMove;
            drawingCanvas.MouseUp += Canvas_MouseUp;

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
                StrokeThickness = 5     
            };
            drawingCanvas.Children.Add(currentLine); 
            currentLine.Points.Add(e.GetPosition(drawingCanvas)); 
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e) {
            if (e.LeftButton == MouseButtonState.Pressed && currentLine != null) {
                currentLine.Points.Add(e.GetPosition(drawingCanvas));
            }
        }

        private void Canvas_MouseUp(object sender, MouseButtonEventArgs e) {
            currentLine = null;
        }
    }
}
