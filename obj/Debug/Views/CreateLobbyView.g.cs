﻿#pragma checksum "..\..\..\Views\CreateLobbyView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "AABC9F07B1DFACC9A32B4AC71B446BEBAB0678DDEDEC00200C462A6F3166617C"
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
using TripasDeGatoCliente.Views;


namespace TripasDeGatoCliente.Views {
    
    
    /// <summary>
    /// CreateLobbyView
    /// </summary>
    public partial class CreateLobbyView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 20 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnBack;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnCreateLobby;
        
        #line default
        #line hidden
        
        
        #line 111 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNameLobby;
        
        #line default
        #line hidden
        
        
        #line 119 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtNameLobby;
        
        #line default
        #line hidden
        
        
        #line 129 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblNodeLobby;
        
        #line default
        #line hidden
        
        
        #line 137 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblMapLobby;
        
        #line default
        #line hidden
        
        
        #line 145 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblTimeLobby;
        
        #line default
        #line hidden
        
        
        #line 153 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cboxNode;
        
        #line default
        #line hidden
        
        
        #line 154 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cboxMap;
        
        #line default
        #line hidden
        
        
        #line 155 "..\..\..\Views\CreateLobbyView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cboxTime;
        
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
            System.Uri resourceLocater = new System.Uri("/TripasDeGatoCliente;component/views/createlobbyview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Views\CreateLobbyView.xaml"
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
            this.btnBack = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\Views\CreateLobbyView.xaml"
            this.btnBack.Click += new System.Windows.RoutedEventHandler(this.BtnBack_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btnCreateLobby = ((System.Windows.Controls.Button)(target));
            
            #line 68 "..\..\..\Views\CreateLobbyView.xaml"
            this.btnCreateLobby.Click += new System.Windows.RoutedEventHandler(this.BtnCreateLobby_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.lblNameLobby = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.txtNameLobby = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.lblNodeLobby = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.lblMapLobby = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.lblTimeLobby = ((System.Windows.Controls.Label)(target));
            return;
            case 8:
            this.cboxNode = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 9:
            this.cboxMap = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 10:
            this.cboxTime = ((System.Windows.Controls.ComboBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

