using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
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
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    /// <summary>
    /// Lógica de interacción para LobbyConfig.xaml
    /// </summary>
    /// 

    public partial class LobbyConfig : Page {

        private LobbyBrowserClient lobbyBrowser;
        public LobbyConfig() {
            InitializeComponent();
            InitializeFormValues();
            lobbyBrowser = new LobbyBrowserClient();
        }

        private void InitializeFormValues() {
            // Rellenar ComboBox de nodos
            cbNodos.ItemsSource = new List<int> { 2, 3, 4 }; // Ejemplo de nodos disponibles
            cbNodos.SelectedIndex = 0; // Selección predeterminada

            // Rellenar ComboBox de tiempos
            cbTiempo.ItemsSource = new List<string> { "2:00 min", "5:00 min", "10:00 min" };
            cbTiempo.SelectedIndex = 0; // Selección predeterminada
        }

        private async void btnCrearLobby_Click(object sender, RoutedEventArgs e) {
            // Validar campos
            if (string.IsNullOrWhiteSpace(tbNombre.Text)) {
                MessageBox.Show("Por favor, ingrese un nombre para la partida.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (cbNodos.SelectedItem == null || cbTiempo.SelectedItem == null) {
                MessageBox.Show("Por favor, seleccione los nodos y el tiempo para la partida.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Recopilar valores del formulario
            string gameName = tbNombre.Text.Trim();
            int nodeCount = (int)cbNodos.SelectedItem;
            TimeSpan duration = TimeSpan.Zero;

            // Convertir tiempo seleccionado
            switch (cbTiempo.SelectedItem.ToString()) {
                case "2:00 min":
                    duration = TimeSpan.FromMinutes(2);
                    break;
                case "5:00 min":
                    duration = TimeSpan.FromMinutes(5);
                    break;
                case "10:00 min":
                    duration = TimeSpan.FromMinutes(10);
                    break;
                default:
                    MessageBox.Show("Tiempo seleccionado no válido.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
            }

            try {
                // Obtener el perfil del singleton
                var owner = new Profile {
                    idProfile = UserProfileSingleton.IdPerfil,
                    userName = UserProfileSingleton.Nombre
                };

                // Llamada al método remoto
                string lobbyCode = await lobbyBrowser.CreateLobbyAsync(gameName, nodeCount, owner, duration);

                if (!string.IsNullOrEmpty(lobbyCode)) {
                    // Navegar a LobbyView con el código generado
                    GoToLobbyView(lobbyCode);
                } else {
                    MessageBox.Show("No se pudo crear el lobby. Inténtelo nuevamente.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            } catch (EndpointNotFoundException ex) {
                MessageBox.Show($"Error de conexión con el servidor: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            } catch (TimeoutException ex) {
                MessageBox.Show($"Tiempo de espera agotado: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error de comunicación: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            } catch (Exception ex) {
                MessageBox.Show($"Ocurrió un error inesperado: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void GoToLobbyView(string lobbyCode) {
            LobbyView lobbyView = new LobbyView(lobbyCode);
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(lobbyView);
            } else {
                MessageBox.Show("Error de navegación. No se pudo cargar la vista del lobby.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

    }
}
