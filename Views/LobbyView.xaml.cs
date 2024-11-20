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

namespace TripasDeGatoCliente.Views {
    public partial class LobbyView : Page, IChatManagerCallback, ILobbyManagerCallback {
        private ChatManagerClient chatManager;
        private LobbyManagerClient lobbyManager;
        private LobbyBrowserClient lobbyBrowser;
        private UserManagerClient userManager;
        private bool isConnected = false;
        private string lobbyCode;

        public LobbyView(string lobbyCode) {
            InitializeComponent();
            this.lobbyCode = lobbyCode;
            lbCode.Content = lobbyCode;
            lobbyBrowser = new LobbyBrowserClient();
            InitializeLobby();
            lobbyManager = new LobbyManagerClient(new InstanceContext(this));
            chatManager = new ChatManagerClient(new InstanceContext(this));
            userManager = new UserManagerClient();
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
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                Dispatcher.Invoke(() => DialogManager.ShowErrorMessageAlert("Error: No se encontró el servicio."));
                GoToMenuView();
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                Dispatcher.Invoke(() => DialogManager.ShowErrorMessageAlert("Error de comunicación con el servicio."));
                GoToMenuView();
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                Dispatcher.Invoke(() => DialogManager.ShowErrorMessageAlert("El tiempo de espera para la conexión ha expirado."));
                GoToMenuView();
            }
        }

        private async Task InitializeChatAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                await chatManager.ConnectToChatAsync(UserProfileSingleton.UserName, lobbyCode);
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("No se pudo conectar al servicio de chat.");
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Tiempo de espera agotado al conectar al chat.");
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Error de comunicación al conectar al chat.");
            }
        }


        private async Task ConnectToLobbyAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                bool connected = await Task.Run(() => lobbyManager.ConnectPlayerToLobby(lobbyCode, UserProfileSingleton.IdProfile));

                if (!connected) {
                    DialogManager.ShowErrorMessageAlert("No se pudo conectar al lobby.");
                } else {
                    isConnected = true;
                }
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("No se pudo conectar al servicio del lobby.");
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Tiempo de espera agotado al conectar al lobby.");
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Error de comunicación al conectar al lobby.");
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
                } catch (EndpointNotFoundException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert("No se pudo enviar el mensaje.");
                } catch (TimeoutException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert("Tiempo de espera agotado al enviar el mensaje.");
                } catch (CommunicationException ex) {
                    logger.LogError(ex);
                    DialogManager.ShowErrorMessageAlert("Error de comunicación al enviar el mensaje.");
                }
            }
        }

        public async void InitializeLobby() {
            Lobby lobby = await lobbyBrowser.GetLobbyByCodeAsync(lobbyCode);
            if (IsUserHost(lobby)) {
                labelPlayer1.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].userName : "Esperando jugador...";
                labelPlayer2.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].userName : "Esperando jugador...";
                imgProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
                //string ruta= userManager.getPicByName(lobby.Players["PlayerTwo"].userName);
                //imgProfile2.Source = new BitmapImage(ruta);


            } else {
                labelPlayer1.Content = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].userName : "Esperando jugador...";
                labelPlayer2.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].userName : "Esperando jugador...";
                imgProfile1.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
                //string ruta= userManager.getPicByName(lobby.Players["PlayerTwo"].userName);
                btnKickPlayer.Visibility = Visibility.Collapsed;
                btnInvitedFriend.Visibility = Visibility.Collapsed;
                btnStartGame.Visibility = Visibility.Collapsed;
            }
        }

        private bool IsUserHost(Lobby lobby) {
            return lobby.Players.TryGetValue("PlayerOne", out var host) && host.userName == UserProfileSingleton.UserName;
        }

        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            try {
                // Verificar si el ID del perfil es menor a 100000
                if (UserProfileSingleton.IdProfile < 100000) {
                    // Si el ID es menor, navegar al menú
                    await lobbyManager.LeaveLobbyAsync(lobbyCode, UserProfileSingleton.IdProfile);
                    await chatManager.LeaveChatAsync(UserProfileSingleton.UserName, lobbyCode);
                    GoToMenuView();
                } else {
                    // Si el ID es mayor, navegar al login
                    await lobbyManager.LeaveLobbyAsync(lobbyCode, UserProfileSingleton.IdProfile);
                    await chatManager.LeaveChatAsync(UserProfileSingleton.UserName, lobbyCode);
                    GoToLoginView();
                }
            } catch (Exception ex) {
                MessageBox.Show($"Error al salir del lobby: {ex.Message}");
            }
        }

        private async void OnClosing(object sender, CancelEventArgs e) {
            if (isConnected) {
                try {
                    await Task.Run(() =>
                        lobbyManager.LeaveLobby(lobbyCode, UserProfileSingleton.IdProfile));
                } catch (Exception ex) {
                    Console.WriteLine($"Error al salir del lobby: {ex.Message}");
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
                MessageBox.Show("Error: No se puede navegar al menu.");
            }
        }

        private void GoToLoginView() {
            LoginView loginView = new LoginView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(loginView);
            } else {
                MessageBox.Show("Error: No se puede navegar al login");
            }
        }

        public void RemoveFromLobby() {
            Dispatcher.Invoke(() => {
                MessageBox.Show("Has sido eliminado del lobby.");
                GoToMenuView();
            });
        }

        public void HostLeftCallback() {
            Dispatcher.Invoke(async () => {
                // Display a non-blocking notification to the user
                await Task.Run(() =>
                    DialogManager.ShowWarningMessageAlert("El anfitrión abandonó el lobby.")
                );
                GoToMenuView();
            });
        }
        public void GuestLeftCallback() {
            Dispatcher.Invoke(() => {
                labelPlayer2.Content = "Esperando jugador...";
            });
        }

        public void GuestJoinedCallback(string guestName) {
            Dispatcher.Invoke(() => {
                labelPlayer2.Content = guestName;
            });
        }

        private void BtnStartGame_Click(object sender, RoutedEventArgs e) {
            GameMatch gameMatch = new GameMatch();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(gameMatch);
            } else {
                MessageBox.Show("Error: No se puede navegar a la partida.");
            }
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
    }
}
