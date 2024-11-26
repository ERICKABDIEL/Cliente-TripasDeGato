using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Logic {
    public class UserProfileSingleton {
        private static readonly UserProfileSingleton singlentonInstance = new UserProfileSingleton();

        public static int IdProfile { get; private set; }
        public static string UserName { get; private set; }
        public static int Score { get; private set; }
        public static string PicPath { get; private set; }
        public static int IdUser { get; private set; }
        public static string Password { get; private set; }
        public static string Mail { get; private set; }

        public static UserProfileSingleton Instance => singlentonInstance;

        public void CreateInstance(Profile profile) {
            IdProfile = profile.IdProfile;
            UserName = profile.Username;
            Score = profile.Score;
            PicPath = profile.PicturePath;
        }

        public void CreateGuestInstance() {
            GuestProfile guestProfile = new GuestProfile(); 
            IdProfile = guestProfile.GuestId;
            UserName = guestProfile.Username;
            Score = 0;  
            PicPath = guestProfile.Avatar;
        }

        public void ResetInstance() {
            IdProfile = 0;
            UserName = null;
            Score = 0;
            PicPath = null;
            IdUser = 0;
            Password = null;
            Mail = null;
        }

        public static void UpdateFotoRuta(string nuevaRuta) {
            PicPath = nuevaRuta;
        }

        public static void UpdateNombre(string nuevoNombre) {
            UserName = nuevoNombre;
        }
    }
}
