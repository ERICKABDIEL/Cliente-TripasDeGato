﻿#pragma checksum "..\..\..\Views\LobbyView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "C836E71E3E1F45A3FD950D1929E84C8BF92AD72A001A14747DA32C9B61173B58"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using TripasDeGatoCliente.Properties;


namespace TripasDeGatoCliente.Views {
    
    
    /// <summary>
    /// LobbyView
    /// </summary>
    public partial class LobbyView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 55 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image imageLogo;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label labelPlayer1;
        
        #line default
        #line hidden
        
        
        #line 85 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel ChatMessagesPanel;
        
        #line default
        #line hidden
        
        
        #line 94 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnInvitedFriend;
        
        #line default
        #line hidden
        
        
        #line 102 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnStartGame;
        
        #line default
        #line hidden
        
        
        #line 109 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnLeaderboard;
        
        #line default
        #line hidden
        
        
        #line 117 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtMessageInput;
        
        #line default
        #line hidden
        
        
        #line 140 "..\..\..\Views\LobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnBack;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/TripasDeGatoCliente;component/views/lobbyview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Views\LobbyView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.imageLogo = ((System.Windows.Controls.Image)(target));
            return;
            case 2:
            this.labelPlayer1 = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.ChatMessagesPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 4:
            this.btnInvitedFriend = ((System.Windows.Controls.Button)(target));
            return;
            case 5:
            this.btnStartGame = ((System.Windows.Controls.Button)(target));
            return;
            case 6:
            this.btnLeaderboard = ((System.Windows.Controls.Button)(target));
            return;
            case 7:
            this.txtMessageInput = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            
            #line 137 "..\..\..\Views\LobbyView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.BtnSendMessage_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.btnBack = ((System.Windows.Controls.Button)(target));
            
            #line 144 "..\..\..\Views\LobbyView.xaml"
            this.btnBack.Click += new System.Windows.RoutedEventHandler(this.BtnBack_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
