﻿using System.ServiceModel;
using TripasDeGatoCliente.TripasDeGatoServicio;

namespace TripasDeGatoCliente.Logic {

    public class ConnectionManager {

        private static readonly ConnectionManager connectionManagerInstance = new ConnectionManager();

        public static ConnectionManager Instance => connectionManagerInstance;

        public LobbyManagerClient LobbyManager { get; private set; }
        
        public ChatManagerClient ChatManager { get; private set; }
        
        public MatchManagerClient MatchManager { get; private set; }


        private ConnectionManager() { }

        public void InitializeLobbyManager(InstanceContext context) {
            LobbyManager = new LobbyManagerClient(context);
        }

        public void InitializeChatManager(InstanceContext context) {
            ChatManager = new ChatManagerClient(context);
        }

        public void InitializeMatchManager(InstanceContext context) {
            MatchManager = new MatchManagerClient(context);
        }

        public void DisconnectAll() {
            if (LobbyManager != null && UserProfileSingleton.LobbyCode != "000000") {
                LobbyManager.LeaveLobby(UserProfileSingleton.LobbyCode, UserProfileSingleton.UserName);
                UserProfileSingleton.ResetLobbyCode();
            }

            if (ChatManager != null && UserProfileSingleton.ChatCode != "000000") {
                ChatManager.LeaveChat(UserProfileSingleton.UserName, UserProfileSingleton.ChatCode);
                UserProfileSingleton.ResetChatCode();
            }

            if (MatchManager != null && UserProfileSingleton.MatchCode != "000000") {
                MatchManager.LeaveMatch(UserProfileSingleton.MatchCode, UserProfileSingleton.UserName);
                UserProfileSingleton.ResetMatchCode();
            }
        }

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