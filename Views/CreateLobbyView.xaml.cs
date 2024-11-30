using System;
using System.Linq;
using System.Text;
using System.Windows;
using System.ServiceModel;
using System.Windows.Data;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Navigation;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using System.Windows.Media.Imaging;
using log4net.Repository.Hierarchy;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class CreateLobbyView : Page {
        private LobbyBrowserClient _lobbyBrowser;
        public CreateLobbyView() {
            InitializeComponent();
            InitializeFormValues();
            _lobbyBrowser = new LobbyBrowserClient();
        }

        private void InitializeFormValues() {
            cboxNode.ItemsSource = new List<int> { 8, 10, 12, 14, 16, 18, 20 };
            cboxNode.SelectedIndex = 0;
        }

        private async void BtnCreateLobby_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            string gameName = txtNameLobby.Text.Trim();
            if (!ValidationGameName(gameName)) {
                return;
            }
            if (cboxNode.SelectedItem == null) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectNodesError);
                return;
            }
            int nodeCount = (int)cboxNode.SelectedItem;
            TimeSpan duration = TimeSpan.FromMinutes(5); ;
            try {
                var owner = new Profile {
                    IdProfile = UserProfileSingleton.IdProfile,
                    Username = UserProfileSingleton.UserName
                };
                string lobbyCode = await _lobbyBrowser.CreateLobbyAsync(gameName, nodeCount, owner, duration);
                if (!string.IsNullOrEmpty(lobbyCode)) {
                    GoToLobbyView(lobbyCode);
                } else {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogLobbyCreationError);
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

        public bool ValidationGameName(string gameName) {
            bool result = false;
            if (string.IsNullOrWhiteSpace(txtNameLobby.Text)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogEnterGameNameError);
                return result;
            }
            if (!Validador.ValidateGameName(gameName)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogInvalidGameNameError);
                return result;
            }
            result = true;
            return result;
        }

        private void BtnBack_Click(object sender, EventArgs e) {
            GoToMenuView();
        }

        private void GoToLobbyView(string lobbyCode) {
            LobbyView lobbyView = new LobbyView(lobbyCode);
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(lobbyView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }

        private void GoToMenuView() {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }
    }
}