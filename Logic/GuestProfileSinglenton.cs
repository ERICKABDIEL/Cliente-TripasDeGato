using System;

namespace TripasDeGatoCliente.Logic {
    internal class GuestProfileSingleton {
        private static readonly GuestProfileSingleton SingletonInstance = new GuestProfileSingleton();

        // Perfil de invitado y código de la sala
        public static GuestProfile PerfilInvitado { get; private set; }
        public static string CodeMatch { get; private set; }

        public static GuestProfileSingleton Instance => SingletonInstance;

        // Crear una nueva instancia del perfil de invitado con un código de sala
        public void CreateInstance(string code) {

                PerfilInvitado = new GuestProfile();
                PerfilInvitado.Username = GuestProfile.RandomChooserUsername(); // Asignar un nombre aleatorio
                PerfilInvitado.Avatar = GuestProfile.RandomChooserAvatarIcon(); // Asignar un avatar aleatorio
                CodeMatch = code; // Guardar el código de sala proporcionado
        }

        // Resetear la instancia del perfil de invitado
        public void ResetSingleton() {
            CodeMatch = null;
            PerfilInvitado = null;  // Resetear el perfil y el código de sala
        }
    }
}
