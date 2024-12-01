using System;
using System.Linq;
using System.Windows;
using System.ServiceModel;
using System.Windows.Media;
using System.Threading.Tasks;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;
using System.Runtime.CompilerServices;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {

    public partial class MenuView : Page {
        private UserManagerClient _userManager;
        private FriendsManagerClient _friendsManager;
        private StatusManagerClient _statusManager;
        private bool _elementsVisible = false;

        public MenuView() {
            InitializeComponent();
            _userManager = new UserManagerClient();
            _friendsManager = new FriendsManagerClient();
            _statusManager = new StatusManagerClient();
            LoadUserProfile();
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

        private void LoadUserProfile() {
            if (!string.IsNullOrEmpty(UserProfileSingleton.UserName)) {
                lbUserName.Content = UserProfileSingleton.UserName;
                UserProfileSingleton.ResetChatCode();
                UserProfileSingleton.ResetLobbyCode();
                UserProfileSingleton.ResetMatchCode();
            } else {
                lbUserName.Content = Properties.Resources.lbUnknownUser;
            }
        }

        private void BtnSignOut_Click(object sender, RoutedEventArgs e) {
            SignOut();
            NavigateToLoginView();
        }

        private void SignOut() {
            int playerId = UserProfileSingleton.IdProfile;
            SetPlayerOfflineStatus(playerId);
            UserProfileSingleton.ResetInstance();
        }

        private void SetPlayerOfflineStatus(int playerId) {
            try {
                IStatusManager statusManager = new StatusManagerClient();
                statusManager.SetPlayerStatus(playerId, GameEnumsPlayerStatus.Offline);
            } catch (Exception exception) {
                HandleException(exception, nameof(SetPlayerOfflineStatus));
            }
        }

        private void NavigateToLoginView() {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }

        private async void BtnFriends_Click(object sender, RoutedEventArgs e) {
            try {
                _elementsVisible = !_elementsVisible;
                if (_elementsVisible) {
                    lstFriends.Visibility = Visibility.Visible;
                    btnAddFriend.Visibility = Visibility.Visible;
                    btnRemoveFriend.Visibility = Visibility.Visible;
                    await LoadFriendsListAsync();
                    lstFriends.IsEnabled = true;
                    btnAddFriend.IsEnabled = true;
                    btnRemoveFriend.IsEnabled = true;
                    btnFriends.Background = new SolidColorBrush(Color.FromArgb(51, 216, 195, 165));
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
                    btnFriends.Background = new SolidColorBrush(Color.FromArgb(51, 216, 195, 165));
                    btnAddFriend.Background = new SolidColorBrush(Color.FromArgb(255, 67, 43, 30));
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnFriends_Click));
            }
        }


        private void BtnAddFriend_Click(object sender, RoutedEventArgs e) {
            _elementsVisible = !_elementsVisible;
            if (_elementsVisible) {
                txtFriendName.Visibility = Visibility.Visible;
                btnAdd.Visibility = Visibility.Visible;
                txtFriendName.IsEnabled = true;
                btnAdd.IsEnabled = true;
                btnAddFriend.Background = new SolidColorBrush(Color.FromArgb(51, 67, 43, 30));
            } else {
                txtFriendName.Visibility = Visibility.Collapsed;
                btnAdd.Visibility = Visibility.Collapsed;
                txtFriendName.IsEnabled = false;
                btnAdd.IsEnabled = false;
                btnAddFriend.Background = new SolidColorBrush(Color.FromArgb(255, 67, 43, 30));
            }
        }

        private async void BtnAdd_Click(object sender, RoutedEventArgs e) {
            string friendName = txtFriendName.Text.Trim();
            try {
                if (ValidateFriendName(friendName)) {
                    await AddFriend(friendName);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnAdd_Click));
            } finally {
                txtFriendName.Clear();
            }
        }

        private static bool ValidateFriendName(string friendName) {
            if (string.IsNullOrEmpty(friendName)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidName);
                return false;
            }
            return true;
        }

        private async Task AddFriend(string friendName) {
            try {
                int friendProfileId = await _userManager.GetProfileIdAsync(friendName);
                if (friendProfileId == UserProfileSingleton.IdProfile) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCannotAddSelfAsFriend);
                } else if (friendProfileId > 0) {
                    await ExecuteFriendAddition(friendProfileId, friendName);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogProfileNotFound);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(AddFriend));
            }
        }

        private async Task ExecuteFriendAddition(int friendProfileId, string friendName) {
            try {
                int userProfileId = UserProfileSingleton.IdProfile;
                int result = await _friendsManager.AddFriendAsync(userProfileId, friendProfileId);
                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogAddFriendSuccessfully, friendName));
                    await LoadFriendsListAsync();
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorAddingFriend);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(ExecuteFriendAddition));
            }
        }

        private async Task LoadFriendsListAsync() {
            try {
                int userProfileId = UserProfileSingleton.IdProfile;
                var friendsList = await _friendsManager.GetFriendsAsync(userProfileId);
                var friendsWithStatus = new List<string>();
                foreach (var friend in friendsList) {
                    var status = await _statusManager.GetPlayerStatusAsync(friend.IdProfile);
                    friendsWithStatus.Add($"{friend.Username} - {status}");
                }
                lstFriends.ItemsSource = friendsWithStatus;
            } catch (Exception exception) {
                HandleException(exception, nameof(LoadFriendsListAsync));
            }
        }

        private async void BtnRemoveFriend_Click(object sender, RoutedEventArgs e) {
            if (lstFriends.SelectedItem != null) {
                string selectedFriendName = lstFriends.SelectedItem.ToString();
                string friendName = selectedFriendName.Split('-')[0].Trim();
                try {
                    int friendProfileId = await _userManager.GetProfileIdAsync(friendName);
                    if (friendProfileId > 0) {
                        int userProfileId = UserProfileSingleton.IdProfile;
                        int result = await _friendsManager.DeleteFriendAsync(userProfileId, friendProfileId);
                        if (result == Constants.SUCCES_OPERATION) {
                            DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogFriendshipDeleted, friendName));
                            await LoadFriendsListAsync();
                        } else {
                            DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorDeletingFriendship);
                        }
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                    }
                } catch (Exception exception) {
                    HandleException(exception, nameof(BtnRemoveFriend_Click));
                }
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectFriendToDelete);
            }
        }

        private void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            GoToCreateLobbyView();
        }

        private void BtnProfile_Click(object sender, RoutedEventArgs e) {
            GoToPerfilView();
        }

        private void BtnLaderboard_Click(object sender, RoutedEventArgs e) {
            GoToLaderboardView();
        }

        private void BtnJoinGame_Click(object sender, RoutedEventArgs e) {
            GoToSelectLobbyView();
        }

        private void GoToCreateLobbyView() {
            CreateLobbyView lobbyConfig = new CreateLobbyView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(lobbyConfig);
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

        private void GoToLaderboardView() {
            Laderboard laderboardView = new Laderboard();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(laderboardView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void GoToSelectLobbyView() {
            SelectLobbyView selectLobbyView = new SelectLobbyView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(selectLobbyView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }
    }
}
