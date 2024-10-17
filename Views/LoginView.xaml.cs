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
        }

        private void BxtUsuario_TextChanged(object sender, TextChangedEventArgs e)
        {
            // Implementar cualquier funcionalidad necesaria aquí si se requiere
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            // Resetear los bordes a color blanco para errores anteriores
            txtEmail.BorderBrush = new SolidColorBrush(Colors.White);
            txtPassword.BorderBrush = new SolidColorBrush(Colors.White);

            // Crear el objeto LoginUser con el correo y la contraseña (hasheada)
            LoginUser userAccount = new LoginUser
            {
                mail = txtEmail.Text,
                password = Hasher.HashToSHA256(txtPassword.Password) // Hasheamos la contraseña antes de enviar
            };

            // Verificar los campos
            if (VerifyFields())
            {
                // Validar las credenciales con el servidor
                if (ValidateCredentials(userAccount))
                {
                    // Si son válidas, navegar al menú principal
                    DisplayMainMenuView();
                }
                else
                {
                    // Mostrar mensaje de error si no coinciden las credenciales
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                }
            }
            else
            {
                // Mostrar mensaje de error si los campos no son válidos
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
            }
        }

        // Método para verificar los campos de texto (email y contraseña)
        private bool VerifyFields()
        {
            bool passwordValid = Validador.ValidatePassword(txtPassword.Password);
            bool emailValid = Validador.ValidateEmail(txtEmail.Text);

            // Mostrar bordes en rojo si hay errores
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

        // Método para validar credenciales llamando al servidor
        public bool ValidateCredentials(LoginUser user)
        {
            bool validateResult = false;
            LoggerManager logger = new LoggerManager(this.GetType());
            int validationResult = 0;

            try
            {
                // Crear instancia del servicio y verificar el login
                IUserManager userManager = new UserManagerClient();
                validationResult = userManager.verifyLogin(user);

                // Validar el resultado devuelto por el servicio
                if (validationResult == Constants.DATA_MATCHES)
                {
                    // Si las credenciales son válidas, obtener el perfil del usuario
                    Profile profile = userManager.getProfile(user.mail, user.password);
                    if (profile != null)
                    {
                        ObtainSingletonData(profile); // Guardar los datos del perfil en el singleton
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

        // Método para almacenar los datos del perfil en el Singleton
        private void ObtainSingletonData(Profile profile)
        {
            // Llamamos al Singleton y creamos la instancia con los datos del perfil
            UserProfileSingleton.Instance.CreateInstance(profile);
        }

        // Método para navegar al menú principal si el login es exitoso
        private void DisplayMainMenuView()
        {
            LobbyView lobbyView = new LobbyView();
            this.NavigationService.Navigate(lobbyView);
        }

        // Método para mostrar la contraseña
        private void BtnTogglePassword_Checked(object sender, RoutedEventArgs e)
        {
            txtPasswordVisible.Text = txtPassword.Password;
            txtPasswordVisible.Visibility = Visibility.Visible;
            txtPassword.Visibility = Visibility.Collapsed;
        }

        // Método para ocultar la contraseña
        private void BtnTogglePassword_Unchecked(object sender, RoutedEventArgs e)
        {
            txtPassword.Password = txtPasswordVisible.Text;
            txtPasswordVisible.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;
        }

        // Actualiza el icono de visibilidad de la contraseña
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
