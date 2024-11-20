using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {
    public partial class ProfileView : Page {
        private bool isEditing = false;

        public ProfileView() {
            InitializeComponent();
            LoadProfile();
            DisableEditing();
        }

        private void LoadProfile() {
            lbUserNameProfile.Content = !string.IsNullOrEmpty(UserProfileSingleton.Nombre) ? UserProfileSingleton.Nombre : "Usuario desconocido";
            txtUserName.Text = UserProfileSingleton.Nombre;
            cboxLanguage.ItemsSource = new List<string> { "Español", "Inglés", "Francés" };
            if (!string.IsNullOrEmpty(UserProfileSingleton.FotoRuta)) {
                imageProfile.Source = new BitmapImage(new Uri(UserProfileSingleton.FotoRuta, UriKind.RelativeOrAbsolute));
            }
            lbScoreProfile.Content = string.Format(Properties.Resources.lbScore, UserProfileSingleton.Puntaje);
        }

        private void EnableEditing() {
            txtUserName.IsEnabled = true;
            cboxLanguage.IsEnabled = true;
            btnSave.IsEnabled = true;
            isEditing = true;
            borderProfiles.IsEnabled = true;
            borderProfiles.Visibility = Visibility.Visible;
            btnSave.Visibility = Visibility.Visible;
        }

        private void DisableEditing() {
            txtUserName.IsEnabled = false;
            cboxLanguage.IsEnabled = false;
            btnSave.IsEnabled = false;
            isEditing = false;
            borderProfiles.IsEnabled = false;
            borderProfiles.Visibility = Visibility.Collapsed;
            btnSave.Visibility = Visibility.Collapsed;
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e) {
            if (!isEditing) {
                EnableEditing();
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e) {
            if (isEditing) {
                if (ValidateFields()) {
                    string userName = txtUserName.Text;
                    string selectedLanguage = cboxLanguage.SelectedItem?.ToString();

                    // Obtén el ListBoxItem seleccionado y su Tag
                    var selectedListBoxItem = lsb_ProfilePics.SelectedItem as ListBoxItem;
                    string selectedProfile = selectedListBoxItem?.Tag?.ToString();

                    SaveProfile(userName, selectedLanguage, selectedProfile);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCompleteFieldsError);
                }
            }
        }


        private async void SaveProfile(string userName, string selectedLanguage, string selectedProfile) {
            try {
                var service = new TripasDeGatoServicio.UserManagerClient();
                int idProfile = UserProfileSingleton.IdPerfil;
                string newPic = selectedProfile ?? UserProfileSingleton.FotoRuta;  // Asigna la nueva foto seleccionada
                int updateResult = await service.UpdateProfileAsync(idProfile, userName, newPic);

                if (updateResult == ConstantsManager.Constants.SUCCES_OPERATION) {
                    UserProfileSingleton.UpdateNombre(userName);
                    UserProfileSingleton.UpdateFotoRuta(newPic);
                    LoadProfile();
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogChangesSaved);
                    DisableEditing();
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorSavingProfileData);
                }
            } catch (EndpointNotFoundException) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogConnectionErrorWithServer);
            } catch (TimeoutException) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogRequestTimeout);
            } catch (CommunicationException) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCommunicationError);
            } catch (Exception ex) {
                DialogManager.ShowErrorMessageAlert(string.Format(Properties.Resources.dialogErrorSavingProfile, ex.Message));
            }
        }

        private bool ValidateFields() {
            bool isValid = true;

            if (string.IsNullOrWhiteSpace(txtUserName.Text)) {
                isValid = false;
                txtUserName.BorderBrush = System.Windows.Media.Brushes.Red;
            } else {
                txtUserName.BorderBrush = System.Windows.Media.Brushes.White;
            }
            return isValid;
        }

        private void GoToMenuView() {
            MenuView menuView = new MenuView();
            this.NavigationService?.Navigate(menuView);
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            GoToMenuView();
        }
    }
}
