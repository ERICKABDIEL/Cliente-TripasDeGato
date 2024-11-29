using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;

namespace TripasDeGatoCliente
{
    /// <summary>
    /// Lógica de interacción para App.xaml
    /// </summary>
    public partial class App : Application
    {

        protected override void OnStartup(StartupEventArgs e) {
            base.OnStartup(e);

            string savedLanguage = TripasDeGatoCliente.Properties.Settings.Default.Language;

            if (string.IsNullOrEmpty(savedLanguage)) {
                savedLanguage = CultureInfo.CurrentCulture.Name.StartsWith("es") ? "es-MX" : "en-US";
                TripasDeGatoCliente.Properties.Settings.Default.Language = savedLanguage;
                TripasDeGatoCliente.Properties.Settings.Default.Save();
            }

            ChangeLanguage(savedLanguage);
        }
        public static void ChangeLanguage(string cultureCode) {
            CultureInfo culture = new CultureInfo(cultureCode);
            Thread.CurrentThread.CurrentCulture = culture;
            Thread.CurrentThread.CurrentUICulture = culture;
            TripasDeGatoCliente.Properties.Settings.Default.Reset();
            TripasDeGatoCliente.Properties.Settings.Default.Language = cultureCode;
            TripasDeGatoCliente.Properties.Settings.Default.Save();
        }







    }
}
