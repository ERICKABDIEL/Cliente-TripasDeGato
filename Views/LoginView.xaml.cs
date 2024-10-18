using System.ServiceModel;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.Properties;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views
{
    public partial class LoginView : Page
    {
        public LoginView()
        {
            InitializeComponent();
            UpdatePasswordVisibilityIcon();
            txtEmail.TextChanged += TxtEmail_TextChanged;
            txtPassword.PasswordChanged += TxtPassword_PasswordChanged;
        }
        private void TxtEmail_TextChanged(object sender, TextChangedEventArgs e)
        {
            txtEmail.BorderBrush = new SolidColorBrush(Colors.White);
        }

        private void TxtPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            txtPassword.BorderBrush = new SolidColorBrush(Colors.White);
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            txtEmail.BorderBrush = new SolidColorBrush(Colors.White);
            txtPassword.BorderBrush = new SolidColorBrush(Colors.White);

            LoginUser userAccount = new LoginUser
            {
                mail = txtEmail.Text,
                password = Hasher.HashToSHA256(txtPassword.Password)
            };

            if (VerifyFields())
            {
                if (ValidateCredentials(userAccount))
                {
                    DisplayMainMenuView();
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                }
            }
            else
            {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        private bool VerifyFields()
        {
            bool passwordValid = Validador.ValidatePassword(txtPassword.Password);
            bool emailValid = Validador.ValidateEmail(txtEmail.Text);

            if (!passwordValid)
            {
                txtPassword.BorderBrush = Brushes.Red;
            }
            if (!emailValid)
            {
                txtEmail.BorderBrush = Brushes.Red;
            }

            return passwordValid && emailValid;
        }

        public bool ValidateCredentials(LoginUser user)
        {
            bool validateResult = false;
            LoggerManager logger = new LoggerManager(this.GetType());
            int validationResult = 0;

            try
            {
                IUserManager userManager = new UserManagerClient();
                validationResult = userManager.verifyLogin(user);

                if (validationResult == Constants.DATA_MATCHES)
                {
                    Profile profile = userManager.getProfile(user.mail, user.password);
                    if (profile != null)
                    {
                        ObtainSingletonData(profile);
                        validateResult = true;
                    }
                    else
                    {
                        DialogManager.ShowErrorMessageAlert("No se pudo obtener el perfil del usuario.");
                    }
                }
                else
                {
                    DialogManager.ShowErrorMessageAlert("Credenciales incorrectas.");
                }
            }
            catch (Exception ex)
            {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert("Error de comunicación con el servidor.");
            }

            return validateResult;
        }

        private void ObtainSingletonData(Profile profile)
        {
            UserProfileSingleton.Instance.CreateInstance(profile);
        }

        private void DisplayMainMenuView()
        {
            MenuView menuView = new MenuView();
            this.NavigationService.Navigate(menuView);
        }
        private void BtnSignIn_Click(object sender, RoutedEventArgs e)
        {
            RegisterView registerView = new RegisterView();
            this.NavigationService.Navigate(registerView);
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
    }
}