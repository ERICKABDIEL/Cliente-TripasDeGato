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

        private void BtnSignIn_Click(object sender, RoutedEventArgs e)
        {
            string email = txtCorreo.Text;
            string username = txtNombre.Text;
            string password = txtPassword.Password;
            string confirmPassword = ConfirmPassword.Password; // Campo de confirmación de contraseña

            // Validar todos los campos, incluyendo que las contraseñas coincidan
            if (!ValidateFields(email, username, password, confirmPassword))
            {
                return;
            }

            // Crear el usuario y perfil
            LoginUser newUser = new LoginUser
            {
                mail = email,
                password = Hasher.HashToSHA256(password)
            };

            Profile newProfile = new Profile
            {
                userName = username,
                score = Constants.INITIAL_SCORE,
                picturePath = "/Images/ImageDefaultProfile"
            };

            // Comunicación con el proxy del servidor
            try
            {
                TripasDeGatoServicio.UserManagerClient proxy = new TripasDeGatoServicio.UserManagerClient();
                TripasDeGatoServicio.LoginUser loginUser = new TripasDeGatoServicio.LoginUser
                {
                    mail = email,
                    password = password
                };

                TripasDeGatoServicio.Profile profile = new TripasDeGatoServicio.Profile
                {
                    userName = username
                };

                int result = proxy.createAccount(loginUser, profile);

                if (result == Constants.SUCCES_OPERATION)
                {
                    MessageBox.Show("Account created successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                    GoToLoginView();
                }
                else
                {
                    MessageBox.Show("Error creating account. Please try again.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            catch (System.ServiceModel.CommunicationException ex)
            {
                MessageBox.Show($"Server communication error: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool ValidateFields(string email, string username, string password, string confirmPassword)
        {
            bool isValid = true;

            // Validar correo
            if (!Validador.ValidateEmail(email))
            {
                txtCorreo.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor, introduzca un correo electrónico válido", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtCorreo.BorderBrush = Brushes.White;
            }

            // Validar nombre de usuario
            if (!Validador.ValidateUsername(username))
            {
                txtNombre.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor, introduzca un nombre de usuario válido", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtNombre.BorderBrush = Brushes.White;
            }

            // Validar la contraseña
            if (!Validador.ValidatePassword(password))
            {
                txtPassword.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor, introduzca una contraseña válida", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtPassword.BorderBrush = Brushes.White;
            }

            // Validar que las contraseñas coincidan
            if (password != confirmPassword)
            {
                ConfirmPassword.BorderBrush = Brushes.Red;
                MessageBox.Show("Las contraseñas no coinciden", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                ConfirmPassword.BorderBrush = Brushes.White;
            }

            return isValid;
        }

        private void GoToLoginView()
        {
            if (this.NavigationService.CanGoBack)
            {
                this.NavigationService.GoBack();
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            GoToLoginView();
        }
    }
}
