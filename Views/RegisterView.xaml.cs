using System;
using System.Windows;
using System.ServiceModel;
using System.Windows.Media;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {

    public partial class RegisterView : Page {

        public RegisterView() {
            InitializeComponent();
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

        private void BtnSignIn_Click(object sender, RoutedEventArgs e) {
            string email = txtEmail.Text;
            string username = txtName.Text;
            string password = txtPassword.Password;
            if (!ValidateFields(email, username, password)) return;
            try {
                if (!VerifyEmailAvailability(email)) {
                    return;
                }
                if (!VerifyUsernameAvailability(username)) {
                    return;
                }
                SendVerificationCode(email);
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnSignIn_Click));
            }
        }

        private bool VerifyEmailAvailability(string email) {
            bool isEmailAvailable = true;
            UserManagerClient userProxy = new TripasDeGatoServicio.UserManagerClient();
            try {
                int emailCheckResult = userProxy.IsEmailRegistered(email);
                if (emailCheckResult == Constants.DATA_MATCHES) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEmailInUse);
                    HighlightField(txtEmail);
                    isEmailAvailable = false;
                } else if (emailCheckResult == Constants.ERROR_OPERATION) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorCheckingEmail);
                    isEmailAvailable = false;
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(VerifyEmailAvailability));
                isEmailAvailable = false;
            }
            return isEmailAvailable;
        }

        private bool VerifyUsernameAvailability(string username) {
            bool isUsernameAvailable = true;
            UserManagerClient userProxy = new TripasDeGatoServicio.UserManagerClient();
            try {
                int usernameCheckResult = userProxy.IsNameRegistered(username);
                if (usernameCheckResult == Constants.DATA_MATCHES) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogUserNameInUse);
                    HighlightField(txtName);
                    isUsernameAvailable = false;
                } else if (usernameCheckResult == Constants.ERROR_OPERATION) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorCheckingUserName);
                    isUsernameAvailable = false;
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(VerifyUsernameAvailability));
                isUsernameAvailable = false;
            }
            return isUsernameAvailable;
        }

        private void SendVerificationCode(string email) {
            try {
                EmailVerificationManagerClient emailVerificationProxy = new TripasDeGatoServicio.EmailVerificationManagerClient();
                int result = emailVerificationProxy.SendVerificationCodeRegister(email);
                if (result == Constants.SUCCES_OPERATION) {
                    verificationGrid.Visibility = Visibility.Visible;
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogVerificationCodeSent);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorSendingVerificationCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(SendVerificationCode));
            }
        }

        private void BtnResendCode_Click(object sender, RoutedEventArgs e) {
            try {
                EmailVerificationManagerClient emailVerificationProxy = new TripasDeGatoServicio.EmailVerificationManagerClient();
                int result = emailVerificationProxy.SendVerificationCodeRegister(txtEmail.Text);
                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogVerificationCodeResentSuccessfully);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorResendingVerificationCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnResendCode_Click));
            }
        }

        private void BtnValidate_Click(object sender, RoutedEventArgs e) {
            try {
                string enteredCode = $"{txtValidationCode1.Text}{txtValidationCode2.Text}{txtValidationCode3.Text}{txtValidationCode4.Text}{txtValidationCode5.Text}{txtValidationCode6.Text}";
                EmailVerificationManagerClient emailVerificationProxy = new TripasDeGatoServicio.EmailVerificationManagerClient();
                bool isCodeValid = emailVerificationProxy.VerifyCode(txtEmail.Text, enteredCode);
                if (isCodeValid) {
                    UserManagerClient userProxy = new TripasDeGatoServicio.UserManagerClient();
                    LoginUser newUser = new TripasDeGatoServicio.LoginUser {
                        Mail = txtEmail.Text,
                        Password = Hasher.HashToSHA256(txtPassword.Password)
                    };
                    Profile newProfile = new TripasDeGatoServicio.Profile {
                        Username = txtName.Text,
                    };
                    int accountResult = userProxy.CreateAccount(newUser, newProfile);
                    if (accountResult == Constants.SUCCES_OPERATION) {
                        DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogAccountCreatedSuccesfully);
                        verificationGrid.Visibility = Visibility.Collapsed;
                        GoToLoginView();
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogAccountCreatedErrror);
                    }
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidVerificationCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnValidate_Click));
            }
        }

        private bool ValidateFields(string email, string username, string password) {
            bool isValid = true;
            if (!Validador.ValidateEmail(email)) {
                HighlightField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Visible;
                isValid = false;
            } else {
                ResetField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Collapsed;
            }
            if (!Validador.ValidateUsername(username)) {
                HighlightField(txtName);
                lbInvalidUser.Visibility = Visibility.Visible;
                isValid = false;
            } else {
                ResetField(txtName);
                lbInvalidUser.Visibility = Visibility.Collapsed;
            }
            if (!Validador.ValidatePassword(password)) {
                HighlightField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Visible;
                isValid = false;
            } else {
                ResetField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Collapsed;
            }
            return isValid;
        }

        private static void HighlightField(Control control) {
            control.BorderBrush = Brushes.Red;
        }

        private void TxtPassword_PasswordChanged(object sender, RoutedEventArgs e) {
            if (txtPassword.Visibility == Visibility.Visible) {
                ValidatePassword(txtPassword.Password);
            }
        }

        private void TxtPasswordVisible_PasswordChanged(object sender, RoutedEventArgs e) {
            if (txtPasswordVisible.Visibility == Visibility.Visible) {
                ValidatePassword(txtPasswordVisible.Text);
            }
        }

        private void ValidatePassword(string password) {
            if (!Validador.ValidatePassword(password)) {
                HighlightField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Visible;
            } else {
                ResetField(txtPassword);
                lbInvalidPassword.Visibility = Visibility.Collapsed;
            }
        }

        private void BtnTogglePassword_Checked(object sender, RoutedEventArgs e) {
            txtPasswordVisible.Text = txtPassword.Password;
            txtPasswordVisible.Visibility = Visibility.Visible;
            txtPassword.Visibility = Visibility.Collapsed;
        }

        private void BtnTogglePassword_Unchecked(object sender, RoutedEventArgs e) {
            txtPassword.Password = txtPasswordVisible.Text;
            txtPasswordVisible.Visibility = Visibility.Collapsed;
            txtPassword.Visibility = Visibility.Visible;
        }

        private static void ResetField(Control control) {
            control.BorderBrush = Brushes.White;
        }

        private void TxtName_TextChanged(object sender, TextChangedEventArgs e) {
            string username = txtName.Text;
            if (!Validador.ValidateUsername(username)) {
                HighlightField(txtName);
                lbInvalidUser.Visibility = Visibility.Visible;
            } else {
                ResetField(txtName);
                lbInvalidUser.Visibility = Visibility.Collapsed;
            }
        }

        private void TxtEmail_TextChanged(object sender, TextChangedEventArgs e) {
            string email = txtEmail.Text;
            if (!Validador.ValidateEmail(email)) {
                HighlightField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Visible;
            } else {
                ResetField(txtEmail);
                lbInvalidEmail.Visibility = Visibility.Collapsed;
            }
        }

        private void GoToLoginView() {
            if (this.NavigationService.CanGoBack) {
                this.NavigationService.GoBack();
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e) {
            GoToLoginView();
        }

        private void BtnBackValidate_Click(object sender, RoutedEventArgs e) {
            verificationGrid.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtName.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
        }

        private void TxtValidationCode_TextChanged(object sender, TextChangedEventArgs e) {
            TextBox currentTextBox = sender as TextBox;
            if (currentTextBox.Text.Length == 1) {
                if (currentTextBox == txtValidationCode1) {
                    txtValidationCode2.Focus();
                } else if (currentTextBox == txtValidationCode2) {
                    txtValidationCode3.Focus();
                } else if (currentTextBox == txtValidationCode3) {
                    txtValidationCode4.Focus();
                } else if (currentTextBox == txtValidationCode4) {
                    txtValidationCode5.Focus();
                } else if (currentTextBox == txtValidationCode5) {
                    txtValidationCode6.Focus();
                }
            }
        }
    }
}
