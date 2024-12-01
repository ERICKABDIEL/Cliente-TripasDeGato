using System;
using log4net;
using System.Windows;
using System.ServiceModel;
using TripasDeGatoCliente.Logic;
using System.ServiceModel.Channels;
using TripasDeGatoCliente.TripasDeGatoServicio;
using log4net.Repository.Hierarchy;

namespace TripasDeGatoCliente {
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window {

        public MainWindow() {
            InitializeComponent();
            this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            NavigationFrame.Navigate(new Views.LoginView());
            this.Closing += MainWindowClosing;
        }

        private void HandleException(Exception exception, string methodName) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (exception is EndpointNotFoundException) {
                logger.LogError(methodName, exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } else if (exception is TimeoutException) {
                logger.LogError(methodName, exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } else if (exception is CommunicationException) {
                logger.LogError(methodName, exception);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            } else {
                logger.LogError(methodName, exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));

            }
        }

        private void MainWindowClosing(object sender, System.ComponentModel.CancelEventArgs e) {
            try {
                ConnectionManager.Instance.DisconnectAll();
                SignOut();
            } catch (Exception exception) {
                HandleException(exception, nameof(MainWindowClosing));
            }
        }

        private void SignOut() {
            int playerId = UserProfileSingleton.IdProfile;
            SetPlayerOfflineStatus(playerId);
            UserProfileSingleton.ResetInstance();
        }

        private void SetPlayerOfflineStatus(int playerId) {
            try {
                IStatusManager statusManager = new StatusManagerClient();
                statusManager.SetPlayerStatus(playerId, GameEnumsPlayerStatus.Offline);
            } catch (Exception exception) {
                HandleException(exception, nameof(SetPlayerOfflineStatus));
            }
        }
    }
}