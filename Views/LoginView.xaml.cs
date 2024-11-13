using System;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using TripasDeGatoCliente.Logic;
using TripasDeGatoCliente.TripasDeGatoServicio;
using static TripasDeGatoCliente.Logic.ConstantsManager;

namespace TripasDeGatoCliente.Views {
    public partial class LoginView : Page {
        private string userEmail;
        public LoginView() {
            InitializeComponent();
            UpdatePasswordVisibilityIcon();
            txtEmail.TextChanged += TxtEmail_TextChanged;
            txtPassword.PasswordChanged += TxtPassword_PasswordChanged;
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
                SetPlayerOnlineStatus(UserProfileSingleton.IdPerfil);
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
            LoggerManager logger = new LoggerManager(this.GetType());
            bool isAuthenticated = false;

            try {
                IUserManager userManager = new UserManagerClient();
                int validationResult = userManager.VerifyLogin(email, hashedPassword);

                if (validationResult == Constants.DATA_MATCHES) {
                    Profile profile = userManager.GetProfileByMail(email);
                    if (profile != null) {
                        ObtainSingletonData(profile);
                        isAuthenticated = true;
                    } else {
                        DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNotRetrievedProfile);
                    }
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogMissmatchesCredentials);
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }

            return isAuthenticated;
        }
        private void ObtainSingletonData(Profile profile) {
            UserProfileSingleton.Instance.CreateInstance(profile);
        }
        //NUEVO
        private void SetPlayerOnlineStatus(int playerId) {
            LoggerManager logger = new LoggerManager(this.GetType());

            try {
                IStatusManager statusManager = new StatusManagerClient();
                statusManager.SetPlayerStatus(playerId, GameEnumsPlayerStatus.Online);
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void DisplayMainMenuView() {
            MenuView menuView = new MenuView();
            this.NavigationService.Navigate(menuView);
        }
        private void HighlightField(Control control, bool isValid) {
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

        private void ResetField(Control control) {
            control.BorderBrush = Brushes.White;
        }

        private void BtnSignIn_Click(object sender, RoutedEventArgs e) {
            RegisterView registerView = new RegisterView();
            this.NavigationService.Navigate(registerView);
        }
        private void BtnGuest_Click(object sender, RoutedEventArgs e) {

        }

        private void BtnContinue_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
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
                    userEmail = email;
                    enterEmailGrid.Visibility = Visibility.Collapsed;
                    validationGrid.Visibility = Visibility.Visible;
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogRecoveryCodeHasBeenSent);
                } else if (result == Constants.NO_DATA_MATCHES) {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidEmail);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorSendingRecoveryCode);
                }
            } catch (EndpointNotFoundException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException ex) {
                logger.LogError(ex);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void BtnBackEnterEmail_Click(object sender, RoutedEventArgs e) {
            enterEmailGrid.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
        }
        private void BtnValidate_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());
            string enteredCode = $"{txtValidationCode1.Text}{txtValidationCode2.Text}{txtValidationCode3.Text}{txtValidationCode4.Text}{txtValidationCode5.Text}{txtValidationCode6.Text}";

            try {
                IPasswordRecoveryManager passwordRecovery = new PasswordRecoveryManagerClient();
                bool isCodeValid = passwordRecovery.VerifyRecoveryCode(userEmail, enteredCode);

                if (isCodeValid) {
                    validationGrid.Visibility = Visibility.Collapsed;
                    recoveryPasswordGrid.Visibility = Visibility.Visible;
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogInvalidRecoveryCode);
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private void BtnResendCode_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());

            if (string.IsNullOrEmpty(userEmail)) {
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogNullEmail);
                return;
            }

            try {
                var emailVerificationProxy = new TripasDeGatoServicio.PasswordRecoveryManagerClient();
                int result = emailVerificationProxy.SendRecoveryCode(userEmail);

                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogRecoveryCodeResent);
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorResendingRecoveryCode);
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }


        private void BtnBackValidate_Click(object sender, RoutedEventArgs e) {
            validationGrid.Visibility = Visibility.Collapsed;
            txtEmail.Clear();
            txtPassword.Clear();
            txtPasswordVisible.Clear();
        }

        private void TxtValidationCode_TextChanged(object sender, TextChangedEventArgs e) {
            TextBox currentTextBox = sender as TextBox;
            if (currentTextBox.Text.Length == 1) {
                if (currentTextBox == txtValidationCode1)
                    txtValidationCode2.Focus();
                else if (currentTextBox == txtValidationCode2)
                    txtValidationCode3.Focus();
                else if (currentTextBox == txtValidationCode3)
                    txtValidationCode4.Focus();
                else if (currentTextBox == txtValidationCode4)
                    txtValidationCode5.Focus();
                else if (currentTextBox == txtValidationCode5)
                    txtValidationCode6.Focus();
            }
        }

        private void BtnSavePassword_Click(object sender, RoutedEventArgs e) {
            LoggerManager logger = new LoggerManager(this.GetType());

            string newPassword = txtNewPassword.Password.Trim();
            string confirmPassword = txtNewPasswordConfirm.Password.Trim();
            string email = txtEmail.Text.Trim();

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
                int result = passwordRecovery.UpdatePassword(userEmail, Hasher.HashToSHA256(newPassword));

                if (result == Constants.SUCCES_OPERATION) {
                    DialogManager.ShowSuccessMessageAlert(Properties.Resources.dialogPasswordUpdatedSuccessfully);
                    txtNewPassword.Clear();
                    txtNewPasswordConfirm.Clear();
                    recoveryPasswordGrid.Visibility = Visibility.Collapsed;
                } else {
                    DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogErrorUpdatingPassowrd);
                }
            } catch (EndpointNotFoundException endpointNotFoundException) {
                logger.LogError(endpointNotFoundException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogEndPointException);
            } catch (TimeoutException timeoutException) {
                logger.LogError(timeoutException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogTimeOutException);
            } catch (CommunicationException communicationException) {
                logger.LogError(communicationException);
                DialogManager.ShowErrorMessageAlert(Properties.Resources.dialogComunicationException);
            }
        }

        private bool IsValidPassword(string password) {
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
            recoveryPasswordGrid.Visibility = Visibility.Collapsed;
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
            enterEmailGrid.Visibility = Visibility.Visible;
        }
    }
}