using System;
using System.Windows;
using System.ServiceModel;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using System.Collections.Generic;
using System.Windows.Media.Imaging;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Views {

    public partial class ProfileView : Page {

        private bool _isEditing = false;
        private string _selectedProfile = UserProfileSingleton.PicPath;

        public ProfileView() {
            InitializeComponent();
            LoadProfile();
            DisableEditing();
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

        private void LoadProfile() {
            lbUserNameProfile.Content = !string.IsNullOrEmpty(UserProfileSingleton.UserName) ? UserProfileSingleton.UserName : Properties.Resources.lbUnknownUser;
            txtUserName.Text = UserProfileSingleton.UserName;
            cboxLanguage.ItemsSource = new List<string> { "en-US", "es-MX" };
            if (!string.IsNullOrEmpty(UserProfileSingleton.PicPath)) {
                imageProfile.Source = new BitmapImage(new Uri(UserProfileSingleton.PicPath, UriKind.RelativeOrAbsolute));
            }
            lbScoreProfile.Content = string.Format(Properties.Resources.lbScore, UserProfileSingleton.Score);
        }

        private void EnableEditing() {
            txtUserName.IsEnabled = true;
            cboxLanguage.IsEnabled = true;
            btnSave.IsEnabled = true;
            _isEditing = true;
            borderProfiles.IsEnabled = true;
            borderProfiles.Visibility = Visibility.Visible;
            btnSave.Visibility = Visibility.Visible;
        }

        private void DisableEditing() {
            txtUserName.IsEnabled = false;
            cboxLanguage.IsEnabled = false;
            btnSave.IsEnabled = false;
            _isEditing = false;
            borderProfiles.IsEnabled = false;
            borderProfiles.Visibility = Visibility.Collapsed;
            btnSave.Visibility = Visibility.Collapsed;
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e) {
            if (!_isEditing) {
                EnableEditing();
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e) {
            if (_isEditing) {
                if (ValidateFields()) {
                    string userName = txtUserName.Text;
                    string selectedLanguage = cboxLanguage.SelectedItem?.ToString();
                    if (string.IsNullOrEmpty(selectedLanguage)) {
                        SaveProfile(userName, _selectedProfile);
                    } else {
                        MessageBoxResult result = MessageBox.Show(
                            Properties.Resources.dialogMessageLanguagechange,
                            Properties.Resources.lbLanguageChange,
                            MessageBoxButton.YesNo,
                            MessageBoxImage.Question
                        );
                        if (result == MessageBoxResult.Yes) {
                            App.ChangeLanguage(selectedLanguage);
                            System.Diagnostics.Process.Start(Application.ResourceAssembly.Location);
                            Application.Current.Shutdown();
                        } else {
                            SaveProfile(userName, _selectedProfile);
                        }
                    }
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogCompleteFieldsError);
                }
            }
        }

        private async void SaveProfile(string userName, string selectedProfile) {
            try {
                UserManagerClient service = new TripasDeGatoServicio.UserManagerClient();
                int idProfile = UserProfileSingleton.IdProfile;
                string newPic = selectedProfile ?? UserProfileSingleton.PicPath;
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
            } catch (Exception exception) {
                HandleException(exception, nameof(SaveProfile));
            }
        }

        private void ListProfilePics_SelectionChanged(object sender, SelectionChangedEventArgs e) {
            if (lstProfilePics.SelectedItem is ListBoxItem selectedItem) {
                string selectedImage = selectedItem.Tag.ToString();
                imageProfile.Source = new BitmapImage(new Uri(selectedImage, UriKind.Relative));
                UserProfileSingleton.UpdateFotoRuta(selectedImage);
                _selectedProfile = selectedImage;
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
