using System.ServiceModel;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Reflection.Emit;

namespace TripasDeGatoCliente.Views {
    public partial class MenuView : Page {
        private UserManagerClient userManager;
        private FriendsManagerClient friendsManager;
        private StatusManagerClient statusManager;

        public MenuView() {
            InitializeComponent();
            userManager = new UserManagerClient();
            friendsManager = new FriendsManagerClient();
            statusManager = new StatusManagerClient();
            LoadUserProfileAsync();
        }

        private async void LoadUserProfileAsync() {
            // Carga el nombre de usuario desde el Singleton
            lbUserName.Content = !string.IsNullOrEmpty(UserProfileSingleton.Nombre)
                ? UserProfileSingleton.Nombre
                : "Usuario desconocido";
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
                HideFriendElements();
            }
        }

        private void HideFriendElements() {
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

            if (!string.IsNullOrEmpty(friendName)) {
                try {
                    int friendProfileId = await userManager.getProfileIdAsync(friendName);

                    if (friendProfileId > 0) {
                        int userProfileId = UserProfileSingleton.IdPerfil;
                        int result = await friendsManager.addFriendAsync(userProfileId, friendProfileId);

                        if (result == ConstantsManager.Constants.SUCCES_OPERATION) {
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
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                } catch (Exception ex) {
                    DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, ex.Message));
                }
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidName);

            }
        }

        private async Task LoadFriendsListAsync() {
            try {
                int userProfileId = UserProfileSingleton.IdPerfil;
                var friendsList = await friendsManager.getFriendsAsync(userProfileId);

                var friendsWithStatus = new List<string>();

                foreach (var friend in friendsList) {
                    var status = await statusManager.GetPlayerStatusAsync(friend.idProfile);
                    friendsWithStatus.Add($"{friend.userName} - {status}");
                }

                lstFriends.ItemsSource = friendsWithStatus;
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogErrorLoadingFriendsList, ex.Message));
            }
        }

        private async void BtnRemoveFriend_Click(object sender, RoutedEventArgs e) {
            if (lstFriends.SelectedItem != null) {
                string selectedFriendName = lstFriends.SelectedItem.ToString();

                try {
                    int friendProfileId = await userManager.getProfileIdAsync(selectedFriendName);

                    if (friendProfileId > 0) {
                        int userProfileId = UserProfileSingleton.IdPerfil;
                        int result = await friendsManager.deleteFriendAsync(userProfileId, friendProfileId);

                        if (result == ConstantsManager.Constants.SUCCES_OPERATION) {
                            DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogFriendshipDeleted, selectedFriendName));
                            await LoadFriendsListAsync();
                        } else {
                            DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorDeletingFriendship);
                        }
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                    }
                } catch (Exception ex) {
                    DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogErrorDeletingFriendshipDetails, ex.Message));
                }
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectFriendToDelete);
            }
        }

        private void GoToLobbyView() {
            LobbyView lobbyView = new LobbyView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(lobbyView);
            } 
        }

        private void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            GoToLobbyView();
        }

        private void GoToPerfilView() {
            ProfileView profileView = new ProfileView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(profileView);
            }
        }

        private void BtnProfile_Click(object sender, RoutedEventArgs e) {
            GoToPerfilView();
        }
    }
}
