using log4net;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views
{
    public partial class RegisterView : Page
    {
        public RegisterView()
        {
            InitializeComponent();
        }

        /*private void BtnSignIn_Click(object sender, RoutedEventArgs e)
        {
            string email = txtEmail.Text;
            string username = txtName.Text;
            string password = txtPassword.Password;

            if (!ValidateFields(email, username, password))
            {
                return;
            }

            var userProxy = new TripasDeGatoServicio.UserManagerClient();
            bool emailRegistered = userProxy.isEmailRegistered(email);
            if (emailRegistered)
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEmailInUse);
                HighlightField(txtEmail);
                return;
            }

            // Proxy para IEmailVerificationManager
            var emailVerificationProxy = new TripasDeGatoServicio.IEmail
            int result = emailVerificationProxy.

            if (result == Constants.SUCCES_OPERATION)
            {
                validationGrid.Visibility = Visibility.Visible;
            }
            else
            {
                DialogManager.ShowErrorMessageAlert("Error sending verification code. Please try again.");
            }
        }*/

        private void BtnSignIn_Click(object sender, RoutedEventArgs e)
        {
            string email = txtEmail.Text;
            string username = txtName.Text;
            string password = txtPassword.Password;

            if (!ValidateFields(email, username, password))
            {
                return;
            }

            var userProxy = new TripasDeGatoServicio.UserManagerClient();
            bool emailRegistered = userProxy.isEmailRegistered(email);
            if (emailRegistered)
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEmailInUse);
                HighlightField(txtEmail);
                return;
            }

            var newUser = new LoginUser
            {
                mail = email,
                password = Hasher.HashToSHA256(password)
            };

            var newProfile = new Profile
            {
                userName = username,
                score = Constants.INITIAL_SCORE,
                picturePath = "/Images/DefaultImageProfile"
            };

            var loginUser = new TripasDeGatoServicio.LoginUser
            {
                mail = email,
                password = newUser.password
            };

            var profile = new TripasDeGatoServicio.Profile
            {
                userName = username
            };

            int result = userProxy.createAccount(loginUser, profile);

            if (result == Constants.SUCCES_OPERATION)
            {
                DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogAccountCreatedSuccesfully);
                GoToLoginView();
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogAccountCreatedErrror);
            }
        }

        private bool ValidateFields(string email, string username, string password)
        {
            bool isValid = true;

            if (!Validador.ValidateEmail(email))
            {
                HighlightField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Visible;
                isValid = false;
            }

            if (!Validador.ValidateUsername(username))
            {
                HighlightField(txtName);
                lbInvalidUser.Visibility = Visibility.Visible;
                isValid = false;
            }

            if (!Validador.ValidatePassword(password))
            {
                HighlightField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Visible;
                isValid = false;
            }
            else
            {
                ResetField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Collapsed;
            }

            return isValid;
        }

        private void HighlightField(Control control)
        {
            control.BorderBrush = Brushes.Red;
        }

        private void GoToLoginView()
        {
            if (this.NavigationService.CanGoBack)
            {
                this.NavigationService.GoBack();
            }
        }

        private void TxtPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            string password = txtPassword.Password;

            if (!Validador.ValidatePassword(password))
            {
                HighlightField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Visible;
                txtPassword.ToolTip = "Password does not meet the criteria";
            }
            else
            {
                ResetField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Collapsed;

                txtPassword.ToolTip = null;
            }

            UpdatePasswordVisibilityIcon();
        }
        private void ResetField(Control control)
        {
            control.BorderBrush = Brushes.White;
        }

        private void TxtName_TextChanged(object sender, TextChangedEventArgs e)
        {
            string username = txtName.Text;
            if (!Validador.ValidateUsername(username))
            {
                HighlightField(txtName);
                lbInvalidUser.Visibility = Visibility.Visible;
            }
            else
            {
                txtName.BorderBrush = Brushes.White;
                lbInvalidUser.Visibility = Visibility.Collapsed;
                txtName.ToolTip = null;
            }
        }

        private void TxtEmail_TextChanged(object sender, TextChangedEventArgs e)
        {
            string email = txtEmail.Text;
            if (!Validador.ValidateEmail(email))
            {
                HighlightField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Visible;
            }
            else
            {
                txtEmail.BorderBrush = Brushes.White;
                lbInvalidEmail.Visibility = Visibility.Collapsed;
                txtEmail.ToolTip = null;
            }
        }


        private void BtnTogglePassword_Checked(object sender, RoutedEventArgs e)
        {
            txtPasswordVisible.Text = txtPassword.Password;
            txtPasswordVisible.Visibility = Visibility.Visible;
            txtPassword.Visibility = Visibility.Collapsed;
        }

        private void BtnTogglePassword_Unchecked(object sender, RoutedEventArgs e)
        {
            txtPassword.Password = txtPasswordVisible.Text;
            txtPasswordVisible.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;
        }

        private void UpdatePasswordVisibilityIcon()
        {
            if (txtPassword.Password.Length > 0)
            {
                btnTogglePassword.Visibility = Visibility.Visible;
            }
            else
            {
                btnTogglePassword.Visibility = Visibility.Collapsed;
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            GoToLoginView();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
        private void BtnValidate_Click(object sender, RoutedEventArgs e)
        {
        } 
        private void BtnResendCode_Click(object sender, RoutedEventArgs e)
        {

        }
        private void BtnBackValidate_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
