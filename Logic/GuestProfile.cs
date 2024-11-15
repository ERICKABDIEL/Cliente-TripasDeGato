using System;

namespace TripasDeGatoCliente.Logic {
    internal class GuestProfile {
        public string Username { get; set; }
        public string Avatar { get; set; }

        public GuestProfile() {
            // Generar datos aleatorios para el perfil del invitado
            this.Username = RandomChooserUsername();
            this.Avatar = RandomChooserAvatarIcon();
        }

        public static string RandomChooserAvatarIcon() {
            string[] defaultAvatars = {
                "/Images/Profiles/ImageProfile1.png", "/Images/Profiles/ImageProfile2.png", "/Images/Profiles/ImageProfile3.png",
                "/Images/Profiles/ImageProfile4.png", "/Images/Profiles/ImageProfile5.png", "/Images/Profiles/ImageProfile6.png",
                "/Images/Profiles/ImageProfile7.png", "/Images/Profiles/ImageProfile8.png", "/Images/Profiles/ImageProfile9.png"
            };
            Random random = new Random();
            int randomIndex = random.Next(defaultAvatars.Length);
            return defaultAvatars[randomIndex];
        }

        public static string RandomChooserUsername() {
            Random random = new Random();
            int randomIndexNumber = random.Next(1, 1000000);
            string defaultUsername = "Guest" + randomIndexNumber;
            return defaultUsername;
        }
    }
}
