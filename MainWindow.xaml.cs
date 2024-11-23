using System;
using System.ServiceModel;
using System.Windows;
using log4net;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente {
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {
        private LobbyManagerClient lobbyManager;
        private ChatManagerClient chatManager;

        public MainWindow() {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            NavigationFrame.Navigate(new Views.LoginView());
            this.Closing += MainWindowClosing;

            // Asegurarse de que los clientes están inicializados
            lobbyManager = new LobbyManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
        }

        private async void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                // Verifica si el jugador está en sesión o si hay un singleton activo
                if (UserProfileSingleton.Instance != null && UserProfileSingleton.IdProfile != null) {

                    SignOut();
                } else {
                    // Si no hay un usuario loggeado, simplemente cerrar la ventana
                    OnClosing();
                }
            } catch (Exception ex) {
                // Manejo de excepciones generales al intentar cerrar la sesión
                logger.LogError(ex);
                MessageBox.Show("Error al cerrar la sesión.");
            }
        }

        private void SignOut() {
            int playerId = UserProfileSingleton.IdProfile;

            // Cambiar el estado del jugador a offline
            SetPlayerOfflineStatus(playerId);

            // Restablecer el singleton de perfil
            UserProfileSingleton.Instance.ResetInstance();
        }

        private void SetPlayerOfflineStatus(int playerId) {
            LoggerManager logger = new LoggerManager(this.GetType());

            try {
                // Solo si el cliente está disponible, llamar al servicio de estado
                IStatusManager statusManager = new StatusManagerClient();
                statusManager.SetPlayerStatus(playerId, GameEnumsPlayerStatus.Offline);
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

        private void OnClosing() {
            // Aquí iría cualquier otro código que necesites ejecutar al cerrar la ventana.
        }
    }
}
