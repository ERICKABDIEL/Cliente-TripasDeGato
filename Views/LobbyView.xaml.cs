using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;

namespace TripasDeGatoCliente.Views
{
    public partial class LobbyView : Page
    {
        public LobbyView()
        {
            InitializeComponent();
            LoadUserProfile(); // Cargar los datos del usuario en la ventana
        }

        // Método para cargar los datos del usuario
        private void LoadUserProfile()
        {
            // Verificar que el singleton tiene un nombre y mostrarlo
            if (!string.IsNullOrEmpty(UserProfileSingleton.Nombre))
            {
                lbUserName.Content = UserProfileSingleton.Nombre; // Mostrar el nombre del usuario en la etiqueta
            }
            else
            {
                lbUserName.Content = "Usuario desconocido"; // O un valor predeterminado
            }
        }

        // Evento de clic del botón 'btnBack'
        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            // Restablecer el singleton del usuario logueado
            UserProfileSingleton.Instance.ResetInstance();

            // Navegar de vuelta a la vista de inicio de sesión (LoginView)
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }
    }
}
