using System.ServiceModel;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using static TripasDeGatoCliente.Logic.ConstantsManager;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views
{
    public partial class MenuView : Page
    {
        public MenuView()
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
        private bool areElementsVisible = false;

        private void BtnFriends_Click(object sender, RoutedEventArgs e)
        {
            // Alternar visibilidad
            areElementsVisible = !areElementsVisible;

            // Si los elementos deben mostrarse
            if (areElementsVisible)
            {
                // Mostrar los controles
                lstAmigos.Visibility = Visibility.Visible;
                btnAddFriend.Visibility = Visibility.Visible;
                btnRemoveFriend.Visibility = Visibility.Visible;

                // Habilitar los controles
                lstAmigos.IsEnabled = true;
                btnAddFriend.IsEnabled = true;
                btnRemoveFriend.IsEnabled = true;

                // Cambiar el color del botón para mostrar que está activo
                btnFriends.Background = new SolidColorBrush(Colors.Green);
            }
            else
            {
                // Ocultar los controles
                lstAmigos.Visibility = Visibility.Collapsed;
                btnAddFriend.Visibility = Visibility.Collapsed;
                btnRemoveFriend.Visibility = Visibility.Collapsed;
                txtFriendName.Visibility = Visibility.Collapsed; // Ocultar TextBox
                btnAdd.Visibility = Visibility.Collapsed; // Ocultar botón agregar

                // Deshabilitar los controles
                lstAmigos.IsEnabled = false;
                btnAddFriend.IsEnabled = false;
                btnRemoveFriend.IsEnabled = false;
                txtFriendName.IsEnabled = false; // Deshabilitar TextBox
                btnAdd.IsEnabled = false; // Deshabilitar botón agregar

                // Restaurar el color original del botón
                btnFriends.Background = new SolidColorBrush(Colors.Black);
                btnAddFriend.Background = new SolidColorBrush(Colors.Black);
            }
        }
        private void BtnAddFriend_Click(object sender, RoutedEventArgs e)
        {
            // Alternar visibilidad
            areElementsVisible = !areElementsVisible;

            if (areElementsVisible)
            {
                txtFriendName.Visibility = Visibility.Visible; // Mostrar TextBox
                btnAdd.Visibility = Visibility.Visible; // Mostrar botón agregar
                txtFriendName.IsEnabled = true; // Habilitar TextBox
                btnAdd.IsEnabled = true; // Habilitar botón agregar

                // Cambiar el color del botón para mostrar que está activo
                btnAddFriend.Background = new SolidColorBrush(Colors.Green);
            }
            else
            {
                // Ocultar los controles
                txtFriendName.Visibility = Visibility.Collapsed; // Ocultar TextBox
                btnAdd.Visibility = Visibility.Collapsed; // Ocultar botón agregar

                // Deshabilitar los controles
                txtFriendName.IsEnabled = false; // Deshabilitar TextBox
                btnAdd.IsEnabled = false; // Deshabilitar botón agregar

                // Restaurar el color original del botón
                btnAddFriend.Background = new SolidColorBrush(Colors.Black);
            }
        }

        // Evento para agregar un amigo
        private async void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            string friendName = txtFriendName.Text.Trim();

            if (!string.IsNullOrEmpty(friendName))
            {
                try
                {
                    // Crear la instancia del cliente de UserManager
                    UserManagerClient userManager = new UserManagerClient();

                    // Obtener el ID del perfil del amigo utilizando el método getProfileId en el servidor
                    int friendProfileId = userManager.getProfileId(friendName);

                    if (friendProfileId > 0)
                    {
                        FriendsManagerClient friendsManager = new FriendsManagerClient();
                        int userProfileId = UserProfileSingleton.IdPerfil;
                        int result = friendsManager.addFriend(userProfileId, friendProfileId);

                        if (result == Constants.SUCCES_OPERATION)
                        {
                            MessageBox.Show($"Amigo '{friendName}' agregado correctamente.");
                        }
                        else
                        {
                            MessageBox.Show("Error al agregar el amigo. Intenta de nuevo.");
                        }
                    }
                    else
                    {
                        MessageBox.Show("No se encontró un perfil que coincida con ese nombre.");
                    }

                    // Limpiar el TextBox después de agregar
                    txtFriendName.Clear();
                }
                catch (FaultException<ProfileNotFoundFault> ex)
                {
                    MessageBox.Show(ex.Detail.errorMessage, "Perfil no encontrado");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Ocurrió un error: {ex.Message}");
                }
            }
            else
            {
                MessageBox.Show("Por favor, ingresa un nombre válido.");
            }
        }



    }
}
