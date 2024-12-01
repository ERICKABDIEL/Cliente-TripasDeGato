using System;

namespace TripasDeGatoCliente.Logic {
    internal class GuestProfileSingleton {
        private static readonly GuestProfileSingleton SingletonInstance = new GuestProfileSingleton();

        public static GuestProfile PerfilInvitado { get; private set; }

        public static string CodeMatch { get; private set; }

        public static GuestProfileSingleton Instance => SingletonInstance;

        public static void CreateInstance(string code) {
            PerfilInvitado = new GuestProfile();
            PerfilInvitado.Username = GuestProfile.RandomChooserUsername();
            PerfilInvitado.Avatar = GuestProfile.RandomChooserAvatarIcon();
            CodeMatch = code;
        }

        public static void ResetSingleton() {
            CodeMatch = null;
            PerfilInvitado = null;
        }
    }
}
