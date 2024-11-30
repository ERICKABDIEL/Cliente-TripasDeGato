using System.ServiceModel;
using System.Threading.Tasks;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Logic {
    public class ConnectionManager {
        private static readonly ConnectionManager connectionManagerInstance = new ConnectionManager();

        public static ConnectionManager Instance => connectionManagerInstance;

        public LobbyManagerClient LobbyManager { get; private set; }
        public ChatManagerClient ChatManager { get; private set; }
        public MatchManagerClient MatchManager { get; private set; }

        // Constructor privado para prevenir instanciación directa
        private ConnectionManager() { }

        // Métodos para inicializar las conexiones
        public void InitializeLobbyManager(InstanceContext context) {
            LobbyManager = new LobbyManagerClient(context);
        }

        public void InitializeChatManager(InstanceContext context) {
            ChatManager = new ChatManagerClient(context);
        }

        public void InitializeMatchManager(InstanceContext context) {
            MatchManager = new MatchManagerClient(context);
        }

        // Método para cerrar todas las conexiones
        public async Task DisconnectAllAsync() {
            if (LobbyManager != null && UserProfileSingleton.LobbyCode != "000000") {
                await LobbyManager.LeaveLobbyAsync(UserProfileSingleton.LobbyCode, UserProfileSingleton.IdProfile);
                UserProfileSingleton.ResetLobbyCode();
            }

            if (ChatManager != null && UserProfileSingleton.ChatCode != "000000") {
                await ChatManager.LeaveChatAsync(UserProfileSingleton.UserName, UserProfileSingleton.ChatCode);
                UserProfileSingleton.ResetChatCode();
            }

            if (MatchManager != null && UserProfileSingleton.MatchCode != "000000") {
                await MatchManager.LeaveMatchAsync(UserProfileSingleton.MatchCode, UserProfileSingleton.UserName);
                UserProfileSingleton.ResetMatchCode();
            }
        }

        // Métodos para liberar instancias individuales
        public void ReleaseLobbyManager() {
            LobbyManager = null;
        }

        public void ReleaseChatManager() {
            ChatManager = null;
        }

        public void ReleaseMatchManager() {
            MatchManager = null;
        }
    }
}