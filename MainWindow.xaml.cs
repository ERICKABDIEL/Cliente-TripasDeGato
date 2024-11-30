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
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                if (UserProfileSingleton.Instance != null && UserProfileSingleton.IdProfile != 0) {
                    SignOut();
                    if (UserProfileSingleton.LobbyCode != "000000") {
                        await lobbyManager.LeaveLobbyAsync(UserProfileSingleton.LobbyCode, UserProfileSingleton.IdProfile);
                        UserProfileSingleton.ResetLobbyCode();
                        if (UserProfileSingleton.ChatCode != "000000") {
                            await chatManager.LeaveChatAsync(UserProfileSingleton.UserName, UserProfileSingleton.ChatCode);
                            UserProfileSingleton.ResetChatCode();
                            if (UserProfileSingleton.MatchCode != "000000") {
                            await matchManager.LeaveMatchAsync(UserProfileSingleton.MatchCode, UserProfileSingleton.UserName);
                                UserProfileSingleton.ResetMatchCode();
                            }
                        }
                    
                    }
                } else {
                    OnClosing();
                }
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
