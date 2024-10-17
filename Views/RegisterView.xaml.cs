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
            // Recoger datos del formulario
            string email = txtCorreo.Text;
            string username = txtNombre.Text;
            string password = txtPassword.Password;

            // Validar los campos
            if (!ValidateFields(email, username, password))
            {
                return; // Si hay errores, no continuar
            }

            // Crear el usuario y perfil
            LoginUser newUser = new LoginUser
            {
                mail = email,
                password = Hasher.HashToSHA256(password) // Hashear la contraseña
            };

            Profile newProfile = new Profile
            {
                userName = username,
                score = Constants.INITIAL_SCORE,
                picturePath = "/Images/ImageDefaultProfile"
            };

            // Llamar al servicio para crear la cuenta
            IUserManager userManager = new UserManagerClient();
            int result = userManager.createAccount(newUser, newProfile);

            // Manejo de resultados
            if (result == Constants.SUCCES_OPERATION)
            {
                MessageBox.Show("Account created successfully!", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
                // Navegar a la vista de inicio de sesión
                GoToLoginView();
            }
            else
            {
                MessageBox.Show("Error creating account. Please try again.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool ValidateFields(string email, string username, string password)
        {
            bool isValid = true;

            // Validar el correo
            if (!Validador.ValidateEmail(email))
            {
                txtCorreo.BorderBrush = Brushes.Red; // Marcar el campo en rojo
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtCorreo.BorderBrush = Brushes.White; // Reiniciar a normal
            }

            // Validar el nombre de usuario
            if (!Validador.ValidateUsername(username))
            {
                txtNombre.BorderBrush = Brushes.Red; // Marcar el campo en rojo
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtNombre.BorderBrush = Brushes.White; // Reiniciar a normal
            }

            // Validar la contraseña
            if (!Validador.ValidatePassword(password))
            {
                txtPassword.BorderBrush = Brushes.Red; // Marcar el campo en rojo
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtPassword.BorderBrush = Brushes.White; // Reiniciar a normal
            }

            return isValid; // Retornar el estado de validación
        }

        private void GoToLoginView()
        {
            // Regresar a la vista de inicio de sesión
            if (this.NavigationService.CanGoBack)
            {
                this.NavigationService.GoBack();
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            // Volver a la vista de inicio de sesión
            GoToLoginView();
        }

        // Mostrar la contraseña en el TextBox
        private void BtnTogglePassword_Checked(object sender, RoutedEventArgs e)
        {
            txtPasswordVisible.Text = txtPassword.Password;
            txtPasswordVisible.Visibility = Visibility.Visible;
            txtPassword.Visibility = Visibility.Collapsed;
        }

        // Ocultar la contraseña en el PasswordBox
        private void BtnTogglePassword_Unchecked(object sender, RoutedEventArgs e)
        {
            txtPassword.Password = txtPasswordVisible.Text;
            txtPasswordVisible.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;
        }
    }
}
