using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class SelectLobbyView : Page {
        private LobbyBrowserClient lobbyBrowser;
        private LobbyManagerClient lobbyManager;


        public SelectLobbyView() {
            InitializeComponent();
            //ESTO HACÍA ANTES, NO FUNCIONA
            //InstanceContext context = new InstanceContext(this);
            //lobbyManager = new LobbyManagerClient(context);
            lobbyBrowser = new LobbyBrowserClient();

            LoadLobbiesAsync();
        }

        private Task LoadLobbiesAsync() {
            try {

                var lobbies = lobbyBrowser.GetAvailableLobbies();
                LobbyDataGrid.ItemsSource = lobbies;
            } catch (Exception ex) {
                MessageBox.Show($"Error al cargar los lobbies: {ex.Message}");
            }

            return Task.CompletedTask;
        }

        private async void BtnJoinGame_Click(object sender, RoutedEventArgs e) {

            if (LobbyDataGrid.SelectedItem is Lobby selectedLobby) {
                string lobbyCode = selectedLobby.Code;
                Profile guest = new Profile {
                    idProfile = UserProfileSingleton.IdPerfil,
                    userName = UserProfileSingleton.Nombre
                };

                try {
                    //Unirse como guest J2
                    bool joined = await lobbyBrowser.JoinLobbyAsync(lobbyCode, guest);

                    if (joined) {
                        LobbyView lobbyView = new LobbyView(lobbyCode);
                        this.NavigationService.Navigate(lobbyView);
                    } else {
                        MessageBox.Show("No se pudo unir al lobby. Puede que esté lleno o que ya no esté disponible.");
                    }
                } catch (Exception ex) {
                    MessageBox.Show($"Error al intentar unirse al lobby: {ex.Message}");
                }
            } else {
                MessageBox.Show("Por favor, selecciona un lobby para unirte.");
            }
        }


        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                MessageBox.Show("Error: No se puede navegar al menu.");
            }
        }
        private void BtnSearch_Click(object sender, RoutedEventArgs e) {
        }
        //Nuevo
        public void GenerateGuestProfile() {
            LoggerManager logger = new LoggerManager(this.GetType());

            try {
                string randomUsername = GuestProfile.RandomChooserUsername();
                string randomAvatar = GuestProfile.RandomChooserAvatarIcon();
                string codeMatch = txtCodeLobby.Text;
                GuestProfileSingleton.Instance.CreateInstance(codeMatch);
                SelectLobbyView selectLobbyView = new SelectLobbyView();
                this.NavigationService.Navigate(selectLobbyView);
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
    }
}
