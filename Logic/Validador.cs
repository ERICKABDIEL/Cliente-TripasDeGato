using System;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace TripasDeGatoCliente.Logic {
    public static class Validador {
        private static Regex passwordRegex = new Regex("^(?=.*[A-Za-zñÑ])(?=.*\\d)[A-Za-zñÑ\\d\\W]{10,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(100));
        private static Regex usernameRegex = new Regex("^[A-Za-z0-9_]{5,50}$", RegexOptions.None, TimeSpan.FromMilliseconds(100));
        private static Regex emailRegex = new Regex(@"^[^@\s]+@[^@\s]+\.[^@\s]+$", RegexOptions.None, TimeSpan.FromMilliseconds(100));
        private static Regex codeLobbyMatchRegex = new Regex(@"^[A-Za-z0-9]{6}$", RegexOptions.None, TimeSpan.FromMilliseconds(100));
        private static Regex stateRegex = new Regex(@"^[A-Z][a-zA-Z]{4,15}$", RegexOptions.None, TimeSpan.FromMilliseconds(100));
        private static Regex gameNameRegex = new Regex(@"^[A-Za-z0-9 ]{1,20}$", RegexOptions.None, TimeSpan.FromMilliseconds(100));

        public static bool ValidateRegexPattern(string data, Regex regex) {
            bool isValid = false;
            try {
                isValid = regex.IsMatch(data);
            } catch (RegexMatchTimeoutException) {
                isValid = false;
            }
            return isValid;
        }

        public static bool ValidatePassword(string password) {
            string cleanedPassword = Regex.Replace(password.Trim(), @"\s+", "");
            return !string.IsNullOrWhiteSpace(cleanedPassword) && ValidateRegexPattern(cleanedPassword, passwordRegex);
        }

        public static bool ValidateUsername(string username) {
            string cleanedUsername = Regex.Replace(username.Trim(), @"\s+", "");
            return !string.IsNullOrWhiteSpace(cleanedUsername) && ValidateRegexPattern(cleanedUsername, usernameRegex);
        }

        public static bool ValidateEmail(string email) {
            string cleanedEmail = email?.Trim();
            if (!string.IsNullOrWhiteSpace(cleanedEmail) && cleanedEmail.Length <= 254) {
                if (emailRegex.IsMatch(cleanedEmail)) {
                    try {
                        var mailAddress = new MailAddress(cleanedEmail);
                        return true;
                    } catch (FormatException) {
                        return false;
                    }
                }
            }
            return false;
        }

        public static bool ValidateGameName(string gameName) {
            string cleanedGameName = gameName?.Trim();
            return !string.IsNullOrWhiteSpace(cleanedGameName) && ValidateRegexPattern(cleanedGameName, gameNameRegex);
        }

        public static bool ValidateCode(string codeLobby) {
            string codeCleaned = Regex.Replace(codeLobby.Trim(), @"\s+", "");
            return !string.IsNullOrWhiteSpace(codeCleaned) && ValidateRegexPattern(codeCleaned, codeLobbyMatchRegex);
        }

        public static bool ValidateState(string state) {
            string stateCleaned = Regex.Replace(state.Trim(), @"\s+", "");
            return !string.IsNullOrWhiteSpace(stateCleaned) && ValidateRegexPattern(stateCleaned, stateRegex);
        }

        public static void RegexPattern(string input) {
            bool isEmailValid = ValidateRegexPattern(input, emailRegex);
            bool isNumber = ValidateRegexPattern(input, new Regex("[0-9]+", RegexOptions.None, TimeSpan.FromMilliseconds(100)));
            var isLetterA = Regex.IsMatch(input, "(a+)+", RegexOptions.None);
            AppDomain.CurrentDomain.SetData("REGEX_DEFAULT_MATCH_TIMEOUT", TimeSpan.FromMilliseconds(100));
            Console.WriteLine($"Email válido: {isEmailValid}, Contiene número: {isNumber}, Contiene letra 'a': {isLetterA}");
        }
    }
}
