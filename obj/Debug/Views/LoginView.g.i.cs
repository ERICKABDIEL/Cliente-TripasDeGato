﻿#pragma checksum "..\..\..\Views\LoginView.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "2A97F876A172AE3D4CC4EDA34F47AA88A49BCAD68F9D608D367F9597A5AF3011"
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
    /// LoginView
    /// </summary>
    public partial class LoginView : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton btnTogglePassword;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblEmail;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtEmail;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblPassword;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox txtPassword;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtPasswordVisible;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnLogin;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnGuest;
        
        #line default
        #line hidden
        
        
        #line 120 "..\..\..\Views\LoginView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSignIn;
        
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
            System.Uri resourceLocater = new System.Uri("/TripasDeGatoCliente;component/views/loginview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Views\LoginView.xaml"
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
            this.btnTogglePassword = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 18 "..\..\..\Views\LoginView.xaml"
            this.btnTogglePassword.Checked += new System.Windows.RoutedEventHandler(this.BtnTogglePassword_Checked);
            
            #line default
            #line hidden
            
            #line 18 "..\..\..\Views\LoginView.xaml"
            this.btnTogglePassword.Unchecked += new System.Windows.RoutedEventHandler(this.BtnTogglePassword_Unchecked);
            
            #line default
            #line hidden
            return;
            case 2:
            this.lblEmail = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.txtEmail = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.lblPassword = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.txtPassword = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 6:
            this.txtPasswordVisible = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.btnLogin = ((System.Windows.Controls.Button)(target));
            
            #line 43 "..\..\..\Views\LoginView.xaml"
            this.btnLogin.Click += new System.Windows.RoutedEventHandler(this.BtnLogin_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.btnGuest = ((System.Windows.Controls.Button)(target));
            return;
            case 9:
            this.btnSignIn = ((System.Windows.Controls.Button)(target));
            
            #line 120 "..\..\..\Views\LoginView.xaml"
            this.btnSignIn.Click += new System.Windows.RoutedEventHandler(this.BtnSignIn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

