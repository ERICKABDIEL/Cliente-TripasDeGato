﻿using System;
using System.Linq;
using System.Text;
using System.Windows;
using System.Threading.Tasks;
using System.Collections.Generic;
using TripasDeGatoCliente.Properties;

namespace TripasDeGatoCliente.Logic {

    public static class DialogManager {
    
        public static void ShowErrorMessageAlert(string errorMessage) {
            MessageBox.Show(errorMessage, TripasDeGatoCliente.Properties.Resources.dialogTitleError, MessageBoxButton.OK, MessageBoxImage.Error);
        }

        public static void ShowWarningMessageAlert(string warningMessage) {
            MessageBox.Show(warningMessage, TripasDeGatoCliente.Properties.Resources.dialogTitleWarning, MessageBoxButton.OK, MessageBoxImage.Warning);
        }

        public static void ShowSuccessMessageAlert(string successMessage) {
            MessageBox.Show(successMessage, TripasDeGatoCliente.Properties.Resources.dialogTitleSucces, MessageBoxButton.OK, MessageBoxImage.Information);
        }

        public static void ShowConfirmationMessageAlert(string confirmMessage) {
            MessageBox.Show(confirmMessage, TripasDeGatoCliente.Properties.Resources.dialogTitleConfirmation, MessageBoxButton.OK, MessageBoxImage.Question);
        }
    }
}
