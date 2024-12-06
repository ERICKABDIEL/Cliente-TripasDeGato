using TripasDeGatoCliente.Logic;
using Xunit;

namespace UnitTestProject {
    public class ValidadorTests {

        [Fact]
        public void ValidateEmailValidEmailReturnsTrue() {
            string email = "abdiel321atzin@gmail.com";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.True(validationResult);
        }

        [Fact]
        public void ValidateEmailInvalidEmailReturnsFalse() {
            string email = "invalidEmail@.com";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateEmailWithoutAtSignReturnsFalse() {
            string email = "abdiel321atzin.com";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateEmailNoPointReturnsFalse() {
            string email = "abdiel321atzin@com";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateEmailWithoutAtDomainReturnsFalse() {
            string email = "abdiel321atzin@.";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateEmailEmptyEmailReturnsFalse() {
            string email = "";
            bool validationResult = Validador.ValidateEmail(email);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidatePasswordStrongPasswordReturnsTrue() {
            string password = "Secure123!";
            bool validationResult = Validador.ValidatePassword(password);
            Assert.True(validationResult);
        }

        [Fact]
        public void ValidatePasswordWeakPasswordReturnsFalse() {
            string password = "123";
            bool validationResult = Validador.ValidatePassword(password);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidatePasswordPasswordWithSpacesReturnsTrue() {
            string password = " Secure123! ";
            bool validationResult = Validador.ValidatePassword(password);
            Assert.True(validationResult);
        }

        [Fact]
        public void ValidateUsernameValidUsernameReturnsTrue() {
            string username = "User_123";
            bool validationResult = Validador.ValidateUsername(username);
            Assert.True(validationResult);
        }

        [Fact]
        public void ValidateUsernameInvalidUsernameWithSymbolsReturnsFalse() {
            string username = "User@!";
            bool validationResult = Validador.ValidateUsername(username);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateUsernameTooShortUsernameReturnsFalse() {
            string username = "Usr";
            bool validationResult = Validador.ValidateUsername(username);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateCodeValidCodeReturnsTrue() {
            string code = "ABC123";
            bool validationResult = Validador.ValidateCode(code);
            Assert.True(validationResult);
        }

        [Fact]
        public void ValidateCodeInvalidCodeWithSpecialCharsReturnsFalse() {
            string code = "ABC@#1";
            bool validationResult = Validador.ValidateCode(code);
            Assert.False(validationResult);
        }

        [Fact]
        public void ValidateCodeTooLongCodeReturnsFalse() {
            string code = "ABCDEFG";
            bool validationResult = Validador.ValidateCode(code);
            Assert.False(validationResult);
        }

    }
}

