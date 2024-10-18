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

            if (!ValidateFields(email, username, password))
            {
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
                picturePath = "/Images/ImageDefaultProfile"
            };

            var proxy = new TripasDeGatoServicio.UserManagerClient();
            var loginUser = new TripasDeGatoServicio.LoginUser
            {
                mail = email,
                password = newUser.password
            };

            var profile = new TripasDeGatoServicio.Profile
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

        private bool ValidateFields(string email, string username, string password)
        {
            bool isValid = true;

            if (!Validador.ValidateEmail(email))
            {
                txtCorreo.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtCorreo.BorderBrush = Brushes.White;
            }

            if (!Validador.ValidateUsername(username))
            {
                txtNombre.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtNombre.BorderBrush = Brushes.White;
            }

            if (!Validador.ValidatePassword(password))
            {
                txtPassword.BorderBrush = Brushes.Red;
                MessageBox.Show("Por favor complete este campo", "Error de Validación", MessageBoxButton.OK, MessageBoxImage.Error);
                isValid = false;
            }
            else
            {
                txtPassword.BorderBrush = Brushes.White;
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
