using System;
using System.Windows;
using System.Windows.Controls;

namespace TripasDeGatoCliente
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            NavigationFrame.Navigate(new Views.GameMatch());
        }
    }
}
