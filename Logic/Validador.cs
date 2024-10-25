using System;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace TripasDeGatoCliente.Logic
{
    public static class Validador
    {
        private static Regex passwordRegex = new Regex("^(?=.*[A-Za-zñÑ])(?=.*\\d)[A-Za-zñÑ\\d\\W]{10,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex usernameRegex = new Regex("^[A-Za-z0-9_]{5,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex emailRegex = new Regex(@"^[^@\s]+@[^@\s]+\.[^@\s]+$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex codeLobbyMatchRegex = new Regex(@"^[A-Za-z0-9]{6}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));
        private static Regex stateRegex = new Regex(@"^[A-Z][a-zA-Z]{4,15}$", RegexOptions.None, TimeSpan.FromMilliseconds(1000));

        public static bool validateRegexPattern(string data, Regex regex)
        {
            bool isValid = false;
            try
            {
                isValid = regex.IsMatch(data);
            }
            catch (RegexMatchTimeoutException)
            {
                isValid = false;
            }
            return isValid;
        }
        public static bool ValidatePassword(string password)
        {
            bool isValid = false;
            string cleanedPassword = Regex.Replace(password.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedPassword) && validateRegexPattern(cleanedPassword, passwordRegex))
            {
                isValid = true;
            }        
            return isValid;
        }

        public static bool ValidateUsername(string username)
        {
            bool isValid = false;
            string cleanedUsername = Regex.Replace(username.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(cleanedUsername) && validateRegexPattern(cleanedUsername, usernameRegex))
            {
                isValid = true;
            }
            return isValid;
        }

        public static bool ValidateEmail(string email)
        {
            string cleanedEmail = email?.Trim();

            if (!string.IsNullOrWhiteSpace(cleanedEmail) && cleanedEmail.Length <= 254)
            {
                try
                {
                    var mailAddress = new MailAddress(cleanedEmail);
                    return true; 
                }
                catch (FormatException)
                {
                    return false;
                }
            }
            return false;
        }

        public static bool validateCode(string codeLobby)
        {
            bool isValid = false;
            string codeCleaned = Regex.Replace(codeLobby.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(codeCleaned) && validateRegexPattern(codeCleaned, codeLobbyMatchRegex))
            {
                isValid = true;
            }
            return isValid;
        }
        public static bool validateState(string state)
        {
            bool isValid = false;
            string stateCleaned = Regex.Replace(state.Trim(), @"\s+", "");
            if (!string.IsNullOrWhiteSpace(stateCleaned) && validateRegexPattern(stateCleaned, stateRegex))
            {
                isValid = true;
            }
            return isValid;
        }
    }
}
