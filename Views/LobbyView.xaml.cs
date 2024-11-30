using System;
using System.Timers;
using System.Windows;
using System.ServiceModel;
using System.Windows.Media;
using System.ComponentModel;
using System.Reflection.Emit;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Threading;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;
using System.Windows.Media.Imaging;
using System.Diagnostics.Eventing.Reader;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {
    public partial class LobbyView : Page, IChatManagerCallback, ILobbyManagerCallback {
        private ChatManagerClient _chatManager;
        private LobbyManagerClient _lobbyManager;
        private LobbyBrowserClient _lobbyBrowser;
        private UserManagerClient _userManager;
        private bool _isConnected = false;
        private string _lobbyCode;
        private FriendsManagerClient _friendsManager;
        private StatusManagerClient _statusManager;
        private EmailInvitationManagerClient _emailInvitationManager;
        private bool _elementsVisible = false;

        public LobbyView(string lobbyCode) {
            InitializeComponent();
            this._lobbyCode = lobbyCode;
            lbCode.Content = lobbyCode;
            _lobbyBrowser = new LobbyBrowserClient();
            InitializeLobby();
            InstanceContext context = new InstanceContext(this);
            _lobbyManager = new LobbyManagerClient(context);
            _chatManager = new ChatManagerClient(context);
            ConnectionManager.Instance.InitializeLobbyManager(context);
            ConnectionManager.Instance.InitializeChatManager(context);
            _userManager = new UserManagerClient();
            _friendsManager = new FriendsManagerClient();
            _statusManager = new StatusManagerClient();
            _emailInvitationManager = new EmailInvitationManagerClient();
            InitializeConnectionsAsync();
            if (!string.IsNullOrEmpty(UserProfileSingleton.PicPath)) {
                imageProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
            }
        }

        private async void InitializeConnectionsAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await InitializeChatAsync();
                await ConnectToLobbyAsync();
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ExitUseSinglenton();
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ExitUseSinglenton();
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ExitUseSinglenton();
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
                ExitUseSinglenton();
            }
        }

        private async Task InitializeChatAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await _chatManager.ConnectToChatAsync(UserProfileSingleton.UserName, _lobbyCode);
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

        private async Task ConnectToLobbyAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                bool connected = await Task.Run(() => _lobbyManager.ConnectPlayerToLobby(_lobbyCode, UserProfileSingleton.IdProfile));
                if (!connected) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogConnectionError);
                    ExitUseSinglenton();
                } else {
                    _isConnected = true;
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

        private async void BtnSendMessage_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            string messageText = txtMessageInput.Text.Trim();
            if (!string.IsNullOrEmpty(messageText)) {
                var message = new Message {
                    userName = UserProfileSingleton.UserName,
                    chatMessage = messageText
                };
                try {
                    await _chatManager.SendMessageAsync(UserProfileSingleton.UserName, message, _lobbyCode);
                    txtMessageInput.Clear();
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

        public async void InitializeLobby() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                Lobby lobby = await _lobbyBrowser.GetLobbyByCodeAsync(_lobbyCode);
                UserProfileSingleton.UpdateLobbyCode(_lobbyCode);
                UserProfileSingleton.UpdateChatCode(_lobbyCode);
                if (IsUserHost(lobby)) {
                    lbPlayer1.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].Username : Properties.Resources.lbWaitingForPlayer;
                    lbPlayer2.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].Username : Properties.Resources.lbWaitingForPlayer;
                    imageProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
                    imageProfile2.Source = null;
                } else {
                    lbPlayer1.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].Username : Properties.Resources.lbWaitingForPlayer;
                    lbPlayer2.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].Username : Properties.Resources.lbWaitingForPlayer;
                    imageProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
                    string ruta = _userManager.GetPicPath(lobby.Players["PlayerOne"].Username);
                    imageProfile2.Source = new BitmapImage(new Uri(ruta, UriKind.RelativeOrAbsolute));
                    btnKickPlayer.Visibility = Visibility.Collapsed;
                    btnInvitedFriend.Visibility = Visibility.Collapsed;
                    btnStartGame.Visibility = Visibility.Collapsed;
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

        private bool IsUserHost(Lobby lobby) {
            return lobby.Players.TryGetValue("PlayerOne", out var host) && host.Username == UserProfileSingleton.UserName;
        }

        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await _lobbyManager.LeaveLobbyAsync(_lobbyCode, UserProfileSingleton.IdProfile);
                await _chatManager.LeaveChatAsync(UserProfileSingleton.UserName, _lobbyCode);
                ExitUseSinglenton();
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
                ExitUseSinglenton();
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                ExitUseSinglenton();
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                ExitUseSinglenton();
            } catch (Exception exception) {
                logger.LogError(exception);
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogUnexpectedError, exception.Message));
                ExitUseSinglenton();
            }
        }

        private void ExitUseSinglenton() {
            UserProfileSingleton.ResetLobbyCode();
            UserProfileSingleton.ResetChatCode();
            if (UserProfileSingleton.IdProfile < 100000) {
                GoToMenuView();
            } else {
                GoToLoginView();
            }
        }

        private async void OnClosing(object sender, CancelEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (_isConnected) {
                try {
                    await Task.Run(() =>
                    _lobbyManager.LeaveLobby(_lobbyCode, UserProfileSingleton.IdProfile));
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

        private void ScrollToBottom() {
            var scrollViewer = VisualTreeHelper.GetParent(ChatMessagesPanel) as ScrollViewer;
            scrollViewer?.ScrollToEnd();
        }

        private void GoToMenuView() {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void GoToLoginView() {
            LoginView loginView = new LoginView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(loginView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }


        public void RemoveFromLobby() {
            Dispatcher.Invoke(() => {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyExit);
                ExitUseSinglenton();
            });
        }

        public void HostLeftCallback() {
            Dispatcher.Invoke(async () => {
                await Task.Run(() =>
            DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogHostLeftLobby)
                );
                ExitUseSinglenton();
            });
        }

        public void GuestLeftCallback() {
            Dispatcher.Invoke(() => {
                string waitingMessage = Properties.Resources.dialogWaitingForPlayer;
                lbPlayer2.Content = waitingMessage;
                imageProfile2.Source = null;
            });
        }

        public void GuestJoinedCallback(string guestName, string picturePath, int idProfile) {
            Dispatcher.Invoke(() => {
                lbPlayer2.Content = guestName;
                if (idProfile < 100000) {
                    string ruta = _userManager.GetPicPath(guestName);
                    imageProfile2.Source = new BitmapImage(new Uri(ruta, UriKind.RelativeOrAbsolute));
                } else {
                    string ruta = picturePath;
                    imageProfile2.Source = new BitmapImage(new Uri(ruta, UriKind.RelativeOrAbsolute));
                }
            });
        }

        private void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            _lobbyManager.StartMatch(_lobbyCode);
        }

        public void BroadcastMessage(Message message) {
            Application.Current.Dispatcher.Invoke(() => {
                Border messageContainer = new Border {
                    Background = new SolidColorBrush(Colors.White),
                    BorderThickness = new Thickness(1),
                    Padding = new Thickness(10),
                    Margin = new Thickness(20, 5, 20, 5),
                    HorizontalAlignment = message.userName == UserProfileSingleton.UserName ? HorizontalAlignment.Right : HorizontalAlignment.Left
                };
                TextBlock messageBlock = new TextBlock {
                    Text = $"{message.chatMessage} {DateTime.Now:HH:mm}",
                    Foreground = new SolidColorBrush(Colors.Black),
                    FontSize = 12,
                    FontWeight = FontWeights.Bold,
                    TextWrapping = TextWrapping.Wrap,
                    MaxWidth = 250
                };
                messageContainer.Child = messageBlock;
                ChatMessagesPanel.Children.Add(messageContainer);
                ScrollToBottom();
            });
        }

        public void GameStarted() {
            GoToGameMatch();
        }

        private void GoToGameMatch() {
            Application.Current.Dispatcher.Invoke(() => {
                var gameMatch = new GameMatch(_lobbyCode);
                NavigationService?.Navigate(gameMatch);
            });
        }

        private async Task LoadFriendsListAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                int userProfileId = UserProfileSingleton.IdProfile;
                var friendsList = await _friendsManager.GetFriendsAsync(userProfileId);
                var friendsWithStatus = new List<string>();
                foreach (var friend in friendsList) {
                    var status = await _statusManager.GetPlayerStatusAsync(friend.IdProfile);
                    friendsWithStatus.Add($"{friend.Username} - {status}");
                }
                lstFriends.ItemsSource = friendsWithStatus;
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

        private async void BtnInvitedFriend_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                _elementsVisible = !_elementsVisible;
                if (_elementsVisible) {
                    gridInvitedFriend.Visibility = Visibility.Visible;
                    lstFriends.IsEnabled = true;
                    btnInvited.IsEnabled = true;
                    await LoadFriendsListAsync();
                    btnInvitedFriend.Background = new SolidColorBrush(Colors.Green);
                } else {
                    gridInvitedFriend.Visibility = Visibility.Collapsed;
                    lstFriends.IsEnabled = false;
                    btnInvited.IsEnabled = false;
                    btnInvitedFriend.Background = new SolidColorBrush(Color.FromArgb(100, 216, 195, 165));
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

        private async void BtnInvited_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (lstFriends.SelectedItem != null) {
                string selectedFriendName = lstFriends.SelectedItem.ToString();
                string friendName = selectedFriendName.Split('-')[0].Trim();
                try {
                    int result = await _emailInvitationManager.SendInvitationAsync(friendName, _lobbyCode);
                    if (result == Constants.SUCCES_OPERATION) {
                        DialogManager.ShowSuccessMessageAlert(string.Format(Properties.Resources.dialogInvitationSent, friendName));
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorSendingInvitation);
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
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectFriendToInvite);
            }
        }

        private async void BtnKickPlayer_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            MessageBoxResult result = MessageBox.Show(
                Properties.Resources.dialogConfirmKickPlayer,
                Properties.Resources.titleConfirmKick,
                MessageBoxButton.YesNo,
                MessageBoxImage.Question
            );
            if (result == MessageBoxResult.Yes) {
                try {
                    await Task.Run(() => _lobbyManager.KickPlayer(_lobbyCode));
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

        public void KickedFromLobby() {
            Dispatcher.Invoke(() => {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogKickedFromLobby);
                ExitUseSinglenton();
            });
        }
    }
}