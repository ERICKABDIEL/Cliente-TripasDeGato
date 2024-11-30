using System;
using System.ServiceModel;
using System.ServiceModel.Channels;
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
        private MatchManagerClient matchManager;

        public MainWindow() {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            NavigationFrame.Navigate(new Views.LoginView());
            this.Closing += MainWindowClosing;

            lobbyManager = new LobbyManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
            matchManager = new MatchManagerClient(new InstanceContext(this));
        }

        private async void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e) {
            try {
                // Llamar a la lógica centralizada para cerrar todas las conexiones
                await ConnectionManager.Instance.DisconnectAllAsync();
            } catch (Exception ex) {
                // Manejo de errores genéricos
                LoggerManager logger = new LoggerManager(this.GetType());
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Error cerrando conexiones: " + ex.Message);
            }
        }


        private void SignOut() {
            int playerId = UserProfileSingleton.IdProfile;
            SetPlayerOfflineStatus(playerId);
            UserProfileSingleton.Instance.ResetInstance();
        }

        private void SetPlayerOfflineStatus(int playerId) {
            LoggerManager logger = new LoggerManager(this.GetType());

            try {
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
        }
    }
}