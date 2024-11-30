using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TripasDeGatoCliente.Logic {
    internal class ConstantsManager {
        public static class Constants {
            public const int ERROR_OPERATION = -1;

            public const int SUCCES_OPERATION = 1;

            public const int NO_DATA_MATCHES = -2;

            public const int DATA_MATCHES = 2;

            public const int INITIAL_SCORE = 0;

            public const string DEFAULT_IMAGE_PLAYER = " ";

            public const string DEFAULT_IMAGE_GUEST = " ";

            public const int HOW_MANY_SCORES = 10;
        }
    }
}
