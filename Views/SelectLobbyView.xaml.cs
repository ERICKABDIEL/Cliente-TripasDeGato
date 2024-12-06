using System;
using System.Linq;
using System.Windows;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {

    public partial class SelectLobbyView : Page {

        private LobbyBrowserClient _lobbyBrowser;

        public SelectLobbyView() {
            InitializeComponent();
            _lobbyBrowser = new LobbyBrowserClient();
            LoadLobbiesData();
        }

        private async Task LoadLobbiesData() { 
           await LoadLobbiesAsync();
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

        private async Task LoadLobbiesAsync() {
            try {
                List <Lobby> lobbies = await _lobbyBrowser.GetAvailableLobbiesAsync();
                gridLobbyData.ItemsSource = lobbies;
            } catch (Exception exception) {
                HandleException(exception, nameof(LoadLobbiesAsync));
            }
        }

        private async void BtnJoinGame_Click(object sender, RoutedEventArgs e) {
            if (gridLobbyData.SelectedItem is Lobby selectedLobby) {
                string lobbyCode = selectedLobby.Code;
                Profile guest = new Profile {
                    IdProfile = UserProfileSingleton.IdProfile,
                    Username = UserProfileSingleton.UserName
                };
                try {
                    bool joined = await _lobbyBrowser.JoinLobbyAsync(lobbyCode, guest);
                    if (joined) {
                        LobbyView lobbyView = new LobbyView(lobbyCode);
                        this.NavigationService.Navigate(lobbyView);
                    } else {
                        DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyJoinError);
                    }
                } catch (Exception exception) {
                    HandleException(exception, nameof(BtnJoinGame_Click));
                }
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectLobbyToJoin);
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private async void BtnSearch_Click(object sender, RoutedEventArgs e) {
            string searchCode = txtCodeLobby.Text.Trim();
            try {
                List<Lobby> lobbies = await _lobbyBrowser.GetAvailableLobbiesAsync();
                List<Lobby> filteredLobbies = lobbies.Where(lobby => lobby.Code.Contains(searchCode)).ToList();
                if (filteredLobbies.Count == 0) {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyNotFound);
                }
                gridLobbyData.ItemsSource = filteredLobbies;
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnSearch_Click));
            }
        }
    }
}
