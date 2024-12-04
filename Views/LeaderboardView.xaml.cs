using System;
using System.Linq;
using System.Windows;
using System.ServiceModel;
using System.Threading.Tasks;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using log4net.Repository.Hierarchy;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {

    public partial class Laderboard : Page {
    
        private LeaderboardManagerClient _leaderboardManagerClient;

        public Laderboard() {
            InitializeComponent();
            _leaderboardManagerClient = new LeaderboardManagerClient();
            LoadLeaderboardData();
        }

        private async Task LoadLeaderboardData() {
            await LoadLeaderboardDataAsync();

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

        private async Task LoadLeaderboardDataAsync() {
            try {
                List<Profile> highestScores = (await _leaderboardManagerClient.GetHighestScoresAsync()).ToList();
                lstViewLeaderboard.ItemsSource = highestScores;
            } catch (Exception exception) {
                HandleException(exception, nameof(LoadLeaderboardDataAsync));
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