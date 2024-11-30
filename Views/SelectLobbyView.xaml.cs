using System;
using System.Linq;
using System.Windows;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class SelectLobbyView : Page {
        private LobbyBrowserClient _lobbyBrowser;
        private LobbyManagerClient _lobbyManager;

        public SelectLobbyView() {
            InitializeComponent();
            _lobbyBrowser = new LobbyBrowserClient();
            LoadLobbiesAsync();
        }

        private Task LoadLobbiesAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                var lobbies = _lobbyBrowser.GetAvailableLobbies();
                gridLobbyData.ItemsSource = lobbies;
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
            return Task.CompletedTask;
        }

        private async void BtnJoinGame_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
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
            LoggerManager logger = new LoggerManager(this.GetType());
            string searchCode = txtCodeLobby.Text.Trim();
            try {
                var lobbies = await _lobbyBrowser.GetAvailableLobbiesAsync();
                var filteredLobbies = lobbies.Where(lobby => lobby.Code.Contains(searchCode)).ToList();
                if (filteredLobbies.Count == 0) {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyNotFound);
                }
                gridLobbyData.ItemsSource = filteredLobbies;
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
