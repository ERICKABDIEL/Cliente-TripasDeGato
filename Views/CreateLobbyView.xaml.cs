using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    /// <summary>
    /// Lógica de interacción para CreateLobbyView.xaml
    /// </summary>
    /// 

    public partial class CreateLobbyView : Page {

        private LobbyBrowserClient lobbyBrowser;
        public CreateLobbyView() {
            InitializeComponent();
            InitializeFormValues();
            lobbyBrowser = new LobbyBrowserClient();
        }

        private void InitializeFormValues() {
            cboxNode.ItemsSource = new List<int> { 8, 10, 12, 14, 16, 18, 20 }; 
            cboxNode.SelectedIndex = 0; 
            cboxMap.ItemsSource = new List<String> {
                Properties.Resources.mapOptionCat,
                Properties.Resources.mapOptionDog,
                Properties.Resources.mapOptionBear
            };

            cboxMap.SelectedIndex = 0;
            cboxTime.ItemsSource = new List<string> { "2:00 min", "5:00 min", "10:00 min" };
            cboxTime.SelectedIndex = 0; 
        }

        private async void BtnCreateLobby_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());

            if (string.IsNullOrWhiteSpace(txtNameLobby.Text)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogEnterGameNameError);
                return;
            }

            string gameName = txtNameLobby.Text.Trim();
            if (!Validador.ValidateGameName(gameName)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogInvalidGameNameError); 
                return;
            }

            if (cboxNode.SelectedItem == null || cboxTime.SelectedItem == null || cboxMap.SelectedItem == null) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogSelectNodesMapTimeError);
                return;
            }

            int nodeCount = (int)cboxNode.SelectedItem;
            TimeSpan duration = TimeSpan.Zero;

            switch (cboxTime.SelectedItem.ToString()) {
                case "2:00 min":
                    duration = TimeSpan.FromMinutes(2);
                    break;
                case "5:00 min":
                    duration = TimeSpan.FromMinutes(5);
                    break;
                case "10:00 min":
                    duration = TimeSpan.FromMinutes(10);
                    break;
                default:
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogInvalidTimeSelected);
                    return;
            }

            try {
                var owner = new Profile {
                    IdProfile = UserProfileSingleton.IdProfile,
                    Username = UserProfileSingleton.UserName
                };

                string lobbyCode = await lobbyBrowser.CreateLobbyAsync(gameName, nodeCount, owner, duration);

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
            }
        }
        public void ValidationGameName() {
                        if (string.IsNullOrWhiteSpace(txtNameLobby.Text)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogEnterGameNameError);
                return;
            }

            string gameName = txtNameLobby.Text.Trim();
            if (!Validador.ValidateGameName(gameName)) {
                DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogInvalidGameNameError); 
                return;
            }
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