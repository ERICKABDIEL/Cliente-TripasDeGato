using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Threading;
using TripasDeGatoCliente.TripasDeGatoServicio;
using TripasDeGatoCliente.Logic;
using System.Threading.Tasks;
using System.Timers;
using System.ComponentModel;
using System.Reflection.Emit;
using log4net.Repository.Hierarchy;
using System.Windows.Media.Imaging;
using System.Diagnostics.Eventing.Reader;
using System.Collections.Generic;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {
    public partial class LobbyView : Page, IChatManagerCallback, ILobbyManagerCallback {
        private ChatManagerClient chatManager;
        private LobbyManagerClient lobbyManager;
        private LobbyBrowserClient lobbyBrowser;
        private UserManagerClient userManager;
        private bool isConnected = false;
        private string lobbyCode;
        private FriendsManagerClient friendsManager;
        private StatusManagerClient statusManager;
        private EmailInvitationManagerClient emailInvitationManager;
        private bool areElementsVisible = false;

        public LobbyView(string lobbyCode) {
            InitializeComponent();
            this.lobbyCode = lobbyCode;
            lbCode.Content = lobbyCode;
            lobbyBrowser = new LobbyBrowserClient();
            InitializeLobby();
            lobbyManager = new LobbyManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
            userManager = new UserManagerClient();
            friendsManager = new FriendsManagerClient();
            statusManager = new StatusManagerClient();
            emailInvitationManager = new EmailInvitationManagerClient();
            InitializeConnectionsAsync();
            if (!string.IsNullOrEmpty(UserProfileSingleton.PicPath)) {
                imgProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
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
                GoToMenuView();
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
                GoToMenuView();
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
                GoToMenuView();
            }
        }

        private async Task InitializeChatAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await chatManager.ConnectToChatAsync(UserProfileSingleton.UserName, lobbyCode);
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
        }


        private async Task ConnectToLobbyAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                bool connected = await Task.Run(() => lobbyManager.ConnectPlayerToLobby(lobbyCode, UserProfileSingleton.IdProfile));

                if (!connected) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogConnectionError);
                } else {
                    isConnected = true;
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
                    await chatManager.SendMessageAsync(UserProfileSingleton.UserName, message, lobbyCode);
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
                }
            }
        }

        public async void InitializeLobby() {
            Lobby lobby = await lobbyBrowser.GetLobbyByCodeAsync(lobbyCode);
            if (IsUserHost(lobby)) {
                lbPlayer1.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].Username : "Esperando jugador...";
                lbPlayer2.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].Username : "Esperando jugador...";
                imgProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));



            } else {
                lbPlayer1.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].Username : "Esperando jugador...";
                lbPlayer2.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].Username : "Esperando jugador...";
                imgProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
                string ruta = userManager.GetPicPath(lobby.Players["PlayerTwo"].Username);
                imgProfile2.Source = new BitmapImage(new Uri(ruta, UriKind.RelativeOrAbsolute));
                btnKickPlayer.Visibility = Visibility.Collapsed;
                btnInvitedFriend.Visibility = Visibility.Collapsed;
                btnStartGame.Visibility = Visibility.Collapsed;
            }
        }

        private bool IsUserHost(Lobby lobby) {
            return lobby.Players.TryGetValue("PlayerOne", out var host) && host.Username == UserProfileSingleton.UserName;
        }

        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await lobbyManager.LeaveLobbyAsync(lobbyCode, UserProfileSingleton.IdProfile);
                await chatManager.LeaveChatAsync(UserProfileSingleton.UserName, lobbyCode);
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
            }
        }

        private void ExitUseSinglenton() {
            if (UserProfileSingleton.IdProfile < 100000) {
                GoToMenuView();
            } else {
                GoToLoginView();
            }
        }

        private async void OnClosing(object sender, CancelEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (isConnected) {
                try {
                    await Task.Run(() =>
                    lobbyManager.LeaveLobby(lobbyCode, UserProfileSingleton.IdProfile));
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
                GoToMenuView();
            });
        }

        public void HostLeftCallback() {
            Dispatcher.Invoke(async () => {
                await Task.Run(() =>
            DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogHostLeftLobby)
                );
                GoToMenuView();
            });
        }
        public void GuestLeftCallback() {
            Dispatcher.Invoke(() => {
                string waitingMessage = Properties.Resources.dialogWaitingForPlayer;
                lbPlayer2.Content = waitingMessage;
            });
        }

        public void GuestJoinedCallback(string guestName) {
            Dispatcher.Invoke(() => {
                lbPlayer2.Content = guestName;
                string ruta = userManager.GetPicPath(guestName);
                imgProfile2.Source = new BitmapImage(new Uri(ruta, UriKind.RelativeOrAbsolute));
            });
        }

        private void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            lobbyManager.StartMatch(lobbyCode);
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
                var gameMatch = new GameMatch(lobbyCode);
                NavigationService?.Navigate(gameMatch);
            });
        }

        private async Task LoadFriendsListAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                int userProfileId = UserProfileSingleton.IdProfile;
                var friendsList = await friendsManager.GetFriendsAsync(userProfileId);

                var friendsWithStatus = new List<string>();

                foreach (var friend in friendsList) {
                    var status = await statusManager.GetPlayerStatusAsync(friend.IdProfile);
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
            }
        }


        private async void BtnInvitedFriend_Click(object sender, RoutedEventArgs e) {
            areElementsVisible = !areElementsVisible;
            if (areElementsVisible) {
                invitedFriendGrid.Visibility = Visibility.Visible;
                lstFriends.IsEnabled = true;
                btnInvited.IsEnabled = true;
                await LoadFriendsListAsync();
                btnInvitedFriend.Background = new SolidColorBrush(Colors.Green);
            } else {
                invitedFriendGrid.Visibility = Visibility.Collapsed;
                lstFriends.IsEnabled = false;
                btnInvited.IsEnabled = false;
                btnInvitedFriend.Background = new SolidColorBrush(Color.FromArgb(100, 216, 195, 165));
            }
        }
        private async void BtnInvited_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            if (lstFriends.SelectedItem != null) {
                string selectedFriendName = lstFriends.SelectedItem.ToString();
                string friendName = selectedFriendName.Split('-')[0].Trim();

                try {
                    int result = await emailInvitationManager.SendInvitationAsync(friendName, lobbyCode);

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
                }
            } else {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectFriendToInvite);
            }
        }


    }
}