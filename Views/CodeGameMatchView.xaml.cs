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

        public void GenerateGuestProfile() {
            try {
                string codeMatch = txtCodeLobby.Text;
                UserProfileSingleton.Instance.CreateGuestInstance();
            } catch (Exception exception) {
                HandleException(exception, nameof(GenerateGuestProfile));
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
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnLogin_Click));
            }
        }
    }
}