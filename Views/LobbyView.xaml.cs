using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Threading;
using TripasDeGatoCliente.TripasDeGatoServicio;
using TripasDeGatoCliente.Logic;
using System.Threading.Tasks;

namespace TripasDeGatoCliente.Views
{
    public partial class LobbyView : Page, IChatManagerCallback
    {
        private ChatManagerClient chatManager;
        public LobbyView()
        {
            InitializeComponent();
            labelPlayer1.Content = UserProfileSingleton.Nombre;
            chatManager = new ChatManagerClient(new InstanceContext(this));
            InitializeChatAsync();
        }

        private async void InitializeChatAsync()
        {
            try
            {
                await Task.Run(() => chatManager.connectToLobby(UserProfileSingleton.Nombre));
                SendWelcomeNotification();
            }
            catch (Exception ex)
            {
                HandleChatException(ex);
            }
        }

        private async void SendWelcomeNotification()
        {
            var message = new Message {
                chatMessage = string.Format(Properties.Resources.dialogUserJoinedChat, UserProfileSingleton.Nombre),
                userName = "Server notification"
            };

            try
            {
                await Task.Run(() => chatManager.sendMessage(UserProfileSingleton.Nombre, message)); 
            }
            catch (Exception ex)
            {
                HandleChatException(ex);
            }
        }

        public void broadcastMessage(Message message)
        {
            Dispatcher.Invoke(() =>
            {
                Border messageContainer = new Border
                {
                    Background = new SolidColorBrush(Colors.White),
                    BorderThickness = new Thickness(1),
                    Padding = new Thickness(10),
                    Margin = new Thickness(20, 5, 20, 5),
                    HorizontalAlignment = message.userName == UserProfileSingleton.Nombre ? HorizontalAlignment.Right : HorizontalAlignment.Left
                };

                TextBlock messageBlock = new TextBlock
                {
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

        private async void BtnSendMessage_Click(object sender, RoutedEventArgs e)
        {
            string messageText = txtMessageInput.Text.Trim();

            if (!string.IsNullOrEmpty(messageText))
            {
                var message = new Message
                {
                    userName = UserProfileSingleton.Nombre,
                    chatMessage = messageText
                };

                try
                {
                    await Task.Run(() => chatManager.sendMessage(UserProfileSingleton.Nombre, message));
                    txtMessageInput.Clear();
                }
                catch (Exception ex)
                {
                    HandleChatException(ex);
                }
            }
        }

        private void HandleChatException(Exception ex)
        {
            DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogChatCommunicationError, ex.Message));
        }

        private void ScrollToBottom()
        {
            var scrollViewer = VisualTreeHelper.GetParent(ChatMessagesPanel) as ScrollViewer;
            scrollViewer?.ScrollToEnd();
        }



        private void GoToMenuView()
        {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null)
            {
                this.NavigationService.Navigate(menuView);
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            GoToMenuView();
        }
    }
}
