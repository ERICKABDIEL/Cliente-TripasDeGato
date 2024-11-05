using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Logic
{
    public class UserProfileSingleton
    {
        // Instancia única del singleton
        private static readonly UserProfileSingleton singlentonInstance = new UserProfileSingleton();

        public static int IdPerfil { get; private set; }
        public static string Nombre { get; private set; }
        public static int Puntaje { get; private set; }
        public static string FotoRuta { get; private set; }
        public static int IdUsuario { get; private set; }
        public static string Contrasena { get; private set; }
        public static string Correo { get; private set; }

        public static UserProfileSingleton Instance => singlentonInstance;

        public void CreateInstance(Profile profile)
        {
            IdPerfil = profile.idProfile;
            Nombre = profile.userName;
            Puntaje = profile.score;
            FotoRuta = profile.picturePath;

        }

        public void ResetInstance()
        {
            IdPerfil = 0;
            Nombre = null;
            Puntaje = 0;
            FotoRuta = null;
            IdUsuario = 0;
            Contrasena = null;
            Correo = null;
        }
        public static void UpdateFotoRuta(string nuevaRuta) {
            FotoRuta = nuevaRuta;
        }
        public static void UpdateNombre(string nuevoNombre) {
            Nombre = nuevoNombre;
        }
    }
}
