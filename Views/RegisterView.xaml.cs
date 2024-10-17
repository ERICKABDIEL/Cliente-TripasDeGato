using System.Windows;
using System.Windows.Controls;
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

        private void BtnRegistrarse_Click(object sender, RoutedEventArgs e)
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
            // Validar el correo
            if (!Validador.ValidateEmail(email))
            {
                MessageBox.Show("Invalid email format.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            // Validar el nombre de usuario
            if (!Validador.ValidateUsername(username))
            {
                MessageBox.Show("Username must be between 5 and 50 characters and can contain letters, numbers, and underscores.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            // Validar la contraseña
            if (!Validador.ValidatePassword(password))
            {
                MessageBox.Show("Password must be at least 10 characters long and contain at least one letter and one number.", "Validation Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            return true; // Todos los campos son válidos
        }

        private void GoToLoginView()
        {
            LoginView loginView = new LoginView();
            this.NavigationService.Navigate(loginView);
        }
    }
}
