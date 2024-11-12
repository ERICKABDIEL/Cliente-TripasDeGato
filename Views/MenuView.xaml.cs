using System.ServiceModel;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using static TripasDeGatoCliente.Logic.ConstantsManager;
using TripasDeGatoCliente.TripasDeGatoServicio;
using System.Threading.Tasks;
using System.Linq;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;

namespace TripasDeGatoCliente.Views {
    public partial class MenuView : Page {
        private UserManagerClient userManager;
        private FriendsManagerClient friendsManager;
        private StatusManagerClient statusManager;
        private LobbyBrowserClient lobbyBrowser;

        public MenuView() {
            InitializeComponent();
            userManager = new UserManagerClient();
            friendsManager = new FriendsManagerClient();
            statusManager = new StatusManagerClient();
            lobbyBrowser = new LobbyBrowserClient();
            LoadUserProfileAsync();
        }

        private async void LoadUserProfileAsync() {
            if (!string.IsNullOrEmpty(UserProfileSingleton.Nombre)) {
                lbUserName.Content = UserProfileSingleton.Nombre;
            } else {
                lbUserName.Content = Properties.Resources.lbUnknownUser;
            }
        }

        private void BtnSignOut_Click(object sender, RoutedEventArgs e) {
            UserProfileSingleton.Instance.ResetInstance();
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        private bool areElementsVisible = false;

        private async void BtnFriends_Click(object sender, RoutedEventArgs e) {
            areElementsVisible = !areElementsVisible;

            if (areElementsVisible) {
                lstFriends.Visibility = Visibility.Visible;
                btnAddFriend.Visibility = Visibility.Visible;
                btnRemoveFriend.Visibility = Visibility.Visible;
                await LoadFriendsListAsync();

                lstFriends.IsEnabled = true;
                btnAddFriend.IsEnabled = true;
                btnRemoveFriend.IsEnabled = true;

                btnFriends.Background = new SolidColorBrush(Colors.Green);
            } else {
                lstFriends.Visibility = Visibility.Collapsed;
                btnAddFriend.Visibility = Visibility.Collapsed;
                btnRemoveFriend.Visibility = Visibility.Collapsed;
                txtFriendName.Visibility = Visibility.Collapsed;
                btnAdd.Visibility = Visibility.Collapsed;

                lstFriends.IsEnabled = false;
                btnAddFriend.IsEnabled = false;
                btnRemoveFriend.IsEnabled = false;
                txtFriendName.IsEnabled = false;
                btnAdd.IsEnabled = false;

                btnFriends.Background = new SolidColorBrush(Colors.Black);
                btnAddFriend.Background = new SolidColorBrush(Colors.Black);
            }
        }

        private void BtnAddFriend_Click(object sender, RoutedEventArgs e) {
            areElementsVisible = !areElementsVisible;

            if (areElementsVisible) {
                txtFriendName.Visibility = Visibility.Visible;
                btnAdd.Visibility = Visibility.Visible;
                txtFriendName.IsEnabled = true;
                btnAdd.IsEnabled = true;

                btnAddFriend.Background = new SolidColorBrush(Colors.Green);
            } else {
                txtFriendName.Visibility = Visibility.Collapsed;
                btnAdd.Visibility = Visibility.Collapsed;

                txtFriendName.IsEnabled = false;
                btnAdd.IsEnabled = false;

                btnAddFriend.Background = new SolidColorBrush(Colors.Black);
            }
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e) {
            string friendName = txtFriendName.Text.Trim();
            LoggerManager logger = new LoggerManager(this.GetType());
            if (!string.IsNullOrEmpty(friendName)) {
                try {
                    int friendProfileId = await userManager.GetProfileIdAsync(friendName);
                    int userProfileId = UserProfileSingleton.IdPerfil;

                    if (friendProfileId == userProfileId) {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCannotAddSelfAsFriend);
                    } else if (friendProfileId > 0) {
                        int result = await friendsManager.AddFriendAsync(userProfileId, friendProfileId);

                        if (result == Constants.SUCCES_OPERATION) {
                            DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogAddFriendSuccessfully, friendName));
                            await LoadFriendsListAsync();
                        } else {
                            DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAddingFriend);
                        }
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogProfileNotFound);
                    }

                    txtFriendName.Clear();
                } catch (FaultException<ProfileNotFoundFault> ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                } catch (EndpointNotFoundException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                } catch (TimeoutException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                } catch (CommunicationException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                }
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidName);
            }
        }

        private async Task LoadFriendsListAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                int userProfileId = UserProfileSingleton.IdPerfil;
                var friendsList = await friendsManager.GetFriendsAsync(userProfileId);

                var friendsWithStatus = new List<string>();

                foreach (var friend in friendsList) {
                    var status = await statusManager.GetPlayerStatusAsync(friend.idProfile);
                    friendsWithStatus.Add($"{friend.userName} - {status}");
                }

                lstFriends.ItemsSource = friendsWithStatus;
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            } 
        }

        private async void BtnRemoveFriend_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (lstFriends.SelectedItem != null) {
                string selectedFriendName = lstFriends.SelectedItem.ToString();

                try {
                    int friendProfileId = await userManager.GetProfileIdAsync(selectedFriendName);

                    if (friendProfileId > 0) {
                        int userProfileId = UserProfileSingleton.IdPerfil;
                        int result = await friendsManager.DeleteFriendAsync(userProfileId, friendProfileId);

                        if (result == Constants.SUCCES_OPERATION) {
                            DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogFriendshipDeleted, selectedFriendName));
                            await LoadFriendsListAsync();
                        } else {
                            DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorDeletingFriendship);
                        }
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                    }
                } catch (EndpointNotFoundException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                } catch (TimeoutException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                } catch (CommunicationException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                } 
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectFriendToDelete);
            }
        }

        private async void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            string gameName = "NombreDelJuego";
            int nodeCount = 2;
            Profile owner = new Profile { idProfile = UserProfileSingleton.IdPerfil, userName = UserProfileSingleton.Nombre };

            try {
                string lobbyCode = await lobbyBrowser.CreateLobbyAsync(gameName, nodeCount, owner);

                if (!string.IsNullOrEmpty(lobbyCode)) {
                    GoToLobbyView(lobbyCode);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorCreatingLobby);
                }
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void GoToLobbyView(string lobbyCode) {
            LobbyView lobbyView = new LobbyView(lobbyCode);
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(lobbyView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void GoToPerfilView() {
            ProfileView profileView = new ProfileView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(profileView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void BtnProfile_Click(object sender, RoutedEventArgs e) {
            GoToPerfilView();
        }

        private void btnJoinGame_Click(object sender, RoutedEventArgs e) {
            SelectLobbyView selectLobbyView = new SelectLobbyView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(selectLobbyView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }
    }
}
