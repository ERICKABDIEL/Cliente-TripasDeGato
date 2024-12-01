using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Logic {
    public class UserProfileSingleton {
        private static readonly UserProfileSingleton singletonInstance = new UserProfileSingleton();

        public static int IdProfile { get; private set; }

        public static string UserName { get; private set; }

        public static int Score { get; private set; }

        public static string PicPath { get; private set; }

        public static int IdUser { get; private set; }

        public static string Password { get; private set; }

        public static string Mail { get; private set; }

        public static string LobbyCode { get; private set; } = "000000";

        public static string ChatCode { get; private set; } = "000000";

        public static string MatchCode { get; private set; } = "000000";

        public static UserProfileSingleton Instance => singletonInstance;

        public static void CreateInstance(Profile profile) {
            IdProfile = profile.IdProfile;
            UserName = profile.Username;
            Score = profile.Score;
            PicPath = profile.PicturePath;
        }

        public static void CreateGuestInstance() {
            GuestProfile guestProfile = new GuestProfile();
            IdProfile = guestProfile.GuestId;
            UserName = guestProfile.Username;
            Score = 0;
            PicPath = guestProfile.Avatar;
        }

        public static void ResetInstance() {
            IdProfile = 0;
            UserName = null;
            Score = 0;
            PicPath = null;
            IdUser = 0;
            Password = null;
            Mail = null;
        }

        public static void ResetLobbyCode() {
            LobbyCode = "000000";
        }

        public static void ResetChatCode() {
            LobbyCode = "000000";
        }

        public static void ResetMatchCode() {
            LobbyCode = "000000";
        }

        public static void UpdateFotoRuta(string nuevaRuta) {
            PicPath = nuevaRuta;
        }

        public static void UpdateNombre(string nuevoNombre) {
            UserName = nuevoNombre;
        }

        public static void UpdateLobbyCode(string newCode) {
            LobbyCode = newCode;
        }

        public static void UpdateChatCode(string newCode) {
            ChatCode = newCode;
        }

        public static void UpdateMatchCode(string newCode) {
            MatchCode = newCode;
        }

    }
}
