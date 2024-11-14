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

namespace TripasDeGatoCliente.Views {
    public partial class LobbyView : Page, IChatManagerCallback, ILobbyManagerCallback {
        private ChatManagerClient chatManager;
        private LobbyManagerClient lobbyManager;
        private LobbyBrowserClient lobbyBrowser;
        private Timer refreshTimer;
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
            InitializeConnectionsAsync();

        }

        private async void InitializeConnectionsAsync() {
            try {
                await InitializeChatAsync();
                await ConnectToLobbyAsync();
            } catch (Exception ex) {
                await Dispatcher.InvokeAsync(() => {
                    DialogManager.ShowErrorMessageAlert($"Error al inicializar conexiones: {ex.Message}");
                    GoToMenuView();
                });
            }
        }

        private async Task InitializeChatAsync() {
            try {
                await Task.Run(() => chatManager.ConnectToChatAsync(UserProfileSingleton.Nombre, lobbyCode));
            } catch (EndpointNotFoundException ex) {
                throw new Exception("No se pudo conectar al servicio de chat", ex);
            } catch (TimeoutException ex) {
                throw new Exception("Tiempo de espera agotado al conectar al chat", ex);
            }
        }

        private async Task ConnectToLobbyAsync() {
            try {
                bool connected = await Task.Run(() =>
                    lobbyManager.ConnectPlayerToLobby(lobbyCode, UserProfileSingleton.IdPerfil));

                if (!connected) {
                    throw new Exception("No se pudo conectar al lobby");
                }
                isConnected = true;

            } catch (EndpointNotFoundException ex) {
                throw new Exception("No se pudo conectar al servicio del lobby", ex);
            } catch (TimeoutException ex) {
                throw new Exception("Tiempo de espera agotado al conectar al lobby", ex);
            } catch (CommunicationException ex) {
                throw new Exception("Error de comunicación al conectar al lobby", ex);
            }
        }

        public async void InitializeLobby() {
            try {
                Lobby lobby = await lobbyBrowser.GetLobbyByCodeAsync(lobbyCode);

                labelPlayer2.Text = lobby.Players.ContainsKey("PlayerTwo") ? lobby.Players["PlayerTwo"].userName : "Esperando jugador...";
                labelPlayer1.Content = lobby.Players.ContainsKey("PlayerOne") ? lobby.Players["PlayerOne"].userName : "Esperando jugador...";
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert($"Error al inicializar lobby: {ex.Message}");
            }
        }

        private async void OnClosing(object sender, CancelEventArgs e) {
            if (isConnected) {
                try {
                    await Task.Run(() =>
                        lobbyManager.LeaveLobby(lobbyCode, UserProfileSingleton.IdPerfil));
                } catch (Exception ex) {
                    Console.WriteLine($"Error al salir del lobby: {ex.Message}");
                }
            }
        }

        private async void BtnSendMessage_Click(object sender, RoutedEventArgs e) {
            string messageText = txtMessageInput.Text.Trim();

            if (!string.IsNullOrEmpty(messageText)) {
                var message = new Message {
                    userName = UserProfileSingleton.Nombre,
                    chatMessage = messageText
                };

                try {
                    await Task.Run(() => chatManager.SendMessageAsync(UserProfileSingleton.Nombre, message, lobbyCode));
                    txtMessageInput.Clear();
                } catch (EndpointNotFoundException endPointException) {
                    DialogManager.ShowErrorMessageAlert(endPointException.Message);
                } catch (TimeoutException timeOutException) {
                    DialogManager.ShowErrorMessageAlert(timeOutException.Message);
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

        private async void BtnBack_Click(object sender, RoutedEventArgs e) {
            try {
                await lobbyManager.LeaveLobbyAsync(lobbyCode, UserProfileSingleton.IdPerfil);
                await chatManager.LeaveChatAsync(UserProfileSingleton.Nombre, lobbyCode);
                GoToMenuView();
            } catch (Exception ex) {
                MessageBox.Show($"Error al salir del lobby: {ex.Message}");
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

                // Immediately navigate to MenuView without requiring user interaction
                GoToMenuView();
            });
        }
        public void GuestLeftCallback() {

            Dispatcher.Invoke(() => {
                labelPlayer2.Text = "Esperando jugador...";
            });
        }

        public void GuestJoinedCallback(string guestName) {
            Dispatcher.Invoke(() => {
                labelPlayer2.Text = guestName;
            });
        }

        public void BroadcastMessage(Message message) {
            Application.Current.Dispatcher.Invoke(() => {
                Border messageContainer = new Border {
                    Background = new SolidColorBrush(Colors.White),
                    BorderThickness = new Thickness(1),
                    Padding = new Thickness(10),
                    Margin = new Thickness(20, 5, 20, 5),
                    HorizontalAlignment = message.userName == UserProfileSingleton.Nombre ? HorizontalAlignment.Right : HorizontalAlignment.Left
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
