using System;
using log4net;
using System.Windows;
using System.ServiceModel;
using TripasDeGatoCliente.Logic;
using System.ServiceModel.Channels;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente {
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {
        private LobbyManagerClient _lobbyManager;
        private ChatManagerClient _chatManager;
        private MatchManagerClient _matchManager;

        public MainWindow() {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            NavigationFrame.Navigate(new Views.LoginView());
            this.Closing += MainWindowClosing;
            _lobbyManager = new LobbyManagerClient(new InstanceContext(this));
            _chatManager = new ChatManagerClient(new InstanceContext(this));
            _matchManager = new MatchManagerClient(new InstanceContext(this));
        }

        private async void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e) {
            try {
                await ConnectionManager.Instance.DisconnectAllAsync();
            } catch (Exception ex) {
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
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
        }

        private void OnClosing() {
        }
    }
}