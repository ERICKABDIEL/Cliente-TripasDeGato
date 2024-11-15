using System;

namespace TripasDeGatoCliente.Logic {
    internal class GuestProfile {
        private static readonly Random random = new Random();

        public string Username { get; set; }
        public string Avatar { get; set; }
        public int GuestId { get; private set; }

        public GuestProfile() {
            this.Username = RandomChooserUsername();
            this.Avatar = RandomChooserAvatarIcon();
            this.GuestId = GenerateRandomId();
        }

        public static int GenerateRandomId() {
            return random.Next(10000, 20001);
        }

        public static string RandomChooserAvatarIcon() {
            string[] defaultAvatars = {
                "/Images/Profiles/ImageProfile1.png", "/Images/Profiles/ImageProfile2.png", "/Images/Profiles/ImageProfile3.png",
                "/Images/Profiles/ImageProfile4.png", "/Images/Profiles/ImageProfile5.png", "/Images/Profiles/ImageProfile6.png",
                "/Images/Profiles/ImageProfile7.png", "/Images/Profiles/ImageProfile8.png", "/Images/Profiles/ImageProfile9.png"
            };
            int randomIndex = random.Next(defaultAvatars.Length);
            return defaultAvatars[randomIndex];
        }

        public static string RandomChooserUsername() {
            int randomIndexNumber = random.Next(1, 1000000);
            return "Guest" + randomIndexNumber;
        }
    }
}
