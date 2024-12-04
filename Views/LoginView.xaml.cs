using System;
using System.Windows;
using System.ServiceModel;
using System.Windows.Media;
using System.Windows.Controls;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {

    public partial class LoginView : Page {

        private string _userEmail;
        
        public LoginView() {
            InitializeComponent();
            UpdatePasswordVisibilityIcon();
            txtEmail.TextChanged += TxtEmail_TextChanged;
            txtPassword.PasswordChanged += TxtPassword_PasswordChanged;
            UserProfileSingleton.ResetLobbyCode();
            UserProfileSingleton.ResetChatCode();
            UserProfileSingleton.ResetMatchCode();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e) {
            ResetField(txtEmail);
            ResetField(txtPassword);
            ResetField(txtPasswordVisible);
            if (!VerifyFields()) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogWrongData);
                return;
            }
            string email = txtEmail.Text;
            string password = Hasher.HashToSHA256(txtPassword.Password);
            if (AuthenticateUser(email, password)) {
                SetPlayerOnlineStatus(UserProfileSingleton.IdProfile);
                DisplayMainMenuView();
            }
        }

        private bool VerifyFields() {
            bool emailValid = Validador.ValidateEmail(txtEmail.Text);
            bool passwordValid = Validador.ValidatePassword(txtPassword.Password);
            HighlightField(txtEmail, emailValid);
            HighlightField(txtPassword, passwordValid);
            return emailValid && passwordValid;
        }

        private bool AuthenticateUser(string email, string hashedPassword) {
            bool isAuthenticated = false;
            try {
                IUserManager userManager = new UserManagerClient();
                int validationResult = userManager.VerifyLogin(email, hashedPassword);
                if (validationResult == Constants.DATA_MATCHES) {
                    Profile profile = userManager.GetProfileByMail(email);
                    if (profile != null) {
                        if (IsPlayerOnline(profile.IdProfile)) {
                            return false;
                        }
                        ObtainSingletonData(profile);
                        isAuthenticated = true;
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                    }
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(AuthenticateUser));
            }
            return isAuthenticated;
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

        private bool IsPlayerOnline(int idProfile) {
            try {
                IStatusManager statusManager = new StatusManagerClient();
                GameEnumsPlayerStatus playerStatus = statusManager.GetPlayerStatus(idProfile);
                if (playerStatus == GameEnumsPlayerStatus.Online) {
                    DialogManager.ShowWarningMessageAlert(Properties.Resources.dialogPlayerAlreadyOnline);
                    return true;
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(IsPlayerOnline));
            }
            return false;
        }

        private static void ObtainSingletonData(Profile profile) {
            UserProfileSingleton.CreateInstance(profile);
        }

        private void SetPlayerOnlineStatus(int playerId) {
            try {
                IStatusManager statusManager = new StatusManagerClient();
                statusManager.SetPlayerStatus(playerId, GameEnumsPlayerStatus.Online);
            } catch (Exception exception) {
                HandleException(exception, nameof(SetPlayerOnlineStatus));
            }
        }

        private void BtnGuest_Click(object sender, RoutedEventArgs e) {
            CodeGameMatch codeGameMatch = new CodeGameMatch();
            this.NavigationService.Navigate(codeGameMatch);
        }

        private void DisplayMainMenuView() {
            MenuView menuView = new MenuView();
            this.NavigationService.Navigate(menuView);
        }

        private static void HighlightField(Control control, bool isValid) {
            control.BorderBrush = isValid ? Brushes.White : Brushes.Red;
        }

        private void TxtEmail_TextChanged(object sender, TextChangedEventArgs e) {
            string email = txtEmail.Text;
            bool isValid = Validador.ValidateEmail(email);
            HighlightField(txtEmail, isValid);
            lbInvalidEmail.Visibility = isValid ? Visibility.Collapsed : Visibility.Visible;
        }

        private void TxtPassword_PasswordChanged(object sender, RoutedEventArgs e) {
            string password = txtPassword.Password;
            bool isValid = Validador.ValidatePassword(password);
            HighlightField(txtPassword, isValid);
            lbInvalidPassword.Visibility = isValid ? Visibility.Collapsed : Visibility.Visible;
            UpdatePasswordVisibilityIcon();
        }

        private static void ResetField(Control control) {
            control.BorderBrush = Brushes.White;
        }

        private void BtnSignIn_Click(object sender, RoutedEventArgs e) {
            RegisterView registerView = new RegisterView();
            this.NavigationService.Navigate(registerView);
        }

        private void BtnContinue_Click(object sender, RoutedEventArgs e) {
            string email = txtEmailRecovery.Text.Trim();
            if (string.IsNullOrWhiteSpace(email)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNullEmail);
                return;
            }
            if (!Validador.ValidateEmail(email)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidEmail);
                return;
            }
            try {
                IPasswordRecoveryManager passwordRecovery = new PasswordRecoveryManagerClient();
                int result = passwordRecovery.SendRecoveryCode(email);
                if (result == Constants.SUCCES_OPERATION) {
                    _userEmail = email;
                    gridEnterEmail.Visibility = Visibility.Collapsed;
                    gridRecovery.Visibility = Visibility.Visible;
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogRecoveryCodeHasBeenSent);
                } else if (result == Constants.NO_DATA_MATCHES) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidEmail);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorSendingRecoveryCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnContinue_Click));
            }
        }

        private void BtnBackEnterEmail_Click(object sender, RoutedEventArgs e) {
            gridEnterEmail.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
        }

        private void BtnValidate_Click(object sender, RoutedEventArgs e) {
            string enteredCode = $"{txtValidationCode1.Text}{txtValidationCode2.Text}{txtValidationCode3.Text}{txtValidationCode4.Text}{txtValidationCode5.Text}{txtValidationCode6.Text}";
            try {
                IPasswordRecoveryManager passwordRecovery = new PasswordRecoveryManagerClient();
                bool isCodeValid = passwordRecovery.VerifyRecoveryCode(_userEmail, enteredCode);
                if (isCodeValid) {
                    gridRecovery.Visibility = Visibility.Collapsed;
                    gridRecoveryPassword.Visibility = Visibility.Visible;
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidRecoveryCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnValidate_Click));
            }
        }

        private void BtnResendCode_Click(object sender, RoutedEventArgs e) {
            if (string.IsNullOrEmpty(_userEmail)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNullEmail);
                return;
            }
            try {
                PasswordRecoveryManagerClient emailVerificationProxy = new TripasDeGatoServicio.PasswordRecoveryManagerClient();
                int result = emailVerificationProxy.SendRecoveryCode(_userEmail);
                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogRecoveryCodeResent);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorResendingRecoveryCode);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnResendCode_Click));
            }
        }

        private void BtnBackValidate_Click(object sender, RoutedEventArgs e) {
            gridRecovery.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
        }

        private void BtnSavePassword_Click(object sender, RoutedEventArgs e) {
            string newPassword = txtNewPassword.Password.Trim();
            string confirmPassword = txtNewPasswordConfirm.Password.Trim();
            if (newPassword != confirmPassword) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                return;
            }
            if (!IsValidPassword(newPassword)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidPassword);
                return;
            }
            try {
                IPasswordRecoveryManager passwordRecovery = new PasswordRecoveryManagerClient();
                int result = passwordRecovery.UpdatePassword(_userEmail, Hasher.HashToSHA256(newPassword));
                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogPasswordUpdatedSuccessfully);
                    txtNewPassword.Clear();
                    txtNewPasswordConfirm.Clear();
                    gridRecoveryPassword.Visibility = Visibility.Collapsed;
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorUpdatingPassowrd);
                }
            } catch (Exception exception) {
                HandleException(exception, nameof(BtnSavePassword_Click));
            }
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

        private static bool IsValidPassword(string password) {
            bool isValid = true;
            if (!Validador.ValidatePassword(password)) {
                isValid = false;
            }
            return isValid;
        }

        private void BtnToggleNewPassword_Checked(object sender, RoutedEventArgs e) {
            txtNewPasswordVisible.Text = txtNewPassword.Password;
            txtNewPasswordVisible.Visibility = Visibility.Visible;
            txtNewPassword.Visibility = Visibility.Collapsed;
            txtNewPasswordConfirmVisible.Text = txtNewPasswordConfirm.Password;
            txtNewPasswordConfirmVisible.Visibility = Visibility.Visible;
            txtNewPasswordConfirm.Visibility = Visibility.Collapsed;
        }

        private void BtnToggleNewPassword_Unchecked(object sender, RoutedEventArgs e) {
            txtNewPassword.Password = txtNewPasswordVisible.Text;
            txtNewPassword.Visibility = Visibility.Visible;
            txtNewPasswordVisible.Visibility = Visibility.Collapsed;
            txtNewPasswordConfirm.Password = txtNewPasswordConfirmVisible.Text;
            txtNewPasswordConfirm.Visibility = Visibility.Visible;
            txtNewPasswordConfirmVisible.Visibility = Visibility.Collapsed;
        }

        private void BtnBackRecovery_Click(object sender, RoutedEventArgs e) {
            gridRecoveryPassword.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
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

        private void UpdatePasswordVisibilityIcon() {
            btnTogglePassword.Visibility = txtPassword.Password.Length > 0 ? Visibility.Visible : Visibility.Collapsed;
        }

        private void BtnRecoverPassword_Click(object sender, RoutedEventArgs e) {
            gridEnterEmail.Visibility = Visibility.Visible;
        }
    }
}