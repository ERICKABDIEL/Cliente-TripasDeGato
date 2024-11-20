using System;
using System.ServiceModel;
using System.ServiceModel.Security;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class CodeGameMatch : Page {
        private LobbyBrowserClient lobbyBrowser;
        public CodeGameMatch() {
            InitializeComponent();
            lobbyBrowser = new LobbyBrowserClient();
        }


        public void GenerateProfile() {
            TripasDeGatoServicio.Profile profile = new Profile();
            profile.userName = string.Empty;
            profile.picturePath = string.Empty;
            profile.status = 0;
        }
        public void GenerateGuestProfile() {
            LoggerManager logger = new LoggerManager(this.GetType());

            try {
                string codeMatch = txtCodeLobby.Text;
                GuestProfileSingleton.Instance.CreateInstance(codeMatch);
            } catch (EndpointNotFoundException endpointException) {
                logger.LogError(endpointException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        private void btnPlay_Click(object sender, RoutedEventArgs e) {

        }
      
    }
}
