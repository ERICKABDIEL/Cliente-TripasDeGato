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
            LoadLeaderboardDataAsync();
        }

        private async Task LoadLeaderboardDataAsync() {
            LoggerManager logger = new LoggerManager(this.GetType());
            try {
                List<Profile> highestScores = (await _leaderboardManagerClient.GetHighestScoresAsync()).ToList();
                lstViewLeaderboard.ItemsSource = highestScores;
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