using System;
using System.ServiceModel;
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
        /*
        public async void BtnLogin_Click(object sender, RoutedEventArgs e) {
            GenerateGuestProfile();
            string lobbyCode = GuestProfileSingleton.CodeMatch;
            GuestProfile guest = GuestProfileSingleton.PerfilInvitado;
            try {
                if (guest != null && !string.IsNullOrEmpty(lobbyCode)) {
                    bool joined = await lobbyBrowser.JoinLobbyAsync(lobbyCode, guest);
                    if (joined) {
                        LobbyView lobbyView = new LobbyView(lobbyCode);
                        this.NavigationService.Navigate(lobbyView);
                    } else {
                        MessageBox.Show("No se pudo unir al lobby. Puede que esté lleno o que ya no esté disponible.");
                    }
                } else {
                    MessageBox.Show("Error: el perfil del invitado o el código del lobby no son válidos.");
                }
            } catch (Exception ex) {
                MessageBox.Show($"Error al intentar unirse al lobby: {ex.Message}");
            }
        }*/
    }
}
