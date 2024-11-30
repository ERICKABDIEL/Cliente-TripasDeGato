using System;
using System.Windows;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using log4net.Repository.Hierarchy;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class CodeGameMatch : Page {
        private LobbyBrowserClient _lobbyBrowser;

        public CodeGameMatch() {
            InitializeComponent();
            _lobbyBrowser = new LobbyBrowserClient();
        }

        public void GenerateGuestProfile() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                string codeMatch = txtCodeLobby.Text;
                UserProfileSingleton.Instance.CreateGuestInstance();
            } catch (EndpointNotFoundException endpointException) {
                logger.LogError(endpointException);
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

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        public async void BtnLogin_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            GenerateGuestProfile();
            try {
                if (!string.IsNullOrEmpty(txtCodeLobby.Text)) {
                    string lobbyCode = txtCodeLobby.Text;
                    var guestProfile = new Profile {
                        IdProfile = UserProfileSingleton.IdProfile,
                        Username = UserProfileSingleton.UserName,
                        PicturePath = UserProfileSingleton.PicPath,
                        Score = UserProfileSingleton.Score
                    };
                    bool joined = await _lobbyBrowser.JoinLobbyAsync(lobbyCode, guestProfile);
                    if (joined) {
                        LobbyView lobbyView = new LobbyView(lobbyCode);
                        this.NavigationService.Navigate(lobbyView);
                    } else {
                        DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyJoinError);
                    }
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidGuestProfileOrLobbyCode);
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
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
            }
        }
    }
}