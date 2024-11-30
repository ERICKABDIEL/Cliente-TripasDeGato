using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.TripasDeGatoServicio;
using TripasDeGatoCliente.Logic;
using log4net.Repository.Hierarchy;
using System.ServiceModel;

namespace TripasDeGatoCliente.Views {
    public partial class Laderboard : Page {
        private LeaderboardManagerClient leaderboardManagerClient;

        public Laderboard() {
            InitializeComponent();
            leaderboardManagerClient = new LeaderboardManagerClient();
            LoadLeaderboardDataAsync();
        }

        private async Task LoadLeaderboardDataAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                List<Profile> highestScores = (await leaderboardManagerClient.GetHighestScoresAsync()).ToList();

                LeaderboardListView.ItemsSource = highestScores;
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

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null) {
                this.NavigationService.Navigate(menuView);
            } else {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNavigationError);
            }
        }
    }
}