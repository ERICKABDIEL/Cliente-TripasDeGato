using System;

namespace TripasDeGatoCliente.Logic {
    internal class GuestProfileSingleton {
        private static readonly GuestProfileSingleton SingletonInstance = new GuestProfileSingleton();

        public static GuestProfile PerfilInvitado { get; private set; }
        public static string CodeMatch { get; private set; }

        public static GuestProfileSingleton Instance => SingletonInstance;

        public void CreateInstance(string code) {
                //comentario de prueba
                PerfilInvitado = new GuestProfile();
                PerfilInvitado.Username = GuestProfile.RandomChooserUsername(); 
                PerfilInvitado.Avatar = GuestProfile.RandomChooserAvatarIcon(); 
                CodeMatch = code; 
        }

        public void ResetSingleton() {
            CodeMatch = null;
            PerfilInvitado = null;  
        }
    }
}
