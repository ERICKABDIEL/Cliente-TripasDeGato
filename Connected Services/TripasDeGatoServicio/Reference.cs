﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TripasDeGatoCliente.TripasDeGatoServicio {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="LoginUser", Namespace="http://schemas.datacontract.org/2004/07/TripasService.Contracts")]
    [System.SerializableAttribute()]
    public partial class LoginUser : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idLoginUserField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string mailField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string passwordField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int idLoginUser {
            get {
                return this.idLoginUserField;
            }
            set {
                if ((this.idLoginUserField.Equals(value) != true)) {
                    this.idLoginUserField = value;
                    this.RaisePropertyChanged("idLoginUser");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string mail {
            get {
                return this.mailField;
            }
            set {
                if ((object.ReferenceEquals(this.mailField, value) != true)) {
                    this.mailField = value;
                    this.RaisePropertyChanged("mail");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string password {
            get {
                return this.passwordField;
            }
            set {
                if ((object.ReferenceEquals(this.passwordField, value) != true)) {
                    this.passwordField = value;
                    this.RaisePropertyChanged("password");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Profile", Namespace="http://schemas.datacontract.org/2004/07/TripasService.Contracts")]
    [System.SerializableAttribute()]
    public partial class Profile : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idProfileField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string picturePathField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int scoreField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string userNameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int idProfile {
            get {
                return this.idProfileField;
            }
            set {
                if ((this.idProfileField.Equals(value) != true)) {
                    this.idProfileField = value;
                    this.RaisePropertyChanged("idProfile");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string picturePath {
            get {
                return this.picturePathField;
            }
            set {
                if ((object.ReferenceEquals(this.picturePathField, value) != true)) {
                    this.picturePathField = value;
                    this.RaisePropertyChanged("picturePath");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int score {
            get {
                return this.scoreField;
            }
            set {
                if ((this.scoreField.Equals(value) != true)) {
                    this.scoreField = value;
                    this.RaisePropertyChanged("score");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string userName {
            get {
                return this.userNameField;
            }
            set {
                if ((object.ReferenceEquals(this.userNameField, value) != true)) {
                    this.userNameField = value;
                    this.RaisePropertyChanged("userName");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="ProfileNotFoundFault", Namespace="http://schemas.datacontract.org/2004/07/TripasService.Contracts")]
    [System.SerializableAttribute()]
    public partial class ProfileNotFoundFault : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string errorMessageField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string errorMessage {
            get {
                return this.errorMessageField;
            }
            set {
                if ((object.ReferenceEquals(this.errorMessageField, value) != true)) {
                    this.errorMessageField = value;
                    this.RaisePropertyChanged("errorMessage");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Message", Namespace="http://schemas.datacontract.org/2004/07/TripasService.Contracts")]
    [System.SerializableAttribute()]
    public partial class Message : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string chatMessageField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime timeStampField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string userNameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string chatMessage {
            get {
                return this.chatMessageField;
            }
            set {
                if ((object.ReferenceEquals(this.chatMessageField, value) != true)) {
                    this.chatMessageField = value;
                    this.RaisePropertyChanged("chatMessage");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime timeStamp {
            get {
                return this.timeStampField;
            }
            set {
                if ((this.timeStampField.Equals(value) != true)) {
                    this.timeStampField = value;
                    this.RaisePropertyChanged("timeStamp");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string userName {
            get {
                return this.userNameField;
            }
            set {
                if ((object.ReferenceEquals(this.userNameField, value) != true)) {
                    this.userNameField = value;
                    this.RaisePropertyChanged("userName");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="TripasDeGatoServicio.IUserManager")]
    public interface IUserManager {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/createAccount", ReplyAction="http://tempuri.org/IUserManager/createAccountResponse")]
        int createAccount(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user, TripasDeGatoCliente.TripasDeGatoServicio.Profile profile);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/createAccount", ReplyAction="http://tempuri.org/IUserManager/createAccountResponse")]
        System.Threading.Tasks.Task<int> createAccountAsync(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user, TripasDeGatoCliente.TripasDeGatoServicio.Profile profile);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/updateProfile", ReplyAction="http://tempuri.org/IUserManager/updateProfileResponse")]
        int updateProfile(TripasDeGatoCliente.TripasDeGatoServicio.Profile profile);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/updateProfile", ReplyAction="http://tempuri.org/IUserManager/updateProfileResponse")]
        System.Threading.Tasks.Task<int> updateProfileAsync(TripasDeGatoCliente.TripasDeGatoServicio.Profile profile);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/getProfile", ReplyAction="http://tempuri.org/IUserManager/getProfileResponse")]
        TripasDeGatoCliente.TripasDeGatoServicio.Profile getProfile(string email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/getProfile", ReplyAction="http://tempuri.org/IUserManager/getProfileResponse")]
        System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Profile> getProfileAsync(string email, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/verifyLogin", ReplyAction="http://tempuri.org/IUserManager/verifyLoginResponse")]
        int verifyLogin(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/verifyLogin", ReplyAction="http://tempuri.org/IUserManager/verifyLoginResponse")]
        System.Threading.Tasks.Task<int> verifyLoginAsync(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/getProfileId", ReplyAction="http://tempuri.org/IUserManager/getProfileIdResponse")]
        [System.ServiceModel.FaultContractAttribute(typeof(TripasDeGatoCliente.TripasDeGatoServicio.ProfileNotFoundFault), Action="http://tempuri.org/IUserManager/getProfileIdProfileNotFoundFaultFault", Name="ProfileNotFoundFault", Namespace="http://schemas.datacontract.org/2004/07/TripasService.Contracts")]
        int getProfileId(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IUserManager/getProfileId", ReplyAction="http://tempuri.org/IUserManager/getProfileIdResponse")]
        System.Threading.Tasks.Task<int> getProfileIdAsync(string userName);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IUserManagerChannel : TripasDeGatoCliente.TripasDeGatoServicio.IUserManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class UserManagerClient : System.ServiceModel.ClientBase<TripasDeGatoCliente.TripasDeGatoServicio.IUserManager>, TripasDeGatoCliente.TripasDeGatoServicio.IUserManager {
        
        public UserManagerClient() {
        }
        
        public UserManagerClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public UserManagerClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public UserManagerClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public UserManagerClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int createAccount(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user, TripasDeGatoCliente.TripasDeGatoServicio.Profile profile) {
            return base.Channel.createAccount(user, profile);
        }
        
        public System.Threading.Tasks.Task<int> createAccountAsync(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user, TripasDeGatoCliente.TripasDeGatoServicio.Profile profile) {
            return base.Channel.createAccountAsync(user, profile);
        }
        
        public int updateProfile(TripasDeGatoCliente.TripasDeGatoServicio.Profile profile) {
            return base.Channel.updateProfile(profile);
        }
        
        public System.Threading.Tasks.Task<int> updateProfileAsync(TripasDeGatoCliente.TripasDeGatoServicio.Profile profile) {
            return base.Channel.updateProfileAsync(profile);
        }
        
        public TripasDeGatoCliente.TripasDeGatoServicio.Profile getProfile(string email, string password) {
            return base.Channel.getProfile(email, password);
        }
        
        public System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Profile> getProfileAsync(string email, string password) {
            return base.Channel.getProfileAsync(email, password);
        }
        
        public int verifyLogin(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user) {
            return base.Channel.verifyLogin(user);
        }
        
        public System.Threading.Tasks.Task<int> verifyLoginAsync(TripasDeGatoCliente.TripasDeGatoServicio.LoginUser user) {
            return base.Channel.verifyLoginAsync(user);
        }
        
        public int getProfileId(string userName) {
            return base.Channel.getProfileId(userName);
        }
        
        public System.Threading.Tasks.Task<int> getProfileIdAsync(string userName) {
            return base.Channel.getProfileIdAsync(userName);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="TripasDeGatoServicio.IFriendsManager")]
    public interface IFriendsManager {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/addFriend", ReplyAction="http://tempuri.org/IFriendsManager/addFriendResponse")]
        int addFriend(int idProfile1, int idProfile2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/addFriend", ReplyAction="http://tempuri.org/IFriendsManager/addFriendResponse")]
        System.Threading.Tasks.Task<int> addFriendAsync(int idProfile1, int idProfile2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/deleteFriend", ReplyAction="http://tempuri.org/IFriendsManager/deleteFriendResponse")]
        int deleteFriend(int idProfile1, int idProfile2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/deleteFriend", ReplyAction="http://tempuri.org/IFriendsManager/deleteFriendResponse")]
        System.Threading.Tasks.Task<int> deleteFriendAsync(int idProfile1, int idProfile2);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/getFriends", ReplyAction="http://tempuri.org/IFriendsManager/getFriendsResponse")]
        TripasDeGatoCliente.TripasDeGatoServicio.Profile[] getFriends(int idProfile);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IFriendsManager/getFriends", ReplyAction="http://tempuri.org/IFriendsManager/getFriendsResponse")]
        System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Profile[]> getFriendsAsync(int idProfile);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IFriendsManagerChannel : TripasDeGatoCliente.TripasDeGatoServicio.IFriendsManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class FriendsManagerClient : System.ServiceModel.ClientBase<TripasDeGatoCliente.TripasDeGatoServicio.IFriendsManager>, TripasDeGatoCliente.TripasDeGatoServicio.IFriendsManager {
        
        public FriendsManagerClient() {
        }
        
        public FriendsManagerClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public FriendsManagerClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public FriendsManagerClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public FriendsManagerClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public int addFriend(int idProfile1, int idProfile2) {
            return base.Channel.addFriend(idProfile1, idProfile2);
        }
        
        public System.Threading.Tasks.Task<int> addFriendAsync(int idProfile1, int idProfile2) {
            return base.Channel.addFriendAsync(idProfile1, idProfile2);
        }
        
        public int deleteFriend(int idProfile1, int idProfile2) {
            return base.Channel.deleteFriend(idProfile1, idProfile2);
        }
        
        public System.Threading.Tasks.Task<int> deleteFriendAsync(int idProfile1, int idProfile2) {
            return base.Channel.deleteFriendAsync(idProfile1, idProfile2);
        }
        
        public TripasDeGatoCliente.TripasDeGatoServicio.Profile[] getFriends(int idProfile) {
            return base.Channel.getFriends(idProfile);
        }
        
        public System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Profile[]> getFriendsAsync(int idProfile) {
            return base.Channel.getFriendsAsync(idProfile);
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="TripasDeGatoServicio.IChatManager", CallbackContract=typeof(TripasDeGatoCliente.TripasDeGatoServicio.IChatManagerCallback))]
    public interface IChatManager {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/sendMessage", ReplyAction="http://tempuri.org/IChatManager/sendMessageResponse")]
        void sendMessage(string userName, TripasDeGatoCliente.TripasDeGatoServicio.Message message);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/sendMessage", ReplyAction="http://tempuri.org/IChatManager/sendMessageResponse")]
        System.Threading.Tasks.Task sendMessageAsync(string userName, TripasDeGatoCliente.TripasDeGatoServicio.Message message);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/connectToLobby", ReplyAction="http://tempuri.org/IChatManager/connectToLobbyResponse")]
        void connectToLobby(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/connectToLobby", ReplyAction="http://tempuri.org/IChatManager/connectToLobbyResponse")]
        System.Threading.Tasks.Task connectToLobbyAsync(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/leaveLobby", ReplyAction="http://tempuri.org/IChatManager/leaveLobbyResponse")]
        void leaveLobby(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/leaveLobby", ReplyAction="http://tempuri.org/IChatManager/leaveLobbyResponse")]
        System.Threading.Tasks.Task leaveLobbyAsync(string userName);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/getMessageHistory", ReplyAction="http://tempuri.org/IChatManager/getMessageHistoryResponse")]
        TripasDeGatoCliente.TripasDeGatoServicio.Message[] getMessageHistory();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IChatManager/getMessageHistory", ReplyAction="http://tempuri.org/IChatManager/getMessageHistoryResponse")]
        System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Message[]> getMessageHistoryAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChatManagerCallback {
        
        [System.ServiceModel.OperationContractAttribute(IsOneWay=true, Action="http://tempuri.org/IChatManager/broadcastMessage")]
        void broadcastMessage(TripasDeGatoCliente.TripasDeGatoServicio.Message message);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IChatManagerChannel : TripasDeGatoCliente.TripasDeGatoServicio.IChatManager, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ChatManagerClient : System.ServiceModel.DuplexClientBase<TripasDeGatoCliente.TripasDeGatoServicio.IChatManager>, TripasDeGatoCliente.TripasDeGatoServicio.IChatManager {
        
        public ChatManagerClient(System.ServiceModel.InstanceContext callbackInstance) : 
                base(callbackInstance) {
        }
        
        public ChatManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName) : 
                base(callbackInstance, endpointConfigurationName) {
        }
        
        public ChatManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, string remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public ChatManagerClient(System.ServiceModel.InstanceContext callbackInstance, string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, endpointConfigurationName, remoteAddress) {
        }
        
        public ChatManagerClient(System.ServiceModel.InstanceContext callbackInstance, System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(callbackInstance, binding, remoteAddress) {
        }
        
        public void sendMessage(string userName, TripasDeGatoCliente.TripasDeGatoServicio.Message message) {
            base.Channel.sendMessage(userName, message);
        }
        
        public System.Threading.Tasks.Task sendMessageAsync(string userName, TripasDeGatoCliente.TripasDeGatoServicio.Message message) {
            return base.Channel.sendMessageAsync(userName, message);
        }
        
        public void connectToLobby(string userName) {
            base.Channel.connectToLobby(userName);
        }
        
        public System.Threading.Tasks.Task connectToLobbyAsync(string userName) {
            return base.Channel.connectToLobbyAsync(userName);
        }
        
        public void leaveLobby(string userName) {
            base.Channel.leaveLobby(userName);
        }
        
        public System.Threading.Tasks.Task leaveLobbyAsync(string userName) {
            return base.Channel.leaveLobbyAsync(userName);
        }
        
        public TripasDeGatoCliente.TripasDeGatoServicio.Message[] getMessageHistory() {
            return base.Channel.getMessageHistory();
        }
        
        public System.Threading.Tasks.Task<TripasDeGatoCliente.TripasDeGatoServicio.Message[]> getMessageHistoryAsync() {
            return base.Channel.getMessageHistoryAsync();
        }
    }
}
