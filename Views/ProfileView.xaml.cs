using System;
using System.Windows;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic; 

namespace TripasDeGatoCliente.Views
{
    public partial class ProfileView : Page
    {
        private bool isEditing = false;

        public ProfileView()
        {
            InitializeComponent();
            LoadProfile(); 
            DisableEditing();
        }

        private void LoadProfile()
        {
            if (!string.IsNullOrEmpty(UserProfileSingleton.Nombre))
            {
                lbUserNameProfile.Content = UserProfileSingleton.Nombre;
            }
            else
            {
                lbUserNameProfile.Content = "Usuario desconocido";
            }
            txtUserName.Text = UserProfileSingleton.Nombre;
            cboxLanguage.SelectedItem = "Español";
        }

        private void EnableEditing()
        {
            txtUserName.IsEnabled = true;
            cboxLanguage.IsEnabled = true;
            btnSave.IsEnabled = true;
            isEditing = true;
            btnSave.Visibility= Visibility.Visible;
        }

        private void DisableEditing()
        {
            txtUserName.IsEnabled= false;
            cboxLanguage.IsEnabled = false;
            btnSave.IsEnabled = false;
            isEditing = false;
            btnSave.Visibility = Visibility.Collapsed;
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (!isEditing)
            {
                EnableEditing();
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (isEditing)
            {
                string userName = txtUserName.Text;
                string selectedLanguage = cboxLanguage.SelectedItem?.ToString();

                if (string.IsNullOrEmpty(userName))
                {
                    MessageBox.Show("El nombre de usuario no puede estar vacío.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                SaveProfile(userName, selectedLanguage);

                DisableEditing();
                MessageBox.Show("Los cambios se han guardado correctamente.", "Éxito", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        // Método para guardar el perfil (simulación de la lógica de guardado)
        private void SaveProfile(string userName, string selectedLanguage)
        {
            // Si tienes lógica para guardar en el servidor, podrías llamar a un servicio aquí
            // Por ejemplo, enviar los datos actualizados al servidor
        }
        private void GoToMenuView()
        {
            MenuView menuView = new MenuView();
            if (this.NavigationService != null)
            {
                this.NavigationService.Navigate(menuView);
            }
            else
            {
                MessageBox.Show("Error: No se puede navegar al menu.");
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            GoToMenuView();
        }

    }
}
