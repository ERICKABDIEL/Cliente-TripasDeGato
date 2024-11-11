using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.TripasDeGatoServicio;
using TripasDeGatoCliente.Logic;

namespace TripasDeGatoCliente.Views {
    public partial class Laderboard : Page {
        private LeaderboardManagerClient leaderboardManagerClient;

        public Laderboard() {
            InitializeComponent();
            leaderboardManagerClient = new LeaderboardManagerClient();
            LoadLeaderboardDataAsync();
        }

        private async Task LoadLeaderboardDataAsync() {
            try {
                // Llamada asíncrona al servicio para obtener los puntajes más altos
                List<Profile> highestScores = (await leaderboardManagerClient.GetHighestScoresAsync()).ToList();

                // Asignar los datos al ListView para que se muestren en la interfaz
                LeaderboardListView.ItemsSource = highestScores;
            } catch (Exception ex) {
                // Manejo de errores al cargar los datos del ranking
                MessageBox.Show($"Error al cargar los puntajes: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
