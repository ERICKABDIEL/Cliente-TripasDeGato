¯
1C:\TripasDeGatoCliente\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 .
)

. /
]

/ 0
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 2
)2 3
]3 4
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *‘5
)C:\TripasDeGatoCliente\MainWindow.xaml.cs
	namespace		 	
TripasDeGatoCliente		
 
{		 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{- .
private 
LobbyManagerClient "
_lobbyManager# 0
;0 1
private 
ChatManagerClient !
_chatManager" .
;. /
private 
MatchManagerClient "
_matchManager# 0
;0 1
public 

MainWindow 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
this 
. !
WindowStartupLocation &
=' (!
WindowStartupLocation) >
.> ?
CenterScreen? K
;K L
NavigationFrame 
. 
Navigate $
($ %
new% (
Views) .
.. /
	LoginView/ 8
(8 9
)9 :
): ;
;; <
this 
. 
Closing 
+= 
MainWindowClosing -
;- .
_lobbyManager 
= 
new 
LobbyManagerClient  2
(2 3
new3 6
InstanceContext7 F
(F G
thisG K
)K L
)L M
;M N
_chatManager 
= 
new 
ChatManagerClient 0
(0 1
new1 4
InstanceContext5 D
(D E
thisE I
)I J
)J K
;K L
_matchManager 
= 
new 
MatchManagerClient  2
(2 3
new3 6
InstanceContext7 F
(F G
thisG K
)K L
)L M
;M N
} 	
private 
async 
void 
MainWindowClosing ,
(, -
object- 3
sender4 :
,: ;
System< B
.B C
ComponentModelC Q
.Q R
CancelEventArgsR a
eb c
)c d
{e f
try 
{ 
await 
ConnectionManager '
.' (
Instance( 0
.0 1
DisconnectAllAsync1 C
(C D
)D E
;E F
} 
catch 
( 
	Exception 
ex !
)! "
{# $
LoggerManager   
logger   $
=  % &
new  ' *
LoggerManager  + 8
(  8 9
this  9 =
.  = >
GetType  > E
(  E F
)  F G
)  G H
;  H I
logger!! 
.!! 
LogError!! 
(!!  
ex!!  "
)!!" #
;!!# $
DialogManager"" 
."" !
ShowErrorMessageAlert"" 3
(""3 4
$str""4 Q
+""R S
ex""T V
.""V W
Message""W ^
)""^ _
;""_ `
}## 
}$$ 	
private'' 
void'' 
SignOut'' 
('' 
)'' 
{''  
int(( 
playerId(( 
=((  
UserProfileSingleton(( /
.((/ 0
	IdProfile((0 9
;((9 :"
SetPlayerOfflineStatus)) "
())" #
playerId))# +
)))+ ,
;)), - 
UserProfileSingleton**  
.**  !
Instance**! )
.**) *
ResetInstance*** 7
(**7 8
)**8 9
;**9 :
}++ 	
private-- 
void-- "
SetPlayerOfflineStatus-- +
(--+ ,
int--, /
playerId--0 8
)--8 9
{--: ;
LoggerManager.. 
logger..  
=..! "
new..# &
LoggerManager..' 4
(..4 5
this..5 9
...9 :
GetType..: A
(..A B
)..B C
)..C D
;..D E
try// 
{// 
IStatusManager00 
statusManager00 ,
=00- .
new00/ 2
StatusManagerClient003 F
(00F G
)00G H
;00H I
statusManager11 
.11 
SetPlayerStatus11 -
(11- .
playerId11. 6
,116 7!
GameEnumsPlayerStatus118 M
.11M N
Offline11N U
)11U V
;11V W
}22 
catch22 
(22 %
EndpointNotFoundException22 .%
endpointNotFoundException22/ H
)22H I
{22J K
logger33 
.33 
LogError33 
(33  %
endpointNotFoundException33  9
)339 :
;33: ;
DialogManager44 
.44 !
ShowErrorMessageAlert44 3
(443 4

Properties444 >
.44> ?
	Resources44? H
.44H I#
dialogEndPointException44I `
)44` a
;44a b
}55 
catch55 
(55 
TimeoutException55 %
timeoutException55& 6
)556 7
{558 9
logger66 
.66 
LogError66 
(66  
timeoutException66  0
)660 1
;661 2
DialogManager77 
.77 !
ShowErrorMessageAlert77 3
(773 4

Properties774 >
.77> ?
	Resources77? H
.77H I"
dialogTimeOutException77I _
)77_ `
;77` a
}88 
catch88 
(88 "
CommunicationException88 +"
communicationException88, B
)88B C
{88D E
logger99 
.99 
LogError99 
(99  "
communicationException99  6
)996 7
;997 8
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4

Properties::4 >
.::> ?
	Resources::? H
.::H I'
dialogComunicationException::I d
)::d e
;::e f
};; 
catch;; 
(;; 
	Exception;; 
	exception;; (
);;( )
{;;* +
logger<< 
.<< 
LogError<< 
(<<  
	exception<<  )
)<<) *
;<<* +
DialogManager== 
.== !
ShowErrorMessageAlert== 3
(==3 4
string==4 :
.==: ;
Format==; A
(==A B

Properties==B L
.==L M
	Resources==M V
.==V W!
dialogUnexpectedError==W l
,==l m
	exception==n w
.==w x
Message==x 
)	== Ä
)
==Ä Å
;
==Å Ç
}>> 
}?? 	
privateAA 
voidAA 
	OnClosingAA 
(AA 
)AA  
{AA! "
}BB 	
}CC 
}DD ª
"C:\TripasDeGatoCliente\App.xaml.cs
	namespace 	
TripasDeGatoCliente
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{> ?
base 
. 
	OnStartup 
( 
e 
) 
; 
string 
savedLanguage  
=! "
TripasDeGatoCliente# 6
.6 7

Properties7 A
.A B
SettingsB J
.J K
DefaultK R
.R S
LanguageS [
;[ \
if 
( 
string 
. 
IsNullOrEmpty $
($ %
savedLanguage% 2
)2 3
)3 4
{5 6
savedLanguage 
= 
CultureInfo  +
.+ ,
CurrentCulture, :
.: ;
Name; ?
.? @

StartsWith@ J
(J K
$strK O
)O P
?Q R
$strS Z
:[ \
$str] d
;d e
TripasDeGatoCliente #
.# $

Properties$ .
.. /
Settings/ 7
.7 8
Default8 ?
.? @
Language@ H
=I J
savedLanguageK X
;X Y
TripasDeGatoCliente #
.# $

Properties$ .
.. /
Settings/ 7
.7 8
Default8 ?
.? @
Save@ D
(D E
)E F
;F G
} 
ChangeLanguage 
( 
savedLanguage (
)( )
;) *
} 	
public   
static   
void   
ChangeLanguage   )
(  ) *
string  * 0
cultureCode  1 <
)  < =
{  > ?
CultureInfo!! 
culture!! 
=!!  !
new!!" %
CultureInfo!!& 1
(!!1 2
cultureCode!!2 =
)!!= >
;!!> ?
Thread"" 
."" 
CurrentThread""  
.""  !
CurrentCulture""! /
=""0 1
culture""2 9
;""9 :
Thread## 
.## 
CurrentThread##  
.##  !
CurrentUICulture##! 1
=##2 3
culture##4 ;
;##; <
TripasDeGatoCliente$$ 
.$$  

Properties$$  *
.$$* +
Settings$$+ 3
.$$3 4
Default$$4 ;
.$$; <
Reset$$< A
($$A B
)$$B C
;$$C D
TripasDeGatoCliente%% 
.%%  

Properties%%  *
.%%* +
Settings%%+ 3
.%%3 4
Default%%4 ;
.%%; <
Language%%< D
=%%E F
cultureCode%%G R
;%%R S
TripasDeGatoCliente&& 
.&&  

Properties&&  *
.&&* +
Settings&&+ 3
.&&3 4
Default&&4 ;
.&&; <
Save&&< @
(&&@ A
)&&A B
;&&B C
}'' 	
}// 
}00 ˜e
4C:\TripasDeGatoCliente\Views\SelectLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
SelectLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
private 
LobbyManagerClient "
_lobbyManager# 0
;0 1
public 
SelectLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! "
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
LoadLobbiesAsync 
( 
) 
; 
} 	
private 
Task 
LoadLobbiesAsync %
(% &
)& '
{( )
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
try 
{ 
var 
lobbies 
= 
_lobbyBrowser +
.+ ,
GetAvailableLobbies, ?
(? @
)@ A
;A B
gridLobbyData 
. 
ItemsSource )
=* +
lobbies, 3
;3 4
} 
catch 
( %
EndpointNotFoundException .%
endpointNotFoundException/ H
)H I
{J K
logger 
. 
LogError 
(  %
endpointNotFoundException  9
)9 :
;: ;
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
catch 
( 
TimeoutException %
timeoutException& 6
)6 7
{8 9
logger   
.   
LogError   
(    
timeoutException    0
)  0 1
;  1 2
DialogManager!! 
.!! !
ShowErrorMessageAlert!! 3
(!!3 4

Properties!!4 >
.!!> ?
	Resources!!? H
.!!H I"
dialogTimeOutException!!I _
)!!_ `
;!!` a
}"" 
catch"" 
("" "
CommunicationException"" +"
communicationException"", B
)""B C
{""D E
logger## 
.## 
LogError## 
(##  "
communicationException##  6
)##6 7
;##7 8
DialogManager$$ 
.$$ !
ShowErrorMessageAlert$$ 3
($$3 4

Properties$$4 >
.$$> ?
	Resources$$? H
.$$H I'
dialogComunicationException$$I d
)$$d e
;$$e f
}%% 
catch%% 
(%% 
	Exception%% 
	exception%% (
)%%( )
{%%* +
logger&& 
.&& 
LogError&& 
(&&  
	exception&&  )
)&&) *
;&&* +
DialogManager'' 
.'' !
ShowErrorMessageAlert'' 3
(''3 4
string''4 :
.'': ;
Format''; A
(''A B

Properties''B L
.''L M
	Resources''M V
.''V W!
dialogUnexpectedError''W l
,''l m
	exception''n w
.''w x
Message''x 
)	'' Ä
)
''Ä Å
;
''Å Ç
}(( 
return)) 
Task)) 
.)) 
CompletedTask)) %
;))% &
}** 	
private,, 
async,, 
void,, 
BtnJoinGame_Click,, ,
(,,, -
object,,- 3
sender,,4 :
,,,: ;
RoutedEventArgs,,< K
e,,L M
),,M N
{,,O P
LoggerManager-- 
logger--  
=--! "
new--# &
LoggerManager--' 4
(--4 5
this--5 9
.--9 :
GetType--: A
(--A B
)--B C
)--C D
;--D E
if.. 
(.. 
gridLobbyData.. 
... 
SelectedItem.. *
is..+ -
Lobby... 3
selectedLobby..4 A
)..A B
{..C D
string// 
	lobbyCode//  
=//! "
selectedLobby//# 0
.//0 1
Code//1 5
;//5 6
Profile00 
guest00 
=00 
new00  #
Profile00$ +
{00, -
	IdProfile11 
=11  
UserProfileSingleton11  4
.114 5
	IdProfile115 >
,11> ?
Username22 
=22  
UserProfileSingleton22 3
.223 4
UserName224 <
}33 
;33 
try44 
{44 
bool55 
joined55 
=55  !
await55" '
_lobbyBrowser55( 5
.555 6
JoinLobbyAsync556 D
(55D E
	lobbyCode55E N
,55N O
guest55P U
)55U V
;55V W
if66 
(66 
joined66 
)66 
{66  !
	LobbyView77 !
	lobbyView77" +
=77, -
new77. 1
	LobbyView772 ;
(77; <
	lobbyCode77< E
)77E F
;77F G
this88 
.88 
NavigationService88 .
.88. /
Navigate88/ 7
(887 8
	lobbyView888 A
)88A B
;88B C
}99 
else99 
{99 
DialogManager:: %
.::% &#
ShowWarningMessageAlert::& =
(::= >

Properties::> H
.::H I
	Resources::I R
.::R S 
dialogLobbyJoinError::S g
)::g h
;::h i
};; 
}<< 
catch<< 
(<< %
EndpointNotFoundException<< 2%
endpointNotFoundException<<3 L
)<<L M
{<<N O
logger== 
.== 
LogError== #
(==# $%
endpointNotFoundException==$ =
)=== >
;==> ?
DialogManager>> !
.>>! "!
ShowErrorMessageAlert>>" 7
(>>7 8

Properties>>8 B
.>>B C
	Resources>>C L
.>>L M#
dialogEndPointException>>M d
)>>d e
;>>e f
}?? 
catch?? 
(?? 
TimeoutException?? )
timeoutException??* :
)??: ;
{??< =
logger@@ 
.@@ 
LogError@@ #
(@@# $
timeoutException@@$ 4
)@@4 5
;@@5 6
DialogManagerAA !
.AA! "!
ShowErrorMessageAlertAA" 7
(AA7 8

PropertiesAA8 B
.AAB C
	ResourcesAAC L
.AAL M"
dialogTimeOutExceptionAAM c
)AAc d
;AAd e
}BB 
catchBB 
(BB "
CommunicationExceptionBB /"
communicationExceptionBB0 F
)BBF G
{BBH I
loggerCC 
.CC 
LogErrorCC #
(CC# $"
communicationExceptionCC$ :
)CC: ;
;CC; <
DialogManagerDD !
.DD! "!
ShowErrorMessageAlertDD" 7
(DD7 8

PropertiesDD8 B
.DDB C
	ResourcesDDC L
.DDL M'
dialogComunicationExceptionDDM h
)DDh i
;DDi j
}EE 
}FF 
elseFF 
{FF 
DialogManagerGG 
.GG #
ShowWarningMessageAlertGG 5
(GG5 6

PropertiesGG6 @
.GG@ A
	ResourcesGGA J
.GGJ K#
dialogSelectLobbyToJoinGGK b
)GGb c
;GGc d
}HH 
}II 	
privateKK 
voidKK 
BtnBack_ClickKK "
(KK" #
objectKK# )
senderKK* 0
,KK0 1
RoutedEventArgsKK2 A
eKKB C
)KKC D
{KKE F
MenuViewLL 
menuViewLL 
=LL 
newLL  #
MenuViewLL$ ,
(LL, -
)LL- .
;LL. /
ifMM 
(MM 
thisMM 
.MM 
NavigationServiceMM &
!=MM' )
nullMM* .
)MM. /
{MM0 1
thisNN 
.NN 
NavigationServiceNN &
.NN& '
NavigateNN' /
(NN/ 0
menuViewNN0 8
)NN8 9
;NN9 :
}OO 
elseOO 
{OO 
DialogManagerPP 
.PP !
ShowErrorMessageAlertPP 3
(PP3 4

PropertiesPP4 >
.PP> ?
	ResourcesPP? H
.PPH I!
dialogNavigationErrorPPI ^
)PP^ _
;PP_ `
}QQ 
}RR 	
privateTT 
asyncTT 
voidTT 
BtnSearch_ClickTT *
(TT* +
objectTT+ 1
senderTT2 8
,TT8 9
RoutedEventArgsTT: I
eTTJ K
)TTK L
{TTM N
LoggerManagerUU 
loggerUU  
=UU! "
newUU# &
LoggerManagerUU' 4
(UU4 5
thisUU5 9
.UU9 :
GetTypeUU: A
(UUA B
)UUB C
)UUC D
;UUD E
stringVV 

searchCodeVV 
=VV 
txtCodeLobbyVV  ,
.VV, -
TextVV- 1
.VV1 2
TrimVV2 6
(VV6 7
)VV7 8
;VV8 9
tryWW 
{WW 
varXX 
lobbiesXX 
=XX 
awaitXX #
_lobbyBrowserXX$ 1
.XX1 2$
GetAvailableLobbiesAsyncXX2 J
(XXJ K
)XXK L
;XXL M
varYY 
filteredLobbiesYY #
=YY$ %
lobbiesYY& -
.YY- .
WhereYY. 3
(YY3 4
lobbyYY4 9
=>YY: <
lobbyYY= B
.YYB C
CodeYYC G
.YYG H
ContainsYYH P
(YYP Q

searchCodeYYQ [
)YY[ \
)YY\ ]
.YY] ^
ToListYY^ d
(YYd e
)YYe f
;YYf g
ifZZ 
(ZZ 
filteredLobbiesZZ #
.ZZ# $
CountZZ$ )
==ZZ* ,
$numZZ- .
)ZZ. /
{ZZ0 1
DialogManager[[ !
.[[! "#
ShowWarningMessageAlert[[" 9
([[9 :

Properties[[: D
.[[D E
	Resources[[E N
.[[N O
dialogLobbyNotFound[[O b
)[[b c
;[[c d
}\\ 
gridLobbyData]] 
.]] 
ItemsSource]] )
=]]* +
filteredLobbies]], ;
;]]; <
}^^ 
catch^^ 
(^^ %
EndpointNotFoundException^^ .%
endpointNotFoundException^^/ H
)^^H I
{^^J K
logger__ 
.__ 
LogError__ 
(__  %
endpointNotFoundException__  9
)__9 :
;__: ;
DialogManager`` 
.`` !
ShowErrorMessageAlert`` 3
(``3 4

Properties``4 >
.``> ?
	Resources``? H
.``H I#
dialogEndPointException``I `
)``` a
;``a b
}aa 
catchaa 
(aa 
TimeoutExceptionaa %
timeoutExceptionaa& 6
)aa6 7
{aa8 9
loggerbb 
.bb 
LogErrorbb 
(bb  
timeoutExceptionbb  0
)bb0 1
;bb1 2
DialogManagercc 
.cc !
ShowErrorMessageAlertcc 3
(cc3 4

Propertiescc4 >
.cc> ?
	Resourcescc? H
.ccH I"
dialogTimeOutExceptionccI _
)cc_ `
;cc` a
}dd 
catchdd 
(dd "
CommunicationExceptiondd +"
communicationExceptiondd, B
)ddB C
{ddD E
loggeree 
.ee 
LogErroree 
(ee  "
communicationExceptionee  6
)ee6 7
;ee7 8
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I'
dialogComunicationExceptionffI d
)ffd e
;ffe f
}gg 
catchgg 
(gg 
	Exceptiongg 
	exceptiongg (
)gg( )
{gg* +
loggerhh 
.hh 
LogErrorhh 
(hh  
	exceptionhh  )
)hh) *
;hh* +
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4
stringii4 :
.ii: ;
Formatii; A
(iiA B

PropertiesiiB L
.iiL M
	ResourcesiiM V
.iiV W!
dialogUnexpectedErroriiW l
,iil m
	exceptioniin w
.iiw x
Messageiix 
)	ii Ä
)
iiÄ Å
;
iiÅ Ç
}jj 
}kk 	
}ll 
}mm üù
.C:\TripasDeGatoCliente\Views\LoginView.xaml.cs
	namespace

 	
TripasDeGatoCliente


 
.

 
Views

 #
{

$ %
public 

partial 
class 
	LoginView "
:# $
Page% )
{* +
private 
string 

_userEmail !
;! "
public 
	LoginView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "(
UpdatePasswordVisibilityIcon (
(( )
)) *
;* +
txtEmail 
. 
TextChanged  
+=! # 
TxtEmail_TextChanged$ 8
;8 9
txtPassword 
. 
PasswordChanged '
+=( *'
TxtPassword_PasswordChanged+ F
;F G
} 	
private 
void 
BtnLogin_Click #
(# $
object$ *
sender+ 1
,1 2
RoutedEventArgs3 B
eC D
)D E
{F G

ResetField 
( 
txtEmail 
)  
;  !

ResetField 
( 
txtPassword "
)" #
;# $

ResetField 
( 
txtPasswordVisible )
)) *
;* +
if 
( 
! 
VerifyFields 
( 
) 
)  
{! "
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I
dialogWrongDataI X
)X Y
;Y Z
return 
; 
} 
string 
email 
= 
txtEmail #
.# $
Text$ (
;( )
string 
password 
= 
Hasher $
.$ %
HashToSHA256% 1
(1 2
txtPassword2 =
.= >
Password> F
)F G
;G H
if 
( 
AuthenticateUser  
(  !
email! &
,& '
password( 0
)0 1
)1 2
{3 4!
SetPlayerOnlineStatus %
(% & 
UserProfileSingleton& :
.: ;
	IdProfile; D
)D E
;E F
DisplayMainMenuView   #
(  # $
)  $ %
;  % &
}!! 
}"" 	
private$$ 
bool$$ 
VerifyFields$$ !
($$! "
)$$" #
{$$$ %
bool%% 

emailValid%% 
=%% 
	Validador%% '
.%%' (
ValidateEmail%%( 5
(%%5 6
txtEmail%%6 >
.%%> ?
Text%%? C
)%%C D
;%%D E
bool&& 
passwordValid&& 
=&&  
	Validador&&! *
.&&* +
ValidatePassword&&+ ;
(&&; <
txtPassword&&< G
.&&G H
Password&&H P
)&&P Q
;&&Q R
HighlightField'' 
('' 
txtEmail'' #
,''# $

emailValid''% /
)''/ 0
;''0 1
HighlightField(( 
((( 
txtPassword(( &
,((& '
passwordValid((( 5
)((5 6
;((6 7
return)) 

emailValid)) 
&&))  
passwordValid))! .
;)). /
}** 	
private,, 
bool,, 
AuthenticateUser,, %
(,,% &
string,,& ,
email,,- 2
,,,2 3
string,,4 :
hashedPassword,,; I
),,I J
{,,K L
LoggerManager-- 
logger--  
=--! "
new--# &
LoggerManager--' 4
(--4 5
this--5 9
.--9 :
GetType--: A
(--A B
)--B C
)--C D
;--D E
bool.. 
isAuthenticated..  
=..! "
false..# (
;..( )
try// 
{// 
IUserManager00 
userManager00 (
=00) *
new00+ .
UserManagerClient00/ @
(00@ A
)00A B
;00B C
int11 
validationResult11 $
=11% &
userManager11' 2
.112 3
VerifyLogin113 >
(11> ?
email11? D
,11D E
hashedPassword11F T
)11T U
;11U V
if22 
(22 
validationResult22 $
==22% '
	Constants22( 1
.221 2
DATA_MATCHES222 >
)22> ?
{22@ A
Profile33 
profile33 #
=33$ %
userManager33& 1
.331 2
GetProfileByMail332 B
(33B C
email33C H
)33H I
;33I J
if44 
(44 
profile44 
!=44  "
null44# '
)44' (
{44) *
if55 
(55 
IsPlayerOnline55 *
(55* +
profile55+ 2
.552 3
	IdProfile553 <
)55< =
)55= >
{55? @
return66 "
false66# (
;66( )
}77 
ObtainSingletonData88 +
(88+ ,
profile88, 3
)883 4
;884 5
isAuthenticated99 '
=99( )
true99* .
;99. /
}:: 
else:: 
{:: 
DialogManager;; %
.;;% &!
ShowErrorMessageAlert;;& ;
(;;; <

Properties;;< F
.;;F G
	Resources;;G P
.;;P Q%
dialogNotRetrievedProfile;;Q j
);;j k
;;;k l
}<< 
}== 
else== 
{== 
DialogManager>> !
.>>! "!
ShowErrorMessageAlert>>" 7
(>>7 8

Properties>>8 B
.>>B C
	Resources>>C L
.>>L M(
dialogMissmatchesCredentials>>M i
)>>i j
;>>j k
}?? 
}@@ 
catch@@ 
(@@ %
EndpointNotFoundException@@ .%
endpointNotFoundException@@/ H
)@@H I
{@@J K
loggerAA 
.AA 
LogErrorAA 
(AA  %
endpointNotFoundExceptionAA  9
)AA9 :
;AA: ;
DialogManagerBB 
.BB !
ShowErrorMessageAlertBB 3
(BB3 4

PropertiesBB4 >
.BB> ?
	ResourcesBB? H
.BBH I#
dialogEndPointExceptionBBI `
)BB` a
;BBa b
}CC 
catchCC 
(CC 
TimeoutExceptionCC %
timeoutExceptionCC& 6
)CC6 7
{CC8 9
loggerDD 
.DD 
LogErrorDD 
(DD  
timeoutExceptionDD  0
)DD0 1
;DD1 2
DialogManagerEE 
.EE !
ShowErrorMessageAlertEE 3
(EE3 4

PropertiesEE4 >
.EE> ?
	ResourcesEE? H
.EEH I"
dialogTimeOutExceptionEEI _
)EE_ `
;EE` a
}FF 
catchFF 
(FF "
CommunicationExceptionFF +"
communicationExceptionFF, B
)FFB C
{FFD E
loggerGG 
.GG 
LogErrorGG 
(GG  "
communicationExceptionGG  6
)GG6 7
;GG7 8
DialogManagerHH 
.HH !
ShowErrorMessageAlertHH 3
(HH3 4

PropertiesHH4 >
.HH> ?
	ResourcesHH? H
.HHH I'
dialogComunicationExceptionHHI d
)HHd e
;HHe f
}II 
catchII 
(II 
	ExceptionII 
	exceptionII (
)II( )
{II* +
loggerJJ 
.JJ 
LogErrorJJ 
(JJ  
	exceptionJJ  )
)JJ) *
;JJ* +
DialogManagerKK 
.KK !
ShowErrorMessageAlertKK 3
(KK3 4
stringKK4 :
.KK: ;
FormatKK; A
(KKA B

PropertiesKKB L
.KKL M
	ResourcesKKM V
.KKV W!
dialogUnexpectedErrorKKW l
,KKl m
	exceptionKKn w
.KKw x
MessageKKx 
)	KK Ä
)
KKÄ Å
;
KKÅ Ç
}LL 
returnMM 
isAuthenticatedMM "
;MM" #
}NN 	
privatePP 
boolPP 
IsPlayerOnlinePP #
(PP# $
intPP$ '
	idProfilePP( 1
)PP1 2
{PP3 4
LoggerManagerQQ 
loggerQQ  
=QQ! "
newQQ# &
LoggerManagerQQ' 4
(QQ4 5
thisQQ5 9
.QQ9 :
GetTypeQQ: A
(QQA B
)QQB C
)QQC D
;QQD E
tryRR 
{RR 
IStatusManagerSS 
statusManagerSS ,
=SS- .
newSS/ 2
StatusManagerClientSS3 F
(SSF G
)SSG H
;SSH I
varTT 
playerStatusTT  
=TT! "
statusManagerTT# 0
.TT0 1
GetPlayerStatusTT1 @
(TT@ A
	idProfileTTA J
)TTJ K
;TTK L
ifUU 
(UU 
playerStatusUU  
==UU! #!
GameEnumsPlayerStatusUU$ 9
.UU9 :
OnlineUU: @
)UU@ A
{UUB C
DialogManagerVV !
.VV! "#
ShowWarningMessageAlertVV" 9
(VV9 :

PropertiesVV: D
.VVD E
	ResourcesVVE N
.VVN O%
dialogPlayerAlreadyOnlineVVO h
)VVh i
;VVi j
returnWW 
trueWW 
;WW  
}XX 
}YY 
catchYY 
(YY %
EndpointNotFoundExceptionYY .%
endpointNotFoundExceptionYY/ H
)YYH I
{YYJ K
loggerZZ 
.ZZ 
LogErrorZZ 
(ZZ  %
endpointNotFoundExceptionZZ  9
)ZZ9 :
;ZZ: ;
DialogManager[[ 
.[[ !
ShowErrorMessageAlert[[ 3
([[3 4

Properties[[4 >
.[[> ?
	Resources[[? H
.[[H I#
dialogEndPointException[[I `
)[[` a
;[[a b
}\\ 
catch\\ 
(\\ 
TimeoutException\\ %
timeoutException\\& 6
)\\6 7
{\\8 9
logger]] 
.]] 
LogError]] 
(]]  
timeoutException]]  0
)]]0 1
;]]1 2
DialogManager^^ 
.^^ !
ShowErrorMessageAlert^^ 3
(^^3 4

Properties^^4 >
.^^> ?
	Resources^^? H
.^^H I"
dialogTimeOutException^^I _
)^^_ `
;^^` a
}__ 
catch__ 
(__ "
CommunicationException__ +"
communicationException__, B
)__B C
{__D E
logger`` 
.`` 
LogError`` 
(``  "
communicationException``  6
)``6 7
;``7 8
DialogManageraa 
.aa !
ShowErrorMessageAlertaa 3
(aa3 4

Propertiesaa4 >
.aa> ?
	Resourcesaa? H
.aaH I'
dialogComunicationExceptionaaI d
)aad e
;aae f
}bb 
catchbb 
(bb 
	Exceptionbb 
	exceptionbb (
)bb( )
{bb* +
loggercc 
.cc 
LogErrorcc 
(cc  
	exceptioncc  )
)cc) *
;cc* +
DialogManagerdd 
.dd !
ShowErrorMessageAlertdd 3
(dd3 4
stringdd4 :
.dd: ;
Formatdd; A
(ddA B

PropertiesddB L
.ddL M
	ResourcesddM V
.ddV W!
dialogUnexpectedErrorddW l
,ddl m
	exceptionddn w
.ddw x
Messageddx 
)	dd Ä
)
ddÄ Å
;
ddÅ Ç
}ee 
returnff 
falseff 
;ff 
}gg 	
privateii 
voidii 
ObtainSingletonDataii (
(ii( )
Profileii) 0
profileii1 8
)ii8 9
{ii: ; 
UserProfileSingletonjj  
.jj  !
Instancejj! )
.jj) *
CreateInstancejj* 8
(jj8 9
profilejj9 @
)jj@ A
;jjA B
}kk 	
privatemm 
voidmm !
SetPlayerOnlineStatusmm *
(mm* +
intmm+ .
playerIdmm/ 7
)mm7 8
{mm9 :
LoggerManagernn 
loggernn  
=nn! "
newnn# &
LoggerManagernn' 4
(nn4 5
thisnn5 9
.nn9 :
GetTypenn: A
(nnA B
)nnB C
)nnC D
;nnD E
tryoo 
{oo 
IStatusManagerpp 
statusManagerpp ,
=pp- .
newpp/ 2
StatusManagerClientpp3 F
(ppF G
)ppG H
;ppH I
statusManagerqq 
.qq 
SetPlayerStatusqq -
(qq- .
playerIdqq. 6
,qq6 7!
GameEnumsPlayerStatusqq8 M
.qqM N
OnlineqqN T
)qqT U
;qqU V
}rr 
catchrr 
(rr %
EndpointNotFoundExceptionrr .%
endpointNotFoundExceptionrr/ H
)rrH I
{rrJ K
loggerss 
.ss 
LogErrorss 
(ss  %
endpointNotFoundExceptionss  9
)ss9 :
;ss: ;
DialogManagertt 
.tt !
ShowErrorMessageAlerttt 3
(tt3 4

Propertiestt4 >
.tt> ?
	Resourcestt? H
.ttH I#
dialogEndPointExceptionttI `
)tt` a
;tta b
}uu 
catchuu 
(uu 
TimeoutExceptionuu %
timeoutExceptionuu& 6
)uu6 7
{uu8 9
loggervv 
.vv 
LogErrorvv 
(vv  
timeoutExceptionvv  0
)vv0 1
;vv1 2
DialogManagerww 
.ww !
ShowErrorMessageAlertww 3
(ww3 4

Propertiesww4 >
.ww> ?
	Resourcesww? H
.wwH I"
dialogTimeOutExceptionwwI _
)ww_ `
;ww` a
}xx 
catchxx 
(xx "
CommunicationExceptionxx +"
communicationExceptionxx, B
)xxB C
{xxD E
loggeryy 
.yy 
LogErroryy 
(yy  "
communicationExceptionyy  6
)yy6 7
;yy7 8
DialogManagerzz 
.zz !
ShowErrorMessageAlertzz 3
(zz3 4

Propertieszz4 >
.zz> ?
	Resourceszz? H
.zzH I'
dialogComunicationExceptionzzI d
)zzd e
;zze f
}{{ 
catch{{ 
({{ 
	Exception{{ 
	exception{{ (
){{( )
{{{* +
logger|| 
.|| 
LogError|| 
(||  
	exception||  )
)||) *
;||* +
DialogManager}} 
.}} !
ShowErrorMessageAlert}} 3
(}}3 4
string}}4 :
.}}: ;
Format}}; A
(}}A B

Properties}}B L
.}}L M
	Resources}}M V
.}}V W!
dialogUnexpectedError}}W l
,}}l m
	exception}}n w
.}}w x
Message}}x 
)	}} Ä
)
}}Ä Å
;
}}Å Ç
}~~ 
} 	
private
ÅÅ 
void
ÅÅ 
BtnGuest_Click
ÅÅ #
(
ÅÅ# $
object
ÅÅ$ *
sender
ÅÅ+ 1
,
ÅÅ1 2
RoutedEventArgs
ÅÅ3 B
e
ÅÅC D
)
ÅÅD E
{
ÅÅF G
CodeGameMatch
ÇÇ 
codeGameMatch
ÇÇ '
=
ÇÇ( )
new
ÇÇ* -
CodeGameMatch
ÇÇ. ;
(
ÇÇ; <
)
ÇÇ< =
;
ÇÇ= >
this
ÉÉ 
.
ÉÉ 
NavigationService
ÉÉ "
.
ÉÉ" #
Navigate
ÉÉ# +
(
ÉÉ+ ,
codeGameMatch
ÉÉ, 9
)
ÉÉ9 :
;
ÉÉ: ;
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ !
DisplayMainMenuView
ÜÜ (
(
ÜÜ( )
)
ÜÜ) *
{
ÜÜ+ ,
MenuView
áá 
menuView
áá 
=
áá 
new
áá  #
MenuView
áá$ ,
(
áá, -
)
áá- .
;
áá. /
this
àà 
.
àà 
NavigationService
àà "
.
àà" #
Navigate
àà# +
(
àà+ ,
menuView
àà, 4
)
àà4 5
;
àà5 6
}
ââ 	
private
ãã 
void
ãã 
HighlightField
ãã #
(
ãã# $
Control
ãã$ +
control
ãã, 3
,
ãã3 4
bool
ãã5 9
isValid
ãã: A
)
ããA B
{
ããC D
control
åå 
.
åå 
BorderBrush
åå 
=
åå  !
isValid
åå" )
?
åå* +
Brushes
åå, 3
.
åå3 4
White
åå4 9
:
åå: ;
Brushes
åå< C
.
ååC D
Red
ååD G
;
ååG H
}
çç 	
private
èè 
void
èè "
TxtEmail_TextChanged
èè )
(
èè) *
object
èè* 0
sender
èè1 7
,
èè7 8"
TextChangedEventArgs
èè9 M
e
èèN O
)
èèO P
{
èèQ R
string
êê 
email
êê 
=
êê 
txtEmail
êê #
.
êê# $
Text
êê$ (
;
êê( )
bool
ëë 
isValid
ëë 
=
ëë 
	Validador
ëë $
.
ëë$ %
ValidateEmail
ëë% 2
(
ëë2 3
email
ëë3 8
)
ëë8 9
;
ëë9 :
HighlightField
íí 
(
íí 
txtEmail
íí #
,
íí# $
isValid
íí% ,
)
íí, -
;
íí- .
lbInvalidEmail
ìì 
.
ìì 

Visibility
ìì %
=
ìì& '
isValid
ìì( /
?
ìì0 1

Visibility
ìì2 <
.
ìì< =
	Collapsed
ìì= F
:
ììG H

Visibility
ììI S
.
ììS T
Visible
ììT [
;
ìì[ \
}
îî 	
private
ññ 
void
ññ )
TxtPassword_PasswordChanged
ññ 0
(
ññ0 1
object
ññ1 7
sender
ññ8 >
,
ññ> ?
RoutedEventArgs
ññ@ O
e
ññP Q
)
ññQ R
{
ññS T
string
óó 
password
óó 
=
óó 
txtPassword
óó )
.
óó) *
Password
óó* 2
;
óó2 3
bool
òò 
isValid
òò 
=
òò 
	Validador
òò $
.
òò$ %
ValidatePassword
òò% 5
(
òò5 6
password
òò6 >
)
òò> ?
;
òò? @
HighlightField
ôô 
(
ôô 
txtPassword
ôô &
,
ôô& '
isValid
ôô( /
)
ôô/ 0
;
ôô0 1
lbInvalidPassword
öö 
.
öö 

Visibility
öö (
=
öö) *
isValid
öö+ 2
?
öö3 4

Visibility
öö5 ?
.
öö? @
	Collapsed
öö@ I
:
ööJ K

Visibility
ööL V
.
ööV W
Visible
ööW ^
;
öö^ _*
UpdatePasswordVisibilityIcon
õõ (
(
õõ( )
)
õõ) *
;
õõ* +
}
úú 	
private
ûû 
void
ûû 

ResetField
ûû 
(
ûû  
Control
ûû  '
control
ûû( /
)
ûû/ 0
{
ûû1 2
control
üü 
.
üü 
BorderBrush
üü 
=
üü  !
Brushes
üü" )
.
üü) *
White
üü* /
;
üü/ 0
}
†† 	
private
¢¢ 
void
¢¢ 
BtnSignIn_Click
¢¢ $
(
¢¢$ %
object
¢¢% +
sender
¢¢, 2
,
¢¢2 3
RoutedEventArgs
¢¢4 C
e
¢¢D E
)
¢¢E F
{
¢¢G H
RegisterView
££ 
registerView
££ %
=
££& '
new
££( +
RegisterView
££, 8
(
££8 9
)
££9 :
;
££: ;
this
§§ 
.
§§ 
NavigationService
§§ "
.
§§" #
Navigate
§§# +
(
§§+ ,
registerView
§§, 8
)
§§8 9
;
§§9 :
}
•• 	
private
®® 
void
®® 
BtnContinue_Click
®® &
(
®®& '
object
®®' -
sender
®®. 4
,
®®4 5
RoutedEventArgs
®®6 E
e
®®F G
)
®®G H
{
®®I J
LoggerManager
©© 
logger
©©  
=
©©! "
new
©©# &
LoggerManager
©©' 4
(
©©4 5
this
©©5 9
.
©©9 :
GetType
©©: A
(
©©A B
)
©©B C
)
©©C D
;
©©D E
string
™™ 
email
™™ 
=
™™ 
txtEmailRecovery
™™ +
.
™™+ ,
Text
™™, 0
.
™™0 1
Trim
™™1 5
(
™™5 6
)
™™6 7
;
™™7 8
if
´´ 
(
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ )
(
´´) *
email
´´* /
)
´´/ 0
)
´´0 1
{
´´2 3
DialogManager
¨¨ 
.
¨¨ #
ShowErrorMessageAlert
¨¨ 3
(
¨¨3 4

Properties
¨¨4 >
.
¨¨> ?
	Resources
¨¨? H
.
¨¨H I
dialogNullEmail
¨¨I X
)
¨¨X Y
;
¨¨Y Z
return
≠≠ 
;
≠≠ 
}
ÆÆ 
if
ØØ 
(
ØØ 
!
ØØ 
	Validador
ØØ 
.
ØØ 
ValidateEmail
ØØ (
(
ØØ( )
email
ØØ) .
)
ØØ. /
)
ØØ/ 0
{
ØØ1 2
DialogManager
∞∞ 
.
∞∞ #
ShowErrorMessageAlert
∞∞ 3
(
∞∞3 4

Properties
∞∞4 >
.
∞∞> ?
	Resources
∞∞? H
.
∞∞H I 
dialogInvalidEmail
∞∞I [
)
∞∞[ \
;
∞∞\ ]
return
±± 
;
±± 
}
≤≤ 
try
≥≥ 
{
≥≥ &
IPasswordRecoveryManager
¥¥ (
passwordRecovery
¥¥) 9
=
¥¥: ;
new
¥¥< ?+
PasswordRecoveryManagerClient
¥¥@ ]
(
¥¥] ^
)
¥¥^ _
;
¥¥_ `
int
µµ 
result
µµ 
=
µµ 
passwordRecovery
µµ -
.
µµ- .
SendRecoveryCode
µµ. >
(
µµ> ?
email
µµ? D
)
µµD E
;
µµE F
if
∂∂ 
(
∂∂ 
result
∂∂ 
==
∂∂ 
	Constants
∂∂ '
.
∂∂' (
SUCCES_OPERATION
∂∂( 8
)
∂∂8 9
{
∂∂: ;

_userEmail
∑∑ 
=
∑∑  
email
∑∑! &
;
∑∑& '
gridEnterEmail
∏∏ "
.
∏∏" #

Visibility
∏∏# -
=
∏∏. /

Visibility
∏∏0 :
.
∏∏: ;
	Collapsed
∏∏; D
;
∏∏D E
gridRecovery
ππ  
.
ππ  !

Visibility
ππ! +
=
ππ, -

Visibility
ππ. 8
.
ππ8 9
Visible
ππ9 @
;
ππ@ A
DialogManager
∫∫ !
.
∫∫! "%
ShowSuccessMessageAlert
∫∫" 9
(
∫∫9 :

Properties
∫∫: D
.
∫∫D E
	Resources
∫∫E N
.
∫∫N O+
dialogRecoveryCodeHasBeenSent
∫∫O l
)
∫∫l m
;
∫∫m n
}
ªª 
else
ªª 
if
ªª 
(
ªª 
result
ªª !
==
ªª" $
	Constants
ªª% .
.
ªª. /
NO_DATA_MATCHES
ªª/ >
)
ªª> ?
{
ªª@ A
DialogManager
ºº !
.
ºº! "#
ShowErrorMessageAlert
ºº" 7
(
ºº7 8

Properties
ºº8 B
.
ººB C
	Resources
ººC L
.
ººL M 
dialogInvalidEmail
ººM _
)
ºº_ `
;
ºº` a
}
ΩΩ 
else
ΩΩ 
{
ΩΩ 
DialogManager
ææ !
.
ææ! "#
ShowErrorMessageAlert
ææ" 7
(
ææ7 8

Properties
ææ8 B
.
ææB C
	Resources
ææC L
.
ææL M,
dialogErrorSendingRecoveryCode
ææM k
)
ææk l
;
ææl m
}
øø 
}
¿¿ 
catch
¿¿ 
(
¿¿ '
EndpointNotFoundException
¿¿ .
ex
¿¿/ 1
)
¿¿1 2
{
¿¿3 4
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  
ex
¡¡  "
)
¡¡" #
;
¡¡# $
DialogManager
¬¬ 
.
¬¬ #
ShowErrorMessageAlert
¬¬ 3
(
¬¬3 4

Properties
¬¬4 >
.
¬¬> ?
	Resources
¬¬? H
.
¬¬H I%
dialogEndPointException
¬¬I `
)
¬¬` a
;
¬¬a b
}
√√ 
catch
√√ 
(
√√ 
TimeoutException
√√ %
ex
√√& (
)
√√( )
{
√√* +
logger
ƒƒ 
.
ƒƒ 
LogError
ƒƒ 
(
ƒƒ  
ex
ƒƒ  "
)
ƒƒ" #
;
ƒƒ# $
DialogManager
≈≈ 
.
≈≈ #
ShowErrorMessageAlert
≈≈ 3
(
≈≈3 4

Properties
≈≈4 >
.
≈≈> ?
	Resources
≈≈? H
.
≈≈H I$
dialogTimeOutException
≈≈I _
)
≈≈_ `
;
≈≈` a
}
∆∆ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ +
ex
∆∆, .
)
∆∆. /
{
∆∆0 1
logger
«« 
.
«« 
LogError
«« 
(
««  
ex
««  "
)
««" #
;
««# $
DialogManager
»» 
.
»» #
ShowErrorMessageAlert
»» 3
(
»»3 4

Properties
»»4 >
.
»»> ?
	Resources
»»? H
.
»»H I)
dialogComunicationException
»»I d
)
»»d e
;
»»e f
}
…… 
catch
…… 
(
…… 
	Exception
…… 
	exception
…… (
)
……( )
{
……* +
logger
   
.
   
LogError
   
(
    
	exception
    )
)
  ) *
;
  * +
DialogManager
ÀÀ 
.
ÀÀ #
ShowErrorMessageAlert
ÀÀ 3
(
ÀÀ3 4
string
ÀÀ4 :
.
ÀÀ: ;
Format
ÀÀ; A
(
ÀÀA B

Properties
ÀÀB L
.
ÀÀL M
	Resources
ÀÀM V
.
ÀÀV W#
dialogUnexpectedError
ÀÀW l
,
ÀÀl m
	exception
ÀÀn w
.
ÀÀw x
Message
ÀÀx 
)ÀÀ Ä
)ÀÀÄ Å
;ÀÀÅ Ç
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ %
BtnBackEnterEmail_Click
œœ ,
(
œœ, -
object
œœ- 3
sender
œœ4 :
,
œœ: ;
RoutedEventArgs
œœ< K
e
œœL M
)
œœM N
{
œœO P
gridEnterEmail
–– 
.
–– 

Visibility
–– %
=
––& '

Visibility
––( 2
.
––2 3
	Collapsed
––3 <
;
––< =
txtEmail
—— 
.
—— 
Clear
—— 
(
—— 
)
—— 
;
—— 
txtPassword
““ 
.
““ 
Clear
““ 
(
““ 
)
““ 
;
““   
txtPasswordVisible
”” 
.
”” 
Clear
”” $
(
””$ %
)
””% &
;
””& '
}
‘‘ 	
private
÷÷ 
void
÷÷ 
BtnValidate_Click
÷÷ &
(
÷÷& '
object
÷÷' -
sender
÷÷. 4
,
÷÷4 5
RoutedEventArgs
÷÷6 E
e
÷÷F G
)
÷÷G H
{
÷÷I J
LoggerManager
◊◊ 
logger
◊◊  
=
◊◊! "
new
◊◊# &
LoggerManager
◊◊' 4
(
◊◊4 5
this
◊◊5 9
.
◊◊9 :
GetType
◊◊: A
(
◊◊A B
)
◊◊B C
)
◊◊C D
;
◊◊D E
string
ÿÿ 
enteredCode
ÿÿ 
=
ÿÿ  
$"
ÿÿ! #
{
ÿÿ# $ 
txtValidationCode1
ÿÿ$ 6
.
ÿÿ6 7
Text
ÿÿ7 ;
}
ÿÿ; <
{
ÿÿ< = 
txtValidationCode2
ÿÿ= O
.
ÿÿO P
Text
ÿÿP T
}
ÿÿT U
{
ÿÿU V 
txtValidationCode3
ÿÿV h
.
ÿÿh i
Text
ÿÿi m
}
ÿÿm n
{
ÿÿn o!
txtValidationCode4ÿÿo Å
.ÿÿÅ Ç
TextÿÿÇ Ü
}ÿÿÜ á
{ÿÿá à"
txtValidationCode5ÿÿà ö
.ÿÿö õ
Textÿÿõ ü
}ÿÿü †
{ÿÿ† °"
txtValidationCode6ÿÿ° ≥
.ÿÿ≥ ¥
Textÿÿ¥ ∏
}ÿÿ∏ π
"ÿÿπ ∫
;ÿÿ∫ ª
try
ŸŸ 
{
ŸŸ &
IPasswordRecoveryManager
⁄⁄ (
passwordRecovery
⁄⁄) 9
=
⁄⁄: ;
new
⁄⁄< ?+
PasswordRecoveryManagerClient
⁄⁄@ ]
(
⁄⁄] ^
)
⁄⁄^ _
;
⁄⁄_ `
bool
€€ 
isCodeValid
€€  
=
€€! "
passwordRecovery
€€# 3
.
€€3 4 
VerifyRecoveryCode
€€4 F
(
€€F G

_userEmail
€€G Q
,
€€Q R
enteredCode
€€S ^
)
€€^ _
;
€€_ `
if
‹‹ 
(
‹‹ 
isCodeValid
‹‹ 
)
‹‹  
{
‹‹! "
gridRecovery
››  
.
››  !

Visibility
››! +
=
››, -

Visibility
››. 8
.
››8 9
	Collapsed
››9 B
;
››B C"
gridRecoveryPassword
ﬁﬁ (
.
ﬁﬁ( )

Visibility
ﬁﬁ) 3
=
ﬁﬁ4 5

Visibility
ﬁﬁ6 @
.
ﬁﬁ@ A
Visible
ﬁﬁA H
;
ﬁﬁH I
}
ﬂﬂ 
else
ﬂﬂ 
{
ﬂﬂ 
DialogManager
‡‡ !
.
‡‡! "#
ShowErrorMessageAlert
‡‡" 7
(
‡‡7 8

Properties
‡‡8 B
.
‡‡B C
	Resources
‡‡C L
.
‡‡L M'
dialogInvalidRecoveryCode
‡‡M f
)
‡‡f g
;
‡‡g h
}
·· 
}
‚‚ 
catch
‚‚ 
(
‚‚ '
EndpointNotFoundException
‚‚ .'
endpointNotFoundException
‚‚/ H
)
‚‚H I
{
‚‚J K
logger
„„ 
.
„„ 
LogError
„„ 
(
„„  '
endpointNotFoundException
„„  9
)
„„9 :
;
„„: ;
DialogManager
‰‰ 
.
‰‰ #
ShowErrorMessageAlert
‰‰ 3
(
‰‰3 4

Properties
‰‰4 >
.
‰‰> ?
	Resources
‰‰? H
.
‰‰H I%
dialogEndPointException
‰‰I `
)
‰‰` a
;
‰‰a b
}
ÂÂ 
catch
ÂÂ 
(
ÂÂ 
TimeoutException
ÂÂ %
timeoutException
ÂÂ& 6
)
ÂÂ6 7
{
ÂÂ8 9
logger
ÊÊ 
.
ÊÊ 
LogError
ÊÊ 
(
ÊÊ  
timeoutException
ÊÊ  0
)
ÊÊ0 1
;
ÊÊ1 2
DialogManager
ÁÁ 
.
ÁÁ #
ShowErrorMessageAlert
ÁÁ 3
(
ÁÁ3 4

Properties
ÁÁ4 >
.
ÁÁ> ?
	Resources
ÁÁ? H
.
ÁÁH I$
dialogTimeOutException
ÁÁI _
)
ÁÁ_ `
;
ÁÁ` a
}
ËË 
catch
ËË 
(
ËË $
CommunicationException
ËË +$
communicationException
ËË, B
)
ËËB C
{
ËËD E
logger
ÈÈ 
.
ÈÈ 
LogError
ÈÈ 
(
ÈÈ  $
communicationException
ÈÈ  6
)
ÈÈ6 7
;
ÈÈ7 8
DialogManager
ÍÍ 
.
ÍÍ #
ShowErrorMessageAlert
ÍÍ 3
(
ÍÍ3 4

Properties
ÍÍ4 >
.
ÍÍ> ?
	Resources
ÍÍ? H
.
ÍÍH I)
dialogComunicationException
ÍÍI d
)
ÍÍd e
;
ÍÍe f
}
ÎÎ 
catch
ÎÎ 
(
ÎÎ 
	Exception
ÎÎ 
	exception
ÎÎ (
)
ÎÎ( )
{
ÎÎ* +
logger
ÏÏ 
.
ÏÏ 
LogError
ÏÏ 
(
ÏÏ  
	exception
ÏÏ  )
)
ÏÏ) *
;
ÏÏ* +
DialogManager
ÌÌ 
.
ÌÌ #
ShowErrorMessageAlert
ÌÌ 3
(
ÌÌ3 4
string
ÌÌ4 :
.
ÌÌ: ;
Format
ÌÌ; A
(
ÌÌA B

Properties
ÌÌB L
.
ÌÌL M
	Resources
ÌÌM V
.
ÌÌV W#
dialogUnexpectedError
ÌÌW l
,
ÌÌl m
	exception
ÌÌn w
.
ÌÌw x
Message
ÌÌx 
)ÌÌ Ä
)ÌÌÄ Å
;ÌÌÅ Ç
}
ÓÓ 
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ !
BtnResendCode_Click
ÒÒ (
(
ÒÒ( )
object
ÒÒ) /
sender
ÒÒ0 6
,
ÒÒ6 7
RoutedEventArgs
ÒÒ8 G
e
ÒÒH I
)
ÒÒI J
{
ÒÒK L
LoggerManager
ÚÚ 
logger
ÚÚ  
=
ÚÚ! "
new
ÚÚ# &
LoggerManager
ÚÚ' 4
(
ÚÚ4 5
this
ÚÚ5 9
.
ÚÚ9 :
GetType
ÚÚ: A
(
ÚÚA B
)
ÚÚB C
)
ÚÚC D
;
ÚÚD E
if
ÛÛ 
(
ÛÛ 
string
ÛÛ 
.
ÛÛ 
IsNullOrEmpty
ÛÛ $
(
ÛÛ$ %

_userEmail
ÛÛ% /
)
ÛÛ/ 0
)
ÛÛ0 1
{
ÛÛ2 3
DialogManager
ÙÙ 
.
ÙÙ #
ShowErrorMessageAlert
ÙÙ 3
(
ÙÙ3 4

Properties
ÙÙ4 >
.
ÙÙ> ?
	Resources
ÙÙ? H
.
ÙÙH I
dialogNullEmail
ÙÙI X
)
ÙÙX Y
;
ÙÙY Z
return
ıı 
;
ıı 
}
ˆˆ 
try
˜˜ 
{
˜˜ 
var
¯¯ $
emailVerificationProxy
¯¯ *
=
¯¯+ ,
new
¯¯- 0"
TripasDeGatoServicio
¯¯1 E
.
¯¯E F+
PasswordRecoveryManagerClient
¯¯F c
(
¯¯c d
)
¯¯d e
;
¯¯e f
int
˘˘ 
result
˘˘ 
=
˘˘ $
emailVerificationProxy
˘˘ 3
.
˘˘3 4
SendRecoveryCode
˘˘4 D
(
˘˘D E

_userEmail
˘˘E O
)
˘˘O P
;
˘˘P Q
if
˙˙ 
(
˙˙ 
result
˙˙ 
==
˙˙ 
	Constants
˙˙ '
.
˙˙' (
SUCCES_OPERATION
˙˙( 8
)
˙˙8 9
{
˙˙: ;
DialogManager
˚˚ !
.
˚˚! "%
ShowSuccessMessageAlert
˚˚" 9
(
˚˚9 :

Properties
˚˚: D
.
˚˚D E
	Resources
˚˚E N
.
˚˚N O&
dialogRecoveryCodeResent
˚˚O g
)
˚˚g h
;
˚˚h i
}
¸¸ 
else
¸¸ 
{
¸¸ 
DialogManager
˝˝ !
.
˝˝! "#
ShowErrorMessageAlert
˝˝" 7
(
˝˝7 8

Properties
˝˝8 B
.
˝˝B C
	Resources
˝˝C L
.
˝˝L M.
 dialogErrorResendingRecoveryCode
˝˝M m
)
˝˝m n
;
˝˝n o
}
˛˛ 
}
ˇˇ 
catch
ˇˇ 
(
ˇˇ '
EndpointNotFoundException
ˇˇ .'
endpointNotFoundException
ˇˇ/ H
)
ˇˇH I
{
ˇˇJ K
logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ 
(
ÄÄ  '
endpointNotFoundException
ÄÄ  9
)
ÄÄ9 :
;
ÄÄ: ;
DialogManager
ÅÅ 
.
ÅÅ #
ShowErrorMessageAlert
ÅÅ 3
(
ÅÅ3 4

Properties
ÅÅ4 >
.
ÅÅ> ?
	Resources
ÅÅ? H
.
ÅÅH I%
dialogEndPointException
ÅÅI `
)
ÅÅ` a
;
ÅÅa b
}
ÇÇ 
catch
ÇÇ 
(
ÇÇ 
TimeoutException
ÇÇ %
timeoutException
ÇÇ& 6
)
ÇÇ6 7
{
ÇÇ8 9
logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ  
timeoutException
ÉÉ  0
)
ÉÉ0 1
;
ÉÉ1 2
DialogManager
ÑÑ 
.
ÑÑ #
ShowErrorMessageAlert
ÑÑ 3
(
ÑÑ3 4

Properties
ÑÑ4 >
.
ÑÑ> ?
	Resources
ÑÑ? H
.
ÑÑH I$
dialogTimeOutException
ÑÑI _
)
ÑÑ_ `
;
ÑÑ` a
}
ÖÖ 
catch
ÖÖ 
(
ÖÖ $
CommunicationException
ÖÖ +$
communicationException
ÖÖ, B
)
ÖÖB C
{
ÖÖD E
logger
ÜÜ 
.
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  $
communicationException
ÜÜ  6
)
ÜÜ6 7
;
ÜÜ7 8
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I)
dialogComunicationException
ááI d
)
áád e
;
ááe f
}
àà 
catch
àà 
(
àà 
	Exception
àà 
	exception
àà (
)
àà( )
{
àà* +
logger
ââ 
.
ââ 
LogError
ââ 
(
ââ  
	exception
ââ  )
)
ââ) *
;
ââ* +
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4
string
ää4 :
.
ää: ;
Format
ää; A
(
ääA B

Properties
ääB L
.
ääL M
	Resources
ääM V
.
ääV W#
dialogUnexpectedError
ääW l
,
ääl m
	exception
ään w
.
ääw x
Message
ääx 
)ää Ä
)ääÄ Å
;ääÅ Ç
}
ãã 
}
åå 	
private
éé 
void
éé #
BtnBackValidate_Click
éé *
(
éé* +
object
éé+ 1
sender
éé2 8
,
éé8 9
RoutedEventArgs
éé: I
e
ééJ K
)
ééK L
{
ééM N
gridRecovery
èè 
.
èè 

Visibility
èè #
=
èè$ %

Visibility
èè& 0
.
èè0 1
	Collapsed
èè1 :
;
èè: ;
txtEmail
êê 
.
êê 
Clear
êê 
(
êê 
)
êê 
;
êê 
txtPassword
ëë 
.
ëë 
Clear
ëë 
(
ëë 
)
ëë 
;
ëë   
txtPasswordVisible
íí 
.
íí 
Clear
íí $
(
íí$ %
)
íí% &
;
íí& '
}
ìì 	
private
ïï 
void
ïï #
BtnSavePassword_Click
ïï *
(
ïï* +
object
ïï+ 1
sender
ïï2 8
,
ïï8 9
RoutedEventArgs
ïï: I
e
ïïJ K
)
ïïK L
{
ïïM N
LoggerManager
ññ 
logger
ññ  
=
ññ! "
new
ññ# &
LoggerManager
ññ' 4
(
ññ4 5
this
ññ5 9
.
ññ9 :
GetType
ññ: A
(
ññA B
)
ññB C
)
ññC D
;
ññD E
string
óó 
newPassword
óó 
=
óó  
txtNewPassword
óó! /
.
óó/ 0
Password
óó0 8
.
óó8 9
Trim
óó9 =
(
óó= >
)
óó> ?
;
óó? @
string
òò 
confirmPassword
òò "
=
òò# $#
txtNewPasswordConfirm
òò% :
.
òò: ;
Password
òò; C
.
òòC D
Trim
òòD H
(
òòH I
)
òòI J
;
òòJ K
string
ôô 
email
ôô 
=
ôô 
txtEmail
ôô #
.
ôô# $
Text
ôô$ (
.
ôô( )
Trim
ôô) -
(
ôô- .
)
ôô. /
;
ôô/ 0
if
öö 
(
öö 
newPassword
öö 
!=
öö 
confirmPassword
öö .
)
öö. /
{
öö0 1
DialogManager
õõ 
.
õõ #
ShowErrorMessageAlert
õõ 3
(
õõ3 4

Properties
õõ4 >
.
õõ> ?
	Resources
õõ? H
.
õõH I*
dialogMissmatchesCredentials
õõI e
)
õõe f
;
õõf g
return
úú 
;
úú 
}
ùù 
if
ûû 
(
ûû 
!
ûû 
IsValidPassword
ûû  
(
ûû  !
newPassword
ûû! ,
)
ûû, -
)
ûû- .
{
ûû/ 0
DialogManager
üü 
.
üü #
ShowErrorMessageAlert
üü 3
(
üü3 4

Properties
üü4 >
.
üü> ?
	Resources
üü? H
.
üüH I#
dialogInvalidPassword
üüI ^
)
üü^ _
;
üü_ `
return
†† 
;
†† 
}
°° 
try
¢¢ 
{
¢¢ &
IPasswordRecoveryManager
££ (
passwordRecovery
££) 9
=
££: ;
new
££< ?+
PasswordRecoveryManagerClient
££@ ]
(
££] ^
)
££^ _
;
££_ `
int
§§ 
result
§§ 
=
§§ 
passwordRecovery
§§ -
.
§§- .
UpdatePassword
§§. <
(
§§< =

_userEmail
§§= G
,
§§G H
Hasher
§§I O
.
§§O P
HashToSHA256
§§P \
(
§§\ ]
newPassword
§§] h
)
§§h i
)
§§i j
;
§§j k
if
•• 
(
•• 
result
•• 
==
•• 
	Constants
•• '
.
••' (
SUCCES_OPERATION
••( 8
)
••8 9
{
••: ;
DialogManager
¶¶ !
.
¶¶! "%
ShowSuccessMessageAlert
¶¶" 9
(
¶¶9 :

Properties
¶¶: D
.
¶¶D E
	Resources
¶¶E N
.
¶¶N O/
!dialogPasswordUpdatedSuccessfully
¶¶O p
)
¶¶p q
;
¶¶q r
txtNewPassword
ßß "
.
ßß" #
Clear
ßß# (
(
ßß( )
)
ßß) *
;
ßß* +#
txtNewPasswordConfirm
®® )
.
®®) *
Clear
®®* /
(
®®/ 0
)
®®0 1
;
®®1 2"
gridRecoveryPassword
©© (
.
©©( )

Visibility
©©) 3
=
©©4 5

Visibility
©©6 @
.
©©@ A
	Collapsed
©©A J
;
©©J K
}
™™ 
else
™™ 
{
™™ 
DialogManager
´´ !
.
´´! "#
ShowErrorMessageAlert
´´" 7
(
´´7 8

Properties
´´8 B
.
´´B C
	Resources
´´C L
.
´´L M)
dialogErrorUpdatingPassowrd
´´M h
)
´´h i
;
´´i j
}
¨¨ 
}
≠≠ 
catch
≠≠ 
(
≠≠ '
EndpointNotFoundException
≠≠ .'
endpointNotFoundException
≠≠/ H
)
≠≠H I
{
≠≠J K
logger
ÆÆ 
.
ÆÆ 
LogError
ÆÆ 
(
ÆÆ  '
endpointNotFoundException
ÆÆ  9
)
ÆÆ9 :
;
ÆÆ: ;
DialogManager
ØØ 
.
ØØ #
ShowErrorMessageAlert
ØØ 3
(
ØØ3 4

Properties
ØØ4 >
.
ØØ> ?
	Resources
ØØ? H
.
ØØH I%
dialogEndPointException
ØØI `
)
ØØ` a
;
ØØa b
}
∞∞ 
catch
∞∞ 
(
∞∞ 
TimeoutException
∞∞ %
timeoutException
∞∞& 6
)
∞∞6 7
{
∞∞8 9
logger
±± 
.
±± 
LogError
±± 
(
±±  
timeoutException
±±  0
)
±±0 1
;
±±1 2
DialogManager
≤≤ 
.
≤≤ #
ShowErrorMessageAlert
≤≤ 3
(
≤≤3 4

Properties
≤≤4 >
.
≤≤> ?
	Resources
≤≤? H
.
≤≤H I$
dialogTimeOutException
≤≤I _
)
≤≤_ `
;
≤≤` a
}
≥≥ 
catch
≥≥ 
(
≥≥ $
CommunicationException
≥≥ +$
communicationException
≥≥, B
)
≥≥B C
{
≥≥D E
logger
¥¥ 
.
¥¥ 
LogError
¥¥ 
(
¥¥  $
communicationException
¥¥  6
)
¥¥6 7
;
¥¥7 8
DialogManager
µµ 
.
µµ #
ShowErrorMessageAlert
µµ 3
(
µµ3 4

Properties
µµ4 >
.
µµ> ?
	Resources
µµ? H
.
µµH I)
dialogComunicationException
µµI d
)
µµd e
;
µµe f
}
∂∂ 
catch
∂∂ 
(
∂∂ 
	Exception
∂∂ 
	exception
∂∂ (
)
∂∂( )
{
∂∂* +
logger
∑∑ 
.
∑∑ 
LogError
∑∑ 
(
∑∑  
	exception
∑∑  )
)
∑∑) *
;
∑∑* +
DialogManager
∏∏ 
.
∏∏ #
ShowErrorMessageAlert
∏∏ 3
(
∏∏3 4
string
∏∏4 :
.
∏∏: ;
Format
∏∏; A
(
∏∏A B

Properties
∏∏B L
.
∏∏L M
	Resources
∏∏M V
.
∏∏V W#
dialogUnexpectedError
∏∏W l
,
∏∏l m
	exception
∏∏n w
.
∏∏w x
Message
∏∏x 
)∏∏ Ä
)∏∏Ä Å
;∏∏Å Ç
}
ππ 
}
∫∫ 	
private
ºº 
void
ºº +
TxtValidationCode_TextChanged
ºº 2
(
ºº2 3
object
ºº3 9
sender
ºº: @
,
ºº@ A"
TextChangedEventArgs
ººB V
e
ººW X
)
ººX Y
{
ººZ [
TextBox
ΩΩ 
currentTextBox
ΩΩ "
=
ΩΩ# $
sender
ΩΩ% +
as
ΩΩ, .
TextBox
ΩΩ/ 6
;
ΩΩ6 7
if
ææ 
(
ææ 
currentTextBox
ææ 
.
ææ 
Text
ææ #
.
ææ# $
Length
ææ$ *
==
ææ+ -
$num
ææ. /
)
ææ/ 0
{
ææ1 2
if
øø 
(
øø 
currentTextBox
øø "
==
øø# % 
txtValidationCode1
øø& 8
)
øø8 9 
txtValidationCode2
¿¿ &
.
¿¿& '
Focus
¿¿' ,
(
¿¿, -
)
¿¿- .
;
¿¿. /
else
¡¡ 
if
¡¡ 
(
¡¡ 
currentTextBox
¡¡ '
==
¡¡( * 
txtValidationCode2
¡¡+ =
)
¡¡= > 
txtValidationCode3
¬¬ &
.
¬¬& '
Focus
¬¬' ,
(
¬¬, -
)
¬¬- .
;
¬¬. /
else
√√ 
if
√√ 
(
√√ 
currentTextBox
√√ '
==
√√( * 
txtValidationCode3
√√+ =
)
√√= > 
txtValidationCode4
ƒƒ &
.
ƒƒ& '
Focus
ƒƒ' ,
(
ƒƒ, -
)
ƒƒ- .
;
ƒƒ. /
else
≈≈ 
if
≈≈ 
(
≈≈ 
currentTextBox
≈≈ '
==
≈≈( * 
txtValidationCode4
≈≈+ =
)
≈≈= > 
txtValidationCode5
∆∆ &
.
∆∆& '
Focus
∆∆' ,
(
∆∆, -
)
∆∆- .
;
∆∆. /
else
«« 
if
«« 
(
«« 
currentTextBox
«« '
==
««( * 
txtValidationCode5
««+ =
)
««= > 
txtValidationCode6
»» &
.
»»& '
Focus
»»' ,
(
»», -
)
»»- .
;
»». /
}
…… 
}
   	
private
ÃÃ 
bool
ÃÃ 
IsValidPassword
ÃÃ $
(
ÃÃ$ %
string
ÃÃ% +
password
ÃÃ, 4
)
ÃÃ4 5
{
ÃÃ6 7
bool
ÕÕ 
isValid
ÕÕ 
=
ÕÕ 
true
ÕÕ 
;
ÕÕ  
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
	Validador
ŒŒ 
.
ŒŒ 
ValidatePassword
ŒŒ +
(
ŒŒ+ ,
password
ŒŒ, 4
)
ŒŒ4 5
)
ŒŒ5 6
{
ŒŒ7 8
isValid
œœ 
=
œœ 
false
œœ 
;
œœ  
}
–– 
return
—— 
isValid
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ *
BtnToggleNewPassword_Checked
‘‘ 1
(
‘‘1 2
object
‘‘2 8
sender
‘‘9 ?
,
‘‘? @
RoutedEventArgs
‘‘A P
e
‘‘Q R
)
‘‘R S
{
‘‘T U#
txtNewPasswordVisible
’’ !
.
’’! "
Text
’’" &
=
’’' (
txtNewPassword
’’) 7
.
’’7 8
Password
’’8 @
;
’’@ A#
txtNewPasswordVisible
÷÷ !
.
÷÷! "

Visibility
÷÷" ,
=
÷÷- .

Visibility
÷÷/ 9
.
÷÷9 :
Visible
÷÷: A
;
÷÷A B
txtNewPassword
◊◊ 
.
◊◊ 

Visibility
◊◊ %
=
◊◊& '

Visibility
◊◊( 2
.
◊◊2 3
	Collapsed
◊◊3 <
;
◊◊< =*
txtNewPasswordConfirmVisible
ÿÿ (
.
ÿÿ( )
Text
ÿÿ) -
=
ÿÿ. /#
txtNewPasswordConfirm
ÿÿ0 E
.
ÿÿE F
Password
ÿÿF N
;
ÿÿN O*
txtNewPasswordConfirmVisible
ŸŸ (
.
ŸŸ( )

Visibility
ŸŸ) 3
=
ŸŸ4 5

Visibility
ŸŸ6 @
.
ŸŸ@ A
Visible
ŸŸA H
;
ŸŸH I#
txtNewPasswordConfirm
⁄⁄ !
.
⁄⁄! "

Visibility
⁄⁄" ,
=
⁄⁄- .

Visibility
⁄⁄/ 9
.
⁄⁄9 :
	Collapsed
⁄⁄: C
;
⁄⁄C D
}
€€ 	
private
›› 
void
›› ,
BtnToggleNewPassword_Unchecked
›› 3
(
››3 4
object
››4 :
sender
››; A
,
››A B
RoutedEventArgs
››C R
e
››S T
)
››T U
{
››V W
txtNewPassword
ﬁﬁ 
.
ﬁﬁ 
Password
ﬁﬁ #
=
ﬁﬁ$ %#
txtNewPasswordVisible
ﬁﬁ& ;
.
ﬁﬁ; <
Text
ﬁﬁ< @
;
ﬁﬁ@ A
txtNewPassword
ﬂﬂ 
.
ﬂﬂ 

Visibility
ﬂﬂ %
=
ﬂﬂ& '

Visibility
ﬂﬂ( 2
.
ﬂﬂ2 3
Visible
ﬂﬂ3 :
;
ﬂﬂ: ;#
txtNewPasswordVisible
‡‡ !
.
‡‡! "

Visibility
‡‡" ,
=
‡‡- .

Visibility
‡‡/ 9
.
‡‡9 :
	Collapsed
‡‡: C
;
‡‡C D#
txtNewPasswordConfirm
·· !
.
··! "
Password
··" *
=
··+ ,*
txtNewPasswordConfirmVisible
··- I
.
··I J
Text
··J N
;
··N O#
txtNewPasswordConfirm
‚‚ !
.
‚‚! "

Visibility
‚‚" ,
=
‚‚- .

Visibility
‚‚/ 9
.
‚‚9 :
Visible
‚‚: A
;
‚‚A B*
txtNewPasswordConfirmVisible
„„ (
.
„„( )

Visibility
„„) 3
=
„„4 5

Visibility
„„6 @
.
„„@ A
	Collapsed
„„A J
;
„„J K
}
‰‰ 	
private
ÊÊ 
void
ÊÊ #
BtnBackRecovery_Click
ÊÊ *
(
ÊÊ* +
object
ÊÊ+ 1
sender
ÊÊ2 8
,
ÊÊ8 9
RoutedEventArgs
ÊÊ: I
e
ÊÊJ K
)
ÊÊK L
{
ÊÊM N"
gridRecoveryPassword
ÁÁ  
.
ÁÁ  !

Visibility
ÁÁ! +
=
ÁÁ, -

Visibility
ÁÁ. 8
.
ÁÁ8 9
	Collapsed
ÁÁ9 B
;
ÁÁB C
txtEmail
ËË 
.
ËË 
Clear
ËË 
(
ËË 
)
ËË 
;
ËË 
txtPassword
ÈÈ 
.
ÈÈ 
Clear
ÈÈ 
(
ÈÈ 
)
ÈÈ 
;
ÈÈ   
txtPasswordVisible
ÍÍ 
.
ÍÍ 
Clear
ÍÍ $
(
ÍÍ$ %
)
ÍÍ% &
;
ÍÍ& '
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ '
BtnTogglePassword_Checked
ÌÌ .
(
ÌÌ. /
object
ÌÌ/ 5
sender
ÌÌ6 <
,
ÌÌ< =
RoutedEventArgs
ÌÌ> M
e
ÌÌN O
)
ÌÌO P
{
ÌÌQ R 
txtPasswordVisible
ÓÓ 
.
ÓÓ 
Text
ÓÓ #
=
ÓÓ$ %
txtPassword
ÓÓ& 1
.
ÓÓ1 2
Password
ÓÓ2 :
;
ÓÓ: ; 
txtPasswordVisible
ÔÔ 
.
ÔÔ 

Visibility
ÔÔ )
=
ÔÔ* +

Visibility
ÔÔ, 6
.
ÔÔ6 7
Visible
ÔÔ7 >
;
ÔÔ> ?
txtPassword
 
.
 

Visibility
 "
=
# $

Visibility
% /
.
/ 0
	Collapsed
0 9
;
9 :
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ )
BtnTogglePassword_Unchecked
ÛÛ 0
(
ÛÛ0 1
object
ÛÛ1 7
sender
ÛÛ8 >
,
ÛÛ> ?
RoutedEventArgs
ÛÛ@ O
e
ÛÛP Q
)
ÛÛQ R
{
ÛÛS T
txtPassword
ÙÙ 
.
ÙÙ 
Password
ÙÙ  
=
ÙÙ! " 
txtPasswordVisible
ÙÙ# 5
.
ÙÙ5 6
Text
ÙÙ6 :
;
ÙÙ: ; 
txtPasswordVisible
ıı 
.
ıı 

Visibility
ıı )
=
ıı* +

Visibility
ıı, 6
.
ıı6 7
	Collapsed
ıı7 @
;
ıı@ A
txtPassword
ˆˆ 
.
ˆˆ 

Visibility
ˆˆ "
=
ˆˆ# $

Visibility
ˆˆ% /
.
ˆˆ/ 0
Visible
ˆˆ0 7
;
ˆˆ7 8
}
˜˜ 	
private
˘˘ 
void
˘˘ *
UpdatePasswordVisibilityIcon
˘˘ 1
(
˘˘1 2
)
˘˘2 3
{
˘˘4 5
btnTogglePassword
˙˙ 
.
˙˙ 

Visibility
˙˙ (
=
˙˙) *
txtPassword
˙˙+ 6
.
˙˙6 7
Password
˙˙7 ?
.
˙˙? @
Length
˙˙@ F
>
˙˙G H
$num
˙˙I J
?
˙˙K L

Visibility
˙˙M W
.
˙˙W X
Visible
˙˙X _
:
˙˙` a

Visibility
˙˙b l
.
˙˙l m
	Collapsed
˙˙m v
;
˙˙v w
}
˚˚ 	
private
˝˝ 
void
˝˝ &
BtnRecoverPassword_Click
˝˝ -
(
˝˝- .
object
˝˝. 4
sender
˝˝5 ;
,
˝˝; <
RoutedEventArgs
˝˝= L
e
˝˝M N
)
˝˝N O
{
˝˝P Q
gridEnterEmail
˛˛ 
.
˛˛ 

Visibility
˛˛ %
=
˛˛& '

Visibility
˛˛( 2
.
˛˛2 3
Visible
˛˛3 :
;
˛˛: ;
}
ˇˇ 	
}
ÄÄ 
}ÅÅ ÆÄ
0C:\TripasDeGatoCliente\Views\ProfileView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
ProfileView $
:% &
Page' +
{, -
private 
bool 

_isEditing 
=  !
false" '
;' (
private 
string 
_selectedProfile '
=( ) 
UserProfileSingleton* >
.> ?
PicPath? F
;F G
public 
ProfileView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
LoadProfile 
( 
) 
; 
DisableEditing 
( 
) 
; 
} 	
private 
void 
LoadProfile  
(  !
)! "
{# $
lbUserNameProfile 
. 
Content %
=& '
!( )
string) /
./ 0
IsNullOrEmpty0 =
(= > 
UserProfileSingleton> R
.R S
UserNameS [
)[ \
?] ^ 
UserProfileSingleton_ s
.s t
UserNamet |
:} ~

Properties	 â
.
â ä
	Resources
ä ì
.
ì î
lbUnknownUser
î °
;
° ¢
txtUserName 
. 
Text 
=  
UserProfileSingleton 3
.3 4
UserName4 <
;< =
cboxLanguage 
. 
ItemsSource $
=% &
new' *
List+ /
</ 0
string0 6
>6 7
{8 9
$str: A
,A B
$strC J
}K L
;L M
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% & 
UserProfileSingleton& :
.: ;
PicPath; B
)B C
)C D
{E F
imageProfile 
. 
Source #
=$ %
new& )
BitmapImage* 5
(5 6
new6 9
Uri: =
(= > 
UserProfileSingleton> R
.R S
PicPathS Z
,Z [
UriKind\ c
.c d
RelativeOrAbsoluted v
)v w
)w x
;x y
} 
lbScoreProfile 
. 
Content "
=# $
string% +
.+ ,
Format, 2
(2 3

Properties3 =
.= >
	Resources> G
.G H
lbScoreH O
,O P 
UserProfileSingletonQ e
.e f
Scoref k
)k l
;l m
} 	
private   
void   
EnableEditing   "
(  " #
)  # $
{  % &
txtUserName!! 
.!! 
	IsEnabled!! !
=!!" #
true!!$ (
;!!( )
cboxLanguage"" 
."" 
	IsEnabled"" "
=""# $
true""% )
;"") *
btnSave## 
.## 
	IsEnabled## 
=## 
true##  $
;##$ %

_isEditing$$ 
=$$ 
true$$ 
;$$ 
borderProfiles%% 
.%% 
	IsEnabled%% $
=%%% &
true%%' +
;%%+ ,
borderProfiles&& 
.&& 

Visibility&& %
=&&& '

Visibility&&( 2
.&&2 3
Visible&&3 :
;&&: ;
btnSave'' 
.'' 

Visibility'' 
=''  

Visibility''! +
.''+ ,
Visible'', 3
;''3 4
}(( 	
private** 
void** 
DisableEditing** #
(**# $
)**$ %
{**& '
txtUserName++ 
.++ 
	IsEnabled++ !
=++" #
false++$ )
;++) *
cboxLanguage,, 
.,, 
	IsEnabled,, "
=,,# $
false,,% *
;,,* +
btnSave-- 
.-- 
	IsEnabled-- 
=-- 
false--  %
;--% &

_isEditing.. 
=.. 
false.. 
;.. 
borderProfiles// 
.// 
	IsEnabled// $
=//% &
false//' ,
;//, -
borderProfiles00 
.00 

Visibility00 %
=00& '

Visibility00( 2
.002 3
	Collapsed003 <
;00< =
btnSave11 
.11 

Visibility11 
=11  

Visibility11! +
.11+ ,
	Collapsed11, 5
;115 6
}22 	
private44 
void44 
BtnEdit_Click44 "
(44" #
object44# )
sender44* 0
,440 1
RoutedEventArgs442 A
e44B C
)44C D
{44E F
if55 
(55 
!55 

_isEditing55 
)55 
{55 
EnableEditing66 
(66 
)66 
;66  
}77 
}88 	
private:: 
void:: 
BtnSave_Click:: "
(::" #
object::# )
sender::* 0
,::0 1
RoutedEventArgs::2 A
e::B C
)::C D
{::E F
if;; 
(;; 

_isEditing;; 
);; 
{;; 
if<< 
(<< 
ValidateFields<< "
(<<" #
)<<# $
)<<$ %
{<<& '
string== 
userName== #
===$ %
txtUserName==& 1
.==1 2
Text==2 6
;==6 7
string>> 
selectedLanguage>> +
=>>, -
cboxLanguage>>. :
.>>: ;
SelectedItem>>; G
?>>G H
.>>H I
ToString>>I Q
(>>Q R
)>>R S
;>>S T
if?? 
(?? 
string?? 
.?? 
IsNullOrEmpty?? ,
(??, -
selectedLanguage??- =
)??= >
)??> ?
{??@ A
SaveProfile@@ #
(@@# $
userName@@$ ,
,@@, -
selectedLanguage@@. >
,@@> ?
_selectedProfile@@@ P
)@@P Q
;@@Q R
}AA 
elseAA 
{AA 
MessageBoxResultBB (
resultBB) /
=BB0 1

MessageBoxBB2 <
.BB< =
ShowBB= A
(BBA B

PropertiesCC &
.CC& '
	ResourcesCC' 0
.CC0 1'
dialogMessageLanguagechangeCC1 L
,CCL M

PropertiesDD &
.DD& '
	ResourcesDD' 0
.DD0 1
lbLanguageChangeDD1 A
,DDA B
MessageBoxButtonEE ,
.EE, -
YesNoEE- 2
,EE2 3
MessageBoxImageFF +
.FF+ ,
QuestionFF, 4
)GG 
;GG 
ifHH 
(HH 
resultHH "
==HH# %
MessageBoxResultHH& 6
.HH6 7
YesHH7 :
)HH: ;
{HH< =
AppII 
.II  
ChangeLanguageII  .
(II. /
selectedLanguageII/ ?
)II? @
;II@ A
SystemJJ "
.JJ" #
DiagnosticsJJ# .
.JJ. /
ProcessJJ/ 6
.JJ6 7
StartJJ7 <
(JJ< =
ApplicationJJ= H
.JJH I
ResourceAssemblyJJI Y
.JJY Z
LocationJJZ b
)JJb c
;JJc d
ApplicationKK '
.KK' (
CurrentKK( /
.KK/ 0
ShutdownKK0 8
(KK8 9
)KK9 :
;KK: ;
}LL 
elseLL 
{LL  
SaveProfileMM '
(MM' (
userNameMM( 0
,MM0 1
selectedLanguageMM2 B
,MMB C
_selectedProfileMMD T
)MMT U
;MMU V
}NN 
}OO 
}PP 
elsePP 
{PP 
DialogManagerQQ !
.QQ! "!
ShowErrorMessageAlertQQ" 7
(QQ7 8

PropertiesQQ8 B
.QQB C
	ResourcesQQC L
.QQL M%
dialogCompleteFieldsErrorQQM f
)QQf g
;QQg h
}RR 
}SS 
}TT 	
privateVV 
asyncVV 
voidVV 
SaveProfileVV &
(VV& '
stringVV' -
userNameVV. 6
,VV6 7
stringVV8 >
selectedLanguageVV? O
,VVO P
stringVVQ W
selectedProfileVVX g
)VVg h
{VVi j
LoggerManagerWW 
loggerWW  
=WW! "
newWW# &
LoggerManagerWW' 4
(WW4 5
thisWW5 9
.WW9 :
GetTypeWW: A
(WWA B
)WWB C
)WWC D
;WWD E
tryXX 
{XX 
varYY 
serviceYY 
=YY 
newYY ! 
TripasDeGatoServicioYY" 6
.YY6 7
UserManagerClientYY7 H
(YYH I
)YYI J
;YYJ K
intZZ 
	idProfileZZ 
=ZZ  
UserProfileSingletonZZ  4
.ZZ4 5
	IdProfileZZ5 >
;ZZ> ?
string[[ 
newPic[[ 
=[[ 
selectedProfile[[  /
??[[0 2 
UserProfileSingleton[[3 G
.[[G H
PicPath[[H O
;[[O P
int\\ 
updateResult\\  
=\\! "
await\\# (
service\\) 0
.\\0 1
UpdateProfileAsync\\1 C
(\\C D
	idProfile\\D M
,\\M N
userName\\O W
,\\W X
newPic\\Y _
)\\_ `
;\\` a
if]] 
(]] 
updateResult]]  
==]]! #
ConstantsManager]]$ 4
.]]4 5
	Constants]]5 >
.]]> ?
SUCCES_OPERATION]]? O
)]]O P
{]]Q R 
UserProfileSingleton^^ (
.^^( )
UpdateNombre^^) 5
(^^5 6
userName^^6 >
)^^> ?
;^^? @ 
UserProfileSingleton__ (
.__( )
UpdateFotoRuta__) 7
(__7 8
newPic__8 >
)__> ?
;__? @
LoadProfile`` 
(``  
)``  !
;``! "
DialogManageraa !
.aa! "#
ShowSuccessMessageAlertaa" 9
(aa9 :

Propertiesaa: D
.aaD E
	ResourcesaaE N
.aaN O
dialogChangesSavedaaO a
)aaa b
;aab c
DisableEditingbb "
(bb" #
)bb# $
;bb$ %
}cc 
elsecc 
{cc 
DialogManagerdd !
.dd! "!
ShowErrorMessageAlertdd" 7
(dd7 8

Propertiesdd8 B
.ddB C
	ResourcesddC L
.ddL M(
dialogErrorSavingProfileDataddM i
)ddi j
;ddj k
}ee 
}ff 
catchff 
(ff %
EndpointNotFoundExceptionff .%
endpointNotFoundExceptionff/ H
)ffH I
{ffJ K
loggergg 
.gg 
LogErrorgg 
(gg  %
endpointNotFoundExceptiongg  9
)gg9 :
;gg: ;
DialogManagerhh 
.hh !
ShowErrorMessageAlerthh 3
(hh3 4

Propertieshh4 >
.hh> ?
	Resourceshh? H
.hhH I#
dialogEndPointExceptionhhI `
)hh` a
;hha b
}ii 
catchii 
(ii 
TimeoutExceptionii %
timeoutExceptionii& 6
)ii6 7
{ii8 9
loggerjj 
.jj 
LogErrorjj 
(jj  
timeoutExceptionjj  0
)jj0 1
;jj1 2
DialogManagerkk 
.kk !
ShowErrorMessageAlertkk 3
(kk3 4

Propertieskk4 >
.kk> ?
	Resourceskk? H
.kkH I"
dialogTimeOutExceptionkkI _
)kk_ `
;kk` a
}ll 
catchll 
(ll "
CommunicationExceptionll +"
communicationExceptionll, B
)llB C
{llD E
loggermm 
.mm 
LogErrormm 
(mm  "
communicationExceptionmm  6
)mm6 7
;mm7 8
DialogManagernn 
.nn !
ShowErrorMessageAlertnn 3
(nn3 4

Propertiesnn4 >
.nn> ?
	Resourcesnn? H
.nnH I'
dialogComunicationExceptionnnI d
)nnd e
;nne f
}oo 
catchoo 
(oo 
	Exceptionoo 
	exceptionoo (
)oo( )
{oo* +
loggerpp 
.pp 
LogErrorpp 
(pp  
	exceptionpp  )
)pp) *
;pp* +
DialogManagerqq 
.qq !
ShowErrorMessageAlertqq 3
(qq3 4
stringqq4 :
.qq: ;
Formatqq; A
(qqA B

PropertiesqqB L
.qqL M
	ResourcesqqM V
.qqV W!
dialogUnexpectedErrorqqW l
,qql m
	exceptionqqn w
.qqw x
Messageqqx 
)	qq Ä
)
qqÄ Å
;
qqÅ Ç
}rr 
}ss 	
privateuu 
voiduu ,
 ListProfilePics_SelectionChangeduu 5
(uu5 6
objectuu6 <
senderuu= C
,uuC D%
SelectionChangedEventArgsuuE ^
euu_ `
)uu` a
{uub c
ifvv 
(vv 
lstProfilePicsvv 
.vv 
SelectedItemvv +
isvv, .
ListBoxItemvv/ :
selectedItemvv; G
)vvG H
{vvI J
stringww 
selectedImageww $
=ww% &
selectedItemww' 3
.ww3 4
Tagww4 7
.ww7 8
ToStringww8 @
(ww@ A
)wwA B
;wwB C
imageProfilexx 
.xx 
Sourcexx #
=xx$ %
newxx& )
BitmapImagexx* 5
(xx5 6
newxx6 9
Urixx: =
(xx= >
selectedImagexx> K
,xxK L
UriKindxxM T
.xxT U
RelativexxU ]
)xx] ^
)xx^ _
;xx_ ` 
UserProfileSingletonyy $
.yy$ %
UpdateFotoRutayy% 3
(yy3 4
selectedImageyy4 A
)yyA B
;yyB C
_selectedProfilezz  
=zz! "
selectedImagezz# 0
;zz0 1
}{{ 
}|| 	
private~~ 
bool~~ 
ValidateFields~~ #
(~~# $
)~~$ %
{~~& '
bool 
isValid 
= 
true 
;  
if
ÄÄ 
(
ÄÄ 
string
ÄÄ 
.
ÄÄ  
IsNullOrWhiteSpace
ÄÄ )
(
ÄÄ) *
txtUserName
ÄÄ* 5
.
ÄÄ5 6
Text
ÄÄ6 :
)
ÄÄ: ;
)
ÄÄ; <
{
ÄÄ= >
isValid
ÅÅ 
=
ÅÅ 
false
ÅÅ 
;
ÅÅ  
txtUserName
ÇÇ 
.
ÇÇ 
BorderBrush
ÇÇ '
=
ÇÇ( )
System
ÇÇ* 0
.
ÇÇ0 1
Windows
ÇÇ1 8
.
ÇÇ8 9
Media
ÇÇ9 >
.
ÇÇ> ?
Brushes
ÇÇ? F
.
ÇÇF G
Red
ÇÇG J
;
ÇÇJ K
}
ÉÉ 
else
ÉÉ 
{
ÉÉ 
txtUserName
ÑÑ 
.
ÑÑ 
BorderBrush
ÑÑ '
=
ÑÑ( )
System
ÑÑ* 0
.
ÑÑ0 1
Windows
ÑÑ1 8
.
ÑÑ8 9
Media
ÑÑ9 >
.
ÑÑ> ?
Brushes
ÑÑ? F
.
ÑÑF G
White
ÑÑG L
;
ÑÑL M
}
ÖÖ 
return
ÜÜ 
isValid
ÜÜ 
;
ÜÜ 
}
áá 	
private
ââ 
void
ââ 
GoToMenuView
ââ !
(
ââ! "
)
ââ" #
{
ââ$ %
MenuView
ää 
menuView
ää 
=
ää 
new
ää  #
MenuView
ää$ ,
(
ää, -
)
ää- .
;
ää. /
this
ãã 
.
ãã 
NavigationService
ãã "
?
ãã" #
.
ãã# $
Navigate
ãã$ ,
(
ãã, -
menuView
ãã- 5
)
ãã5 6
;
ãã6 7
}
åå 	
private
éé 
void
éé 
BtnBack_Click
éé "
(
éé" #
object
éé# )
sender
éé* 0
,
éé0 1
RoutedEventArgs
éé2 A
e
ééB C
)
ééC D
{
ééE F
GoToMenuView
èè 
(
èè 
)
èè 
;
èè 
}
êê 	
}
ëë 
}íí Ù€
1C:\TripasDeGatoCliente\Views\RegisterView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
RegisterView %
:& '
Page( ,
{- .
public 
RegisterView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
BtnSignIn_Click $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{G H
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
string 
email 
= 
txtEmail #
.# $
Text$ (
;( )
string 
username 
= 
txtName %
.% &
Text& *
;* +
string 
password 
= 
txtPassword )
.) *
Password* 2
;2 3
if 
( 
! 
ValidateFields 
(  
email  %
,% &
username' /
,/ 0
password1 9
)9 :
): ;
return< B
;B C
try 
{ 
if 
( 
! #
VerifyEmailAvailability ,
(, -
email- 2
)2 3
)3 4
return5 ;
;; <
if 
( 
! &
VerifyUsernameAvailability /
(/ 0
username0 8
)8 9
)9 :
return; A
;A B 
SendVerificationCode $
($ %
email% *
)* +
;+ ,
} 
catch 
( %
EndpointNotFoundException .%
endpointNotFoundException/ H
)H I
{J K
logger 
. 
LogError 
(  %
endpointNotFoundException  9
)9 :
;: ;
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
catch 
( 
TimeoutException %
timeoutException& 6
)6 7
{8 9
logger 
. 
LogError 
(  
timeoutException  0
)0 1
;1 2
DialogManager   
.   !
ShowErrorMessageAlert   3
(  3 4

Properties  4 >
.  > ?
	Resources  ? H
.  H I"
dialogTimeOutException  I _
)  _ `
;  ` a
}!! 
catch!! 
(!! "
CommunicationException!! +"
communicationException!!, B
)!!B C
{!!D E
logger"" 
."" 
LogError"" 
(""  "
communicationException""  6
)""6 7
;""7 8
DialogManager## 
.## !
ShowErrorMessageAlert## 3
(##3 4

Properties##4 >
.##> ?
	Resources##? H
.##H I'
dialogComunicationException##I d
)##d e
;##e f
}$$ 
catch$$ 
($$ 
	Exception$$ 
	exception$$ (
)$$( )
{$$* +
logger%% 
.%% 
LogError%% 
(%%  
	exception%%  )
)%%) *
;%%* +
DialogManager&& 
.&& !
ShowErrorMessageAlert&& 3
(&&3 4
string&&4 :
.&&: ;
Format&&; A
(&&A B

Properties&&B L
.&&L M
	Resources&&M V
.&&V W!
dialogUnexpectedError&&W l
,&&l m
	exception&&n w
.&&w x
Message&&x 
)	&& Ä
)
&&Ä Å
;
&&Å Ç
}'' 
}(( 	
private** 
bool** #
VerifyEmailAvailability** ,
(**, -
string**- 3
email**4 9
)**9 :
{**; <
LoggerManager++ 
logger++  
=++! "
new++# &
LoggerManager++' 4
(++4 5
this++5 9
.++9 :
GetType++: A
(++A B
)++B C
)++C D
;++D E
var,, 
	userProxy,, 
=,, 
new,,  
TripasDeGatoServicio,,  4
.,,4 5
UserManagerClient,,5 F
(,,F G
),,G H
;,,H I
bool-- 
isEmailAvailable-- !
=--" #
true--$ (
;--( )
try.. 
{.. 
int// 
emailCheckResult// $
=//% &
	userProxy//' 0
.//0 1
IsEmailRegistered//1 B
(//B C
email//C H
)//H I
;//I J
if00 
(00 
emailCheckResult00 $
==00% '
	Constants00( 1
.001 2
DATA_MATCHES002 >
)00> ?
{00@ A
DialogManager11 !
.11! "!
ShowErrorMessageAlert11" 7
(117 8

Properties118 B
.11B C
	Resources11C L
.11L M
dialogEmailInUse11M ]
)11] ^
;11^ _
HighlightField22 "
(22" #
txtEmail22# +
)22+ ,
;22, -
isEmailAvailable33 $
=33% &
false33' ,
;33, -
}44 
else44 
if44 
(44 
emailCheckResult44 +
==44, .
	Constants44/ 8
.448 9
ERROR_OPERATION449 H
)44H I
{44J K
DialogManager55 !
.55! "!
ShowErrorMessageAlert55" 7
(557 8

Properties558 B
.55B C
	Resources55C L
.55L M$
dialogErrorCheckingEmail55M e
)55e f
;55f g
isEmailAvailable66 $
=66% &
false66' ,
;66, -
}77 
}88 
catch88 
(88 %
EndpointNotFoundException88 .%
endpointNotFoundException88/ H
)88H I
{88J K
logger99 
.99 
LogError99 
(99  %
endpointNotFoundException99  9
)999 :
;99: ;
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4

Properties::4 >
.::> ?
	Resources::? H
.::H I#
dialogEndPointException::I `
)::` a
;::a b
isEmailAvailable;;  
=;;! "
false;;# (
;;;( )
}<< 
catch<< 
(<< 
TimeoutException<< %
timeoutException<<& 6
)<<6 7
{<<8 9
logger== 
.== 
LogError== 
(==  
timeoutException==  0
)==0 1
;==1 2
DialogManager>> 
.>> !
ShowErrorMessageAlert>> 3
(>>3 4

Properties>>4 >
.>>> ?
	Resources>>? H
.>>H I"
dialogTimeOutException>>I _
)>>_ `
;>>` a
isEmailAvailable??  
=??! "
false??# (
;??( )
}@@ 
catch@@ 
(@@ "
CommunicationException@@ +"
communicationException@@, B
)@@B C
{@@D E
loggerAA 
.AA 
LogErrorAA 
(AA  "
communicationExceptionAA  6
)AA6 7
;AA7 8
DialogManagerBB 
.BB !
ShowErrorMessageAlertBB 3
(BB3 4

PropertiesBB4 >
.BB> ?
	ResourcesBB? H
.BBH I'
dialogComunicationExceptionBBI d
)BBd e
;BBe f
isEmailAvailableCC  
=CC! "
falseCC# (
;CC( )
}DD 
catchDD 
(DD 
	ExceptionDD 
	exceptionDD (
)DD( )
{DD* +
loggerEE 
.EE 
LogErrorEE 
(EE  
	exceptionEE  )
)EE) *
;EE* +
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4
stringFF4 :
.FF: ;
FormatFF; A
(FFA B

PropertiesFFB L
.FFL M
	ResourcesFFM V
.FFV W!
dialogUnexpectedErrorFFW l
,FFl m
	exceptionFFn w
.FFw x
MessageFFx 
)	FF Ä
)
FFÄ Å
;
FFÅ Ç
isEmailAvailableGG  
=GG! "
falseGG# (
;GG( )
}HH 
returnII 
isEmailAvailableII #
;II# $
}JJ 	
privateLL 
boolLL &
VerifyUsernameAvailabilityLL /
(LL/ 0
stringLL0 6
usernameLL7 ?
)LL? @
{LLA B
LoggerManagerMM 
loggerMM  
=MM! "
newMM# &
LoggerManagerMM' 4
(MM4 5
thisMM5 9
.MM9 :
GetTypeMM: A
(MMA B
)MMB C
)MMC D
;MMD E
varNN 
	userProxyNN 
=NN 
newNN  
TripasDeGatoServicioNN  4
.NN4 5
UserManagerClientNN5 F
(NNF G
)NNG H
;NNH I
boolOO 
isUsernameAvailableOO $
=OO% &
trueOO' +
;OO+ ,
tryPP 
{PP 
intQQ 
usernameCheckResultQQ '
=QQ( )
	userProxyQQ* 3
.QQ3 4
IsNameRegisteredQQ4 D
(QQD E
usernameQQE M
)QQM N
;QQN O
ifRR 
(RR 
usernameCheckResultRR '
==RR( *
	ConstantsRR+ 4
.RR4 5
DATA_MATCHESRR5 A
)RRA B
{RRC D
DialogManagerSS !
.SS! "!
ShowErrorMessageAlertSS" 7
(SS7 8

PropertiesSS8 B
.SSB C
	ResourcesSSC L
.SSL M
dialogUserNameInUseSSM `
)SS` a
;SSa b
HighlightFieldTT "
(TT" #
txtNameTT# *
)TT* +
;TT+ ,
isUsernameAvailableUU '
=UU( )
falseUU* /
;UU/ 0
}VV 
elseVV 
ifVV 
(VV 
usernameCheckResultVV .
==VV/ 1
	ConstantsVV2 ;
.VV; <
ERROR_OPERATIONVV< K
)VVK L
{VVM N
DialogManagerWW !
.WW! "!
ShowErrorMessageAlertWW" 7
(WW7 8

PropertiesWW8 B
.WWB C
	ResourcesWWC L
.WWL M'
dialogErrorCheckingUserNameWWM h
)WWh i
;WWi j
isUsernameAvailableXX '
=XX( )
falseXX* /
;XX/ 0
}YY 
}ZZ 
catchZZ 
(ZZ %
EndpointNotFoundExceptionZZ .%
endpointNotFoundExceptionZZ/ H
)ZZH I
{ZZJ K
logger[[ 
.[[ 
LogError[[ 
([[  %
endpointNotFoundException[[  9
)[[9 :
;[[: ;
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4

Properties\\4 >
.\\> ?
	Resources\\? H
.\\H I#
dialogEndPointException\\I `
)\\` a
;\\a b
isUsernameAvailable]] #
=]]$ %
false]]& +
;]]+ ,
}^^ 
catch^^ 
(^^ 
TimeoutException^^ %
timeoutException^^& 6
)^^6 7
{^^8 9
logger__ 
.__ 
LogError__ 
(__  
timeoutException__  0
)__0 1
;__1 2
DialogManager`` 
.`` !
ShowErrorMessageAlert`` 3
(``3 4

Properties``4 >
.``> ?
	Resources``? H
.``H I"
dialogTimeOutException``I _
)``_ `
;``` a
isUsernameAvailableaa #
=aa$ %
falseaa& +
;aa+ ,
}bb 
catchbb 
(bb "
CommunicationExceptionbb +"
communicationExceptionbb, B
)bbB C
{bbD E
loggercc 
.cc 
LogErrorcc 
(cc  "
communicationExceptioncc  6
)cc6 7
;cc7 8
DialogManagerdd 
.dd !
ShowErrorMessageAlertdd 3
(dd3 4

Propertiesdd4 >
.dd> ?
	Resourcesdd? H
.ddH I'
dialogComunicationExceptionddI d
)ddd e
;dde f
isUsernameAvailableee #
=ee$ %
falseee& +
;ee+ ,
}ff 
catchff 
(ff 
	Exceptionff 
	exceptionff (
)ff( )
{ff* +
loggergg 
.gg 
LogErrorgg 
(gg  
	exceptiongg  )
)gg) *
;gg* +
DialogManagerhh 
.hh !
ShowErrorMessageAlerthh 3
(hh3 4
stringhh4 :
.hh: ;
Formathh; A
(hhA B

PropertieshhB L
.hhL M
	ResourceshhM V
.hhV W!
dialogUnexpectedErrorhhW l
,hhl m
	exceptionhhn w
.hhw x
Messagehhx 
)	hh Ä
)
hhÄ Å
;
hhÅ Ç
isUsernameAvailableii #
=ii$ %
falseii& +
;ii+ ,
}jj 
returnkk 
isUsernameAvailablekk &
;kk& '
}ll 	
privatenn 
voidnn  
SendVerificationCodenn )
(nn) *
stringnn* 0
emailnn1 6
)nn6 7
{nn8 9
LoggerManageroo 
loggeroo  
=oo! "
newoo# &
LoggerManageroo' 4
(oo4 5
thisoo5 9
.oo9 :
GetTypeoo: A
(ooA B
)ooB C
)ooC D
;ooD E
trypp 
{pp 
varqq "
emailVerificationProxyqq *
=qq+ ,
newqq- 0 
TripasDeGatoServicioqq1 E
.qqE F*
EmailVerificationManagerClientqqF d
(qqd e
)qqe f
;qqf g
intrr 
resultrr 
=rr "
emailVerificationProxyrr 3
.rr3 4(
SendVerificationCodeRegisterrr4 P
(rrP Q
emailrrQ V
)rrV W
;rrW X
ifss 
(ss 
resultss 
==ss 
	Constantsss '
.ss' (
SUCCES_OPERATIONss( 8
)ss8 9
{ss: ;
verificationGridtt $
.tt$ %

Visibilitytt% /
=tt0 1

Visibilitytt2 <
.tt< =
Visiblett= D
;ttD E
DialogManageruu !
.uu! "#
ShowSuccessMessageAlertuu" 9
(uu9 :

Propertiesuu: D
.uuD E
	ResourcesuuE N
.uuN O&
dialogVerificationCodeSentuuO i
)uui j
;uuj k
}vv 
elsevv 
{vv 
DialogManagerww !
.ww! "!
ShowErrorMessageAlertww" 7
(ww7 8

Propertiesww8 B
.wwB C
	ResourceswwC L
.wwL M.
"dialogErrorSendingVerificationCodewwM o
)wwo p
;wwp q
}xx 
}yy 
catchyy 
(yy %
EndpointNotFoundExceptionyy .%
endpointNotFoundExceptionyy/ H
)yyH I
{yyJ K
loggerzz 
.zz 
LogErrorzz 
(zz  %
endpointNotFoundExceptionzz  9
)zz9 :
;zz: ;
DialogManager{{ 
.{{ !
ShowErrorMessageAlert{{ 3
({{3 4

Properties{{4 >
.{{> ?
	Resources{{? H
.{{H I#
dialogEndPointException{{I `
){{` a
;{{a b
}|| 
catch|| 
(|| 
TimeoutException|| %
timeoutException||& 6
)||6 7
{||8 9
logger}} 
.}} 
LogError}} 
(}}  
timeoutException}}  0
)}}0 1
;}}1 2
DialogManager~~ 
.~~ !
ShowErrorMessageAlert~~ 3
(~~3 4

Properties~~4 >
.~~> ?
	Resources~~? H
.~~H I"
dialogTimeOutException~~I _
)~~_ `
;~~` a
} 
catch 
( "
CommunicationException +"
communicationException, B
)B C
{D E
logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ 
(
ÄÄ  $
communicationException
ÄÄ  6
)
ÄÄ6 7
;
ÄÄ7 8
DialogManager
ÅÅ 
.
ÅÅ #
ShowErrorMessageAlert
ÅÅ 3
(
ÅÅ3 4

Properties
ÅÅ4 >
.
ÅÅ> ?
	Resources
ÅÅ? H
.
ÅÅH I)
dialogComunicationException
ÅÅI d
)
ÅÅd e
;
ÅÅe f
}
ÇÇ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ 
	exception
ÇÇ (
)
ÇÇ( )
{
ÇÇ* +
logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ  
	exception
ÉÉ  )
)
ÉÉ) *
;
ÉÉ* +
DialogManager
ÑÑ 
.
ÑÑ #
ShowErrorMessageAlert
ÑÑ 3
(
ÑÑ3 4
string
ÑÑ4 :
.
ÑÑ: ;
Format
ÑÑ; A
(
ÑÑA B

Properties
ÑÑB L
.
ÑÑL M
	Resources
ÑÑM V
.
ÑÑV W#
dialogUnexpectedError
ÑÑW l
,
ÑÑl m
	exception
ÑÑn w
.
ÑÑw x
Message
ÑÑx 
)ÑÑ Ä
)ÑÑÄ Å
;ÑÑÅ Ç
}
ÖÖ 
}
ÜÜ 	
private
àà 
void
àà !
BtnResendCode_Click
àà (
(
àà( )
object
àà) /
sender
àà0 6
,
àà6 7
RoutedEventArgs
àà8 G
e
ààH I
)
ààI J
{
ààK L
LoggerManager
ââ 
logger
ââ  
=
ââ! "
new
ââ# &
LoggerManager
ââ' 4
(
ââ4 5
this
ââ5 9
.
ââ9 :
GetType
ââ: A
(
ââA B
)
ââB C
)
ââC D
;
ââD E
try
ää 
{
ää 
var
ãã $
emailVerificationProxy
ãã *
=
ãã+ ,
new
ãã- 0"
TripasDeGatoServicio
ãã1 E
.
ããE F,
EmailVerificationManagerClient
ããF d
(
ããd e
)
ããe f
;
ããf g
int
åå 
result
åå 
=
åå $
emailVerificationProxy
åå 3
.
åå3 4*
SendVerificationCodeRegister
åå4 P
(
ååP Q
txtEmail
ååQ Y
.
ååY Z
Text
ååZ ^
)
åå^ _
;
åå_ `
if
çç 
(
çç 
result
çç 
==
çç 
	Constants
çç '
.
çç' (
SUCCES_OPERATION
çç( 8
)
çç8 9
{
çç: ;
DialogManager
éé !
.
éé! "%
ShowSuccessMessageAlert
éé" 9
(
éé9 :

Properties
éé: D
.
ééD E
	Resources
ééE N
.
ééN O6
(dialogVerificationCodeResentSuccessfully
ééO w
)
ééw x
;
ééx y
}
èè 
else
èè 
{
èè 
DialogManager
êê !
.
êê! "#
ShowErrorMessageAlert
êê" 7
(
êê7 8

Properties
êê8 B
.
êêB C
	Resources
êêC L
.
êêL M2
$dialogErrorResendingVerificationCode
êêM q
)
êêq r
;
êêr s
}
ëë 
}
íí 
catch
íí 
(
íí '
EndpointNotFoundException
íí .'
endpointNotFoundException
íí/ H
)
ííH I
{
ííJ K
logger
ìì 
.
ìì 
LogError
ìì 
(
ìì  '
endpointNotFoundException
ìì  9
)
ìì9 :
;
ìì: ;
DialogManager
îî 
.
îî #
ShowErrorMessageAlert
îî 3
(
îî3 4

Properties
îî4 >
.
îî> ?
	Resources
îî? H
.
îîH I%
dialogEndPointException
îîI `
)
îî` a
;
îîa b
}
ïï 
catch
ïï 
(
ïï 
TimeoutException
ïï %
timeoutException
ïï& 6
)
ïï6 7
{
ïï8 9
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
timeoutException
ññ  0
)
ññ0 1
;
ññ1 2
DialogManager
óó 
.
óó #
ShowErrorMessageAlert
óó 3
(
óó3 4

Properties
óó4 >
.
óó> ?
	Resources
óó? H
.
óóH I$
dialogTimeOutException
óóI _
)
óó_ `
;
óó` a
}
òò 
catch
òò 
(
òò $
CommunicationException
òò +$
communicationException
òò, B
)
òòB C
{
òòD E
logger
ôô 
.
ôô 
LogError
ôô 
(
ôô  $
communicationException
ôô  6
)
ôô6 7
;
ôô7 8
DialogManager
öö 
.
öö #
ShowErrorMessageAlert
öö 3
(
öö3 4

Properties
öö4 >
.
öö> ?
	Resources
öö? H
.
ööH I)
dialogComunicationException
ööI d
)
ööd e
;
ööe f
}
õõ 
catch
õõ 
(
õõ 
	Exception
õõ 
	exception
õõ (
)
õõ( )
{
õõ* +
logger
úú 
.
úú 
LogError
úú 
(
úú  
	exception
úú  )
)
úú) *
;
úú* +
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4
string
ùù4 :
.
ùù: ;
Format
ùù; A
(
ùùA B

Properties
ùùB L
.
ùùL M
	Resources
ùùM V
.
ùùV W#
dialogUnexpectedError
ùùW l
,
ùùl m
	exception
ùùn w
.
ùùw x
Message
ùùx 
)ùù Ä
)ùùÄ Å
;ùùÅ Ç
}
ûû 
}
üü 	
private
°° 
void
°° 
BtnValidate_Click
°° &
(
°°& '
object
°°' -
sender
°°. 4
,
°°4 5
RoutedEventArgs
°°6 E
e
°°F G
)
°°G H
{
°°I J
LoggerManager
¢¢ 
logger
¢¢  
=
¢¢! "
new
¢¢# &
LoggerManager
¢¢' 4
(
¢¢4 5
this
¢¢5 9
.
¢¢9 :
GetType
¢¢: A
(
¢¢A B
)
¢¢B C
)
¢¢C D
;
¢¢D E
string
££ 
enteredCode
££ 
=
££  
$"
££! #
{
££# $ 
txtValidationCode1
££$ 6
.
££6 7
Text
££7 ;
}
££; <
{
££< = 
txtValidationCode2
££= O
.
££O P
Text
££P T
}
££T U
{
££U V 
txtValidationCode3
££V h
.
££h i
Text
££i m
}
££m n
{
££n o!
txtValidationCode4££o Å
.££Å Ç
Text££Ç Ü
}££Ü á
{££á à"
txtValidationCode5££à ö
.££ö õ
Text££õ ü
}££ü †
{££† °"
txtValidationCode6££° ≥
.££≥ ¥
Text££¥ ∏
}££∏ π
"££π ∫
;££∫ ª
try
§§ 
{
§§ 
var
•• $
emailVerificationProxy
•• *
=
••+ ,
new
••- 0"
TripasDeGatoServicio
••1 E
.
••E F,
EmailVerificationManagerClient
••F d
(
••d e
)
••e f
;
••f g
bool
¶¶ 
isCodeValid
¶¶  
=
¶¶! "$
emailVerificationProxy
¶¶# 9
.
¶¶9 :

VerifyCode
¶¶: D
(
¶¶D E
txtEmail
¶¶E M
.
¶¶M N
Text
¶¶N R
,
¶¶R S
enteredCode
¶¶T _
)
¶¶_ `
;
¶¶` a
if
ßß 
(
ßß 
isCodeValid
ßß 
)
ßß  
{
ßß! "
var
®® 
	userProxy
®® !
=
®®" #
new
®®$ '"
TripasDeGatoServicio
®®( <
.
®®< =
UserManagerClient
®®= N
(
®®N O
)
®®O P
;
®®P Q
var
©© 
newUser
©© 
=
©©  !
new
©©" %"
TripasDeGatoServicio
©©& :
.
©©: ;
	LoginUser
©©; D
{
©©E F
mail
™™ 
=
™™ 
txtEmail
™™ '
.
™™' (
Text
™™( ,
,
™™, -
password
´´  
=
´´! "
Hasher
´´# )
.
´´) *
HashToSHA256
´´* 6
(
´´6 7
txtPassword
´´7 B
.
´´B C
Password
´´C K
)
´´K L
}
¨¨ 
;
¨¨ 
var
≠≠ 

newProfile
≠≠ "
=
≠≠# $
new
≠≠% ("
TripasDeGatoServicio
≠≠) =
.
≠≠= >
Profile
≠≠> E
{
≠≠F G
Username
ÆÆ  
=
ÆÆ! "
txtName
ÆÆ# *
.
ÆÆ* +
Text
ÆÆ+ /
,
ÆÆ/ 0
Score
ØØ 
=
ØØ 
	Constants
ØØ  )
.
ØØ) *
INITIAL_SCORE
ØØ* 7
,
ØØ7 8
PicturePath
∞∞ #
=
∞∞$ %
$str
∞∞& J
}
±± 
;
±± 
int
≤≤ 
accountResult
≤≤ %
=
≤≤& '
	userProxy
≤≤( 1
.
≤≤1 2
CreateAccount
≤≤2 ?
(
≤≤? @
newUser
≤≤@ G
,
≤≤G H

newProfile
≤≤I S
)
≤≤S T
;
≤≤T U
if
≥≥ 
(
≥≥ 
accountResult
≥≥ %
==
≥≥& (
	Constants
≥≥) 2
.
≥≥2 3
SUCCES_OPERATION
≥≥3 C
)
≥≥C D
{
≥≥E F
DialogManager
¥¥ %
.
¥¥% &%
ShowSuccessMessageAlert
¥¥& =
(
¥¥= >

Properties
¥¥> H
.
¥¥H I
	Resources
¥¥I R
.
¥¥R S-
dialogAccountCreatedSuccesfully
¥¥S r
)
¥¥r s
;
¥¥s t
verificationGrid
µµ (
.
µµ( )

Visibility
µµ) 3
=
µµ4 5

Visibility
µµ6 @
.
µµ@ A
	Collapsed
µµA J
;
µµJ K
GoToLoginView
∂∂ %
(
∂∂% &
)
∂∂& '
;
∂∂' (
}
∑∑ 
else
∑∑ 
{
∑∑ 
DialogManager
∏∏ %
.
∏∏% &#
ShowErrorMessageAlert
∏∏& ;
(
∏∏; <

Properties
∏∏< F
.
∏∏F G
	Resources
∏∏G P
.
∏∏P Q(
dialogAccountCreatedErrror
∏∏Q k
)
∏∏k l
;
∏∏l m
}
ππ 
}
∫∫ 
else
∫∫ 
{
∫∫ 
DialogManager
ªª !
.
ªª! "#
ShowErrorMessageAlert
ªª" 7
(
ªª7 8

Properties
ªª8 B
.
ªªB C
	Resources
ªªC L
.
ªªL M+
dialogInvalidVerificationCode
ªªM j
)
ªªj k
;
ªªk l
}
ºº 
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ '
EndpointNotFoundException
ΩΩ .'
endpointNotFoundException
ΩΩ/ H
)
ΩΩH I
{
ΩΩJ K
logger
ææ 
.
ææ 
LogError
ææ 
(
ææ  '
endpointNotFoundException
ææ  9
)
ææ9 :
;
ææ: ;
DialogManager
øø 
.
øø #
ShowErrorMessageAlert
øø 3
(
øø3 4

Properties
øø4 >
.
øø> ?
	Resources
øø? H
.
øøH I%
dialogEndPointException
øøI `
)
øø` a
;
øøa b
}
¿¿ 
catch
¿¿ 
(
¿¿ 
TimeoutException
¿¿ %
timeoutException
¿¿& 6
)
¿¿6 7
{
¿¿8 9
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  
timeoutException
¡¡  0
)
¡¡0 1
;
¡¡1 2
DialogManager
¬¬ 
.
¬¬ #
ShowErrorMessageAlert
¬¬ 3
(
¬¬3 4

Properties
¬¬4 >
.
¬¬> ?
	Resources
¬¬? H
.
¬¬H I$
dialogTimeOutException
¬¬I _
)
¬¬_ `
;
¬¬` a
}
√√ 
catch
√√ 
(
√√ $
CommunicationException
√√ +$
communicationException
√√, B
)
√√B C
{
√√D E
logger
ƒƒ 
.
ƒƒ 
LogError
ƒƒ 
(
ƒƒ  $
communicationException
ƒƒ  6
)
ƒƒ6 7
;
ƒƒ7 8
DialogManager
≈≈ 
.
≈≈ #
ShowErrorMessageAlert
≈≈ 3
(
≈≈3 4

Properties
≈≈4 >
.
≈≈> ?
	Resources
≈≈? H
.
≈≈H I)
dialogComunicationException
≈≈I d
)
≈≈d e
;
≈≈e f
}
∆∆ 
catch
∆∆ 
(
∆∆ 
	Exception
∆∆ 
	exception
∆∆ (
)
∆∆( )
{
∆∆* +
logger
«« 
.
«« 
LogError
«« 
(
««  
	exception
««  )
)
««) *
;
««* +
DialogManager
»» 
.
»» #
ShowErrorMessageAlert
»» 3
(
»»3 4
string
»»4 :
.
»»: ;
Format
»»; A
(
»»A B

Properties
»»B L
.
»»L M
	Resources
»»M V
.
»»V W#
dialogUnexpectedError
»»W l
,
»»l m
	exception
»»n w
.
»»w x
Message
»»x 
)»» Ä
)»»Ä Å
;»»Å Ç
}
…… 
}
   	
private
ÃÃ 
bool
ÃÃ 
ValidateFields
ÃÃ #
(
ÃÃ# $
string
ÃÃ$ *
email
ÃÃ+ 0
,
ÃÃ0 1
string
ÃÃ2 8
username
ÃÃ9 A
,
ÃÃA B
string
ÃÃC I
password
ÃÃJ R
)
ÃÃR S
{
ÃÃT U
bool
ÕÕ 
isValid
ÕÕ 
=
ÕÕ 
true
ÕÕ 
;
ÕÕ  
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
	Validador
ŒŒ 
.
ŒŒ 
ValidateEmail
ŒŒ (
(
ŒŒ( )
email
ŒŒ) .
)
ŒŒ. /
)
ŒŒ/ 0
{
ŒŒ1 2
HighlightField
œœ 
(
œœ 
txtEmail
œœ '
)
œœ' (
;
œœ( )
lbInvalidEmail
–– 
.
–– 

Visibility
–– )
=
––* +

Visibility
––, 6
.
––6 7
Visible
––7 >
;
––> ?
isValid
—— 
=
—— 
false
—— 
;
——  
}
““ 
else
““ 
{
““ 

ResetField
”” 
(
”” 
txtEmail
”” #
)
””# $
;
””$ %
lbInvalidEmail
‘‘ 
.
‘‘ 

Visibility
‘‘ )
=
‘‘* +

Visibility
‘‘, 6
.
‘‘6 7
	Collapsed
‘‘7 @
;
‘‘@ A
}
’’ 
if
÷÷ 
(
÷÷ 
!
÷÷ 
	Validador
÷÷ 
.
÷÷ 
ValidateUsername
÷÷ +
(
÷÷+ ,
username
÷÷, 4
)
÷÷4 5
)
÷÷5 6
{
÷÷7 8
HighlightField
◊◊ 
(
◊◊ 
txtName
◊◊ &
)
◊◊& '
;
◊◊' (
lbInvalidUser
ÿÿ 
.
ÿÿ 

Visibility
ÿÿ (
=
ÿÿ) *

Visibility
ÿÿ+ 5
.
ÿÿ5 6
Visible
ÿÿ6 =
;
ÿÿ= >
isValid
ŸŸ 
=
ŸŸ 
false
ŸŸ 
;
ŸŸ  
}
⁄⁄ 
else
⁄⁄ 
{
⁄⁄ 

ResetField
€€ 
(
€€ 
txtName
€€ "
)
€€" #
;
€€# $
lbInvalidUser
‹‹ 
.
‹‹ 

Visibility
‹‹ (
=
‹‹) *

Visibility
‹‹+ 5
.
‹‹5 6
	Collapsed
‹‹6 ?
;
‹‹? @
}
›› 
if
ﬁﬁ 
(
ﬁﬁ 
!
ﬁﬁ 
	Validador
ﬁﬁ 
.
ﬁﬁ 
ValidatePassword
ﬁﬁ +
(
ﬁﬁ+ ,
password
ﬁﬁ, 4
)
ﬁﬁ4 5
)
ﬁﬁ5 6
{
ﬁﬁ7 8
HighlightField
ﬂﬂ 
(
ﬂﬂ 
txtPassword
ﬂﬂ *
)
ﬂﬂ* +
;
ﬂﬂ+ ,
lbInvalidPassword
‡‡ !
.
‡‡! "

Visibility
‡‡" ,
=
‡‡- .

Visibility
‡‡/ 9
.
‡‡9 :
Visible
‡‡: A
;
‡‡A B
isValid
·· 
=
·· 
false
·· 
;
··  
}
‚‚ 
else
‚‚ 
{
‚‚ 

ResetField
„„ 
(
„„ 
txtPassword
„„ &
)
„„& '
;
„„' (
lbInvalidPassword
‰‰ !
.
‰‰! "

Visibility
‰‰" ,
=
‰‰- .

Visibility
‰‰/ 9
.
‰‰9 :
	Collapsed
‰‰: C
;
‰‰C D
}
ÂÂ 
return
ÊÊ 
isValid
ÊÊ 
;
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ 
HighlightField
ÈÈ #
(
ÈÈ# $
Control
ÈÈ$ +
control
ÈÈ, 3
)
ÈÈ3 4
{
ÈÈ5 6
control
ÍÍ 
.
ÍÍ 
BorderBrush
ÍÍ 
=
ÍÍ  !
Brushes
ÍÍ" )
.
ÍÍ) *
Red
ÍÍ* -
;
ÍÍ- .
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ )
TxtPassword_PasswordChanged
ÌÌ 0
(
ÌÌ0 1
object
ÌÌ1 7
sender
ÌÌ8 >
,
ÌÌ> ?
RoutedEventArgs
ÌÌ@ O
e
ÌÌP Q
)
ÌÌQ R
{
ÌÌS T
if
ÓÓ 
(
ÓÓ 
txtPassword
ÓÓ 
.
ÓÓ 

Visibility
ÓÓ &
==
ÓÓ' )

Visibility
ÓÓ* 4
.
ÓÓ4 5
Visible
ÓÓ5 <
)
ÓÓ< =
{
ÓÓ> ?
ValidatePassword
ÔÔ  
(
ÔÔ  !
txtPassword
ÔÔ! ,
.
ÔÔ, -
Password
ÔÔ- 5
)
ÔÔ5 6
;
ÔÔ6 7
}
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ 0
"TxtPasswordVisible_PasswordChanged
ÛÛ 7
(
ÛÛ7 8
object
ÛÛ8 >
sender
ÛÛ? E
,
ÛÛE F
RoutedEventArgs
ÛÛG V
e
ÛÛW X
)
ÛÛX Y
{
ÛÛZ [
if
ÙÙ 
(
ÙÙ  
txtPasswordVisible
ÙÙ "
.
ÙÙ" #

Visibility
ÙÙ# -
==
ÙÙ. 0

Visibility
ÙÙ1 ;
.
ÙÙ; <
Visible
ÙÙ< C
)
ÙÙC D
{
ÙÙE F
ValidatePassword
ıı  
(
ıı  ! 
txtPasswordVisible
ıı! 3
.
ıı3 4
Text
ıı4 8
)
ıı8 9
;
ıı9 :
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ 
ValidatePassword
˘˘ %
(
˘˘% &
string
˘˘& ,
password
˘˘- 5
)
˘˘5 6
{
˘˘7 8
if
˙˙ 
(
˙˙ 
!
˙˙ 
	Validador
˙˙ 
.
˙˙ 
ValidatePassword
˙˙ +
(
˙˙+ ,
password
˙˙, 4
)
˙˙4 5
)
˙˙5 6
{
˙˙7 8
HighlightField
˚˚ 
(
˚˚ 
txtPassword
˚˚ *
)
˚˚* +
;
˚˚+ ,
lbInvalidPassword
¸¸ !
.
¸¸! "

Visibility
¸¸" ,
=
¸¸- .

Visibility
¸¸/ 9
.
¸¸9 :
Visible
¸¸: A
;
¸¸A B
}
˝˝ 
else
˝˝ 
{
˝˝ 

ResetField
˛˛ 
(
˛˛ 
txtPassword
˛˛ &
)
˛˛& '
;
˛˛' (
lbInvalidPassword
ˇˇ !
.
ˇˇ! "

Visibility
ˇˇ" ,
=
ˇˇ- .

Visibility
ˇˇ/ 9
.
ˇˇ9 :
	Collapsed
ˇˇ: C
;
ˇˇC D
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ '
BtnTogglePassword_Checked
ÉÉ .
(
ÉÉ. /
object
ÉÉ/ 5
sender
ÉÉ6 <
,
ÉÉ< =
RoutedEventArgs
ÉÉ> M
e
ÉÉN O
)
ÉÉO P
{
ÉÉQ R 
txtPasswordVisible
ÑÑ 
.
ÑÑ 
Text
ÑÑ #
=
ÑÑ$ %
txtPassword
ÑÑ& 1
.
ÑÑ1 2
Password
ÑÑ2 :
;
ÑÑ: ; 
txtPasswordVisible
ÖÖ 
.
ÖÖ 

Visibility
ÖÖ )
=
ÖÖ* +

Visibility
ÖÖ, 6
.
ÖÖ6 7
Visible
ÖÖ7 >
;
ÖÖ> ?
txtPassword
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ "
=
ÜÜ# $

Visibility
ÜÜ% /
.
ÜÜ/ 0
	Collapsed
ÜÜ0 9
;
ÜÜ9 :
}
áá 	
private
ââ 
void
ââ )
BtnTogglePassword_Unchecked
ââ 0
(
ââ0 1
object
ââ1 7
sender
ââ8 >
,
ââ> ?
RoutedEventArgs
ââ@ O
e
ââP Q
)
ââQ R
{
ââS T
txtPassword
ää 
.
ää 
Password
ää  
=
ää! " 
txtPasswordVisible
ää# 5
.
ää5 6
Text
ää6 :
;
ää: ; 
txtPasswordVisible
ãã 
.
ãã 

Visibility
ãã )
=
ãã* +

Visibility
ãã, 6
.
ãã6 7
	Collapsed
ãã7 @
;
ãã@ A
txtPassword
åå 
.
åå 

Visibility
åå "
=
åå# $

Visibility
åå% /
.
åå/ 0
Visible
åå0 7
;
åå7 8
}
çç 	
private
èè 
void
èè *
UpdatePasswordVisibilityIcon
èè 1
(
èè1 2
)
èè2 3
{
èè4 5
if
êê 
(
êê 
!
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê %
(
êê% &
txtPassword
êê& 1
.
êê1 2
Password
êê2 :
)
êê: ;
||
êê< >
!
êê? @
string
êê@ F
.
êêF G
IsNullOrEmpty
êêG T
(
êêT U 
txtPasswordVisible
êêU g
.
êêg h
Text
êêh l
)
êêl m
)
êêm n
{
êêo p
btnTogglePassword
ëë !
.
ëë! "

Visibility
ëë" ,
=
ëë- .

Visibility
ëë/ 9
.
ëë9 :
Visible
ëë: A
;
ëëA B
}
íí 
else
íí 
{
íí 
btnTogglePassword
ìì !
.
ìì! "

Visibility
ìì" ,
=
ìì- .

Visibility
ìì/ 9
.
ìì9 :
	Collapsed
ìì: C
;
ììC D
}
îî 
}
ïï 	
private
óó 
void
óó 

ResetField
óó 
(
óó  
Control
óó  '
control
óó( /
)
óó/ 0
{
óó1 2
control
òò 
.
òò 
BorderBrush
òò 
=
òò  !
Brushes
òò" )
.
òò) *
White
òò* /
;
òò/ 0
}
ôô 	
private
õõ 
void
õõ !
TxtName_TextChanged
õõ (
(
õõ( )
object
õõ) /
sender
õõ0 6
,
õõ6 7"
TextChangedEventArgs
õõ8 L
e
õõM N
)
õõN O
{
õõP Q
string
úú 
username
úú 
=
úú 
txtName
úú %
.
úú% &
Text
úú& *
;
úú* +
if
ùù 
(
ùù 
!
ùù 
	Validador
ùù 
.
ùù 
ValidateUsername
ùù +
(
ùù+ ,
username
ùù, 4
)
ùù4 5
)
ùù5 6
{
ùù7 8
HighlightField
ûû 
(
ûû 
txtName
ûû &
)
ûû& '
;
ûû' (
lbInvalidUser
üü 
.
üü 

Visibility
üü (
=
üü) *

Visibility
üü+ 5
.
üü5 6
Visible
üü6 =
;
üü= >
}
†† 
else
†† 
{
†† 

ResetField
°° 
(
°° 
txtName
°° "
)
°°" #
;
°°# $
lbInvalidUser
¢¢ 
.
¢¢ 

Visibility
¢¢ (
=
¢¢) *

Visibility
¢¢+ 5
.
¢¢5 6
	Collapsed
¢¢6 ?
;
¢¢? @
}
££ 
}
§§ 	
private
¶¶ 
void
¶¶ "
TxtEmail_TextChanged
¶¶ )
(
¶¶) *
object
¶¶* 0
sender
¶¶1 7
,
¶¶7 8"
TextChangedEventArgs
¶¶9 M
e
¶¶N O
)
¶¶O P
{
¶¶Q R
string
ßß 
email
ßß 
=
ßß 
txtEmail
ßß #
.
ßß# $
Text
ßß$ (
;
ßß( )
if
®® 
(
®® 
!
®® 
	Validador
®® 
.
®® 
ValidateEmail
®® (
(
®®( )
email
®®) .
)
®®. /
)
®®/ 0
{
®®1 2
HighlightField
©© 
(
©© 
txtEmail
©© '
)
©©' (
;
©©( )
lbInvalidEmail
™™ 
.
™™ 

Visibility
™™ )
=
™™* +

Visibility
™™, 6
.
™™6 7
Visible
™™7 >
;
™™> ?
}
´´ 
else
´´ 
{
´´ 

ResetField
¨¨ 
(
¨¨ 
txtEmail
¨¨ #
)
¨¨# $
;
¨¨$ %
lbInvalidEmail
≠≠ 
.
≠≠ 

Visibility
≠≠ )
=
≠≠* +

Visibility
≠≠, 6
.
≠≠6 7
	Collapsed
≠≠7 @
;
≠≠@ A
}
ÆÆ 
}
ØØ 	
private
±± 
void
±± 
GoToLoginView
±± "
(
±±" #
)
±±# $
{
±±% &
if
≤≤ 
(
≤≤ 
this
≤≤ 
.
≤≤ 
NavigationService
≤≤ &
.
≤≤& '
	CanGoBack
≤≤' 0
)
≤≤0 1
{
≤≤2 3
this
≥≥ 
.
≥≥ 
NavigationService
≥≥ &
.
≥≥& '
GoBack
≥≥' -
(
≥≥- .
)
≥≥. /
;
≥≥/ 0
}
¥¥ 
}
µµ 	
private
∑∑ 
void
∑∑ 
BtnBack_Click
∑∑ "
(
∑∑" #
object
∑∑# )
sender
∑∑* 0
,
∑∑0 1
RoutedEventArgs
∑∑2 A
e
∑∑B C
)
∑∑C D
{
∑∑E F
GoToLoginView
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
void
ªª #
BtnBackValidate_Click
ªª *
(
ªª* +
object
ªª+ 1
sender
ªª2 8
,
ªª8 9
RoutedEventArgs
ªª: I
e
ªªJ K
)
ªªK L
{
ªªM N
verificationGrid
ºº 
.
ºº 

Visibility
ºº '
=
ºº( )

Visibility
ºº* 4
.
ºº4 5
	Collapsed
ºº5 >
;
ºº> ?
txtEmail
ΩΩ 
.
ΩΩ 
Clear
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ 
txtName
ææ 
.
ææ 
Clear
ææ 
(
ææ 
)
ææ 
;
ææ 
txtPassword
øø 
.
øø 
Clear
øø 
(
øø 
)
øø 
;
øø   
txtPasswordVisible
¿¿ 
.
¿¿ 
Clear
¿¿ $
(
¿¿$ %
)
¿¿% &
;
¿¿& '
}
¡¡ 	
private
√√ 
void
√√ +
TxtValidationCode_TextChanged
√√ 2
(
√√2 3
object
√√3 9
sender
√√: @
,
√√@ A"
TextChangedEventArgs
√√B V
e
√√W X
)
√√X Y
{
√√Z [
TextBox
ƒƒ 
currentTextBox
ƒƒ "
=
ƒƒ# $
sender
ƒƒ% +
as
ƒƒ, .
TextBox
ƒƒ/ 6
;
ƒƒ6 7
if
≈≈ 
(
≈≈ 
currentTextBox
≈≈ 
.
≈≈ 
Text
≈≈ #
.
≈≈# $
Length
≈≈$ *
==
≈≈+ -
$num
≈≈. /
)
≈≈/ 0
{
≈≈1 2
if
∆∆ 
(
∆∆ 
currentTextBox
∆∆ "
==
∆∆# % 
txtValidationCode1
∆∆& 8
)
∆∆8 9 
txtValidationCode2
«« &
.
««& '
Focus
««' ,
(
««, -
)
««- .
;
««. /
else
»» 
if
»» 
(
»» 
currentTextBox
»» '
==
»»( * 
txtValidationCode2
»»+ =
)
»»= > 
txtValidationCode3
…… &
.
……& '
Focus
……' ,
(
……, -
)
……- .
;
……. /
else
   
if
   
(
   
currentTextBox
   '
==
  ( * 
txtValidationCode3
  + =
)
  = > 
txtValidationCode4
ÀÀ &
.
ÀÀ& '
Focus
ÀÀ' ,
(
ÀÀ, -
)
ÀÀ- .
;
ÀÀ. /
else
ÃÃ 
if
ÃÃ 
(
ÃÃ 
currentTextBox
ÃÃ '
==
ÃÃ( * 
txtValidationCode4
ÃÃ+ =
)
ÃÃ= > 
txtValidationCode5
ÕÕ &
.
ÕÕ& '
Focus
ÕÕ' ,
(
ÕÕ, -
)
ÕÕ- .
;
ÕÕ. /
else
ŒŒ 
if
ŒŒ 
(
ŒŒ 
currentTextBox
ŒŒ '
==
ŒŒ( * 
txtValidationCode5
ŒŒ+ =
)
ŒŒ= > 
txtValidationCode6
œœ &
.
œœ& '
Focus
œœ' ,
(
œœ, -
)
œœ- .
;
œœ. /
}
–– 
}
—— 	
}
““ 
}”” ˇ‰
-C:\TripasDeGatoCliente\Views\MenuView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
MenuView !
:" #
Page$ (
{) *
private 
UserManagerClient !
_userManager" .
;. /
private  
FriendsManagerClient $
_friendsManager% 4
;4 5
private 
StatusManagerClient #
_statusManager$ 2
;2 3
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
private 
bool 
_elementsVisible %
=& '
false( -
;- .
public 
MenuView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
_userManager 
= 
new 
UserManagerClient 0
(0 1
)1 2
;2 3
_friendsManager 
= 
new ! 
FriendsManagerClient" 6
(6 7
)7 8
;8 9
_statusManager 
= 
new  
StatusManagerClient! 4
(4 5
)5 6
;6 7
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5 
LoadUserProfileAsync  
(  !
)! "
;" #
} 	
private   
async   
void    
LoadUserProfileAsync   /
(  / 0
)  0 1
{  2 3
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! %
(!!% & 
UserProfileSingleton!!& :
.!!: ;
UserName!!; C
)!!C D
)!!D E
{!!F G

lbUserName"" 
."" 
Content"" "
=""# $ 
UserProfileSingleton""% 9
.""9 :
UserName"": B
;""B C
}## 
else## 
{## 

lbUserName$$ 
.$$ 
Content$$ "
=$$# $

Properties$$% /
.$$/ 0
	Resources$$0 9
.$$9 :
lbUnknownUser$$: G
;$$G H
}%% 
}&& 	
private(( 
void(( 
BtnSignOut_Click(( %
(((% &
object((& ,
sender((- 3
,((3 4
RoutedEventArgs((5 D
e((E F
)((F G
{((H I
SignOut)) 
()) 
))) 
;)) 
NavigateToLoginView** 
(**  
)**  !
;**! "
}++ 	
private-- 
void-- 
SignOut-- 
(-- 
)-- 
{--  
int.. 
playerId.. 
=..  
UserProfileSingleton.. /
.../ 0
	IdProfile..0 9
;..9 :"
SetPlayerOfflineStatus// "
(//" #
playerId//# +
)//+ ,
;//, - 
UserProfileSingleton00  
.00  !
Instance00! )
.00) *
ResetInstance00* 7
(007 8
)008 9
;009 :
}11 	
private33 
void33 "
SetPlayerOfflineStatus33 +
(33+ ,
int33, /
playerId330 8
)338 9
{33: ;
LoggerManager44 
logger44  
=44! "
new44# &
LoggerManager44' 4
(444 5
this445 9
.449 :
GetType44: A
(44A B
)44B C
)44C D
;44D E
try55 
{55 
IStatusManager66 
statusManager66 ,
=66- .
new66/ 2
StatusManagerClient663 F
(66F G
)66G H
;66H I
statusManager77 
.77 
SetPlayerStatus77 -
(77- .
playerId77. 6
,776 7!
GameEnumsPlayerStatus778 M
.77M N
Offline77N U
)77U V
;77V W
}88 
catch88 
(88 %
EndpointNotFoundException88 .%
endpointNotFoundException88/ H
)88H I
{88J K
logger99 
.99 
LogError99 
(99  %
endpointNotFoundException99  9
)999 :
;99: ;
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4

Properties::4 >
.::> ?
	Resources::? H
.::H I#
dialogEndPointException::I `
)::` a
;::a b
};; 
catch;; 
(;; 
TimeoutException;; %
timeoutException;;& 6
);;6 7
{;;8 9
logger<< 
.<< 
LogError<< 
(<<  
timeoutException<<  0
)<<0 1
;<<1 2
DialogManager== 
.== !
ShowErrorMessageAlert== 3
(==3 4

Properties==4 >
.==> ?
	Resources==? H
.==H I"
dialogTimeOutException==I _
)==_ `
;==` a
}>> 
catch>> 
(>> "
CommunicationException>> +"
communicationException>>, B
)>>B C
{>>D E
logger?? 
.?? 
LogError?? 
(??  "
communicationException??  6
)??6 7
;??7 8
DialogManager@@ 
.@@ !
ShowErrorMessageAlert@@ 3
(@@3 4

Properties@@4 >
.@@> ?
	Resources@@? H
.@@H I'
dialogComunicationException@@I d
)@@d e
;@@e f
}AA 
catchAA 
(AA 
	ExceptionAA 
	exceptionAA (
)AA( )
{AA* +
loggerBB 
.BB 
LogErrorBB 
(BB  
	exceptionBB  )
)BB) *
;BB* +
DialogManagerCC 
.CC !
ShowErrorMessageAlertCC 3
(CC3 4
stringCC4 :
.CC: ;
FormatCC; A
(CCA B

PropertiesCCB L
.CCL M
	ResourcesCCM V
.CCV W!
dialogUnexpectedErrorCCW l
,CCl m
	exceptionCCn w
.CCw x
MessageCCx 
)	CC Ä
)
CCÄ Å
;
CCÅ Ç
}DD 
}EE 	
privateGG 
voidGG 
NavigateToLoginViewGG (
(GG( )
)GG) *
{GG+ ,
	LoginViewHH 
	loginViewHH 
=HH  !
newHH" %
	LoginViewHH& /
(HH/ 0
)HH0 1
;HH1 2
thisII 
.II 
NavigationServiceII "
.II" #
NavigateII# +
(II+ ,
	loginViewII, 5
)II5 6
;II6 7
}JJ 	
privateLL 
asyncLL 
voidLL 
BtnFriends_ClickLL +
(LL+ ,
objectLL, 2
senderLL3 9
,LL9 :
RoutedEventArgsLL; J
eLLK L
)LLL M
{LLN O
LoggerManagerMM 
loggerMM  
=MM! "
newMM# &
LoggerManagerMM' 4
(MM4 5
thisMM5 9
.MM9 :
GetTypeMM: A
(MMA B
)MMB C
)MMC D
;MMD E
tryNN 
{NN 
_elementsVisibleOO  
=OO! "
!OO# $
_elementsVisibleOO$ 4
;OO4 5
ifPP 
(PP 
_elementsVisiblePP $
)PP$ %
{PP& '

lstFriendsQQ 
.QQ 

VisibilityQQ )
=QQ* +

VisibilityQQ, 6
.QQ6 7
VisibleQQ7 >
;QQ> ?
btnAddFriendRR  
.RR  !

VisibilityRR! +
=RR, -

VisibilityRR. 8
.RR8 9
VisibleRR9 @
;RR@ A
btnRemoveFriendSS #
.SS# $

VisibilitySS$ .
=SS/ 0

VisibilitySS1 ;
.SS; <
VisibleSS< C
;SSC D
awaitTT  
LoadFriendsListAsyncTT .
(TT. /
)TT/ 0
;TT0 1

lstFriendsUU 
.UU 
	IsEnabledUU (
=UU) *
trueUU+ /
;UU/ 0
btnAddFriendVV  
.VV  !
	IsEnabledVV! *
=VV+ ,
trueVV- 1
;VV1 2
btnRemoveFriendWW #
.WW# $
	IsEnabledWW$ -
=WW. /
trueWW0 4
;WW4 5

btnFriendsXX 
.XX 

BackgroundXX )
=XX* +
newXX, /
SolidColorBrushXX0 ?
(XX? @
ColorXX@ E
.XXE F
FromArgbXXF N
(XXN O
$numXXO Q
,XXQ R
$numXXS V
,XXV W
$numXXX [
,XX[ \
$numXX] `
)XX` a
)XXa b
;XXb c
}YY 
elseYY 
{YY 

lstFriendsZZ 
.ZZ 

VisibilityZZ )
=ZZ* +

VisibilityZZ, 6
.ZZ6 7
	CollapsedZZ7 @
;ZZ@ A
btnAddFriend[[  
.[[  !

Visibility[[! +
=[[, -

Visibility[[. 8
.[[8 9
	Collapsed[[9 B
;[[B C
btnRemoveFriend\\ #
.\\# $

Visibility\\$ .
=\\/ 0

Visibility\\1 ;
.\\; <
	Collapsed\\< E
;\\E F
txtFriendName]] !
.]]! "

Visibility]]" ,
=]]- .

Visibility]]/ 9
.]]9 :
	Collapsed]]: C
;]]C D
btnAdd^^ 
.^^ 

Visibility^^ %
=^^& '

Visibility^^( 2
.^^2 3
	Collapsed^^3 <
;^^< =

lstFriends__ 
.__ 
	IsEnabled__ (
=__) *
false__+ 0
;__0 1
btnAddFriend``  
.``  !
	IsEnabled``! *
=``+ ,
false``- 2
;``2 3
btnRemoveFriendaa #
.aa# $
	IsEnabledaa$ -
=aa. /
falseaa0 5
;aa5 6
txtFriendNamebb !
.bb! "
	IsEnabledbb" +
=bb, -
falsebb. 3
;bb3 4
btnAddcc 
.cc 
	IsEnabledcc $
=cc% &
falsecc' ,
;cc, -

btnFriendsdd 
.dd 

Backgrounddd )
=dd* +
newdd, /
SolidColorBrushdd0 ?
(dd? @
Colordd@ E
.ddE F
FromArgbddF N
(ddN O
$numddO Q
,ddQ R
$numddS V
,ddV W
$numddX [
,dd[ \
$numdd] `
)dd` a
)dda b
;ddb c
btnAddFriendee  
.ee  !

Backgroundee! +
=ee, -
newee. 1
SolidColorBrushee2 A
(eeA B
ColoreeB G
.eeG H
FromArgbeeH P
(eeP Q
$numeeQ T
,eeT U
$numeeV X
,eeX Y
$numeeZ \
,ee\ ]
$numee^ `
)ee` a
)eea b
;eeb c
}ff 
}gg 
catchgg 
(gg !
TaskCanceledExceptiongg *!
taskCanceledExceptiongg+ @
)gg@ A
{ggB C
loggerhh 
.hh 
LogErrorhh 
(hh  !
taskCanceledExceptionhh  5
)hh5 6
;hh6 7
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I'
dialogTaskCanceledExceptioniiI d
)iid e
;iie f
}jj 
catchjj 
(jj %
EndpointNotFoundExceptionjj .%
endpointNotFoundExceptionjj/ H
)jjH I
{jjJ K
loggerkk 
.kk 
LogErrorkk 
(kk  %
endpointNotFoundExceptionkk  9
)kk9 :
;kk: ;
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I#
dialogEndPointExceptionllI `
)ll` a
;lla b
}mm 
catchmm 
(mm 
TimeoutExceptionmm %
timeoutExceptionmm& 6
)mm6 7
{mm8 9
loggernn 
.nn 
LogErrornn 
(nn  
timeoutExceptionnn  0
)nn0 1
;nn1 2
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I"
dialogTimeOutExceptionooI _
)oo_ `
;oo` a
}pp 
catchpp 
(pp "
CommunicationExceptionpp +"
communicationExceptionpp, B
)ppB C
{ppD E
loggerqq 
.qq 
LogErrorqq 
(qq  "
communicationExceptionqq  6
)qq6 7
;qq7 8
DialogManagerrr 
.rr !
ShowErrorMessageAlertrr 3
(rr3 4

Propertiesrr4 >
.rr> ?
	Resourcesrr? H
.rrH I'
dialogComunicationExceptionrrI d
)rrd e
;rre f
}ss 
catchss 
(ss 
	Exceptionss 
	exceptionss (
)ss( )
{ss* +
loggertt 
.tt 
LogErrortt 
(tt  
	exceptiontt  )
)tt) *
;tt* +
DialogManageruu 
.uu !
ShowErrorMessageAlertuu 3
(uu3 4
stringuu4 :
.uu: ;
Formatuu; A
(uuA B

PropertiesuuB L
.uuL M
	ResourcesuuM V
.uuV W!
dialogUnexpectedErroruuW l
,uul m
	exceptionuun w
.uuw x
Messageuux 
)	uu Ä
)
uuÄ Å
;
uuÅ Ç
}vv 
}ww 	
privatezz 
voidzz 
BtnAddFriend_Clickzz '
(zz' (
objectzz( .
senderzz/ 5
,zz5 6
RoutedEventArgszz7 F
ezzG H
)zzH I
{zzJ K
_elementsVisible{{ 
={{ 
!{{  
_elementsVisible{{  0
;{{0 1
if|| 
(|| 
_elementsVisible||  
)||  !
{||" #
txtFriendName}} 
.}} 

Visibility}} (
=}}) *

Visibility}}+ 5
.}}5 6
Visible}}6 =
;}}= >
btnAdd~~ 
.~~ 

Visibility~~ !
=~~" #

Visibility~~$ .
.~~. /
Visible~~/ 6
;~~6 7
txtFriendName 
. 
	IsEnabled '
=( )
true* .
;. /
btnAdd
ÄÄ 
.
ÄÄ 
	IsEnabled
ÄÄ  
=
ÄÄ! "
true
ÄÄ# '
;
ÄÄ' (
btnAddFriend
ÅÅ 
.
ÅÅ 

Background
ÅÅ '
=
ÅÅ( )
new
ÅÅ* -
SolidColorBrush
ÅÅ. =
(
ÅÅ= >
Color
ÅÅ> C
.
ÅÅC D
FromArgb
ÅÅD L
(
ÅÅL M
$num
ÅÅM O
,
ÅÅO P
$num
ÅÅQ S
,
ÅÅS T
$num
ÅÅU W
,
ÅÅW X
$num
ÅÅY [
)
ÅÅ[ \
)
ÅÅ\ ]
;
ÅÅ] ^
}
ÇÇ 
else
ÇÇ 
{
ÇÇ 
txtFriendName
ÉÉ 
.
ÉÉ 

Visibility
ÉÉ (
=
ÉÉ) *

Visibility
ÉÉ+ 5
.
ÉÉ5 6
	Collapsed
ÉÉ6 ?
;
ÉÉ? @
btnAdd
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ !
=
ÑÑ" #

Visibility
ÑÑ$ .
.
ÑÑ. /
	Collapsed
ÑÑ/ 8
;
ÑÑ8 9
txtFriendName
ÖÖ 
.
ÖÖ 
	IsEnabled
ÖÖ '
=
ÖÖ( )
false
ÖÖ* /
;
ÖÖ/ 0
btnAdd
ÜÜ 
.
ÜÜ 
	IsEnabled
ÜÜ  
=
ÜÜ! "
false
ÜÜ# (
;
ÜÜ( )
btnAddFriend
áá 
.
áá 

Background
áá '
=
áá( )
new
áá* -
SolidColorBrush
áá. =
(
áá= >
Color
áá> C
.
ááC D
FromArgb
ááD L
(
ááL M
$num
ááM P
,
ááP Q
$num
ááR T
,
ááT U
$num
ááV X
,
ááX Y
$num
ááZ \
)
áá\ ]
)
áá] ^
;
áá^ _
}
àà 
}
ââ 	
private
ãã 
async
ãã 
void
ãã 
BtnAdd_Click
ãã '
(
ãã' (
object
ãã( .
sender
ãã/ 5
,
ãã5 6
RoutedEventArgs
ãã7 F
e
ããG H
)
ããH I
{
ããJ K
LoggerManager
åå 
logger
åå  
=
åå! "
new
åå# &
LoggerManager
åå' 4
(
åå4 5
this
åå5 9
.
åå9 :
GetType
åå: A
(
ååA B
)
ååB C
)
ååC D
;
ååD E
string
çç 

friendName
çç 
=
çç 
txtFriendName
çç  -
.
çç- .
Text
çç. 2
.
çç2 3
Trim
çç3 7
(
çç7 8
)
çç8 9
;
çç9 :
try
éé 
{
éé 
if
èè 
(
èè  
ValidateFriendName
èè &
(
èè& '

friendName
èè' 1
)
èè1 2
)
èè2 3
{
èè4 5
await
êê 
	AddFriend
êê #
(
êê# $

friendName
êê$ .
)
êê. /
;
êê/ 0
}
ëë 
}
íí 
catch
íí 
(
íí '
EndpointNotFoundException
íí .'
endpointNotFoundException
íí/ H
)
ííH I
{
ííJ K
logger
ìì 
.
ìì 
LogError
ìì 
(
ìì  '
endpointNotFoundException
ìì  9
)
ìì9 :
;
ìì: ;
DialogManager
îî 
.
îî #
ShowErrorMessageAlert
îî 3
(
îî3 4

Properties
îî4 >
.
îî> ?
	Resources
îî? H
.
îîH I%
dialogEndPointException
îîI `
)
îî` a
;
îîa b
}
ïï 
catch
ïï 
(
ïï 
TimeoutException
ïï %
timeoutException
ïï& 6
)
ïï6 7
{
ïï8 9
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  
timeoutException
ññ  0
)
ññ0 1
;
ññ1 2
DialogManager
óó 
.
óó #
ShowErrorMessageAlert
óó 3
(
óó3 4

Properties
óó4 >
.
óó> ?
	Resources
óó? H
.
óóH I$
dialogTimeOutException
óóI _
)
óó_ `
;
óó` a
}
òò 
catch
òò 
(
òò $
CommunicationException
òò +$
communicationException
òò, B
)
òòB C
{
òòD E
logger
ôô 
.
ôô 
LogError
ôô 
(
ôô  $
communicationException
ôô  6
)
ôô6 7
;
ôô7 8
DialogManager
öö 
.
öö #
ShowErrorMessageAlert
öö 3
(
öö3 4

Properties
öö4 >
.
öö> ?
	Resources
öö? H
.
ööH I)
dialogComunicationException
ööI d
)
ööd e
;
ööe f
}
õõ 
catch
õõ 
(
õõ 
	Exception
õõ 
	exception
õõ (
)
õõ( )
{
õõ* +
logger
úú 
.
úú 
LogError
úú 
(
úú  
	exception
úú  )
)
úú) *
;
úú* +
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4
string
ùù4 :
.
ùù: ;
Format
ùù; A
(
ùùA B

Properties
ùùB L
.
ùùL M
	Resources
ùùM V
.
ùùV W#
dialogUnexpectedError
ùùW l
,
ùùl m
	exception
ùùn w
.
ùùw x
Message
ùùx 
)ùù Ä
)ùùÄ Å
;ùùÅ Ç
}
ûû 
finally
ûû 
{
ûû 
txtFriendName
üü 
.
üü 
Clear
üü #
(
üü# $
)
üü$ %
;
üü% &
}
†† 
}
°° 	
private
££ 
bool
££  
ValidateFriendName
££ '
(
££' (
string
££( .

friendName
££/ 9
)
££9 :
{
££; <
if
§§ 
(
§§ 
string
§§ 
.
§§ 
IsNullOrEmpty
§§ $
(
§§$ %

friendName
§§% /
)
§§/ 0
)
§§0 1
{
§§2 3
DialogManager
•• 
.
•• #
ShowErrorMessageAlert
•• 3
(
••3 4

Properties
••4 >
.
••> ?
	Resources
••? H
.
••H I
dialogInvalidName
••I Z
)
••Z [
;
••[ \
return
¶¶ 
false
¶¶ 
;
¶¶ 
}
ßß 
return
®® 
true
®® 
;
®® 
}
©© 	
private
´´ 
async
´´ 
Task
´´ 
	AddFriend
´´ $
(
´´$ %
string
´´% +

friendName
´´, 6
)
´´6 7
{
´´8 9
LoggerManager
¨¨ 
logger
¨¨  
=
¨¨! "
new
¨¨# &
LoggerManager
¨¨' 4
(
¨¨4 5
this
¨¨5 9
.
¨¨9 :
GetType
¨¨: A
(
¨¨A B
)
¨¨B C
)
¨¨C D
;
¨¨D E
try
≠≠ 
{
≠≠ 
int
ÆÆ 
friendProfileId
ÆÆ #
=
ÆÆ$ %
await
ÆÆ& +
_userManager
ÆÆ, 8
.
ÆÆ8 9
GetProfileIdAsync
ÆÆ9 J
(
ÆÆJ K

friendName
ÆÆK U
)
ÆÆU V
;
ÆÆV W
if
ØØ 
(
ØØ 
friendProfileId
ØØ #
==
ØØ$ &"
UserProfileSingleton
ØØ' ;
.
ØØ; <
	IdProfile
ØØ< E
)
ØØE F
{
ØØG H
DialogManager
∞∞ !
.
∞∞! "#
ShowErrorMessageAlert
∞∞" 7
(
∞∞7 8

Properties
∞∞8 B
.
∞∞B C
	Resources
∞∞C L
.
∞∞L M)
dialogCannotAddSelfAsFriend
∞∞M h
)
∞∞h i
;
∞∞i j
}
±± 
else
±± 
if
±± 
(
±± 
friendProfileId
±± *
>
±±+ ,
$num
±±- .
)
±±. /
{
±±0 1
await
≤≤ #
ExecuteFriendAddition
≤≤ /
(
≤≤/ 0
friendProfileId
≤≤0 ?
,
≤≤? @

friendName
≤≤A K
)
≤≤K L
;
≤≤L M
}
≥≥ 
else
≥≥ 
{
≥≥ 
DialogManager
¥¥ !
.
¥¥! "#
ShowErrorMessageAlert
¥¥" 7
(
¥¥7 8

Properties
¥¥8 B
.
¥¥B C
	Resources
¥¥C L
.
¥¥L M#
dialogProfileNotFound
¥¥M b
)
¥¥b c
;
¥¥c d
}
µµ 
}
∂∂ 
catch
∂∂ 
(
∂∂ '
EndpointNotFoundException
∂∂ .'
endpointNotFoundException
∂∂/ H
)
∂∂H I
{
∂∂J K
logger
∑∑ 
.
∑∑ 
LogError
∑∑ 
(
∑∑  '
endpointNotFoundException
∑∑  9
)
∑∑9 :
;
∑∑: ;
DialogManager
∏∏ 
.
∏∏ #
ShowErrorMessageAlert
∏∏ 3
(
∏∏3 4

Properties
∏∏4 >
.
∏∏> ?
	Resources
∏∏? H
.
∏∏H I%
dialogEndPointException
∏∏I `
)
∏∏` a
;
∏∏a b
}
ππ 
catch
ππ 
(
ππ 
TimeoutException
ππ %
timeoutException
ππ& 6
)
ππ6 7
{
ππ8 9
logger
∫∫ 
.
∫∫ 
LogError
∫∫ 
(
∫∫  
timeoutException
∫∫  0
)
∫∫0 1
;
∫∫1 2
DialogManager
ªª 
.
ªª #
ShowErrorMessageAlert
ªª 3
(
ªª3 4

Properties
ªª4 >
.
ªª> ?
	Resources
ªª? H
.
ªªH I$
dialogTimeOutException
ªªI _
)
ªª_ `
;
ªª` a
}
ºº 
catch
ºº 
(
ºº $
CommunicationException
ºº +$
communicationException
ºº, B
)
ººB C
{
ººD E
logger
ΩΩ 
.
ΩΩ 
LogError
ΩΩ 
(
ΩΩ  $
communicationException
ΩΩ  6
)
ΩΩ6 7
;
ΩΩ7 8
DialogManager
ææ 
.
ææ #
ShowErrorMessageAlert
ææ 3
(
ææ3 4

Properties
ææ4 >
.
ææ> ?
	Resources
ææ? H
.
ææH I)
dialogComunicationException
ææI d
)
ææd e
;
ææe f
}
øø 
catch
øø 
(
øø 
	Exception
øø 
	exception
øø (
)
øø( )
{
øø* +
logger
¿¿ 
.
¿¿ 
LogError
¿¿ 
(
¿¿  
	exception
¿¿  )
)
¿¿) *
;
¿¿* +
DialogManager
¡¡ 
.
¡¡ #
ShowErrorMessageAlert
¡¡ 3
(
¡¡3 4
string
¡¡4 :
.
¡¡: ;
Format
¡¡; A
(
¡¡A B

Properties
¡¡B L
.
¡¡L M
	Resources
¡¡M V
.
¡¡V W#
dialogUnexpectedError
¡¡W l
,
¡¡l m
	exception
¡¡n w
.
¡¡w x
Message
¡¡x 
)¡¡ Ä
)¡¡Ä Å
;¡¡Å Ç
}
¬¬ 
}
√√ 	
private
≈≈ 
async
≈≈ 
Task
≈≈ #
ExecuteFriendAddition
≈≈ 0
(
≈≈0 1
int
≈≈1 4
friendProfileId
≈≈5 D
,
≈≈D E
string
≈≈F L

friendName
≈≈M W
)
≈≈W X
{
≈≈Y Z
LoggerManager
∆∆ 
logger
∆∆  
=
∆∆! "
new
∆∆# &
LoggerManager
∆∆' 4
(
∆∆4 5
this
∆∆5 9
.
∆∆9 :
GetType
∆∆: A
(
∆∆A B
)
∆∆B C
)
∆∆C D
;
∆∆D E
try
«« 
{
«« 
int
»» 
userProfileId
»» !
=
»»" #"
UserProfileSingleton
»»$ 8
.
»»8 9
	IdProfile
»»9 B
;
»»B C
int
…… 
result
…… 
=
…… 
await
…… "
_friendsManager
……# 2
.
……2 3
AddFriendAsync
……3 A
(
……A B
userProfileId
……B O
,
……O P
friendProfileId
……Q `
)
……` a
;
……a b
if
   
(
   
result
   
==
   
	Constants
   '
.
  ' (
SUCCES_OPERATION
  ( 8
)
  8 9
{
  : ;
DialogManager
ÀÀ !
.
ÀÀ! "%
ShowSuccessMessageAlert
ÀÀ" 9
(
ÀÀ9 :
string
ÀÀ: @
.
ÀÀ@ A
Format
ÀÀA G
(
ÀÀG H

Properties
ÀÀH R
.
ÀÀR S
	Resources
ÀÀS \
.
ÀÀ\ ])
dialogAddFriendSuccessfully
ÀÀ] x
,
ÀÀx y

friendNameÀÀz Ñ
)ÀÀÑ Ö
)ÀÀÖ Ü
;ÀÀÜ á
await
ÃÃ "
LoadFriendsListAsync
ÃÃ .
(
ÃÃ. /
)
ÃÃ/ 0
;
ÃÃ0 1
}
ÕÕ 
else
ÕÕ 
{
ÕÕ 
DialogManager
ŒŒ !
.
ŒŒ! "#
ShowErrorMessageAlert
ŒŒ" 7
(
ŒŒ7 8

Properties
ŒŒ8 B
.
ŒŒB C
	Resources
ŒŒC L
.
ŒŒL M%
dialogErrorAddingFriend
ŒŒM d
)
ŒŒd e
;
ŒŒe f
}
œœ 
}
–– 
catch
–– 
(
–– '
EndpointNotFoundException
–– .'
endpointNotFoundException
––/ H
)
––H I
{
––J K
logger
—— 
.
—— 
LogError
—— 
(
——  '
endpointNotFoundException
——  9
)
——9 :
;
——: ;
DialogManager
““ 
.
““ #
ShowErrorMessageAlert
““ 3
(
““3 4

Properties
““4 >
.
““> ?
	Resources
““? H
.
““H I%
dialogEndPointException
““I `
)
““` a
;
““a b
}
”” 
catch
”” 
(
”” 
TimeoutException
”” %
timeoutException
””& 6
)
””6 7
{
””8 9
logger
‘‘ 
.
‘‘ 
LogError
‘‘ 
(
‘‘  
timeoutException
‘‘  0
)
‘‘0 1
;
‘‘1 2
DialogManager
’’ 
.
’’ #
ShowErrorMessageAlert
’’ 3
(
’’3 4

Properties
’’4 >
.
’’> ?
	Resources
’’? H
.
’’H I$
dialogTimeOutException
’’I _
)
’’_ `
;
’’` a
}
÷÷ 
catch
÷÷ 
(
÷÷ $
CommunicationException
÷÷ +$
communicationException
÷÷, B
)
÷÷B C
{
÷÷D E
logger
◊◊ 
.
◊◊ 
LogError
◊◊ 
(
◊◊  $
communicationException
◊◊  6
)
◊◊6 7
;
◊◊7 8
DialogManager
ÿÿ 
.
ÿÿ #
ShowErrorMessageAlert
ÿÿ 3
(
ÿÿ3 4

Properties
ÿÿ4 >
.
ÿÿ> ?
	Resources
ÿÿ? H
.
ÿÿH I)
dialogComunicationException
ÿÿI d
)
ÿÿd e
;
ÿÿe f
}
ŸŸ 
catch
ŸŸ 
(
ŸŸ 
	Exception
ŸŸ 
	exception
ŸŸ (
)
ŸŸ( )
{
ŸŸ* +
logger
⁄⁄ 
.
⁄⁄ 
LogError
⁄⁄ 
(
⁄⁄  
	exception
⁄⁄  )
)
⁄⁄) *
;
⁄⁄* +
DialogManager
€€ 
.
€€ #
ShowErrorMessageAlert
€€ 3
(
€€3 4
string
€€4 :
.
€€: ;
Format
€€; A
(
€€A B

Properties
€€B L
.
€€L M
	Resources
€€M V
.
€€V W#
dialogUnexpectedError
€€W l
,
€€l m
	exception
€€n w
.
€€w x
Message
€€x 
)€€ Ä
)€€Ä Å
;€€Å Ç
}
‹‹ 
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ "
LoadFriendsListAsync
ﬂﬂ /
(
ﬂﬂ/ 0
)
ﬂﬂ0 1
{
ﬂﬂ2 3
LoggerManager
‡‡ 
logger
‡‡  
=
‡‡! "
new
‡‡# &
LoggerManager
‡‡' 4
(
‡‡4 5
this
‡‡5 9
.
‡‡9 :
GetType
‡‡: A
(
‡‡A B
)
‡‡B C
)
‡‡C D
;
‡‡D E
try
·· 
{
·· 
int
‚‚ 
userProfileId
‚‚ !
=
‚‚" #"
UserProfileSingleton
‚‚$ 8
.
‚‚8 9
	IdProfile
‚‚9 B
;
‚‚B C
var
„„ 
friendsList
„„ 
=
„„  !
await
„„" '
_friendsManager
„„( 7
.
„„7 8
GetFriendsAsync
„„8 G
(
„„G H
userProfileId
„„H U
)
„„U V
;
„„V W
var
‰‰ 
friendsWithStatus
‰‰ %
=
‰‰& '
new
‰‰( +
List
‰‰, 0
<
‰‰0 1
string
‰‰1 7
>
‰‰7 8
(
‰‰8 9
)
‰‰9 :
;
‰‰: ;
foreach
ÂÂ 
(
ÂÂ 
var
ÂÂ 
friend
ÂÂ #
in
ÂÂ$ &
friendsList
ÂÂ' 2
)
ÂÂ2 3
{
ÂÂ4 5
var
ÊÊ 
status
ÊÊ 
=
ÊÊ  
await
ÊÊ! &
_statusManager
ÊÊ' 5
.
ÊÊ5 6"
GetPlayerStatusAsync
ÊÊ6 J
(
ÊÊJ K
friend
ÊÊK Q
.
ÊÊQ R
	IdProfile
ÊÊR [
)
ÊÊ[ \
;
ÊÊ\ ]
friendsWithStatus
ÁÁ %
.
ÁÁ% &
Add
ÁÁ& )
(
ÁÁ) *
$"
ÁÁ* ,
{
ÁÁ, -
friend
ÁÁ- 3
.
ÁÁ3 4
Username
ÁÁ4 <
}
ÁÁ< =
$str
ÁÁ= @
{
ÁÁ@ A
status
ÁÁA G
}
ÁÁG H
"
ÁÁH I
)
ÁÁI J
;
ÁÁJ K
}
ËË 

lstFriends
ÈÈ 
.
ÈÈ 
ItemsSource
ÈÈ &
=
ÈÈ' (
friendsWithStatus
ÈÈ) :
;
ÈÈ: ;
}
ÍÍ 
catch
ÍÍ 
(
ÍÍ '
EndpointNotFoundException
ÍÍ .'
endpointNotFoundException
ÍÍ/ H
)
ÍÍH I
{
ÍÍJ K
logger
ÎÎ 
.
ÎÎ 
LogError
ÎÎ 
(
ÎÎ  '
endpointNotFoundException
ÎÎ  9
)
ÎÎ9 :
;
ÎÎ: ;
DialogManager
ÏÏ 
.
ÏÏ #
ShowErrorMessageAlert
ÏÏ 3
(
ÏÏ3 4

Properties
ÏÏ4 >
.
ÏÏ> ?
	Resources
ÏÏ? H
.
ÏÏH I%
dialogEndPointException
ÏÏI `
)
ÏÏ` a
;
ÏÏa b
}
ÌÌ 
catch
ÌÌ 
(
ÌÌ 
TimeoutException
ÌÌ %
timeoutException
ÌÌ& 6
)
ÌÌ6 7
{
ÌÌ8 9
logger
ÓÓ 
.
ÓÓ 
LogError
ÓÓ 
(
ÓÓ  
timeoutException
ÓÓ  0
)
ÓÓ0 1
;
ÓÓ1 2
DialogManager
ÔÔ 
.
ÔÔ #
ShowErrorMessageAlert
ÔÔ 3
(
ÔÔ3 4

Properties
ÔÔ4 >
.
ÔÔ> ?
	Resources
ÔÔ? H
.
ÔÔH I$
dialogTimeOutException
ÔÔI _
)
ÔÔ_ `
;
ÔÔ` a
}
 
catch
 
(
 $
CommunicationException
 +$
communicationException
, B
)
B C
{
D E
logger
ÒÒ 
.
ÒÒ 
LogError
ÒÒ 
(
ÒÒ  $
communicationException
ÒÒ  6
)
ÒÒ6 7
;
ÒÒ7 8
DialogManager
ÚÚ 
.
ÚÚ #
ShowErrorMessageAlert
ÚÚ 3
(
ÚÚ3 4

Properties
ÚÚ4 >
.
ÚÚ> ?
	Resources
ÚÚ? H
.
ÚÚH I)
dialogComunicationException
ÚÚI d
)
ÚÚd e
;
ÚÚe f
}
ÛÛ 
catch
ÛÛ 
(
ÛÛ 
	Exception
ÛÛ 
	exception
ÛÛ (
)
ÛÛ( )
{
ÛÛ* +
logger
ÙÙ 
.
ÙÙ 
LogError
ÙÙ 
(
ÙÙ  
	exception
ÙÙ  )
)
ÙÙ) *
;
ÙÙ* +
DialogManager
ıı 
.
ıı #
ShowErrorMessageAlert
ıı 3
(
ıı3 4
string
ıı4 :
.
ıı: ;
Format
ıı; A
(
ııA B

Properties
ııB L
.
ııL M
	Resources
ııM V
.
ııV W#
dialogUnexpectedError
ııW l
,
ııl m
	exception
ıın w
.
ııw x
Message
ııx 
)ıı Ä
)ııÄ Å
;ııÅ Ç
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
async
˘˘ 
void
˘˘ #
BtnRemoveFriend_Click
˘˘ 0
(
˘˘0 1
object
˘˘1 7
sender
˘˘8 >
,
˘˘> ?
RoutedEventArgs
˘˘@ O
e
˘˘P Q
)
˘˘Q R
{
˘˘S T
LoggerManager
˙˙ 
logger
˙˙  
=
˙˙! "
new
˙˙# &
LoggerManager
˙˙' 4
(
˙˙4 5
this
˙˙5 9
.
˙˙9 :
GetType
˙˙: A
(
˙˙A B
)
˙˙B C
)
˙˙C D
;
˙˙D E
if
˚˚ 
(
˚˚ 

lstFriends
˚˚ 
.
˚˚ 
SelectedItem
˚˚ '
!=
˚˚( *
null
˚˚+ /
)
˚˚/ 0
{
˚˚1 2
string
¸¸  
selectedFriendName
¸¸ )
=
¸¸* +

lstFriends
¸¸, 6
.
¸¸6 7
SelectedItem
¸¸7 C
.
¸¸C D
ToString
¸¸D L
(
¸¸L M
)
¸¸M N
;
¸¸N O
string
˝˝ 

friendName
˝˝ !
=
˝˝" # 
selectedFriendName
˝˝$ 6
.
˝˝6 7
Split
˝˝7 <
(
˝˝< =
$char
˝˝= @
)
˝˝@ A
[
˝˝A B
$num
˝˝B C
]
˝˝C D
.
˝˝D E
Trim
˝˝E I
(
˝˝I J
)
˝˝J K
;
˝˝K L
try
˛˛ 
{
˛˛ 
int
ˇˇ 
friendProfileId
ˇˇ '
=
ˇˇ( )
await
ˇˇ* /
_userManager
ˇˇ0 <
.
ˇˇ< =
GetProfileIdAsync
ˇˇ= N
(
ˇˇN O

friendName
ˇˇO Y
)
ˇˇY Z
;
ˇˇZ [
if
ÄÄ 
(
ÄÄ 
friendProfileId
ÄÄ '
>
ÄÄ( )
$num
ÄÄ* +
)
ÄÄ+ ,
{
ÄÄ- .
int
ÅÅ 
userProfileId
ÅÅ )
=
ÅÅ* +"
UserProfileSingleton
ÅÅ, @
.
ÅÅ@ A
	IdProfile
ÅÅA J
;
ÅÅJ K
int
ÇÇ 
result
ÇÇ "
=
ÇÇ# $
await
ÇÇ% *
_friendsManager
ÇÇ+ :
.
ÇÇ: ;
DeleteFriendAsync
ÇÇ; L
(
ÇÇL M
userProfileId
ÇÇM Z
,
ÇÇZ [
friendProfileId
ÇÇ\ k
)
ÇÇk l
;
ÇÇl m
if
ÉÉ 
(
ÉÉ 
result
ÉÉ "
==
ÉÉ# %
	Constants
ÉÉ& /
.
ÉÉ/ 0
SUCCES_OPERATION
ÉÉ0 @
)
ÉÉ@ A
{
ÉÉB C
DialogManager
ÑÑ )
.
ÑÑ) *%
ShowSuccessMessageAlert
ÑÑ* A
(
ÑÑA B
string
ÑÑB H
.
ÑÑH I
Format
ÑÑI O
(
ÑÑO P

Properties
ÑÑP Z
.
ÑÑZ [
	Resources
ÑÑ[ d
.
ÑÑd e%
dialogFriendshipDeleted
ÑÑe |
,
ÑÑ| }

friendNameÑÑ~ à
)ÑÑà â
)ÑÑâ ä
;ÑÑä ã
await
ÖÖ !"
LoadFriendsListAsync
ÖÖ" 6
(
ÖÖ6 7
)
ÖÖ7 8
;
ÖÖ8 9
}
ÜÜ 
else
ÜÜ 
{
ÜÜ  
DialogManager
áá )
.
áá) *#
ShowErrorMessageAlert
áá* ?
(
áá? @

Properties
áá@ J
.
ááJ K
	Resources
ááK T
.
ááT U+
dialogErrorDeletingFriendship
ááU r
)
áár s
;
áás t
}
àà 
}
ââ 
else
ââ 
{
ââ 
DialogManager
ää %
.
ää% &#
ShowErrorMessageAlert
ää& ;
(
ää; <

Properties
ää< F
.
ääF G
	Resources
ääG P
.
ääP Q'
dialogNotRetrievedProfile
ääQ j
)
ääj k
;
ääk l
}
ãã 
}
åå 
catch
åå 
(
åå '
EndpointNotFoundException
åå 2'
endpointNotFoundException
åå3 L
)
ååL M
{
ååN O
logger
çç 
.
çç 
LogError
çç #
(
çç# $'
endpointNotFoundException
çç$ =
)
çç= >
;
çç> ?
DialogManager
éé !
.
éé! "#
ShowErrorMessageAlert
éé" 7
(
éé7 8

Properties
éé8 B
.
ééB C
	Resources
ééC L
.
ééL M%
dialogEndPointException
ééM d
)
ééd e
;
éée f
}
èè 
catch
èè 
(
èè 
TimeoutException
èè )
timeoutException
èè* :
)
èè: ;
{
èè< =
logger
êê 
.
êê 
LogError
êê #
(
êê# $
timeoutException
êê$ 4
)
êê4 5
;
êê5 6
DialogManager
ëë !
.
ëë! "#
ShowErrorMessageAlert
ëë" 7
(
ëë7 8

Properties
ëë8 B
.
ëëB C
	Resources
ëëC L
.
ëëL M$
dialogTimeOutException
ëëM c
)
ëëc d
;
ëëd e
}
íí 
catch
íí 
(
íí $
CommunicationException
íí /$
communicationException
íí0 F
)
ííF G
{
ííH I
logger
ìì 
.
ìì 
LogError
ìì #
(
ìì# $$
communicationException
ìì$ :
)
ìì: ;
;
ìì; <
DialogManager
îî !
.
îî! "#
ShowErrorMessageAlert
îî" 7
(
îî7 8

Properties
îî8 B
.
îîB C
	Resources
îîC L
.
îîL M)
dialogComunicationException
îîM h
)
îîh i
;
îîi j
}
ïï 
catch
ïï 
(
ïï 
	Exception
ïï "
	exception
ïï# ,
)
ïï, -
{
ïï. /
logger
ññ 
.
ññ 
LogError
ññ #
(
ññ# $
	exception
ññ$ -
)
ññ- .
;
ññ. /
DialogManager
óó !
.
óó! "#
ShowErrorMessageAlert
óó" 7
(
óó7 8
string
óó8 >
.
óó> ?
Format
óó? E
(
óóE F

Properties
óóF P
.
óóP Q
	Resources
óóQ Z
.
óóZ [#
dialogUnexpectedError
óó[ p
,
óóp q
	exception
óór {
.
óó{ |
Messageóó| É
)óóÉ Ñ
)óóÑ Ö
;óóÖ Ü
}
òò 
}
ôô 
else
ôô 
{
ôô 
DialogManager
öö 
.
öö %
ShowWarningMessageAlert
öö 5
(
öö5 6

Properties
öö6 @
.
öö@ A
	Resources
ööA J
.
ööJ K(
dialogSelectFriendToDelete
ööK e
)
ööe f
;
ööf g
}
õõ 
}
úú 	
private
ûû 
async
ûû 
void
ûû  
BtnStartGame_Click
ûû -
(
ûû- .
object
ûû. 4
sender
ûû5 ;
,
ûû; <
RoutedEventArgs
ûû= L
e
ûûM N
)
ûûN O
{
ûûP Q!
GoToCreateLobbyView
üü 
(
üü  
)
üü  !
;
üü! "
}
†† 	
private
¢¢ 
void
¢¢ 
BtnProfile_Click
¢¢ %
(
¢¢% &
object
¢¢& ,
sender
¢¢- 3
,
¢¢3 4
RoutedEventArgs
¢¢5 D
e
¢¢E F
)
¢¢F G
{
¢¢H I
GoToPerfilView
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
private
¶¶ 
void
¶¶ !
BtnLaderboard_Click
¶¶ (
(
¶¶( )
object
¶¶) /
sender
¶¶0 6
,
¶¶6 7
RoutedEventArgs
¶¶8 G
e
¶¶H I
)
¶¶I J
{
¶¶K L 
GoToLaderboardView
ßß 
(
ßß 
)
ßß  
;
ßß  !
}
®® 	
private
™™ 
void
™™ 
BtnJoinGame_Click
™™ &
(
™™& '
object
™™' -
sender
™™. 4
,
™™4 5
RoutedEventArgs
™™6 E
e
™™F G
)
™™G H
{
™™I J!
GoToSelectLobbyView
´´ 
(
´´  
)
´´  !
;
´´! "
}
¨¨ 	
private
ÆÆ 
void
ÆÆ !
GoToCreateLobbyView
ÆÆ (
(
ÆÆ( )
)
ÆÆ) *
{
ÆÆ+ ,
CreateLobbyView
ØØ 
lobbyConfig
ØØ '
=
ØØ( )
new
ØØ* -
CreateLobbyView
ØØ. =
(
ØØ= >
)
ØØ> ?
;
ØØ? @
if
∞∞ 
(
∞∞ 
this
∞∞ 
.
∞∞ 
NavigationService
∞∞ &
!=
∞∞' )
null
∞∞* .
)
∞∞. /
{
∞∞0 1
this
±± 
.
±± 
NavigationService
±± &
.
±±& '
Navigate
±±' /
(
±±/ 0
lobbyConfig
±±0 ;
)
±±; <
;
±±< =
}
≤≤ 
else
≤≤ 
{
≤≤ 
DialogManager
≥≥ 
.
≥≥ #
ShowErrorMessageAlert
≥≥ 3
(
≥≥3 4

Properties
≥≥4 >
.
≥≥> ?
	Resources
≥≥? H
.
≥≥H I#
dialogNavigationError
≥≥I ^
)
≥≥^ _
;
≥≥_ `
}
¥¥ 
}
µµ 	
private
∑∑ 
void
∑∑ 
GoToPerfilView
∑∑ #
(
∑∑# $
)
∑∑$ %
{
∑∑& '
ProfileView
∏∏ 
profileView
∏∏ #
=
∏∏$ %
new
∏∏& )
ProfileView
∏∏* 5
(
∏∏5 6
)
∏∏6 7
;
∏∏7 8
if
ππ 
(
ππ 
this
ππ 
.
ππ 
NavigationService
ππ &
!=
ππ' )
null
ππ* .
)
ππ. /
{
ππ0 1
this
∫∫ 
.
∫∫ 
NavigationService
∫∫ &
.
∫∫& '
Navigate
∫∫' /
(
∫∫/ 0
profileView
∫∫0 ;
)
∫∫; <
;
∫∫< =
}
ªª 
else
ªª 
{
ªª 
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4

Properties
ºº4 >
.
ºº> ?
	Resources
ºº? H
.
ººH I#
dialogNavigationError
ººI ^
)
ºº^ _
;
ºº_ `
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿  
GoToLaderboardView
¿¿ '
(
¿¿' (
)
¿¿( )
{
¿¿* +

Laderboard
¡¡ 
laderboardView
¡¡ %
=
¡¡& '
new
¡¡( +

Laderboard
¡¡, 6
(
¡¡6 7
)
¡¡7 8
;
¡¡8 9
if
¬¬ 
(
¬¬ 
this
¬¬ 
.
¬¬ 
NavigationService
¬¬ &
!=
¬¬' )
null
¬¬* .
)
¬¬. /
{
¬¬0 1
this
√√ 
.
√√ 
NavigationService
√√ &
.
√√& '
Navigate
√√' /
(
√√/ 0
laderboardView
√√0 >
)
√√> ?
;
√√? @
}
ƒƒ 
else
ƒƒ 
{
ƒƒ 
DialogManager
≈≈ 
.
≈≈ #
ShowErrorMessageAlert
≈≈ 3
(
≈≈3 4

Properties
≈≈4 >
.
≈≈> ?
	Resources
≈≈? H
.
≈≈H I#
dialogNavigationError
≈≈I ^
)
≈≈^ _
;
≈≈_ `
}
∆∆ 
}
«« 	
private
…… 
void
…… !
GoToSelectLobbyView
…… (
(
……( )
)
……) *
{
……+ ,
SelectLobbyView
   
selectLobbyView
   +
=
  , -
new
  . 1
SelectLobbyView
  2 A
(
  A B
)
  B C
;
  C D
if
ÀÀ 
(
ÀÀ 
this
ÀÀ 
.
ÀÀ 
NavigationService
ÀÀ &
!=
ÀÀ' )
null
ÀÀ* .
)
ÀÀ. /
{
ÀÀ0 1
this
ÃÃ 
.
ÃÃ 
NavigationService
ÃÃ &
.
ÃÃ& '
Navigate
ÃÃ' /
(
ÃÃ/ 0
selectLobbyView
ÃÃ0 ?
)
ÃÃ? @
;
ÃÃ@ A
}
ÕÕ 
else
ÕÕ 
{
ÕÕ 
DialogManager
ŒŒ 
.
ŒŒ #
ShowErrorMessageAlert
ŒŒ 3
(
ŒŒ3 4

Properties
ŒŒ4 >
.
ŒŒ> ?
	Resources
ŒŒ? H
.
ŒŒH I#
dialogNavigationError
ŒŒI ^
)
ŒŒ^ _
;
ŒŒ_ `
}
œœ 
}
–– 	
}
—— 
}““ ∏Ö
.C:\TripasDeGatoCliente\Views\LobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback+ ?
,? @!
ILobbyManagerCallbackA V
{W X
private 
ChatManagerClient !
_chatManager" .
;. /
private 
LobbyManagerClient "
_lobbyManager# 0
;0 1
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
private 
UserManagerClient !
_userManager" .
;. /
private 
bool 
_isConnected !
=" #
false$ )
;) *
private 
string 

_lobbyCode !
;! "
private  
FriendsManagerClient $
_friendsManager% 4
;4 5
private 
StatusManagerClient #
_statusManager$ 2
;2 3
private (
EmailInvitationManagerClient ,#
_emailInvitationManager- D
;D E
private 
bool 
_elementsVisible %
=& '
false( -
;- .
public   
	LobbyView   
(   
string   
	lobbyCode    )
)  ) *
{  + ,
InitializeComponent!! 
(!!  
)!!  !
;!!! "
this"" 
."" 

_lobbyCode"" 
="" 
	lobbyCode"" '
;""' (
lbCode## 
.## 
Content## 
=## 
	lobbyCode## &
;##& '
_lobbyBrowser$$ 
=$$ 
new$$ 
LobbyBrowserClient$$  2
($$2 3
)$$3 4
;$$4 5
InitializeLobby%% 
(%% 
)%% 
;%% 
InstanceContext&& 
context&& #
=&&$ %
new&&& )
InstanceContext&&* 9
(&&9 :
this&&: >
)&&> ?
;&&? @
_lobbyManager'' 
='' 
new'' 
LobbyManagerClient''  2
(''2 3
context''3 :
)'': ;
;''; <
_chatManager(( 
=(( 
new(( 
ChatManagerClient(( 0
(((0 1
context((1 8
)((8 9
;((9 :
ConnectionManager)) 
.)) 
Instance)) &
.))& '"
InitializeLobbyManager))' =
())= >
context))> E
)))E F
;))F G
ConnectionManager** 
.** 
Instance** &
.**& '!
InitializeChatManager**' <
(**< =
context**= D
)**D E
;**E F
_userManager++ 
=++ 
new++ 
UserManagerClient++ 0
(++0 1
)++1 2
;++2 3
_friendsManager,, 
=,, 
new,, ! 
FriendsManagerClient,," 6
(,,6 7
),,7 8
;,,8 9
_statusManager-- 
=-- 
new--  
StatusManagerClient--! 4
(--4 5
)--5 6
;--6 7#
_emailInvitationManager.. #
=..$ %
new..& )(
EmailInvitationManagerClient..* F
(..F G
)..G H
;..H I&
InitializeConnectionsAsync// &
(//& '
)//' (
;//( )
if00 
(00 
!00 
string00 
.00 
IsNullOrEmpty00 %
(00% & 
UserProfileSingleton00& :
.00: ;
PicPath00; B
)00B C
)00C D
{00E F
imageProfile111 
.11 
Source11 $
=11% &
new11' *
BitmapImage11+ 6
(116 7
new117 :
Uri11; >
(11> ? 
UserProfileSingleton11? S
.11S T
PicPath11T [
,11[ \
UriKind11] d
.11d e
RelativeOrAbsolute11e w
)11w x
)11x y
;11y z
}22 
}33 	
private55 
async55 
void55 &
InitializeConnectionsAsync55 5
(555 6
)556 7
{558 9
LoggerManager66 
logger66  
=66! "
new66# &
LoggerManager66' 4
(664 5
this665 9
.669 :
GetType66: A
(66A B
)66B C
)66C D
;66D E
try77 
{77 
await88 
InitializeChatAsync88 )
(88) *
)88* +
;88+ ,
await99 
ConnectToLobbyAsync99 )
(99) *
)99* +
;99+ ,
}:: 
catch:: 
(:: %
EndpointNotFoundException:: .%
endpointNotFoundException::/ H
)::H I
{::J K
logger;; 
.;; 
LogError;; 
(;;  %
endpointNotFoundException;;  9
);;9 :
;;;: ;
DialogManager<< 
.<< !
ShowErrorMessageAlert<< 3
(<<3 4

Properties<<4 >
.<<> ?
	Resources<<? H
.<<H I#
dialogEndPointException<<I `
)<<` a
;<<a b
ExitUseSinglenton== !
(==! "
)==" #
;==# $
}>> 
catch>> 
(>> 
TimeoutException>> %
timeoutException>>& 6
)>>6 7
{>>8 9
logger?? 
.?? 
LogError?? 
(??  
timeoutException??  0
)??0 1
;??1 2
DialogManager@@ 
.@@ !
ShowErrorMessageAlert@@ 3
(@@3 4

Properties@@4 >
.@@> ?
	Resources@@? H
.@@H I"
dialogTimeOutException@@I _
)@@_ `
;@@` a
ExitUseSinglentonAA !
(AA! "
)AA" #
;AA# $
}BB 
catchBB 
(BB "
CommunicationExceptionBB +"
communicationExceptionBB, B
)BBB C
{BBD E
loggerCC 
.CC 
LogErrorCC 
(CC  "
communicationExceptionCC  6
)CC6 7
;CC7 8
DialogManagerDD 
.DD !
ShowErrorMessageAlertDD 3
(DD3 4

PropertiesDD4 >
.DD> ?
	ResourcesDD? H
.DDH I'
dialogComunicationExceptionDDI d
)DDd e
;DDe f
ExitUseSinglentonEE !
(EE! "
)EE" #
;EE# $
}FF 
catchFF 
(FF 
	ExceptionFF 
	exceptionFF (
)FF( )
{FF* +
loggerGG 
.GG 
LogErrorGG 
(GG  
	exceptionGG  )
)GG) *
;GG* +
DialogManagerHH 
.HH !
ShowErrorMessageAlertHH 3
(HH3 4
stringHH4 :
.HH: ;
FormatHH; A
(HHA B

PropertiesHHB L
.HHL M
	ResourcesHHM V
.HHV W!
dialogUnexpectedErrorHHW l
,HHl m
	exceptionHHn w
.HHw x
MessageHHx 
)	HH Ä
)
HHÄ Å
;
HHÅ Ç
ExitUseSinglentonII !
(II! "
)II" #
;II# $
}JJ 
}KK 	
privateMM 
asyncMM 
TaskMM 
InitializeChatAsyncMM .
(MM. /
)MM/ 0
{MM1 2
LoggerManagerNN 
loggerNN  
=NN! "
newNN# &
LoggerManagerNN' 4
(NN4 5
thisNN5 9
.NN9 :
GetTypeNN: A
(NNA B
)NNB C
)NNC D
;NND E
tryOO 
{OO 
awaitPP 
_chatManagerPP "
.PP" #
ConnectToChatAsyncPP# 5
(PP5 6 
UserProfileSingletonPP6 J
.PPJ K
UserNamePPK S
,PPS T

_lobbyCodePPU _
)PP_ `
;PP` a
}QQ 
catchQQ 
(QQ %
EndpointNotFoundExceptionQQ .%
endpointNotFoundExceptionQQ/ H
)QQH I
{QQJ K
loggerRR 
.RR 
LogErrorRR 
(RR  %
endpointNotFoundExceptionRR  9
)RR9 :
;RR: ;
DialogManagerSS 
.SS !
ShowErrorMessageAlertSS 3
(SS3 4

PropertiesSS4 >
.SS> ?
	ResourcesSS? H
.SSH I#
dialogEndPointExceptionSSI `
)SS` a
;SSa b
}TT 
catchTT 
(TT 
TimeoutExceptionTT %
timeoutExceptionTT& 6
)TT6 7
{TT8 9
loggerUU 
.UU 
LogErrorUU 
(UU  
timeoutExceptionUU  0
)UU0 1
;UU1 2
DialogManagerVV 
.VV !
ShowErrorMessageAlertVV 3
(VV3 4

PropertiesVV4 >
.VV> ?
	ResourcesVV? H
.VVH I"
dialogTimeOutExceptionVVI _
)VV_ `
;VV` a
}WW 
catchWW 
(WW "
CommunicationExceptionWW +"
communicationExceptionWW, B
)WWB C
{WWD E
loggerXX 
.XX 
LogErrorXX 
(XX  "
communicationExceptionXX  6
)XX6 7
;XX7 8
DialogManagerYY 
.YY !
ShowErrorMessageAlertYY 3
(YY3 4

PropertiesYY4 >
.YY> ?
	ResourcesYY? H
.YYH I'
dialogComunicationExceptionYYI d
)YYd e
;YYe f
}ZZ 
catchZZ 
(ZZ 
	ExceptionZZ 
	exceptionZZ (
)ZZ( )
{ZZ* +
logger[[ 
.[[ 
LogError[[ 
([[  
	exception[[  )
)[[) *
;[[* +
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4
string\\4 :
.\\: ;
Format\\; A
(\\A B

Properties\\B L
.\\L M
	Resources\\M V
.\\V W!
dialogUnexpectedError\\W l
,\\l m
	exception\\n w
.\\w x
Message\\x 
)	\\ Ä
)
\\Ä Å
;
\\Å Ç
}]] 
}^^ 	
private`` 
async`` 
Task`` 
ConnectToLobbyAsync`` .
(``. /
)``/ 0
{``1 2
LoggerManageraa 
loggeraa  
=aa! "
newaa# &
LoggerManageraa' 4
(aa4 5
thisaa5 9
.aa9 :
GetTypeaa: A
(aaA B
)aaB C
)aaC D
;aaD E
trybb 
{bb 
boolcc 
	connectedcc 
=cc  
awaitcc! &
Taskcc' +
.cc+ ,
Runcc, /
(cc/ 0
(cc0 1
)cc1 2
=>cc3 5
_lobbyManagercc6 C
.ccC D 
ConnectPlayerToLobbyccD X
(ccX Y

_lobbyCodeccY c
,ccc d 
UserProfileSingletoncce y
.ccy z
	IdProfile	ccz É
)
ccÉ Ñ
)
ccÑ Ö
;
ccÖ Ü
ifdd 
(dd 
!dd 
	connecteddd 
)dd 
{dd  !
DialogManageree !
.ee! "!
ShowErrorMessageAlertee" 7
(ee7 8

Propertiesee8 B
.eeB C
	ResourceseeC L
.eeL M!
dialogConnectionErroreeM b
)eeb c
;eec d
ExitUseSinglentonff %
(ff% &
)ff& '
;ff' (
}gg 
elsegg 
{gg 
_isConnectedhh  
=hh! "
truehh# '
;hh' (
}ii 
}jj 
catchjj 
(jj %
EndpointNotFoundExceptionjj .%
endpointNotFoundExceptionjj/ H
)jjH I
{jjJ K
loggerkk 
.kk 
LogErrorkk 
(kk  %
endpointNotFoundExceptionkk  9
)kk9 :
;kk: ;
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I#
dialogEndPointExceptionllI `
)ll` a
;lla b
}mm 
catchmm 
(mm 
TimeoutExceptionmm %
timeoutExceptionmm& 6
)mm6 7
{mm8 9
loggernn 
.nn 
LogErrornn 
(nn  
timeoutExceptionnn  0
)nn0 1
;nn1 2
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I"
dialogTimeOutExceptionooI _
)oo_ `
;oo` a
}pp 
catchpp 
(pp "
CommunicationExceptionpp +"
communicationExceptionpp, B
)ppB C
{ppD E
loggerqq 
.qq 
LogErrorqq 
(qq  "
communicationExceptionqq  6
)qq6 7
;qq7 8
DialogManagerrr 
.rr !
ShowErrorMessageAlertrr 3
(rr3 4

Propertiesrr4 >
.rr> ?
	Resourcesrr? H
.rrH I'
dialogComunicationExceptionrrI d
)rrd e
;rre f
}ss 
catchss 
(ss 
	Exceptionss 
	exceptionss (
)ss( )
{ss* +
loggertt 
.tt 
LogErrortt 
(tt  
	exceptiontt  )
)tt) *
;tt* +
DialogManageruu 
.uu !
ShowErrorMessageAlertuu 3
(uu3 4
stringuu4 :
.uu: ;
Formatuu; A
(uuA B

PropertiesuuB L
.uuL M
	ResourcesuuM V
.uuV W!
dialogUnexpectedErroruuW l
,uul m
	exceptionuun w
.uuw x
Messageuux 
)	uu Ä
)
uuÄ Å
;
uuÅ Ç
}vv 
}ww 	
privateyy 
asyncyy 
voidyy  
BtnSendMessage_Clickyy /
(yy/ 0
objectyy0 6
senderyy7 =
,yy= >
RoutedEventArgsyy? N
eyyO P
)yyP Q
{yyR S
LoggerManagerzz 
loggerzz  
=zz! "
newzz# &
LoggerManagerzz' 4
(zz4 5
thiszz5 9
.zz9 :
GetTypezz: A
(zzA B
)zzB C
)zzC D
;zzD E
string{{ 
messageText{{ 
={{  
txtMessageInput{{! 0
.{{0 1
Text{{1 5
.{{5 6
Trim{{6 :
({{: ;
){{; <
;{{< =
if|| 
(|| 
!|| 
string|| 
.|| 
IsNullOrEmpty|| %
(||% &
messageText||& 1
)||1 2
)||2 3
{||4 5
var}} 
message}} 
=}} 
new}} !
Message}}" )
{}}* +
userName~~ 
=~~  
UserProfileSingleton~~ 3
.~~3 4
UserName~~4 <
,~~< =
chatMessage 
=  !
messageText" -
}
ÄÄ 
;
ÄÄ 
try
ÅÅ 
{
ÅÅ 
await
ÇÇ 
_chatManager
ÇÇ &
.
ÇÇ& '
SendMessageAsync
ÇÇ' 7
(
ÇÇ7 8"
UserProfileSingleton
ÇÇ8 L
.
ÇÇL M
UserName
ÇÇM U
,
ÇÇU V
message
ÇÇW ^
,
ÇÇ^ _

_lobbyCode
ÇÇ` j
)
ÇÇj k
;
ÇÇk l
txtMessageInput
ÉÉ #
.
ÉÉ# $
Clear
ÉÉ$ )
(
ÉÉ) *
)
ÉÉ* +
;
ÉÉ+ ,
}
ÑÑ 
catch
ÑÑ 
(
ÑÑ '
EndpointNotFoundException
ÑÑ 2'
endpointNotFoundException
ÑÑ3 L
)
ÑÑL M
{
ÑÑN O
logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ #
(
ÖÖ# $'
endpointNotFoundException
ÖÖ$ =
)
ÖÖ= >
;
ÖÖ> ?
DialogManager
ÜÜ !
.
ÜÜ! "#
ShowErrorMessageAlert
ÜÜ" 7
(
ÜÜ7 8

Properties
ÜÜ8 B
.
ÜÜB C
	Resources
ÜÜC L
.
ÜÜL M%
dialogEndPointException
ÜÜM d
)
ÜÜd e
;
ÜÜe f
}
áá 
catch
áá 
(
áá 
TimeoutException
áá )
timeoutException
áá* :
)
áá: ;
{
áá< =
logger
àà 
.
àà 
LogError
àà #
(
àà# $
timeoutException
àà$ 4
)
àà4 5
;
àà5 6
DialogManager
ââ !
.
ââ! "#
ShowErrorMessageAlert
ââ" 7
(
ââ7 8

Properties
ââ8 B
.
ââB C
	Resources
ââC L
.
ââL M$
dialogTimeOutException
ââM c
)
ââc d
;
ââd e
}
ää 
catch
ää 
(
ää $
CommunicationException
ää /$
communicationException
ää0 F
)
ääF G
{
ääH I
logger
ãã 
.
ãã 
LogError
ãã #
(
ãã# $$
communicationException
ãã$ :
)
ãã: ;
;
ãã; <
DialogManager
åå !
.
åå! "#
ShowErrorMessageAlert
åå" 7
(
åå7 8

Properties
åå8 B
.
ååB C
	Resources
ååC L
.
ååL M)
dialogComunicationException
ååM h
)
ååh i
;
ååi j
}
çç 
catch
çç 
(
çç 
	Exception
çç "
	exception
çç# ,
)
çç, -
{
çç. /
logger
éé 
.
éé 
LogError
éé #
(
éé# $
	exception
éé$ -
)
éé- .
;
éé. /
DialogManager
èè !
.
èè! "#
ShowErrorMessageAlert
èè" 7
(
èè7 8
string
èè8 >
.
èè> ?
Format
èè? E
(
èèE F

Properties
èèF P
.
èèP Q
	Resources
èèQ Z
.
èèZ [#
dialogUnexpectedError
èè[ p
,
èèp q
	exception
èèr {
.
èè{ |
Messageèè| É
)èèÉ Ñ
)èèÑ Ö
;èèÖ Ü
}
êê 
}
ëë 
}
íí 	
public
îî 
async
îî 
void
îî 
InitializeLobby
îî )
(
îî) *
)
îî* +
{
îî, -
LoggerManager
ïï 
logger
ïï  
=
ïï! "
new
ïï# &
LoggerManager
ïï' 4
(
ïï4 5
this
ïï5 9
.
ïï9 :
GetType
ïï: A
(
ïïA B
)
ïïB C
)
ïïC D
;
ïïD E
try
ññ 
{
ññ 
Lobby
óó 
lobby
óó 
=
óó 
await
óó #
_lobbyBrowser
óó$ 1
.
óó1 2!
GetLobbyByCodeAsync
óó2 E
(
óóE F

_lobbyCode
óóF P
)
óóP Q
;
óóQ R"
UserProfileSingleton
òò $
.
òò$ %
UpdateLobbyCode
òò% 4
(
òò4 5

_lobbyCode
òò5 ?
)
òò? @
;
òò@ A"
UserProfileSingleton
ôô $
.
ôô$ %
UpdateChatCode
ôô% 3
(
ôô3 4

_lobbyCode
ôô4 >
)
ôô> ?
;
ôô? @
if
öö 
(
öö 

IsUserHost
öö 
(
öö 
lobby
öö $
)
öö$ %
)
öö% &
{
öö' (
	lbPlayer1
õõ 
.
õõ 
Content
õõ %
=
õõ& '
lobby
õõ( -
.
õõ- .
Players
õõ. 5
.
õõ5 6
ContainsKey
õõ6 A
(
õõA B
$str
õõB M
)
õõM N
?
õõO P
lobby
õõQ V
.
õõV W
Players
õõW ^
[
õõ^ _
$str
õõ_ j
]
õõj k
.
õõk l
Username
õõl t
:
õõu v

Propertiesõõw Å
.õõÅ Ç
	ResourcesõõÇ ã
.õõã å"
lbWaitingForPlayerõõå û
;õõû ü
	lbPlayer2
úú 
.
úú 
Content
úú %
=
úú& '
lobby
úú( -
.
úú- .
Players
úú. 5
.
úú5 6
ContainsKey
úú6 A
(
úúA B
$str
úúB M
)
úúM N
?
úúO P
lobby
úúQ V
.
úúV W
Players
úúW ^
[
úú^ _
$str
úú_ j
]
úúj k
.
úúk l
Username
úúl t
:
úúu v

Propertiesúúw Å
.úúÅ Ç
	ResourcesúúÇ ã
.úúã å"
lbWaitingForPlayerúúå û
;úúû ü
imageProfile1
ùù !
.
ùù! "
Source
ùù" (
=
ùù) *
new
ùù+ .
BitmapImage
ùù/ :
(
ùù: ;
new
ùù; >
Uri
ùù? B
(
ùùB C"
UserProfileSingleton
ùùC W
.
ùùW X
PicPath
ùùX _
,
ùù_ `
UriKind
ùùa h
.
ùùh i 
RelativeOrAbsolute
ùùi {
)
ùù{ |
)
ùù| }
;
ùù} ~
imageProfile2
ûû !
.
ûû! "
Source
ûû" (
=
ûû) *
null
ûû+ /
;
ûû/ 0
}
üü 
else
üü 
{
üü 
	lbPlayer1
†† 
.
†† 
Content
†† %
=
††& '
lobby
††( -
.
††- .
Players
††. 5
.
††5 6
ContainsKey
††6 A
(
††A B
$str
††B M
)
††M N
?
††O P
lobby
††Q V
.
††V W
Players
††W ^
[
††^ _
$str
††_ j
]
††j k
.
††k l
Username
††l t
:
††u v

Properties††w Å
.††Å Ç
	Resources††Ç ã
.††ã å"
lbWaitingForPlayer††å û
;††û ü
	lbPlayer2
°° 
.
°° 
Content
°° %
=
°°& '
lobby
°°( -
.
°°- .
Players
°°. 5
.
°°5 6
ContainsKey
°°6 A
(
°°A B
$str
°°B M
)
°°M N
?
°°O P
lobby
°°Q V
.
°°V W
Players
°°W ^
[
°°^ _
$str
°°_ j
]
°°j k
.
°°k l
Username
°°l t
:
°°u v

Properties°°w Å
.°°Å Ç
	Resources°°Ç ã
.°°ã å"
lbWaitingForPlayer°°å û
;°°û ü
imageProfile1
¢¢ !
.
¢¢! "
Source
¢¢" (
=
¢¢) *
new
¢¢+ .
BitmapImage
¢¢/ :
(
¢¢: ;
new
¢¢; >
Uri
¢¢? B
(
¢¢B C"
UserProfileSingleton
¢¢C W
.
¢¢W X
PicPath
¢¢X _
,
¢¢_ `
UriKind
¢¢a h
.
¢¢h i 
RelativeOrAbsolute
¢¢i {
)
¢¢{ |
)
¢¢| }
;
¢¢} ~
string
££ 
ruta
££ 
=
££  !
_userManager
££" .
.
££. /

GetPicPath
££/ 9
(
££9 :
lobby
££: ?
.
££? @
Players
££@ G
[
££G H
$str
££H S
]
££S T
.
££T U
Username
££U ]
)
££] ^
;
££^ _
imageProfile2
§§ !
.
§§! "
Source
§§" (
=
§§) *
new
§§+ .
BitmapImage
§§/ :
(
§§: ;
new
§§; >
Uri
§§? B
(
§§B C
ruta
§§C G
,
§§G H
UriKind
§§I P
.
§§P Q 
RelativeOrAbsolute
§§Q c
)
§§c d
)
§§d e
;
§§e f
btnKickPlayer
•• !
.
••! "

Visibility
••" ,
=
••- .

Visibility
••/ 9
.
••9 :
	Collapsed
••: C
;
••C D
btnInvitedFriend
¶¶ $
.
¶¶$ %

Visibility
¶¶% /
=
¶¶0 1

Visibility
¶¶2 <
.
¶¶< =
	Collapsed
¶¶= F
;
¶¶F G
btnStartGame
ßß  
.
ßß  !

Visibility
ßß! +
=
ßß, -

Visibility
ßß. 8
.
ßß8 9
	Collapsed
ßß9 B
;
ßßB C
}
®® 
}
©© 
catch
©© 
(
©© '
EndpointNotFoundException
©© .'
endpointNotFoundException
©©/ H
)
©©H I
{
©©J K
logger
™™ 
.
™™ 
LogError
™™ 
(
™™  '
endpointNotFoundException
™™  9
)
™™9 :
;
™™: ;
DialogManager
´´ 
.
´´ #
ShowErrorMessageAlert
´´ 3
(
´´3 4

Properties
´´4 >
.
´´> ?
	Resources
´´? H
.
´´H I%
dialogEndPointException
´´I `
)
´´` a
;
´´a b
}
¨¨ 
catch
¨¨ 
(
¨¨ 
TimeoutException
¨¨ %
timeoutException
¨¨& 6
)
¨¨6 7
{
¨¨8 9
logger
≠≠ 
.
≠≠ 
LogError
≠≠ 
(
≠≠  
timeoutException
≠≠  0
)
≠≠0 1
;
≠≠1 2
DialogManager
ÆÆ 
.
ÆÆ #
ShowErrorMessageAlert
ÆÆ 3
(
ÆÆ3 4

Properties
ÆÆ4 >
.
ÆÆ> ?
	Resources
ÆÆ? H
.
ÆÆH I$
dialogTimeOutException
ÆÆI _
)
ÆÆ_ `
;
ÆÆ` a
}
ØØ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ +$
communicationException
ØØ, B
)
ØØB C
{
ØØD E
logger
∞∞ 
.
∞∞ 
LogError
∞∞ 
(
∞∞  $
communicationException
∞∞  6
)
∞∞6 7
;
∞∞7 8
DialogManager
±± 
.
±± #
ShowErrorMessageAlert
±± 3
(
±±3 4

Properties
±±4 >
.
±±> ?
	Resources
±±? H
.
±±H I)
dialogComunicationException
±±I d
)
±±d e
;
±±e f
}
≤≤ 
catch
≤≤ 
(
≤≤ 
	Exception
≤≤ 
	exception
≤≤ (
)
≤≤( )
{
≤≤* +
logger
≥≥ 
.
≥≥ 
LogError
≥≥ 
(
≥≥  
	exception
≥≥  )
)
≥≥) *
;
≥≥* +
DialogManager
¥¥ 
.
¥¥ #
ShowErrorMessageAlert
¥¥ 3
(
¥¥3 4
string
¥¥4 :
.
¥¥: ;
Format
¥¥; A
(
¥¥A B

Properties
¥¥B L
.
¥¥L M
	Resources
¥¥M V
.
¥¥V W#
dialogUnexpectedError
¥¥W l
,
¥¥l m
	exception
¥¥n w
.
¥¥w x
Message
¥¥x 
)¥¥ Ä
)¥¥Ä Å
;¥¥Å Ç
}
µµ 
}
∂∂ 	
private
∏∏ 
bool
∏∏ 

IsUserHost
∏∏ 
(
∏∏  
Lobby
∏∏  %
lobby
∏∏& +
)
∏∏+ ,
{
∏∏- .
return
ππ 
lobby
ππ 
.
ππ 
Players
ππ  
.
ππ  !
TryGetValue
ππ! ,
(
ππ, -
$str
ππ- 8
,
ππ8 9
out
ππ: =
var
ππ> A
host
ππB F
)
ππF G
&&
ππH J
host
ππK O
.
ππO P
Username
ππP X
==
ππY ["
UserProfileSingleton
ππ\ p
.
ππp q
UserName
ππq y
;
ππy z
}
∫∫ 	
private
ºº 
async
ºº 
void
ºº 
BtnBack_Click
ºº (
(
ºº( )
object
ºº) /
sender
ºº0 6
,
ºº6 7
RoutedEventArgs
ºº8 G
e
ººH I
)
ººI J
{
ººK L
LoggerManager
ΩΩ 
logger
ΩΩ  
=
ΩΩ! "
new
ΩΩ# &
LoggerManager
ΩΩ' 4
(
ΩΩ4 5
this
ΩΩ5 9
.
ΩΩ9 :
GetType
ΩΩ: A
(
ΩΩA B
)
ΩΩB C
)
ΩΩC D
;
ΩΩD E
try
ææ 
{
ææ 
await
øø 
_lobbyManager
øø #
.
øø# $
LeaveLobbyAsync
øø$ 3
(
øø3 4

_lobbyCode
øø4 >
,
øø> ?"
UserProfileSingleton
øø@ T
.
øøT U
	IdProfile
øøU ^
)
øø^ _
;
øø_ `
await
¿¿ 
_chatManager
¿¿ "
.
¿¿" #
LeaveChatAsync
¿¿# 1
(
¿¿1 2"
UserProfileSingleton
¿¿2 F
.
¿¿F G
UserName
¿¿G O
,
¿¿O P

_lobbyCode
¿¿Q [
)
¿¿[ \
;
¿¿\ ]
ExitUseSinglenton
¡¡ !
(
¡¡! "
)
¡¡" #
;
¡¡# $
}
¬¬ 
catch
¬¬ 
(
¬¬ '
EndpointNotFoundException
¬¬ .'
endpointNotFoundException
¬¬/ H
)
¬¬H I
{
¬¬J K
logger
√√ 
.
√√ 
LogError
√√ 
(
√√  '
endpointNotFoundException
√√  9
)
√√9 :
;
√√: ;
DialogManager
ƒƒ 
.
ƒƒ #
ShowErrorMessageAlert
ƒƒ 3
(
ƒƒ3 4

Properties
ƒƒ4 >
.
ƒƒ> ?
	Resources
ƒƒ? H
.
ƒƒH I%
dialogEndPointException
ƒƒI `
)
ƒƒ` a
;
ƒƒa b
ExitUseSinglenton
≈≈ !
(
≈≈! "
)
≈≈" #
;
≈≈# $
}
∆∆ 
catch
∆∆ 
(
∆∆ 
TimeoutException
∆∆ %
timeoutException
∆∆& 6
)
∆∆6 7
{
∆∆8 9
logger
«« 
.
«« 
LogError
«« 
(
««  
timeoutException
««  0
)
««0 1
;
««1 2
DialogManager
»» 
.
»» #
ShowErrorMessageAlert
»» 3
(
»»3 4

Properties
»»4 >
.
»»> ?
	Resources
»»? H
.
»»H I$
dialogTimeOutException
»»I _
)
»»_ `
;
»»` a
ExitUseSinglenton
…… !
(
……! "
)
……" #
;
……# $
}
   
catch
   
(
   $
CommunicationException
   +$
communicationException
  , B
)
  B C
{
  D E
logger
ÀÀ 
.
ÀÀ 
LogError
ÀÀ 
(
ÀÀ  $
communicationException
ÀÀ  6
)
ÀÀ6 7
;
ÀÀ7 8
DialogManager
ÃÃ 
.
ÃÃ #
ShowErrorMessageAlert
ÃÃ 3
(
ÃÃ3 4

Properties
ÃÃ4 >
.
ÃÃ> ?
	Resources
ÃÃ? H
.
ÃÃH I)
dialogComunicationException
ÃÃI d
)
ÃÃd e
;
ÃÃe f
ExitUseSinglenton
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
;
ÕÕ# $
}
ŒŒ 
catch
ŒŒ 
(
ŒŒ 
	Exception
ŒŒ 
	exception
ŒŒ (
)
ŒŒ( )
{
ŒŒ* +
logger
œœ 
.
œœ 
LogError
œœ 
(
œœ  
	exception
œœ  )
)
œœ) *
;
œœ* +
DialogManager
–– 
.
–– #
ShowErrorMessageAlert
–– 3
(
––3 4
string
––4 :
.
––: ;
Format
––; A
(
––A B

Properties
––B L
.
––L M
	Resources
––M V
.
––V W#
dialogUnexpectedError
––W l
,
––l m
	exception
––n w
.
––w x
Message
––x 
)–– Ä
)––Ä Å
;––Å Ç
ExitUseSinglenton
—— !
(
——! "
)
——" #
;
——# $
}
““ 
}
”” 	
private
’’ 
void
’’ 
ExitUseSinglenton
’’ &
(
’’& '
)
’’' (
{
’’) *"
UserProfileSingleton
÷÷  
.
÷÷  !
ResetLobbyCode
÷÷! /
(
÷÷/ 0
)
÷÷0 1
;
÷÷1 2"
UserProfileSingleton
◊◊  
.
◊◊  !
ResetChatCode
◊◊! .
(
◊◊. /
)
◊◊/ 0
;
◊◊0 1
if
ÿÿ 
(
ÿÿ "
UserProfileSingleton
ÿÿ $
.
ÿÿ$ %
	IdProfile
ÿÿ% .
<
ÿÿ/ 0
$num
ÿÿ1 7
)
ÿÿ7 8
{
ÿÿ9 :
GoToMenuView
ŸŸ 
(
ŸŸ 
)
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
else
⁄⁄ 
{
⁄⁄ 
GoToLoginView
€€ 
(
€€ 
)
€€ 
;
€€  
}
‹‹ 
}
›› 	
private
ﬂﬂ 
async
ﬂﬂ 
void
ﬂﬂ 
	OnClosing
ﬂﬂ $
(
ﬂﬂ$ %
object
ﬂﬂ% +
sender
ﬂﬂ, 2
,
ﬂﬂ2 3
CancelEventArgs
ﬂﬂ4 C
e
ﬂﬂD E
)
ﬂﬂE F
{
ﬂﬂG H
LoggerManager
‡‡ 
logger
‡‡  
=
‡‡! "
new
‡‡# &
LoggerManager
‡‡' 4
(
‡‡4 5
this
‡‡5 9
.
‡‡9 :
GetType
‡‡: A
(
‡‡A B
)
‡‡B C
)
‡‡C D
;
‡‡D E
if
·· 
(
·· 
_isConnected
·· 
)
·· 
{
·· 
try
‚‚ 
{
‚‚ 
await
„„ 
Task
„„ 
.
„„ 
Run
„„ "
(
„„" #
(
„„# $
)
„„$ %
=>
„„& (
_lobbyManager
‰‰ !
.
‰‰! "

LeaveLobby
‰‰" ,
(
‰‰, -

_lobbyCode
‰‰- 7
,
‰‰7 8"
UserProfileSingleton
‰‰9 M
.
‰‰M N
	IdProfile
‰‰N W
)
‰‰W X
)
‰‰X Y
;
‰‰Y Z
}
ÂÂ 
catch
ÂÂ 
(
ÂÂ '
EndpointNotFoundException
ÂÂ 2'
endpointNotFoundException
ÂÂ3 L
)
ÂÂL M
{
ÂÂN O
logger
ÊÊ 
.
ÊÊ 
LogError
ÊÊ #
(
ÊÊ# $'
endpointNotFoundException
ÊÊ$ =
)
ÊÊ= >
;
ÊÊ> ?
DialogManager
ÁÁ !
.
ÁÁ! "#
ShowErrorMessageAlert
ÁÁ" 7
(
ÁÁ7 8

Properties
ÁÁ8 B
.
ÁÁB C
	Resources
ÁÁC L
.
ÁÁL M%
dialogEndPointException
ÁÁM d
)
ÁÁd e
;
ÁÁe f
}
ËË 
catch
ËË 
(
ËË 
TimeoutException
ËË )
timeoutException
ËË* :
)
ËË: ;
{
ËË< =
logger
ÈÈ 
.
ÈÈ 
LogError
ÈÈ #
(
ÈÈ# $
timeoutException
ÈÈ$ 4
)
ÈÈ4 5
;
ÈÈ5 6
DialogManager
ÍÍ !
.
ÍÍ! "#
ShowErrorMessageAlert
ÍÍ" 7
(
ÍÍ7 8

Properties
ÍÍ8 B
.
ÍÍB C
	Resources
ÍÍC L
.
ÍÍL M$
dialogTimeOutException
ÍÍM c
)
ÍÍc d
;
ÍÍd e
}
ÎÎ 
catch
ÎÎ 
(
ÎÎ $
CommunicationException
ÎÎ /$
communicationException
ÎÎ0 F
)
ÎÎF G
{
ÎÎH I
logger
ÏÏ 
.
ÏÏ 
LogError
ÏÏ #
(
ÏÏ# $$
communicationException
ÏÏ$ :
)
ÏÏ: ;
;
ÏÏ; <
DialogManager
ÌÌ !
.
ÌÌ! "#
ShowErrorMessageAlert
ÌÌ" 7
(
ÌÌ7 8

Properties
ÌÌ8 B
.
ÌÌB C
	Resources
ÌÌC L
.
ÌÌL M)
dialogComunicationException
ÌÌM h
)
ÌÌh i
;
ÌÌi j
}
ÓÓ 
catch
ÓÓ 
(
ÓÓ 
	Exception
ÓÓ "
	exception
ÓÓ# ,
)
ÓÓ, -
{
ÓÓ. /
logger
ÔÔ 
.
ÔÔ 
LogError
ÔÔ #
(
ÔÔ# $
	exception
ÔÔ$ -
)
ÔÔ- .
;
ÔÔ. /
DialogManager
 !
.
! "#
ShowErrorMessageAlert
" 7
(
7 8
string
8 >
.
> ?
Format
? E
(
E F

Properties
F P
.
P Q
	Resources
Q Z
.
Z [#
dialogUnexpectedError
[ p
,
p q
	exception
r {
.
{ |
Message| É
)É Ñ
)Ñ Ö
;Ö Ü
}
ÒÒ 
}
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı 
ScrollToBottom
ıı #
(
ıı# $
)
ıı$ %
{
ıı& '
var
ˆˆ 
scrollViewer
ˆˆ 
=
ˆˆ 
VisualTreeHelper
ˆˆ /
.
ˆˆ/ 0
	GetParent
ˆˆ0 9
(
ˆˆ9 :
ChatMessagesPanel
ˆˆ: K
)
ˆˆK L
as
ˆˆM O
ScrollViewer
ˆˆP \
;
ˆˆ\ ]
scrollViewer
˜˜ 
?
˜˜ 
.
˜˜ 
ScrollToEnd
˜˜ %
(
˜˜% &
)
˜˜& '
;
˜˜' (
}
¯¯ 	
private
˙˙ 
void
˙˙ 
GoToMenuView
˙˙ !
(
˙˙! "
)
˙˙" #
{
˙˙$ %
MenuView
˚˚ 
menuView
˚˚ 
=
˚˚ 
new
˚˚  #
MenuView
˚˚$ ,
(
˚˚, -
)
˚˚- .
;
˚˚. /
if
¸¸ 
(
¸¸ 
this
¸¸ 
.
¸¸ 
NavigationService
¸¸ &
!=
¸¸' )
null
¸¸* .
)
¸¸. /
{
¸¸0 1
this
˝˝ 
.
˝˝ 
NavigationService
˝˝ &
.
˝˝& '
Navigate
˝˝' /
(
˝˝/ 0
menuView
˝˝0 8
)
˝˝8 9
;
˝˝9 :
}
˛˛ 
else
˛˛ 
{
˛˛ 
DialogManager
ˇˇ 
.
ˇˇ #
ShowErrorMessageAlert
ˇˇ 3
(
ˇˇ3 4

Properties
ˇˇ4 >
.
ˇˇ> ?
	Resources
ˇˇ? H
.
ˇˇH I#
dialogNavigationError
ˇˇI ^
)
ˇˇ^ _
;
ˇˇ_ `
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
GoToLoginView
ÉÉ "
(
ÉÉ" #
)
ÉÉ# $
{
ÉÉ% &
	LoginView
ÑÑ 
	loginView
ÑÑ 
=
ÑÑ  !
new
ÑÑ" %
	LoginView
ÑÑ& /
(
ÑÑ/ 0
)
ÑÑ0 1
;
ÑÑ1 2
if
ÖÖ 
(
ÖÖ 
this
ÖÖ 
.
ÖÖ 
NavigationService
ÖÖ &
!=
ÖÖ' )
null
ÖÖ* .
)
ÖÖ. /
{
ÖÖ0 1
this
ÜÜ 
.
ÜÜ 
NavigationService
ÜÜ &
.
ÜÜ& '
Navigate
ÜÜ' /
(
ÜÜ/ 0
	loginView
ÜÜ0 9
)
ÜÜ9 :
;
ÜÜ: ;
}
áá 
else
áá 
{
áá 
DialogManager
àà 
.
àà #
ShowErrorMessageAlert
àà 3
(
àà3 4

Properties
àà4 >
.
àà> ?
	Resources
àà? H
.
ààH I#
dialogNavigationError
ààI ^
)
àà^ _
;
àà_ `
}
ââ 
}
ää 	
public
çç 
void
çç 
RemoveFromLobby
çç #
(
çç# $
)
çç$ %
{
çç& '

Dispatcher
éé 
.
éé 
Invoke
éé 
(
éé 
(
éé 
)
éé  
=>
éé! #
{
éé$ %
DialogManager
èè 
.
èè %
ShowWarningMessageAlert
èè 5
(
èè5 6

Properties
èè6 @
.
èè@ A
	Resources
èèA J
.
èèJ K
dialogLobbyExit
èèK Z
)
èèZ [
;
èè[ \
ExitUseSinglenton
êê !
(
êê! "
)
êê" #
;
êê# $
}
ëë 
)
ëë 
;
ëë 
}
íí 	
public
îî 
void
îî 
HostLeftCallback
îî $
(
îî$ %
)
îî% &
{
îî' (

Dispatcher
ïï 
.
ïï 
Invoke
ïï 
(
ïï 
async
ïï #
(
ïï$ %
)
ïï% &
=>
ïï' )
{
ïï* +
await
ññ 
Task
ññ 
.
ññ 
Run
ññ 
(
ññ 
(
ññ  
)
ññ  !
=>
ññ" $
DialogManager
óó 
.
óó %
ShowWarningMessageAlert
óó 1
(
óó1 2

Properties
óó2 <
.
óó< =
	Resources
óó= F
.
óóF G!
dialogHostLeftLobby
óóG Z
)
óóZ [
)
òò 
;
òò 
ExitUseSinglenton
ôô !
(
ôô! "
)
ôô" #
;
ôô# $
}
öö 
)
öö 
;
öö 
}
õõ 	
public
ùù 
void
ùù 
GuestLeftCallback
ùù %
(
ùù% &
)
ùù& '
{
ùù( )

Dispatcher
ûû 
.
ûû 
Invoke
ûû 
(
ûû 
(
ûû 
)
ûû  
=>
ûû! #
{
ûû$ %
string
üü 
waitingMessage
üü %
=
üü& '

Properties
üü( 2
.
üü2 3
	Resources
üü3 <
.
üü< =$
dialogWaitingForPlayer
üü= S
;
üüS T
	lbPlayer2
†† 
.
†† 
Content
†† !
=
††" #
waitingMessage
††$ 2
;
††2 3
imageProfile2
°° 
.
°° 
Source
°° $
=
°°% &
null
°°' +
;
°°+ ,
}
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
public
•• 
void
•• !
GuestJoinedCallback
•• '
(
••' (
string
••( .
	guestName
••/ 8
,
••8 9
string
••: @
picturePath
••A L
,
••L M
int
••N Q
	idProfile
••R [
)
••[ \
{
••] ^

Dispatcher
¶¶ 
.
¶¶ 
Invoke
¶¶ 
(
¶¶ 
(
¶¶ 
)
¶¶  
=>
¶¶! #
{
¶¶$ %
	lbPlayer2
ßß 
.
ßß 
Content
ßß !
=
ßß" #
	guestName
ßß$ -
;
ßß- .
if
®® 
(
®® 
	idProfile
®® 
<
®® 
$num
®®  &
)
®®& '
{
®®( )
string
©© 
ruta
©© 
=
©©  !
_userManager
©©" .
.
©©. /

GetPicPath
©©/ 9
(
©©9 :
	guestName
©©: C
)
©©C D
;
©©D E
imageProfile2
™™ !
.
™™! "
Source
™™" (
=
™™) *
new
™™+ .
BitmapImage
™™/ :
(
™™: ;
new
™™; >
Uri
™™? B
(
™™B C
ruta
™™C G
,
™™G H
UriKind
™™I P
.
™™P Q 
RelativeOrAbsolute
™™Q c
)
™™c d
)
™™d e
;
™™e f
}
´´ 
else
´´ 
{
´´ 
string
¨¨ 
ruta
¨¨ 
=
¨¨  !
picturePath
¨¨" -
;
¨¨- .
imageProfile2
≠≠ !
.
≠≠! "
Source
≠≠" (
=
≠≠) *
new
≠≠+ .
BitmapImage
≠≠/ :
(
≠≠: ;
new
≠≠; >
Uri
≠≠? B
(
≠≠B C
ruta
≠≠C G
,
≠≠G H
UriKind
≠≠I P
.
≠≠P Q 
RelativeOrAbsolute
≠≠Q c
)
≠≠c d
)
≠≠d e
;
≠≠e f
}
ÆÆ 
}
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
void
≤≤  
BtnStartGame_Click
≤≤ '
(
≤≤' (
object
≤≤( .
sender
≤≤/ 5
,
≤≤5 6
RoutedEventArgs
≤≤7 F
e
≤≤G H
)
≤≤H I
{
≤≤J K
_lobbyManager
≥≥ 
.
≥≥ 

StartMatch
≥≥ $
(
≥≥$ %

_lobbyCode
≥≥% /
)
≥≥/ 0
;
≥≥0 1
}
¥¥ 	
public
∂∂ 
void
∂∂ 
BroadcastMessage
∂∂ $
(
∂∂$ %
Message
∂∂% ,
message
∂∂- 4
)
∂∂4 5
{
∂∂6 7
Application
∑∑ 
.
∑∑ 
Current
∑∑ 
.
∑∑  

Dispatcher
∑∑  *
.
∑∑* +
Invoke
∑∑+ 1
(
∑∑1 2
(
∑∑2 3
)
∑∑3 4
=>
∑∑5 7
{
∑∑8 9
Border
∏∏ 
messageContainer
∏∏ '
=
∏∏( )
new
∏∏* -
Border
∏∏. 4
{
∏∏5 6

Background
ππ 
=
ππ  
new
ππ! $
SolidColorBrush
ππ% 4
(
ππ4 5
Colors
ππ5 ;
.
ππ; <
White
ππ< A
)
ππA B
,
ππB C
BorderThickness
∫∫ #
=
∫∫$ %
new
∫∫& )
	Thickness
∫∫* 3
(
∫∫3 4
$num
∫∫4 5
)
∫∫5 6
,
∫∫6 7
Padding
ªª 
=
ªª 
new
ªª !
	Thickness
ªª" +
(
ªª+ ,
$num
ªª, .
)
ªª. /
,
ªª/ 0
Margin
ºº 
=
ºº 
new
ºº  
	Thickness
ºº! *
(
ºº* +
$num
ºº+ -
,
ºº- .
$num
ºº/ 0
,
ºº0 1
$num
ºº2 4
,
ºº4 5
$num
ºº6 7
)
ºº7 8
,
ºº8 9!
HorizontalAlignment
ΩΩ '
=
ΩΩ( )
message
ΩΩ* 1
.
ΩΩ1 2
userName
ΩΩ2 :
==
ΩΩ; ="
UserProfileSingleton
ΩΩ> R
.
ΩΩR S
UserName
ΩΩS [
?
ΩΩ\ ]!
HorizontalAlignment
ΩΩ^ q
.
ΩΩq r
Right
ΩΩr w
:
ΩΩx y"
HorizontalAlignmentΩΩz ç
.ΩΩç é
LeftΩΩé í
}
ææ 
;
ææ 
	TextBlock
øø 
messageBlock
øø &
=
øø' (
new
øø) ,
	TextBlock
øø- 6
{
øø7 8
Text
¿¿ 
=
¿¿ 
$"
¿¿ 
{
¿¿ 
message
¿¿ %
.
¿¿% &
chatMessage
¿¿& 1
}
¿¿1 2
$str
¿¿2 3
{
¿¿3 4
DateTime
¿¿4 <
.
¿¿< =
Now
¿¿= @
:
¿¿@ A
$str
¿¿A F
}
¿¿F G
"
¿¿G H
,
¿¿H I

Foreground
¡¡ 
=
¡¡  
new
¡¡! $
SolidColorBrush
¡¡% 4
(
¡¡4 5
Colors
¡¡5 ;
.
¡¡; <
Black
¡¡< A
)
¡¡A B
,
¡¡B C
FontSize
¬¬ 
=
¬¬ 
$num
¬¬ !
,
¬¬! "

FontWeight
√√ 
=
√√  
FontWeights
√√! ,
.
√√, -
Bold
√√- 1
,
√√1 2
TextWrapping
ƒƒ  
=
ƒƒ! "
TextWrapping
ƒƒ# /
.
ƒƒ/ 0
Wrap
ƒƒ0 4
,
ƒƒ4 5
MaxWidth
≈≈ 
=
≈≈ 
$num
≈≈ "
}
∆∆ 
;
∆∆ 
messageContainer
««  
.
««  !
Child
««! &
=
««' (
messageBlock
««) 5
;
««5 6
ChatMessagesPanel
»» !
.
»»! "
Children
»»" *
.
»»* +
Add
»»+ .
(
»». /
messageContainer
»»/ ?
)
»»? @
;
»»@ A
ScrollToBottom
…… 
(
…… 
)
……  
;
……  !
}
   
)
   
;
   
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ 
GameStarted
ÕÕ 
(
ÕÕ  
)
ÕÕ  !
{
ÕÕ" #
GoToGameMatch
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
œœ 	
private
—— 
void
—— 
GoToGameMatch
—— "
(
——" #
)
——# $
{
——% &
Application
““ 
.
““ 
Current
““ 
.
““  

Dispatcher
““  *
.
““* +
Invoke
““+ 1
(
““1 2
(
““2 3
)
““3 4
=>
““5 7
{
““8 9
var
”” 
	gameMatch
”” 
=
”” 
new
””  #
	GameMatch
””$ -
(
””- .

_lobbyCode
””. 8
)
””8 9
;
””9 :
NavigationService
‘‘ !
?
‘‘! "
.
‘‘" #
Navigate
‘‘# +
(
‘‘+ ,
	gameMatch
‘‘, 5
)
‘‘5 6
;
‘‘6 7
}
’’ 
)
’’ 
;
’’ 
}
÷÷ 	
private
ÿÿ 
async
ÿÿ 
Task
ÿÿ "
LoadFriendsListAsync
ÿÿ /
(
ÿÿ/ 0
)
ÿÿ0 1
{
ÿÿ2 3
LoggerManager
ŸŸ 
logger
ŸŸ  
=
ŸŸ! "
new
ŸŸ# &
LoggerManager
ŸŸ' 4
(
ŸŸ4 5
this
ŸŸ5 9
.
ŸŸ9 :
GetType
ŸŸ: A
(
ŸŸA B
)
ŸŸB C
)
ŸŸC D
;
ŸŸD E
try
⁄⁄ 
{
⁄⁄ 
int
€€ 
userProfileId
€€ !
=
€€" #"
UserProfileSingleton
€€$ 8
.
€€8 9
	IdProfile
€€9 B
;
€€B C
var
‹‹ 
friendsList
‹‹ 
=
‹‹  !
await
‹‹" '
_friendsManager
‹‹( 7
.
‹‹7 8
GetFriendsAsync
‹‹8 G
(
‹‹G H
userProfileId
‹‹H U
)
‹‹U V
;
‹‹V W
var
›› 
friendsWithStatus
›› %
=
››& '
new
››( +
List
››, 0
<
››0 1
string
››1 7
>
››7 8
(
››8 9
)
››9 :
;
››: ;
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
friend
ﬁﬁ #
in
ﬁﬁ$ &
friendsList
ﬁﬁ' 2
)
ﬁﬁ2 3
{
ﬁﬁ4 5
var
ﬂﬂ 
status
ﬂﬂ 
=
ﬂﬂ  
await
ﬂﬂ! &
_statusManager
ﬂﬂ' 5
.
ﬂﬂ5 6"
GetPlayerStatusAsync
ﬂﬂ6 J
(
ﬂﬂJ K
friend
ﬂﬂK Q
.
ﬂﬂQ R
	IdProfile
ﬂﬂR [
)
ﬂﬂ[ \
;
ﬂﬂ\ ]
friendsWithStatus
‡‡ %
.
‡‡% &
Add
‡‡& )
(
‡‡) *
$"
‡‡* ,
{
‡‡, -
friend
‡‡- 3
.
‡‡3 4
Username
‡‡4 <
}
‡‡< =
$str
‡‡= @
{
‡‡@ A
status
‡‡A G
}
‡‡G H
"
‡‡H I
)
‡‡I J
;
‡‡J K
}
·· 

lstFriends
‚‚ 
.
‚‚ 
ItemsSource
‚‚ &
=
‚‚' (
friendsWithStatus
‚‚) :
;
‚‚: ;
}
„„ 
catch
„„ 
(
„„ '
EndpointNotFoundException
„„ .'
endpointNotFoundException
„„/ H
)
„„H I
{
„„J K
logger
‰‰ 
.
‰‰ 
LogError
‰‰ 
(
‰‰  '
endpointNotFoundException
‰‰  9
)
‰‰9 :
;
‰‰: ;
DialogManager
ÂÂ 
.
ÂÂ #
ShowErrorMessageAlert
ÂÂ 3
(
ÂÂ3 4

Properties
ÂÂ4 >
.
ÂÂ> ?
	Resources
ÂÂ? H
.
ÂÂH I%
dialogEndPointException
ÂÂI `
)
ÂÂ` a
;
ÂÂa b
}
ÊÊ 
catch
ÊÊ 
(
ÊÊ 
TimeoutException
ÊÊ %
timeoutException
ÊÊ& 6
)
ÊÊ6 7
{
ÊÊ8 9
logger
ÁÁ 
.
ÁÁ 
LogError
ÁÁ 
(
ÁÁ  
timeoutException
ÁÁ  0
)
ÁÁ0 1
;
ÁÁ1 2
DialogManager
ËË 
.
ËË #
ShowErrorMessageAlert
ËË 3
(
ËË3 4

Properties
ËË4 >
.
ËË> ?
	Resources
ËË? H
.
ËËH I$
dialogTimeOutException
ËËI _
)
ËË_ `
;
ËË` a
}
ÈÈ 
catch
ÈÈ 
(
ÈÈ $
CommunicationException
ÈÈ +$
communicationException
ÈÈ, B
)
ÈÈB C
{
ÈÈD E
logger
ÍÍ 
.
ÍÍ 
LogError
ÍÍ 
(
ÍÍ  $
communicationException
ÍÍ  6
)
ÍÍ6 7
;
ÍÍ7 8
DialogManager
ÎÎ 
.
ÎÎ #
ShowErrorMessageAlert
ÎÎ 3
(
ÎÎ3 4

Properties
ÎÎ4 >
.
ÎÎ> ?
	Resources
ÎÎ? H
.
ÎÎH I)
dialogComunicationException
ÎÎI d
)
ÎÎd e
;
ÎÎe f
}
ÏÏ 
catch
ÏÏ 
(
ÏÏ 
	Exception
ÏÏ 
	exception
ÏÏ (
)
ÏÏ( )
{
ÏÏ* +
logger
ÌÌ 
.
ÌÌ 
LogError
ÌÌ 
(
ÌÌ  
	exception
ÌÌ  )
)
ÌÌ) *
;
ÌÌ* +
DialogManager
ÓÓ 
.
ÓÓ #
ShowErrorMessageAlert
ÓÓ 3
(
ÓÓ3 4
string
ÓÓ4 :
.
ÓÓ: ;
Format
ÓÓ; A
(
ÓÓA B

Properties
ÓÓB L
.
ÓÓL M
	Resources
ÓÓM V
.
ÓÓV W#
dialogUnexpectedError
ÓÓW l
,
ÓÓl m
	exception
ÓÓn w
.
ÓÓw x
Message
ÓÓx 
)ÓÓ Ä
)ÓÓÄ Å
;ÓÓÅ Ç
}
ÔÔ 
}
 	
private
ÚÚ 
async
ÚÚ 
void
ÚÚ $
BtnInvitedFriend_Click
ÚÚ 1
(
ÚÚ1 2
object
ÚÚ2 8
sender
ÚÚ9 ?
,
ÚÚ? @
RoutedEventArgs
ÚÚA P
e
ÚÚQ R
)
ÚÚR S
{
ÚÚT U
LoggerManager
ÛÛ 
logger
ÛÛ  
=
ÛÛ! "
new
ÛÛ# &
LoggerManager
ÛÛ' 4
(
ÛÛ4 5
this
ÛÛ5 9
.
ÛÛ9 :
GetType
ÛÛ: A
(
ÛÛA B
)
ÛÛB C
)
ÛÛC D
;
ÛÛD E
try
ÙÙ 
{
ÙÙ 
_elementsVisible
ıı  
=
ıı! "
!
ıı# $
_elementsVisible
ıı$ 4
;
ıı4 5
if
ˆˆ 
(
ˆˆ 
_elementsVisible
ˆˆ $
)
ˆˆ$ %
{
ˆˆ& '
gridInvitedFriend
˜˜ %
.
˜˜% &

Visibility
˜˜& 0
=
˜˜1 2

Visibility
˜˜3 =
.
˜˜= >
Visible
˜˜> E
;
˜˜E F

lstFriends
¯¯ 
.
¯¯ 
	IsEnabled
¯¯ (
=
¯¯) *
true
¯¯+ /
;
¯¯/ 0

btnInvited
˘˘ 
.
˘˘ 
	IsEnabled
˘˘ (
=
˘˘) *
true
˘˘+ /
;
˘˘/ 0
await
˙˙ "
LoadFriendsListAsync
˙˙ .
(
˙˙. /
)
˙˙/ 0
;
˙˙0 1
btnInvitedFriend
˚˚ $
.
˚˚$ %

Background
˚˚% /
=
˚˚0 1
new
˚˚2 5
SolidColorBrush
˚˚6 E
(
˚˚E F
Colors
˚˚F L
.
˚˚L M
Green
˚˚M R
)
˚˚R S
;
˚˚S T
}
¸¸ 
else
¸¸ 
{
¸¸ 
gridInvitedFriend
˝˝ %
.
˝˝% &

Visibility
˝˝& 0
=
˝˝1 2

Visibility
˝˝3 =
.
˝˝= >
	Collapsed
˝˝> G
;
˝˝G H

lstFriends
˛˛ 
.
˛˛ 
	IsEnabled
˛˛ (
=
˛˛) *
false
˛˛+ 0
;
˛˛0 1

btnInvited
ˇˇ 
.
ˇˇ 
	IsEnabled
ˇˇ (
=
ˇˇ) *
false
ˇˇ+ 0
;
ˇˇ0 1
btnInvitedFriend
ÄÄ $
.
ÄÄ$ %

Background
ÄÄ% /
=
ÄÄ0 1
new
ÄÄ2 5
SolidColorBrush
ÄÄ6 E
(
ÄÄE F
Color
ÄÄF K
.
ÄÄK L
FromArgb
ÄÄL T
(
ÄÄT U
$num
ÄÄU X
,
ÄÄX Y
$num
ÄÄZ ]
,
ÄÄ] ^
$num
ÄÄ_ b
,
ÄÄb c
$num
ÄÄd g
)
ÄÄg h
)
ÄÄh i
;
ÄÄi j
}
ÅÅ 
}
ÇÇ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ .'
endpointNotFoundException
ÇÇ/ H
)
ÇÇH I
{
ÇÇJ K
logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ  '
endpointNotFoundException
ÉÉ  9
)
ÉÉ9 :
;
ÉÉ: ;
DialogManager
ÑÑ 
.
ÑÑ #
ShowErrorMessageAlert
ÑÑ 3
(
ÑÑ3 4

Properties
ÑÑ4 >
.
ÑÑ> ?
	Resources
ÑÑ? H
.
ÑÑH I%
dialogEndPointException
ÑÑI `
)
ÑÑ` a
;
ÑÑa b
}
ÖÖ 
catch
ÖÖ 
(
ÖÖ 
TimeoutException
ÖÖ %
timeoutException
ÖÖ& 6
)
ÖÖ6 7
{
ÖÖ8 9
logger
ÜÜ 
.
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  
timeoutException
ÜÜ  0
)
ÜÜ0 1
;
ÜÜ1 2
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I$
dialogTimeOutException
ááI _
)
áá_ `
;
áá` a
}
àà 
catch
àà 
(
àà $
CommunicationException
àà +$
communicationException
àà, B
)
ààB C
{
ààD E
logger
ââ 
.
ââ 
LogError
ââ 
(
ââ  $
communicationException
ââ  6
)
ââ6 7
;
ââ7 8
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I)
dialogComunicationException
ääI d
)
ääd e
;
ääe f
}
ãã 
catch
ãã 
(
ãã 
	Exception
ãã 
	exception
ãã (
)
ãã( )
{
ãã* +
logger
åå 
.
åå 
LogError
åå 
(
åå  
	exception
åå  )
)
åå) *
;
åå* +
DialogManager
çç 
.
çç #
ShowErrorMessageAlert
çç 3
(
çç3 4
string
çç4 :
.
çç: ;
Format
çç; A
(
ççA B

Properties
ççB L
.
ççL M
	Resources
ççM V
.
ççV W#
dialogUnexpectedError
ççW l
,
ççl m
	exception
ççn w
.
ççw x
Message
ççx 
)çç Ä
)ççÄ Å
;ççÅ Ç
}
éé 
}
èè 	
private
ëë 
async
ëë 
void
ëë 
BtnInvited_Click
ëë +
(
ëë+ ,
object
ëë, 2
sender
ëë3 9
,
ëë9 :
RoutedEventArgs
ëë; J
e
ëëK L
)
ëëL M
{
ëëN O
LoggerManager
íí 
logger
íí  
=
íí! "
new
íí# &
LoggerManager
íí' 4
(
íí4 5
this
íí5 9
.
íí9 :
GetType
íí: A
(
ííA B
)
ííB C
)
ííC D
;
ííD E
if
ìì 
(
ìì 

lstFriends
ìì 
.
ìì 
SelectedItem
ìì '
!=
ìì( *
null
ìì+ /
)
ìì/ 0
{
ìì1 2
string
îî  
selectedFriendName
îî )
=
îî* +

lstFriends
îî, 6
.
îî6 7
SelectedItem
îî7 C
.
îîC D
ToString
îîD L
(
îîL M
)
îîM N
;
îîN O
string
ïï 

friendName
ïï !
=
ïï" # 
selectedFriendName
ïï$ 6
.
ïï6 7
Split
ïï7 <
(
ïï< =
$char
ïï= @
)
ïï@ A
[
ïïA B
$num
ïïB C
]
ïïC D
.
ïïD E
Trim
ïïE I
(
ïïI J
)
ïïJ K
;
ïïK L
try
ññ 
{
ññ 
int
óó 
result
óó 
=
óó  
await
óó! &%
_emailInvitationManager
óó' >
.
óó> ?!
SendInvitationAsync
óó? R
(
óóR S

friendName
óóS ]
,
óó] ^

_lobbyCode
óó_ i
)
óói j
;
óój k
if
òò 
(
òò 
result
òò 
==
òò !
	Constants
òò" +
.
òò+ ,
SUCCES_OPERATION
òò, <
)
òò< =
{
òò> ?
DialogManager
ôô %
.
ôô% &%
ShowSuccessMessageAlert
ôô& =
(
ôô= >
string
ôô> D
.
ôôD E
Format
ôôE K
(
ôôK L

Properties
ôôL V
.
ôôV W
	Resources
ôôW `
.
ôô` a"
dialogInvitationSent
ôôa u
,
ôôu v

friendNameôôw Å
)ôôÅ Ç
)ôôÇ É
;ôôÉ Ñ
}
öö 
else
öö 
{
öö 
DialogManager
õõ %
.
õõ% &#
ShowErrorMessageAlert
õõ& ;
(
õõ; <

Properties
õõ< F
.
õõF G
	Resources
õõG P
.
õõP Q*
dialogErrorSendingInvitation
õõQ m
)
õõm n
;
õõn o
}
úú 
}
ùù 
catch
ùù 
(
ùù '
EndpointNotFoundException
ùù 2'
endpointNotFoundException
ùù3 L
)
ùùL M
{
ùùN O
logger
ûû 
.
ûû 
LogError
ûû #
(
ûû# $'
endpointNotFoundException
ûû$ =
)
ûû= >
;
ûû> ?
DialogManager
üü !
.
üü! "#
ShowErrorMessageAlert
üü" 7
(
üü7 8

Properties
üü8 B
.
üüB C
	Resources
üüC L
.
üüL M%
dialogEndPointException
üüM d
)
üüd e
;
üüe f
}
†† 
catch
†† 
(
†† 
TimeoutException
†† )
timeoutException
††* :
)
††: ;
{
††< =
logger
°° 
.
°° 
LogError
°° #
(
°°# $
timeoutException
°°$ 4
)
°°4 5
;
°°5 6
DialogManager
¢¢ !
.
¢¢! "#
ShowErrorMessageAlert
¢¢" 7
(
¢¢7 8

Properties
¢¢8 B
.
¢¢B C
	Resources
¢¢C L
.
¢¢L M$
dialogTimeOutException
¢¢M c
)
¢¢c d
;
¢¢d e
}
££ 
catch
££ 
(
££ $
CommunicationException
££ /$
communicationException
££0 F
)
££F G
{
££H I
logger
§§ 
.
§§ 
LogError
§§ #
(
§§# $$
communicationException
§§$ :
)
§§: ;
;
§§; <
DialogManager
•• !
.
••! "#
ShowErrorMessageAlert
••" 7
(
••7 8

Properties
••8 B
.
••B C
	Resources
••C L
.
••L M)
dialogComunicationException
••M h
)
••h i
;
••i j
}
¶¶ 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ "
	exception
¶¶# ,
)
¶¶, -
{
¶¶. /
logger
ßß 
.
ßß 
LogError
ßß #
(
ßß# $
	exception
ßß$ -
)
ßß- .
;
ßß. /
DialogManager
®® !
.
®®! "#
ShowErrorMessageAlert
®®" 7
(
®®7 8
string
®®8 >
.
®®> ?
Format
®®? E
(
®®E F

Properties
®®F P
.
®®P Q
	Resources
®®Q Z
.
®®Z [#
dialogUnexpectedError
®®[ p
,
®®p q
	exception
®®r {
.
®®{ |
Message®®| É
)®®É Ñ
)®®Ñ Ö
;®®Ö Ü
}
©© 
}
™™ 
else
™™ 
{
™™ 
DialogManager
´´ 
.
´´ %
ShowWarningMessageAlert
´´ 5
(
´´5 6

Properties
´´6 @
.
´´@ A
	Resources
´´A J
.
´´J K(
dialogSelectFriendToInvite
´´K e
)
´´e f
;
´´f g
}
¨¨ 
}
≠≠ 	
private
ØØ 
async
ØØ 
void
ØØ !
BtnKickPlayer_Click
ØØ .
(
ØØ. /
object
ØØ/ 5
sender
ØØ6 <
,
ØØ< =
RoutedEventArgs
ØØ> M
e
ØØN O
)
ØØO P
{
ØØQ R
LoggerManager
∞∞ 
logger
∞∞  
=
∞∞! "
new
∞∞# &
LoggerManager
∞∞' 4
(
∞∞4 5
this
∞∞5 9
.
∞∞9 :
GetType
∞∞: A
(
∞∞A B
)
∞∞B C
)
∞∞C D
;
∞∞D E
MessageBoxResult
±± 
result
±± #
=
±±$ %

MessageBox
±±& 0
.
±±0 1
Show
±±1 5
(
±±5 6

Properties
≤≤ 
.
≤≤ 
	Resources
≤≤ $
.
≤≤$ %%
dialogConfirmKickPlayer
≤≤% <
,
≤≤< =

Properties
≥≥ 
.
≥≥ 
	Resources
≥≥ $
.
≥≥$ %
titleConfirmKick
≥≥% 5
,
≥≥5 6
MessageBoxButton
¥¥  
.
¥¥  !
YesNo
¥¥! &
,
¥¥& '
MessageBoxImage
µµ 
.
µµ  
Question
µµ  (
)
∂∂ 
;
∂∂ 
if
∑∑ 
(
∑∑ 
result
∑∑ 
==
∑∑ 
MessageBoxResult
∑∑ *
.
∑∑* +
Yes
∑∑+ .
)
∑∑. /
{
∑∑0 1
try
∏∏ 
{
∏∏ 
await
ππ 
Task
ππ 
.
ππ 
Run
ππ "
(
ππ" #
(
ππ# $
)
ππ$ %
=>
ππ& (
_lobbyManager
ππ) 6
.
ππ6 7

KickPlayer
ππ7 A
(
ππA B

_lobbyCode
ππB L
)
ππL M
)
ππM N
;
ππN O
}
∫∫ 
catch
∫∫ 
(
∫∫ '
EndpointNotFoundException
∫∫ 2'
endpointNotFoundException
∫∫3 L
)
∫∫L M
{
∫∫N O
logger
ªª 
.
ªª 
LogError
ªª #
(
ªª# $'
endpointNotFoundException
ªª$ =
)
ªª= >
;
ªª> ?
DialogManager
ºº !
.
ºº! "#
ShowErrorMessageAlert
ºº" 7
(
ºº7 8

Properties
ºº8 B
.
ººB C
	Resources
ººC L
.
ººL M%
dialogEndPointException
ººM d
)
ººd e
;
ººe f
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ )
timeoutException
ΩΩ* :
)
ΩΩ: ;
{
ΩΩ< =
logger
ææ 
.
ææ 
LogError
ææ #
(
ææ# $
timeoutException
ææ$ 4
)
ææ4 5
;
ææ5 6
DialogManager
øø !
.
øø! "#
ShowErrorMessageAlert
øø" 7
(
øø7 8

Properties
øø8 B
.
øøB C
	Resources
øøC L
.
øøL M$
dialogTimeOutException
øøM c
)
øøc d
;
øød e
}
¿¿ 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ /$
communicationException
¿¿0 F
)
¿¿F G
{
¿¿H I
logger
¡¡ 
.
¡¡ 
LogError
¡¡ #
(
¡¡# $$
communicationException
¡¡$ :
)
¡¡: ;
;
¡¡; <
DialogManager
¬¬ !
.
¬¬! "#
ShowErrorMessageAlert
¬¬" 7
(
¬¬7 8

Properties
¬¬8 B
.
¬¬B C
	Resources
¬¬C L
.
¬¬L M)
dialogComunicationException
¬¬M h
)
¬¬h i
;
¬¬i j
}
√√ 
catch
√√ 
(
√√ 
	Exception
√√ "
	exception
√√# ,
)
√√, -
{
√√. /
logger
ƒƒ 
.
ƒƒ 
LogError
ƒƒ #
(
ƒƒ# $
	exception
ƒƒ$ -
)
ƒƒ- .
;
ƒƒ. /
DialogManager
≈≈ !
.
≈≈! "#
ShowErrorMessageAlert
≈≈" 7
(
≈≈7 8
string
≈≈8 >
.
≈≈> ?
Format
≈≈? E
(
≈≈E F

Properties
≈≈F P
.
≈≈P Q
	Resources
≈≈Q Z
.
≈≈Z [#
dialogUnexpectedError
≈≈[ p
,
≈≈p q
	exception
≈≈r {
.
≈≈{ |
Message≈≈| É
)≈≈É Ñ
)≈≈Ñ Ö
;≈≈Ö Ü
}
∆∆ 
}
«« 
}
»» 	
public
   
void
   
KickedFromLobby
   #
(
  # $
)
  $ %
{
  & '

Dispatcher
ÀÀ 
.
ÀÀ 
Invoke
ÀÀ 
(
ÀÀ 
(
ÀÀ 
)
ÀÀ  
=>
ÀÀ! #
{
ÀÀ$ %
DialogManager
ÃÃ 
.
ÃÃ %
ShowWarningMessageAlert
ÃÃ 5
(
ÃÃ5 6

Properties
ÃÃ6 @
.
ÃÃ@ A
	Resources
ÃÃA J
.
ÃÃJ K#
dialogKickedFromLobby
ÃÃK `
)
ÃÃ` a
;
ÃÃa b
ExitUseSinglenton
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
;
ÕÕ# $
}
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
œœ 	
}
–– 
}—— ¯&
4C:\TripasDeGatoCliente\Views\LeaderboardView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 

Laderboard #
:$ %
Page& *
{+ ,
private $
LeaderboardManagerClient (%
_leaderboardManagerClient) B
;B C
public 

Laderboard 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "%
_leaderboardManagerClient %
=& '
new( +$
LeaderboardManagerClient, D
(D E
)E F
;F G$
LoadLeaderboardDataAsync $
($ %
)% &
;& '
} 	
private 
async 
Task $
LoadLeaderboardDataAsync 3
(3 4
)4 5
{6 7
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
try 
{ 
List 
< 
Profile 
> 
highestScores +
=, -
(. /
await/ 4%
_leaderboardManagerClient5 N
.N O!
GetHighestScoresAsyncO d
(d e
)e f
)f g
.g h
ToListh n
(n o
)o p
;p q
lstViewLeaderboard "
." #
ItemsSource# .
=/ 0
highestScores1 >
;> ?
} 
catch 
( %
EndpointNotFoundException .%
endpointNotFoundException/ H
)H I
{J K
logger 
. 
LogError 
(  %
endpointNotFoundException  9
)9 :
;: ;
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
catch 
( 
TimeoutException %
timeoutException& 6
)6 7
{8 9
logger 
. 
LogError 
(  
timeoutException  0
)0 1
;1 2
DialogManager   
.   !
ShowErrorMessageAlert   3
(  3 4

Properties  4 >
.  > ?
	Resources  ? H
.  H I"
dialogTimeOutException  I _
)  _ `
;  ` a
}!! 
catch!! 
(!! "
CommunicationException!! +"
communicationException!!, B
)!!B C
{!!D E
logger"" 
."" 
LogError"" 
(""  "
communicationException""  6
)""6 7
;""7 8
DialogManager## 
.## !
ShowErrorMessageAlert## 3
(##3 4

Properties##4 >
.##> ?
	Resources##? H
.##H I'
dialogComunicationException##I d
)##d e
;##e f
}$$ 
catch$$ 
($$ 
	Exception$$ 
	exception$$ (
)$$( )
{$$* +
logger%% 
.%% 
LogError%% 
(%%  
	exception%%  )
)%%) *
;%%* +
DialogManager&& 
.&& !
ShowErrorMessageAlert&& 3
(&&3 4
string&&4 :
.&&: ;
Format&&; A
(&&A B

Properties&&B L
.&&L M
	Resources&&M V
.&&V W!
dialogUnexpectedError&&W l
,&&l m
	exception&&n w
.&&w x
Message&&x 
)	&& Ä
)
&&Ä Å
;
&&Å Ç
}'' 
}(( 	
private** 
void** 
BtnBack_Click** "
(**" #
object**# )
sender*** 0
,**0 1
RoutedEventArgs**2 A
e**B C
)**C D
{**E F
MenuView++ 
menuView++ 
=++ 
new++  #
MenuView++$ ,
(++, -
)++- .
;++. /
if,, 
(,, 
this,, 
.,, 
NavigationService,, &
!=,,' )
null,,* .
),,. /
{,,0 1
this-- 
.-- 
NavigationService-- &
.--& '
Navigate--' /
(--/ 0
menuView--0 8
)--8 9
;--9 :
}.. 
else.. 
{.. 
DialogManager// 
.// !
ShowErrorMessageAlert// 3
(//3 4

Properties//4 >
.//> ?
	Resources//? H
.//H I!
dialogNavigationError//I ^
)//^ _
;//_ `
}00 
}11 	
}22 
}33 æP
4C:\TripasDeGatoCliente\Views\CreateLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
CreateLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
public 
CreateLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! " 
InitializeFormValues  
(  !
)! "
;" #
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
} 	
private 
void  
InitializeFormValues )
() *
)* +
{, -
cboxNode 
. 
ItemsSource  
=! "
new# &
List' +
<+ ,
int, /
>/ 0
{1 2
$num3 4
,4 5
$num6 8
,8 9
$num: <
,< =
$num> @
,@ A
$numB D
,D E
$numF H
,H I
$numJ L
}M N
;N O
cboxNode 
. 
SelectedIndex "
=# $
$num% &
;& '
}   	
private"" 
async"" 
void""  
BtnCreateLobby_Click"" /
(""/ 0
object""0 6
sender""7 =
,""= >
RoutedEventArgs""? N
e""O P
)""P Q
{""R S
LoggerManager## 
logger##  
=##! "
new### &
LoggerManager##' 4
(##4 5
this##5 9
.##9 :
GetType##: A
(##A B
)##B C
)##C D
;##D E
string$$ 
gameName$$ 
=$$ 
txtNameLobby$$ *
.$$* +
Text$$+ /
.$$/ 0
Trim$$0 4
($$4 5
)$$5 6
;$$6 7
if%% 
(%% 
!%% 
ValidationGameName%% #
(%%# $
gameName%%$ ,
)%%, -
)%%- .
{%%/ 0
return&& 
;&& 
}'' 
if(( 
((( 
cboxNode(( 
.(( 
SelectedItem(( %
==((& (
null(() -
)((- .
{((/ 0
DialogManager)) 
.)) #
ShowWarningMessageAlert)) 5
())5 6

Properties))6 @
.))@ A
	Resources))A J
.))J K"
dialogSelectNodesError))K a
)))a b
;))b c
return** 
;** 
}++ 
int,, 
	nodeCount,, 
=,, 
(,, 
int,,  
),,  !
cboxNode,,! )
.,,) *
SelectedItem,,* 6
;,,6 7
TimeSpan-- 
duration-- 
=-- 
TimeSpan--  (
.--( )
FromMinutes--) 4
(--4 5
$num--5 6
)--6 7
;--7 8
;--9 :
try.. 
{.. 
var// 
owner// 
=// 
new// 
Profile//  '
{//( )
	IdProfile00 
=00  
UserProfileSingleton00  4
.004 5
	IdProfile005 >
,00> ?
Username11 
=11  
UserProfileSingleton11 3
.113 4
UserName114 <
}22 
;22 
string33 
	lobbyCode33  
=33! "
await33# (
_lobbyBrowser33) 6
.336 7
CreateLobbyAsync337 G
(33G H
gameName33H P
,33P Q
	nodeCount33R [
,33[ \
owner33] b
,33b c
duration33d l
)33l m
;33m n
if44 
(44 
!44 
string44 
.44 
IsNullOrEmpty44 )
(44) *
	lobbyCode44* 3
)443 4
)444 5
{446 7
GoToLobbyView55 !
(55! "
	lobbyCode55" +
)55+ ,
;55, -
}66 
else66 
{66 
DialogManager77 !
.77! "#
ShowWarningMessageAlert77" 9
(779 :

Properties77: D
.77D E
	Resources77E N
.77N O$
dialogLobbyCreationError77O g
)77g h
;77h i
}88 
}99 
catch99 
(99 %
EndpointNotFoundException99 .%
endpointNotFoundException99/ H
)99H I
{99J K
logger:: 
.:: 
LogError:: 
(::  %
endpointNotFoundException::  9
)::9 :
;::: ;
DialogManager;; 
.;; !
ShowErrorMessageAlert;; 3
(;;3 4

Properties;;4 >
.;;> ?
	Resources;;? H
.;;H I#
dialogEndPointException;;I `
);;` a
;;;a b
}<< 
catch<< 
(<< 
TimeoutException<< %
timeoutException<<& 6
)<<6 7
{<<8 9
logger== 
.== 
LogError== 
(==  
timeoutException==  0
)==0 1
;==1 2
DialogManager>> 
.>> !
ShowErrorMessageAlert>> 3
(>>3 4

Properties>>4 >
.>>> ?
	Resources>>? H
.>>H I"
dialogTimeOutException>>I _
)>>_ `
;>>` a
}?? 
catch?? 
(?? "
CommunicationException?? +"
communicationException??, B
)??B C
{??D E
logger@@ 
.@@ 
LogError@@ 
(@@  "
communicationException@@  6
)@@6 7
;@@7 8
DialogManagerAA 
.AA !
ShowErrorMessageAlertAA 3
(AA3 4

PropertiesAA4 >
.AA> ?
	ResourcesAA? H
.AAH I'
dialogComunicationExceptionAAI d
)AAd e
;AAe f
}BB 
catchBB 
(BB 
	ExceptionBB 
	exceptionBB (
)BB( )
{BB* +
loggerCC 
.CC 
LogErrorCC 
(CC  
	exceptionCC  )
)CC) *
;CC* +
DialogManagerDD 
.DD !
ShowErrorMessageAlertDD 3
(DD3 4
stringDD4 :
.DD: ;
FormatDD; A
(DDA B

PropertiesDDB L
.DDL M
	ResourcesDDM V
.DDV W!
dialogUnexpectedErrorDDW l
,DDl m
	exceptionDDn w
.DDw x
MessageDDx 
)	DD Ä
)
DDÄ Å
;
DDÅ Ç
}EE 
}FF 	
publicHH 
boolHH 
ValidationGameNameHH &
(HH& '
stringHH' -
gameNameHH. 6
)HH6 7
{HH8 9
boolII 
resultII 
=II 
falseII 
;II  
ifJJ 
(JJ 
stringJJ 
.JJ 
IsNullOrWhiteSpaceJJ )
(JJ) *
txtNameLobbyJJ* 6
.JJ6 7
TextJJ7 ;
)JJ; <
)JJ< =
{JJ> ?
DialogManagerKK 
.KK #
ShowWarningMessageAlertKK 5
(KK5 6

PropertiesKK6 @
.KK@ A
	ResourcesKKA J
.KKJ K$
dialogEnterGameNameErrorKKK c
)KKc d
;KKd e
returnLL 
resultLL 
;LL 
}MM 
ifNN 
(NN 
!NN 
	ValidadorNN 
.NN 
ValidateGameNameNN +
(NN+ ,
gameNameNN, 4
)NN4 5
)NN5 6
{NN7 8
DialogManagerOO 
.OO #
ShowWarningMessageAlertOO 5
(OO5 6

PropertiesOO6 @
.OO@ A
	ResourcesOOA J
.OOJ K&
dialogInvalidGameNameErrorOOK e
)OOe f
;OOf g
returnPP 
resultPP 
;PP 
}QQ 
resultRR 
=RR 
trueRR 
;RR 
returnSS 
resultSS 
;SS 
}TT 	
privateVV 
voidVV 
BtnBack_ClickVV "
(VV" #
objectVV# )
senderVV* 0
,VV0 1
	EventArgsVV2 ;
eVV< =
)VV= >
{VV? @
GoToMenuViewWW 
(WW 
)WW 
;WW 
}XX 	
privateZZ 
voidZZ 
GoToLobbyViewZZ "
(ZZ" #
stringZZ# )
	lobbyCodeZZ* 3
)ZZ3 4
{ZZ5 6
	LobbyView[[ 
	lobbyView[[ 
=[[  !
new[[" %
	LobbyView[[& /
([[/ 0
	lobbyCode[[0 9
)[[9 :
;[[: ;
if\\ 
(\\ 
this\\ 
.\\ 
NavigationService\\ &
!=\\' )
null\\* .
)\\. /
{\\0 1
this]] 
.]] 
NavigationService]] &
.]]& '
Navigate]]' /
(]]/ 0
	lobbyView]]0 9
)]]9 :
;]]: ;
}^^ 
else^^ 
{^^ 
DialogManager__ 
.__ !
ShowErrorMessageAlert__ 3
(__3 4

Properties__4 >
.__> ?
	Resources__? H
.__H I!
dialogNavigationError__I ^
)__^ _
;___ `
}`` 
}aa 	
privatecc 
voidcc 
GoToMenuViewcc !
(cc! "
)cc" #
{cc$ %
MenuViewdd 
menuViewdd 
=dd 
newdd  #
MenuViewdd$ ,
(dd, -
)dd- .
;dd. /
ifee 
(ee 
thisee 
.ee 
NavigationServiceee &
!=ee' )
nullee* .
)ee. /
{ee0 1
thisff 
.ff 
NavigationServiceff &
.ff& '
Navigateff' /
(ff/ 0
menuViewff0 8
)ff8 9
;ff9 :
}gg 
elsegg 
{gg 
DialogManagerhh 
.hh !
ShowErrorMessageAlerthh 3
(hh3 4

Propertieshh4 >
.hh> ?
	Resourceshh? H
.hhH I!
dialogNavigationErrorhhI ^
)hh^ _
;hh_ `
}ii 
}jj 	
}kk 
}ll éÃ
2C:\TripasDeGatoCliente\Views\GameMatchView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	GameMatch "
:# $
Page% )
,) *!
IMatchManagerCallback+ @
{A B
private 
List 
< 
Polyline 
> 

_allTraces )
;) *
private 
DispatcherTimer 
_timer  &
;& '
private 
int 

_totalTime 
=  
$num! #
;# $
private 
double 
_remainingTime %
;% &
private 
string 

_matchCode !
;! "
private 
bool 
_isConnected !
;! "
private 
MatchManagerClient "
_matchManagerClient# 6
;6 7
private 
bool 

_isDrawing 
=  !
false" '
;' (
private 
List 
<  
TripasDeGatoServicio )
.) *

TracePoint* 4
>4 5
_currentTracePoints6 I
=J K
newL O
ListP T
<T U 
TripasDeGatoServicioU i
.i j

TracePointj t
>t u
(u v
)v w
;w x
private 
Polyline 
_currentLine %
;% &
private 
List 
< 
Node 
> 
nodes  
;  !
private   

Dictionary   
<   
string   !
,  ! "
string  # )
>  ) *

_nodePairs  + 5
;  5 6
private!! 
Node!! 

_startNode!! 
;!!  
private"" 
bool"" 
_isPlayerTurn"" "
=""# $
false""% *
;""* +
public$$ 
	GameMatch$$ 
($$ 
string$$ 
gameCode$$  (
)$$( )
{$$* +
InitializeComponent%% 
(%%  
)%%  !
;%%! "
this&& 
.&& 

_matchCode&& 
=&& 
gameCode&& &
;&&& '
_matchManagerClient'' 
=''  !
new''" %
MatchManagerClient''& 8
(''8 9
new''9 <
InstanceContext''= L
(''L M
this''M Q
)''Q R
)''R S
;''S T
InitializeMatch(( 
((( 
)(( 
;(( 

_allTraces)) 
=)) 
new)) 
List)) !
<))! "
Polyline))" *
>))* +
())+ ,
))), -
;))- .
drawingCanvas** 
.** 
	MouseDown** #
+=**$ &
Canvas_MouseDown**' 7
;**7 8
drawingCanvas++ 
.++ 
	MouseMove++ #
+=++$ &
Canvas_MouseMove++' 7
;++7 8
drawingCanvas,, 
.,, 
MouseUp,, !
+=,," $
Canvas_MouseUp,,% 3
;,,3 4

StartTimer-- 
(-- 
)-- 
;-- 
}.. 	
private00 
async00 
Task00 
CheckCurrentTurn00 +
(00+ ,
)00, -
{00. /
LoggerManager11 
logger11  
=11! "
new11# &
LoggerManager11' 4
(114 5
this115 9
.119 :
GetType11: A
(11A B
)11B C
)11C D
;11D E
try22 
{22 
string33 
currentTurn33 "
=33# $
await33% *
Task33+ /
.33/ 0
Run330 3
(333 4
(334 5
)335 6
=>337 9
_matchManagerClient33: M
.33M N
GetCurrentTurn33N \
(33\ ]

_matchCode33] g
)33g h
)33h i
;33i j
if44 
(44 
currentTurn44 
==44  " 
UserProfileSingleton44# 7
.447 8
UserName448 @
)44@ A
{44B C
NotifyYourTurn55 "
(55" #
)55# $
;55$ %
}66 
else66 
{66 
NotifyNotYourTurn77 %
(77% &
)77& '
;77' (
}88 
}99 
catch99 
(99 %
EndpointNotFoundException99 .%
endpointNotFoundException99/ H
)99H I
{99J K
logger:: 
.:: 
LogError:: 
(::  %
endpointNotFoundException::  9
)::9 :
;::: ;
DialogManager;; 
.;; !
ShowErrorMessageAlert;; 3
(;;3 4

Properties;;4 >
.;;> ?
	Resources;;? H
.;;H I#
dialogEndPointException;;I `
);;` a
;;;a b
}<< 
catch<< 
(<< 
TimeoutException<< %
timeoutException<<& 6
)<<6 7
{<<8 9
logger== 
.== 
LogError== 
(==  
timeoutException==  0
)==0 1
;==1 2
DialogManager>> 
.>> !
ShowErrorMessageAlert>> 3
(>>3 4

Properties>>4 >
.>>> ?
	Resources>>? H
.>>H I"
dialogTimeOutException>>I _
)>>_ `
;>>` a
}?? 
catch?? 
(?? "
CommunicationException?? +"
communicationException??, B
)??B C
{??D E
logger@@ 
.@@ 
LogError@@ 
(@@  "
communicationException@@  6
)@@6 7
;@@7 8
DialogManagerAA 
.AA !
ShowErrorMessageAlertAA 3
(AA3 4

PropertiesAA4 >
.AA> ?
	ResourcesAA? H
.AAH I'
dialogComunicationExceptionAAI d
)AAd e
;AAe f
}BB 
catchBB 
(BB 
	ExceptionBB 
	exceptionBB (
)BB( )
{BB* +
loggerCC 
.CC 
LogErrorCC 
(CC  
	exceptionCC  )
)CC) *
;CC* +
DialogManagerDD 
.DD !
ShowErrorMessageAlertDD 3
(DD3 4
stringDD4 :
.DD: ;
FormatDD; A
(DDA B

PropertiesDDB L
.DDL M
	ResourcesDDM V
.DDV W!
dialogUnexpectedErrorDDW l
,DDl m
	exceptionDDn w
.DDw x
MessageDDx 
)	DD Ä
)
DDÄ Å
;
DDÅ Ç
}EE 
}FF 	
privateHH 
asyncHH 
voidHH 
InitializeMatchHH *
(HH* +
)HH+ ,
{HH- .
LoggerManagerII 
loggerII  
=II! "
newII# &
LoggerManagerII' 4
(II4 5
thisII5 9
.II9 :
GetTypeII: A
(IIA B
)IIB C
)IIC D
;IID E
tryJJ 
{JJ 
boolKK 
	connectedKK 
=KK  
_matchManagerClientKK! 4
.KK4 5"
RegisterPlayerCallbackKK5 K
(KKK L

_matchCodeKKL V
,KKV W 
UserProfileSingletonKKX l
.KKl m
UserNameKKm u
)KKu v
;KKv w
ifLL 
(LL 
!LL 
	connectedLL 
)LL 
{LL  !
DialogManagerMM !
.MM! "!
ShowErrorMessageAlertMM" 7
(MM7 8

PropertiesMM8 B
.MMB C
	ResourcesMMC L
.MML M"
dialogConnectionFailedMMM c
)MMc d
;MMd e
}NN 
elseNN 
{NN 
_isConnectedOO  
=OO! "
trueOO# '
;OO' ( 
UserProfileSingletonPP (
.PP( )
UpdateMatchCodePP) 8
(PP8 9

_matchCodePP9 C
)PPC D
;PPD E
nodesQQ 
=QQ 
awaitQQ !
TaskQQ" &
.QQ& '
RunQQ' *
(QQ* +
(QQ+ ,
)QQ, -
=>QQ. 0
_matchManagerClientQQ1 D
.QQD E
GetNodesQQE M
(QQM N

_matchCodeQQN X
)QQX Y
)QQY Z
;QQZ [

_nodePairsRR 
=RR  
awaitRR! &
TaskRR' +
.RR+ ,
RunRR, /
(RR/ 0
(RR0 1
)RR1 2
=>RR3 5
_matchManagerClientRR6 I
.RRI J
GetNodePairsRRJ V
(RRV W

_matchCodeRRW a
)RRa b
)RRb c
;RRc d
ifSS 
(SS 
nodesSS 
!=SS  
nullSS! %
&&SS& (
nodesSS) .
.SS. /
CountSS/ 4
>SS5 6
$numSS7 8
)SS8 9
{SS: ;
	DrawNodesTT !
(TT! "
)TT" #
;TT# $
awaitUU 
CheckCurrentTurnUU .
(UU. /
)UU/ 0
;UU0 1
}VV 
elseVV 
{VV 
DialogManagerWW %
.WW% &!
ShowErrorMessageAlertWW& ;
(WW; <

PropertiesWW< F
.WWF G
	ResourcesWWG P
.WWP Q
dialogNodesNotFoundWWQ d
)WWd e
;WWe f
}XX 
}YY 
}ZZ 
catchZZ 
(ZZ %
EndpointNotFoundExceptionZZ .%
endpointNotFoundExceptionZZ/ H
)ZZH I
{ZZJ K
logger[[ 
.[[ 
LogError[[ 
([[  %
endpointNotFoundException[[  9
)[[9 :
;[[: ;
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4

Properties\\4 >
.\\> ?
	Resources\\? H
.\\H I#
dialogEndPointException\\I `
)\\` a
;\\a b
}]] 
catch]] 
(]] 
TimeoutException]] %
timeoutException]]& 6
)]]6 7
{]]8 9
logger^^ 
.^^ 
LogError^^ 
(^^  
timeoutException^^  0
)^^0 1
;^^1 2
DialogManager__ 
.__ !
ShowErrorMessageAlert__ 3
(__3 4

Properties__4 >
.__> ?
	Resources__? H
.__H I"
dialogTimeOutException__I _
)___ `
;__` a
}`` 
catch`` 
(`` "
CommunicationException`` +"
communicationException``, B
)``B C
{``D E
loggeraa 
.aa 
LogErroraa 
(aa  "
communicationExceptionaa  6
)aa6 7
;aa7 8
DialogManagerbb 
.bb !
ShowErrorMessageAlertbb 3
(bb3 4

Propertiesbb4 >
.bb> ?
	Resourcesbb? H
.bbH I'
dialogComunicationExceptionbbI d
)bbd e
;bbe f
}cc 
catchcc 
(cc 
	Exceptioncc 
	exceptioncc (
)cc( )
{cc* +
loggerdd 
.dd 
LogErrordd 
(dd  
	exceptiondd  )
)dd) *
;dd* +
DialogManageree 
.ee !
ShowErrorMessageAlertee 3
(ee3 4
stringee4 :
.ee: ;
Formatee; A
(eeA B

PropertieseeB L
.eeL M
	ResourceseeM V
.eeV W!
dialogUnexpectedErroreeW l
,eel m
	exceptioneen w
.eew x
Messageeex 
)	ee Ä
)
eeÄ Å
;
eeÅ Ç
}ff 
}gg 	
privateii 
voidii 

StartTimerii 
(ii  
)ii  !
{ii" #
_remainingTimejj 
=jj 

_totalTimejj '
;jj' (
progressBarTimerkk 
.kk 
Valuekk "
=kk# $
$numkk% (
;kk( )
_timerll 
=ll 
newll 
DispatcherTimerll (
(ll( )
)ll) *
;ll* +
_timermm 
.mm 
Intervalmm 
=mm 
TimeSpanmm &
.mm& '
FromMillisecondsmm' 7
(mm7 8
$nummm8 ;
)mm; <
;mm< =
_timernn 
.nn 
Ticknn 
+=nn 

Timer_Ticknn %
;nn% &
ifoo 
(oo 
_isPlayerTurnoo 
)oo 
{oo  
_timerpp 
.pp 
Startpp 
(pp 
)pp 
;pp 
}qq 
}rr 	
privatett 
voidtt 

Timer_Ticktt 
(tt  
objecttt  &
sendertt' -
,tt- .
	EventArgstt/ 8
ett9 :
)tt: ;
{tt< =
ifuu 
(uu 
_remainingTimeuu 
>uu  
$numuu! "
)uu" #
{uu$ %
_remainingTimevv 
-=vv !
$numvv" %
;vv% &
progressBarTimerww  
.ww  !
Valueww! &
=ww' (
(ww) *
_remainingTimeww* 8
/ww9 :

_totalTimeww; E
)wwE F
*wwG H
$numwwI L
;wwL M
ifxx 
(xx 
_remainingTimexx "
>xx# $

_totalTimexx% /
*xx0 1
$numxx2 5
)xx5 6
{xx7 8
progressBarTimeryy $
.yy$ %

Foregroundyy% /
=yy0 1
Brushesyy2 9
.yy9 :
Greenyy: ?
;yy? @
}zz 
elsezz 
ifzz 
(zz 
_remainingTimezz )
>zz* +

_totalTimezz, 6
*zz7 8
$numzz9 <
)zz< =
{zz> ?
progressBarTimer{{ $
.{{$ %

Foreground{{% /
={{0 1
Brushes{{2 9
.{{9 :
Orange{{: @
;{{@ A
}|| 
else|| 
{|| 
progressBarTimer}} $
.}}$ %

Foreground}}% /
=}}0 1
Brushes}}2 9
.}}9 :
Red}}: =
;}}= >
}~~ 
} 
else 
{ 
_timer
ÄÄ 
.
ÄÄ 
Stop
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
drawingCanvas
ÅÅ 
.
ÅÅ 
Children
ÅÅ &
.
ÅÅ& '
Remove
ÅÅ' -
(
ÅÅ- .
_currentLine
ÅÅ. :
)
ÅÅ: ;
;
ÅÅ; <!
_matchManagerClient
ÇÇ #
.
ÇÇ# $
EndTurnAsync
ÇÇ$ 0
(
ÇÇ0 1

_matchCode
ÇÇ1 ;
,
ÇÇ; <"
UserProfileSingleton
ÇÇ= Q
.
ÇÇQ R
UserName
ÇÇR Z
)
ÇÇZ [
;
ÇÇ[ \
progressBarTimer
ÉÉ  
.
ÉÉ  !

Foreground
ÉÉ! +
=
ÉÉ, -
Brushes
ÉÉ. 5
.
ÉÉ5 6
Gray
ÉÉ6 :
;
ÉÉ: ;
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá 
Canvas_MouseDown
áá %
(
áá% &
object
áá& ,
sender
áá- 3
,
áá3 4"
MouseButtonEventArgs
áá5 I
e
ááJ K
)
ááK L
{
ááM N
Point
àà 
mousePosition
àà 
=
àà  !
e
àà" #
.
àà# $
GetPosition
àà$ /
(
àà/ 0
drawingCanvas
àà0 =
)
àà= >
;
àà> ?

_startNode
ââ 
=
ââ 
FindNodeNearPoint
ââ *
(
ââ* +
mousePosition
ââ+ 8
)
ââ8 9
;
ââ9 :
if
ää 
(
ää 

_startNode
ää 
==
ää 
null
ää "
)
ää" #
{
ää$ %
DialogManager
ãã 
.
ãã #
ShowErrorMessageAlert
ãã 3
(
ãã3 4

Properties
ãã4 >
.
ãã> ?
	Resources
ãã? H
.
ããH I$
dialogInvalidStartNode
ããI _
)
ãã_ `
;
ãã` a
return
åå 
;
åå 
}
çç 

_isDrawing
éé 
=
éé 
true
éé 
;
éé !
_currentTracePoints
èè 
.
èè  
Clear
èè  %
(
èè% &
)
èè& '
;
èè' (!
_currentTracePoints
êê 
.
êê  
Add
êê  #
(
êê# $
new
êê$ '"
TripasDeGatoServicio
êê( <
.
êê< =

TracePoint
êê= G
{
êêH I
X
êêJ K
=
êêL M
mousePosition
êêN [
.
êê[ \
X
êê\ ]
,
êê] ^
Y
êê_ `
=
êêa b
mousePosition
êêc p
.
êêp q
Y
êêq r
}
êês t
)
êêt u
;
êêu v
_currentLine
ëë 
=
ëë 
new
ëë 
Polyline
ëë '
{
ëë( )
Stroke
íí 
=
íí 
Brushes
íí  
.
íí  !
Blue
íí! %
,
íí% &
StrokeThickness
ìì 
=
ìì  !
$num
ìì" #
}
îî 
;
îî 
drawingCanvas
ïï 
.
ïï 
Children
ïï "
.
ïï" #
Add
ïï# &
(
ïï& '
_currentLine
ïï' 3
)
ïï3 4
;
ïï4 5
_currentLine
ññ 
.
ññ 
Points
ññ 
.
ññ  
Add
ññ  #
(
ññ# $
mousePosition
ññ$ 1
)
ññ1 2
;
ññ2 3
}
óó 	
public
ôô 
void
ôô 
NotifyYourTurn
ôô "
(
ôô" #
)
ôô# $
{
ôô% &
if
öö 
(
öö 
_timer
öö 
!=
öö 
null
öö 
)
öö 
{
öö  !
_timer
õõ 
.
õõ 
Stop
õõ 
(
õõ 
)
õõ 
;
õõ 
_timer
úú 
.
úú 
Tick
úú 
-=
úú 

Timer_Tick
úú )
;
úú) *
}
ùù 
_remainingTime
ûû 
=
ûû 

_totalTime
ûû '
;
ûû' (
progressBarTimer
üü 
.
üü 
Value
üü "
=
üü# $
$num
üü% (
;
üü( )
progressBarTimer
†† 
.
†† 

Foreground
†† '
=
††( )
Brushes
††* 1
.
††1 2
Green
††2 7
;
††7 8
drawingCanvas
°° 
.
°° 
	IsEnabled
°° #
=
°°$ %
true
°°& *
;
°°* +
_isPlayerTurn
¢¢ 
=
¢¢ 
true
¢¢  
;
¢¢  !
lbMatchStatus
££ 
.
££ 
Content
££ !
=
££" #

Properties
££$ .
.
££. /
	Resources
££/ 8
.
££8 9#
lbMatchStatusYourTurn
££9 N
;
££N O
lbMatchStatus
§§ 
.
§§ 

Foreground
§§ $
=
§§% &
Brushes
§§' .
.
§§. /
Green
§§/ 4
;
§§4 5

StartTimer
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
public
®® 
void
®® 
NotifyNotYourTurn
®® %
(
®®% &
)
®®& '
{
®®( )
Application
©© 
.
©© 
Current
©© 
.
©©  

Dispatcher
©©  *
.
©©* +
Invoke
©©+ 1
(
©©1 2
(
©©2 3
)
©©3 4
=>
©©5 7
{
©©8 9
if
™™ 
(
™™ 
_timer
™™ 
!=
™™ 
null
™™ "
)
™™" #
{
™™$ %
_timer
´´ 
.
´´ 
Stop
´´ 
(
´´  
)
´´  !
;
´´! "
_timer
¨¨ 
.
¨¨ 
Tick
¨¨ 
-=
¨¨  "

Timer_Tick
¨¨# -
;
¨¨- .
}
≠≠ 
drawingCanvas
ÆÆ 
.
ÆÆ 
	IsEnabled
ÆÆ '
=
ÆÆ( )
false
ÆÆ* /
;
ÆÆ/ 0
_isPlayerTurn
ØØ 
=
ØØ 
false
ØØ  %
;
ØØ% &
lbMatchStatus
∞∞ 
.
∞∞ 
Content
∞∞ %
=
∞∞& '

Properties
∞∞( 2
.
∞∞2 3
	Resources
∞∞3 <
.
∞∞< =&
lbMatchStatusNotYourTurn
∞∞= U
;
∞∞U V
lbMatchStatus
±± 
.
±± 

Foreground
±± (
=
±±) *
Brushes
±±+ 2
.
±±2 3
Red
±±3 6
;
±±6 7
}
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ 
Canvas_MouseMove
µµ %
(
µµ% &
object
µµ& ,
sender
µµ- 3
,
µµ3 4
MouseEventArgs
µµ5 C
e
µµD E
)
µµE F
{
µµG H
LoggerManager
∂∂ 
logger
∂∂  
=
∂∂! "
new
∂∂# &
LoggerManager
∂∂' 4
(
∂∂4 5
this
∂∂5 9
.
∂∂9 :
GetType
∂∂: A
(
∂∂A B
)
∂∂B C
)
∂∂C D
;
∂∂D E
if
∑∑ 
(
∑∑ 
!
∑∑ 

_isDrawing
∑∑ 
)
∑∑ 
return
∑∑ #
;
∑∑# $
Point
∏∏ 
mousePosition
∏∏ 
=
∏∏  !
e
∏∏" #
.
∏∏# $
GetPosition
∏∏$ /
(
∏∏/ 0
drawingCanvas
∏∏0 =
)
∏∏= >
;
∏∏> ?
var
ππ 
newPoint
ππ 
=
ππ 
new
ππ "
TripasDeGatoServicio
ππ 3
.
ππ3 4

TracePoint
ππ4 >
{
ππ? @
X
ππA B
=
ππC D
mousePosition
ππE R
.
ππR S
X
ππS T
,
ππT U
Y
ππV W
=
ππX Y
mousePosition
ππZ g
.
ππg h
Y
ππh i
}
ππj k
;
ππk l
if
∫∫ 
(
∫∫ !
IsCollisionDetected
∫∫ #
(
∫∫# $
newPoint
∫∫$ ,
)
∫∫, -
)
∫∫- .
{
∫∫/ 0
HandleInfraction
ªª  
(
ªª  !

Properties
ªª! +
.
ªª+ ,
	Resources
ªª, 5
.
ªª5 6'
dialogInfractionCollision
ªª6 O
)
ªªO P
;
ªªP Q
try
ºº 
{
ºº !
_matchManagerClient
ΩΩ '
.
ΩΩ' (
EndMatchAsync
ΩΩ( 5
(
ΩΩ5 6

_matchCode
ΩΩ6 @
)
ΩΩ@ A
;
ΩΩA B
}
ææ 
catch
ææ 
(
ææ '
EndpointNotFoundException
ææ 2'
endpointNotFoundException
ææ3 L
)
ææL M
{
ææN O
logger
øø 
.
øø 
LogError
øø #
(
øø# $'
endpointNotFoundException
øø$ =
)
øø= >
;
øø> ?
DialogManager
¿¿ !
.
¿¿! "#
ShowErrorMessageAlert
¿¿" 7
(
¿¿7 8

Properties
¿¿8 B
.
¿¿B C
	Resources
¿¿C L
.
¿¿L M%
dialogEndPointException
¿¿M d
)
¿¿d e
;
¿¿e f
}
¡¡ 
catch
¡¡ 
(
¡¡ 
TimeoutException
¡¡ )
timeoutException
¡¡* :
)
¡¡: ;
{
¡¡< =
logger
¬¬ 
.
¬¬ 
LogError
¬¬ #
(
¬¬# $
timeoutException
¬¬$ 4
)
¬¬4 5
;
¬¬5 6
DialogManager
√√ !
.
√√! "#
ShowErrorMessageAlert
√√" 7
(
√√7 8

Properties
√√8 B
.
√√B C
	Resources
√√C L
.
√√L M$
dialogTimeOutException
√√M c
)
√√c d
;
√√d e
}
ƒƒ 
catch
ƒƒ 
(
ƒƒ $
CommunicationException
ƒƒ /$
communicationException
ƒƒ0 F
)
ƒƒF G
{
ƒƒH I
logger
≈≈ 
.
≈≈ 
LogError
≈≈ #
(
≈≈# $$
communicationException
≈≈$ :
)
≈≈: ;
;
≈≈; <
DialogManager
∆∆ !
.
∆∆! "#
ShowErrorMessageAlert
∆∆" 7
(
∆∆7 8

Properties
∆∆8 B
.
∆∆B C
	Resources
∆∆C L
.
∆∆L M)
dialogComunicationException
∆∆M h
)
∆∆h i
;
∆∆i j
}
«« 
catch
«« 
(
«« 
	Exception
«« "
	exception
««# ,
)
««, -
{
««. /
logger
»» 
.
»» 
LogError
»» #
(
»»# $
	exception
»»$ -
)
»»- .
;
»». /
DialogManager
…… !
.
……! "#
ShowErrorMessageAlert
……" 7
(
……7 8
string
……8 >
.
……> ?
Format
……? E
(
……E F

Properties
……F P
.
……P Q
	Resources
……Q Z
.
……Z [#
dialogUnexpectedError
……[ p
,
……p q
	exception
……r {
.
……{ |
Message……| É
)……É Ñ
)……Ñ Ö
;……Ö Ü
}
   
return
ÀÀ 
;
ÀÀ 
}
ÃÃ 
Node
ÕÕ 
currentNode
ÕÕ 
=
ÕÕ 
FindNodeNearPoint
ÕÕ 0
(
ÕÕ0 1
mousePosition
ÕÕ1 >
)
ÕÕ> ?
;
ÕÕ? @
if
ŒŒ 
(
ŒŒ 
currentNode
ŒŒ 
!=
ŒŒ 
null
ŒŒ #
&&
ŒŒ$ &
currentNode
ŒŒ' 2
!=
ŒŒ3 5

_startNode
ŒŒ6 @
)
ŒŒ@ A
{
ŒŒB C
if
œœ 
(
œœ 
!
œœ 
IsPair
œœ 
(
œœ 

_startNode
œœ &
,
œœ& '
currentNode
œœ( 3
)
œœ3 4
)
œœ4 5
{
œœ6 7
HandleInfraction
–– $
(
––$ %

Properties
––% /
.
––/ 0
	Resources
––0 9
.
––9 :)
dialogInfractionInvalidNode
––: U
)
––U V
;
––V W
return
—— 
;
—— 
}
““ 
}
”” !
_currentTracePoints
‘‘ 
.
‘‘  
Add
‘‘  #
(
‘‘# $
newPoint
‘‘$ ,
)
‘‘, -
;
‘‘- .
_currentLine
’’ 
.
’’ 
Points
’’ 
.
’’  
Add
’’  #
(
’’# $
mousePosition
’’$ 1
)
’’1 2
;
’’2 3
}
÷÷ 	
private
ÿÿ 
bool
ÿÿ  
IsPointNearSegment
ÿÿ '
(
ÿÿ' ("
TripasDeGatoServicio
ÿÿ( <
.
ÿÿ< =

TracePoint
ÿÿ= G
point
ÿÿH M
,
ÿÿM N
Point
ÿÿO T
start
ÿÿU Z
,
ÿÿZ [
Point
ÿÿ\ a
end
ÿÿb e
)
ÿÿe f
{
ÿÿg h
double
ŸŸ 
distance
ŸŸ 
=
ŸŸ (
DistanceFromPointToSegment
ŸŸ 8
(
ŸŸ8 9
point
ŸŸ9 >
,
ŸŸ> ?
start
ŸŸ@ E
,
ŸŸE F
end
ŸŸG J
)
ŸŸJ K
;
ŸŸK L
return
⁄⁄ 
distance
⁄⁄ 
<
⁄⁄ 
$num
⁄⁄ 
;
⁄⁄  
}
€€ 	
private
›› 
bool
›› !
IsCollisionDetected
›› (
(
››( )"
TripasDeGatoServicio
››) =
.
››= >

TracePoint
››> H
newPoint
››I Q
)
››Q R
{
››S T
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
polyline
ﬁﬁ !
in
ﬁﬁ" $

_allTraces
ﬁﬁ% /
)
ﬁﬁ/ 0
{
ﬁﬁ1 2
for
ﬂﬂ 
(
ﬂﬂ 
int
ﬂﬂ 
i
ﬂﬂ 
=
ﬂﬂ 
$num
ﬂﬂ 
;
ﬂﬂ 
i
ﬂﬂ  !
<
ﬂﬂ" #
polyline
ﬂﬂ$ ,
.
ﬂﬂ, -
Points
ﬂﬂ- 3
.
ﬂﬂ3 4
Count
ﬂﬂ4 9
;
ﬂﬂ9 :
i
ﬂﬂ; <
++
ﬂﬂ< >
)
ﬂﬂ> ?
{
ﬂﬂ@ A
Point
‡‡ 
start
‡‡ 
=
‡‡  !
polyline
‡‡" *
.
‡‡* +
Points
‡‡+ 1
[
‡‡1 2
i
‡‡2 3
-
‡‡4 5
$num
‡‡6 7
]
‡‡7 8
;
‡‡8 9
Point
·· 
end
·· 
=
·· 
polyline
··  (
.
··( )
Points
··) /
[
··/ 0
i
··0 1
]
··1 2
;
··2 3
if
‚‚ 
(
‚‚  
IsPointNearSegment
‚‚ *
(
‚‚* +
newPoint
‚‚+ 3
,
‚‚3 4
start
‚‚5 :
,
‚‚: ;
end
‚‚< ?
)
‚‚? @
)
‚‚@ A
{
‚‚B C
return
„„ 
true
„„ #
;
„„# $
}
‰‰ 
}
ÂÂ 
}
ÊÊ 
return
ÁÁ 
false
ÁÁ 
;
ÁÁ 
}
ËË 	
private
ÍÍ 
double
ÍÍ (
DistanceFromPointToSegment
ÍÍ 1
(
ÍÍ1 2"
TripasDeGatoServicio
ÍÍ2 F
.
ÍÍF G

TracePoint
ÍÍG Q
point
ÍÍR W
,
ÍÍW X
Point
ÍÍY ^
start
ÍÍ_ d
,
ÍÍd e
Point
ÍÍf k
end
ÍÍl o
)
ÍÍo p
{
ÍÍq r
double
ÎÎ 
px
ÎÎ 
=
ÎÎ 
point
ÎÎ 
.
ÎÎ 
X
ÎÎ 
;
ÎÎ  
double
ÏÏ 
py
ÏÏ 
=
ÏÏ 
point
ÏÏ 
.
ÏÏ 
Y
ÏÏ 
;
ÏÏ  
double
ÌÌ 
sx
ÌÌ 
=
ÌÌ 
start
ÌÌ 
.
ÌÌ 
X
ÌÌ 
;
ÌÌ  
double
ÓÓ 
sy
ÓÓ 
=
ÓÓ 
start
ÓÓ 
.
ÓÓ 
Y
ÓÓ 
;
ÓÓ  
double
ÔÔ 
ex
ÔÔ 
=
ÔÔ 
end
ÔÔ 
.
ÔÔ 
X
ÔÔ 
;
ÔÔ 
double
 
ey
 
=
 
end
 
.
 
Y
 
;
 
double
ÒÒ 
dx
ÒÒ 
=
ÒÒ 
ex
ÒÒ 
-
ÒÒ 
sx
ÒÒ 
;
ÒÒ  
double
ÚÚ 
dy
ÚÚ 
=
ÚÚ 
ey
ÚÚ 
-
ÚÚ 
sy
ÚÚ 
;
ÚÚ  
double
ÛÛ 
lengthSquared
ÛÛ  
=
ÛÛ! "
dx
ÛÛ# %
*
ÛÛ& '
dx
ÛÛ( *
+
ÛÛ+ ,
dy
ÛÛ- /
*
ÛÛ0 1
dy
ÛÛ2 4
;
ÛÛ4 5
if
ÙÙ 
(
ÙÙ 
lengthSquared
ÙÙ 
==
ÙÙ  
$num
ÙÙ! "
)
ÙÙ" #
return
ÙÙ$ *
Math
ÙÙ+ /
.
ÙÙ/ 0
Sqrt
ÙÙ0 4
(
ÙÙ4 5
(
ÙÙ5 6
px
ÙÙ6 8
-
ÙÙ9 :
sx
ÙÙ; =
)
ÙÙ= >
*
ÙÙ? @
(
ÙÙA B
px
ÙÙB D
-
ÙÙE F
sx
ÙÙG I
)
ÙÙI J
+
ÙÙK L
(
ÙÙM N
py
ÙÙN P
-
ÙÙQ R
sy
ÙÙS U
)
ÙÙU V
*
ÙÙW X
(
ÙÙY Z
py
ÙÙZ \
-
ÙÙ] ^
sy
ÙÙ_ a
)
ÙÙa b
)
ÙÙb c
;
ÙÙc d
double
ıı 
t
ıı 
=
ıı 
(
ıı 
(
ıı 
px
ıı 
-
ıı 
sx
ıı  
)
ıı  !
*
ıı" #
dx
ıı$ &
+
ıı' (
(
ıı) *
py
ıı* ,
-
ıı- .
sy
ıı/ 1
)
ıı1 2
*
ıı3 4
dy
ıı5 7
)
ıı7 8
/
ıı9 :
lengthSquared
ıı; H
;
ııH I
t
ˆˆ 
=
ˆˆ 
Math
ˆˆ 
.
ˆˆ 
Max
ˆˆ 
(
ˆˆ 
$num
ˆˆ 
,
ˆˆ 
Math
ˆˆ  
.
ˆˆ  !
Min
ˆˆ! $
(
ˆˆ$ %
$num
ˆˆ% &
,
ˆˆ& '
t
ˆˆ( )
)
ˆˆ) *
)
ˆˆ* +
;
ˆˆ+ ,
double
˜˜ 
projX
˜˜ 
=
˜˜ 
sx
˜˜ 
+
˜˜ 
t
˜˜  !
*
˜˜" #
dx
˜˜$ &
;
˜˜& '
double
¯¯ 
projY
¯¯ 
=
¯¯ 
sy
¯¯ 
+
¯¯ 
t
¯¯  !
*
¯¯" #
dy
¯¯$ &
;
¯¯& '
return
˘˘ 
Math
˘˘ 
.
˘˘ 
Sqrt
˘˘ 
(
˘˘ 
(
˘˘ 
px
˘˘  
-
˘˘! "
projX
˘˘# (
)
˘˘( )
*
˘˘* +
(
˘˘, -
px
˘˘- /
-
˘˘0 1
projX
˘˘2 7
)
˘˘7 8
+
˘˘9 :
(
˘˘; <
py
˘˘< >
-
˘˘? @
projY
˘˘A F
)
˘˘F G
*
˘˘H I
(
˘˘J K
py
˘˘K M
-
˘˘N O
projY
˘˘P U
)
˘˘U V
)
˘˘V W
;
˘˘W X
}
˙˙ 	
private
¸¸ 
void
¸¸ 
Canvas_MouseUp
¸¸ #
(
¸¸# $
object
¸¸$ *
sender
¸¸+ 1
,
¸¸1 2"
MouseButtonEventArgs
¸¸3 G
e
¸¸H I
)
¸¸I J
{
¸¸K L
if
˝˝ 
(
˝˝ 
!
˝˝ 

_isDrawing
˝˝ 
)
˝˝ 
return
˝˝ #
;
˝˝# $

_isDrawing
˛˛ 
=
˛˛ 
false
˛˛ 
;
˛˛ 
Point
ˇˇ 
mousePosition
ˇˇ 
=
ˇˇ  !
e
ˇˇ" #
.
ˇˇ# $
GetPosition
ˇˇ$ /
(
ˇˇ/ 0
drawingCanvas
ˇˇ0 =
)
ˇˇ= >
;
ˇˇ> ?
Node
ÄÄ 
endNode
ÄÄ 
=
ÄÄ 
FindNodeNearPoint
ÄÄ ,
(
ÄÄ, -
mousePosition
ÄÄ- :
)
ÄÄ: ;
;
ÄÄ; <
if
ÅÅ 
(
ÅÅ 
endNode
ÅÅ 
==
ÅÅ 
null
ÅÅ 
||
ÅÅ  "
!
ÅÅ# $
IsPair
ÅÅ$ *
(
ÅÅ* +

_startNode
ÅÅ+ 5
,
ÅÅ5 6
endNode
ÅÅ7 >
)
ÅÅ> ?
)
ÅÅ? @
{
ÅÅA B
drawingCanvas
ÇÇ 
.
ÇÇ 
Children
ÇÇ &
.
ÇÇ& '
Remove
ÇÇ' -
(
ÇÇ- .
_currentLine
ÇÇ. :
)
ÇÇ: ;
;
ÇÇ; <
DialogManager
ÉÉ 
.
ÉÉ #
ShowErrorMessageAlert
ÉÉ 3
(
ÉÉ3 4

Properties
ÉÉ4 >
.
ÉÉ> ?
	Resources
ÉÉ? H
.
ÉÉH I)
dialogTraceMustConnectNodes
ÉÉI d
)
ÉÉd e
;
ÉÉe f
return
ÑÑ 
;
ÑÑ 
}
ÖÖ 
if
ÜÜ 
(
ÜÜ !
_currentTracePoints
ÜÜ #
.
ÜÜ# $
Count
ÜÜ$ )
>
ÜÜ* +
$num
ÜÜ, -
)
ÜÜ- .
{
ÜÜ/ 0

_allTraces
áá 
.
áá 
Add
áá 
(
áá 
_currentLine
áá +
)
áá+ ,
;
áá, -
	SendTrace
àà 
(
àà !
_currentTracePoints
àà -
)
àà- .
;
àà. /
Task
ââ 
.
ââ 
Run
ââ 
(
ââ 
(
ââ 
)
ââ 
=>
ââ !
_matchManagerClient
ââ 2
.
ââ2 3
EndTurnAsync
ââ3 ?
(
ââ? @

_matchCode
ââ@ J
,
ââJ K"
UserProfileSingleton
ââL `
.
ââ` a
UserName
ââa i
)
ââi j
)
ââj k
;
ââk l
if
ää 
(
ää "
AreAllNodesConnected
ää (
(
ää( )
)
ää) *
)
ää* +
{
ää, -!
_matchManagerClient
ãã '
.
ãã' (
EndMatchAsync
ãã( 5
(
ãã5 6

_matchCode
ãã6 @
)
ãã@ A
;
ããA B
}
åå 
}
çç 
else
çç 
{
çç 
drawingCanvas
éé 
.
éé 
Children
éé &
.
éé& '
Remove
éé' -
(
éé- .
_currentLine
éé. :
)
éé: ;
;
éé; <
}
èè 
}
êê 	
private
íí 
bool
íí "
AreAllNodesConnected
íí )
(
íí) *
)
íí* +
{
íí, -
foreach
ìì 
(
ìì 
var
ìì 
pair
ìì 
in
ìì  

_nodePairs
ìì! +
)
ìì+ ,
{
ìì- .
bool
îî 
isConnected
îî  
=
îî! "

_allTraces
îî# -
.
îî- .
Any
îî. 1
(
îî1 2
trace
îî2 7
=>
îî8 :
trace
ïï 
.
ïï 
Points
ïï  
.
ïï  !
Any
ïï! $
(
ïï$ %
point
ïï% *
=>
ïï+ -
FindNodeNearPoint
ïï. ?
(
ïï? @
point
ïï@ E
)
ïïE F
is
ïïG I
Node
ïïJ N
start
ïïO T
&&
ïïU W
start
ïïX ]
.
ïï] ^
Id
ïï^ `
==
ïïa c
pair
ïïd h
.
ïïh i
Key
ïïi l
)
ïïl m
&&
ïïn p
trace
ññ 
.
ññ 
Points
ññ  
.
ññ  !
Any
ññ! $
(
ññ$ %
point
ññ% *
=>
ññ+ -
FindNodeNearPoint
ññ. ?
(
ññ? @
point
ññ@ E
)
ññE F
is
ññG I
Node
ññJ N
end
ññO R
&&
ññS U
end
ññV Y
.
ññY Z
Id
ññZ \
==
ññ] _
pair
ññ` d
.
ññd e
Value
ññe j
)
ññj k
)
óó 
;
óó 
if
òò 
(
òò 
!
òò 
isConnected
òò  
)
òò  !
{
òò" #
return
ôô 
false
ôô  
;
ôô  !
}
öö 
}
õõ 
return
úú 
true
úú 
;
úú 
}
ùù 	
private
üü 
bool
üü 
IsPair
üü 
(
üü 
Node
üü  
start
üü! &
,
üü& '
Node
üü( ,
end
üü- 0
)
üü0 1
{
üü2 3
return
†† 

_nodePairs
†† 
.
†† 
ContainsKey
†† )
(
††) *
start
††* /
.
††/ 0
Id
††0 2
)
††2 3
&&
††4 6

_nodePairs
††7 A
[
††A B
start
††B G
.
††G H
Id
††H J
]
††J K
==
††L N
end
††O R
.
††R S
Id
††S U
;
††U V
}
°° 	
private
££ 
Node
££ 
FindNodeNearPoint
££ &
(
££& '
Point
££' ,
point
££- 2
)
££2 3
{
££4 5
const
§§ 
double
§§ 
detectionRadius
§§ (
=
§§) *
$num
§§+ -
;
§§- .
return
•• 
nodes
•• 
.
•• 
FirstOrDefault
•• '
(
••' (
node
••( ,
=>
••- /
Math
¶¶ 
.
¶¶ 
Sqrt
¶¶ 
(
¶¶ 
Math
¶¶ 
.
¶¶ 
Pow
¶¶ "
(
¶¶" #
node
¶¶# '
.
¶¶' (
X
¶¶( )
-
¶¶* +
point
¶¶, 1
.
¶¶1 2
X
¶¶2 3
,
¶¶3 4
$num
¶¶5 6
)
¶¶6 7
+
¶¶8 9
Math
¶¶: >
.
¶¶> ?
Pow
¶¶? B
(
¶¶B C
node
¶¶C G
.
¶¶G H
Y
¶¶H I
-
¶¶J K
point
¶¶L Q
.
¶¶Q R
Y
¶¶R S
,
¶¶S T
$num
¶¶U V
)
¶¶V W
)
¶¶W X
<=
¶¶Y [
detectionRadius
¶¶\ k
)
¶¶k l
;
¶¶l m
}
ßß 	
private
©© 
void
©© 
	SendTrace
©© 
(
©© 
List
©© #
<
©©# $

TracePoint
©©$ .
>
©©. /
points
©©0 6
)
©©6 7
{
©©8 9
LoggerManager
™™ 
logger
™™  
=
™™! "
new
™™# &
LoggerManager
™™' 4
(
™™4 5
this
™™5 9
.
™™9 :
GetType
™™: A
(
™™A B
)
™™B C
)
™™C D
;
™™D E
if
´´ 
(
´´ 
!
´´ 
_isConnected
´´ 
)
´´ 
return
´´ %
;
´´% &
var
¨¨ 
trace
¨¨ 
=
¨¨ 
new
¨¨ "
TripasDeGatoServicio
¨¨ 0
.
¨¨0 1
Trace
¨¨1 6
{
¨¨7 8
Player
≠≠ 
=
≠≠ "
UserProfileSingleton
≠≠ -
.
≠≠- .
UserName
≠≠. 6
,
≠≠6 7
TracePoints
ÆÆ 
=
ÆÆ 
points
ÆÆ $
,
ÆÆ$ %
	Timestamp
ØØ 
=
ØØ 
DateTime
ØØ $
.
ØØ$ %
Now
ØØ% (
,
ØØ( )
Color
∞∞ 
=
∞∞ 
$str
∞∞ 
}
±± 
;
±± 
try
≤≤ 
{
≤≤ !
_matchManagerClient
≥≥ #
.
≥≥# $
RegisterTrace
≥≥$ 1
(
≥≥1 2

_matchCode
≥≥2 <
,
≥≥< =
trace
≥≥> C
)
≥≥C D
;
≥≥D E
}
¥¥ 
catch
¥¥ 
(
¥¥ '
EndpointNotFoundException
¥¥ .'
endpointNotFoundException
¥¥/ H
)
¥¥H I
{
¥¥J K
logger
µµ 
.
µµ 
LogError
µµ 
(
µµ  '
endpointNotFoundException
µµ  9
)
µµ9 :
;
µµ: ;
DialogManager
∂∂ 
.
∂∂ #
ShowErrorMessageAlert
∂∂ 3
(
∂∂3 4

Properties
∂∂4 >
.
∂∂> ?
	Resources
∂∂? H
.
∂∂H I%
dialogEndPointException
∂∂I `
)
∂∂` a
;
∂∂a b
}
∑∑ 
catch
∑∑ 
(
∑∑ 
TimeoutException
∑∑ %
timeoutException
∑∑& 6
)
∑∑6 7
{
∑∑8 9
logger
∏∏ 
.
∏∏ 
LogError
∏∏ 
(
∏∏  
timeoutException
∏∏  0
)
∏∏0 1
;
∏∏1 2
DialogManager
ππ 
.
ππ #
ShowErrorMessageAlert
ππ 3
(
ππ3 4

Properties
ππ4 >
.
ππ> ?
	Resources
ππ? H
.
ππH I$
dialogTimeOutException
ππI _
)
ππ_ `
;
ππ` a
}
∫∫ 
catch
∫∫ 
(
∫∫ $
CommunicationException
∫∫ +$
communicationException
∫∫, B
)
∫∫B C
{
∫∫D E
logger
ªª 
.
ªª 
LogError
ªª 
(
ªª  $
communicationException
ªª  6
)
ªª6 7
;
ªª7 8
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4

Properties
ºº4 >
.
ºº> ?
	Resources
ºº? H
.
ººH I)
dialogComunicationException
ººI d
)
ººd e
;
ººe f
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
	Exception
ΩΩ 
	exception
ΩΩ (
)
ΩΩ( )
{
ΩΩ* +
logger
ææ 
.
ææ 
LogError
ææ 
(
ææ  
	exception
ææ  )
)
ææ) *
;
ææ* +
DialogManager
øø 
.
øø #
ShowErrorMessageAlert
øø 3
(
øø3 4
string
øø4 :
.
øø: ;
Format
øø; A
(
øøA B

Properties
øøB L
.
øøL M
	Resources
øøM V
.
øøV W#
dialogUnexpectedError
øøW l
,
øøl m
	exception
øøn w
.
øøw x
Message
øøx 
)øø Ä
)øøÄ Å
;øøÅ Ç
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
HandleInfraction
√√ %
(
√√% &
string
√√& ,
message
√√- 4
)
√√4 5
{
√√6 7

_isDrawing
ƒƒ 
=
ƒƒ 
false
ƒƒ 
;
ƒƒ 
drawingCanvas
≈≈ 
.
≈≈ 
Children
≈≈ "
.
≈≈" #
Remove
≈≈# )
(
≈≈) *
_currentLine
≈≈* 6
)
≈≈6 7
;
≈≈7 8
DialogManager
∆∆ 
.
∆∆ #
ShowErrorMessageAlert
∆∆ /
(
∆∆/ 0
message
∆∆0 7
)
∆∆7 8
;
∆∆8 9
}
«« 	
public
…… 
void
…… 
TraceReceived
…… !
(
……! "
Trace
……" '
trace
……( -
)
……- .
{
……/ 0
var
   
receivedLine
   
=
   
new
   "
Polyline
  # +
{
  , -
Stroke
ÀÀ 
=
ÀÀ 
Brushes
ÀÀ  
.
ÀÀ  !
Red
ÀÀ! $
,
ÀÀ$ %
StrokeThickness
ÃÃ 
=
ÃÃ  !
$num
ÃÃ" #
}
ÕÕ 
;
ÕÕ 
foreach
ŒŒ 
(
ŒŒ 
var
ŒŒ 
point
ŒŒ 
in
ŒŒ !
trace
ŒŒ" '
.
ŒŒ' (
TracePoints
ŒŒ( 3
)
ŒŒ3 4
{
ŒŒ5 6
receivedLine
œœ 
.
œœ 
Points
œœ #
.
œœ# $
Add
œœ$ '
(
œœ' (
new
œœ( +
Point
œœ, 1
(
œœ1 2
point
œœ2 7
.
œœ7 8
X
œœ8 9
,
œœ9 :
point
œœ; @
.
œœ@ A
Y
œœA B
)
œœB C
)
œœC D
;
œœD E
}
–– 
Application
—— 
.
—— 
Current
—— 
.
——  

Dispatcher
——  *
.
——* +
Invoke
——+ 1
(
——1 2
(
——2 3
)
——3 4
=>
——5 7
{
——8 9
drawingCanvas
““ 
.
““ 
Children
““ &
.
““& '
Add
““' *
(
““* +
receivedLine
““+ 7
)
““7 8
;
““8 9
}
”” 
)
”” 
;
”” 

_allTraces
‘‘ 
.
‘‘ 
Add
‘‘ 
(
‘‘ 
receivedLine
‘‘ '
)
‘‘' (
;
‘‘( )
}
’’ 	
private
◊◊ 
void
◊◊ 
	DrawNodes
◊◊ 
(
◊◊ 
)
◊◊  
{
◊◊! "
if
ÿÿ 
(
ÿÿ 
nodes
ÿÿ 
==
ÿÿ 
null
ÿÿ 
)
ÿÿ 
return
ÿÿ %
;
ÿÿ% &
Application
ŸŸ 
.
ŸŸ 
Current
ŸŸ 
.
ŸŸ  

Dispatcher
ŸŸ  *
.
ŸŸ* +
Invoke
ŸŸ+ 1
(
ŸŸ1 2
(
ŸŸ2 3
)
ŸŸ3 4
=>
ŸŸ5 7
drawingCanvas
ŸŸ8 E
.
ŸŸE F
Children
ŸŸF N
.
ŸŸN O
Clear
ŸŸO T
(
ŸŸT U
)
ŸŸU V
)
ŸŸV W
;
ŸŸW X
foreach
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 
node
⁄⁄ 
in
⁄⁄  
nodes
⁄⁄! &
)
⁄⁄& '
{
⁄⁄( )
var
€€ 
ellipse
€€ 
=
€€ 
new
€€ !
Ellipse
€€" )
{
€€* +
Width
‹‹ 
=
‹‹ 
$num
‹‹ 
,
‹‹ 
Height
›› 
=
›› 
$num
›› 
,
››  
Fill
ﬁﬁ 
=
ﬁﬁ 
new
ﬁﬁ 
SolidColorBrush
ﬁﬁ .
(
ﬁﬁ. /
(
ﬁﬁ/ 0
Color
ﬁﬁ0 5
)
ﬁﬁ5 6
ColorConverter
ﬁﬁ6 D
.
ﬁﬁD E
ConvertFromString
ﬁﬁE V
(
ﬁﬁV W
node
ﬁﬁW [
.
ﬁﬁ[ \
Color
ﬁﬁ\ a
)
ﬁﬁa b
)
ﬁﬁb c
,
ﬁﬁc d
Stroke
ﬂﬂ 
=
ﬂﬂ 
Brushes
ﬂﬂ $
.
ﬂﬂ$ %
Black
ﬂﬂ% *
,
ﬂﬂ* +
StrokeThickness
‡‡ #
=
‡‡$ %
$num
‡‡& '
}
·· 
;
·· 
Canvas
‚‚ 
.
‚‚ 
SetLeft
‚‚ 
(
‚‚ 
ellipse
‚‚ &
,
‚‚& '
node
‚‚( ,
.
‚‚, -
X
‚‚- .
-
‚‚/ 0
ellipse
‚‚1 8
.
‚‚8 9
Width
‚‚9 >
/
‚‚? @
$num
‚‚A B
)
‚‚B C
;
‚‚C D
Canvas
„„ 
.
„„ 
SetTop
„„ 
(
„„ 
ellipse
„„ %
,
„„% &
node
„„' +
.
„„+ ,
Y
„„, -
-
„„. /
ellipse
„„0 7
.
„„7 8
Height
„„8 >
/
„„? @
$num
„„A B
)
„„B C
;
„„C D
Application
‰‰ 
.
‰‰ 
Current
‰‰ #
.
‰‰# $

Dispatcher
‰‰$ .
.
‰‰. /
Invoke
‰‰/ 5
(
‰‰5 6
(
‰‰6 7
)
‰‰7 8
=>
‰‰9 ;
drawingCanvas
‰‰< I
.
‰‰I J
Children
‰‰J R
.
‰‰R S
Add
‰‰S V
(
‰‰V W
ellipse
‰‰W ^
)
‰‰^ _
)
‰‰_ `
;
‰‰` a
}
ÂÂ 
}
ÊÊ 	
private
ÈÈ 
async
ÈÈ 
void
ÈÈ 
BtnBack_Click
ÈÈ (
(
ÈÈ( )
object
ÈÈ) /
sender
ÈÈ0 6
,
ÈÈ6 7
RoutedEventArgs
ÈÈ8 G
e
ÈÈH I
)
ÈÈI J
{
ÈÈK L
LoggerManager
ÍÍ 
logger
ÍÍ  
=
ÍÍ! "
new
ÍÍ# &
LoggerManager
ÍÍ' 4
(
ÍÍ4 5
this
ÍÍ5 9
.
ÍÍ9 :
GetType
ÍÍ: A
(
ÍÍA B
)
ÍÍB C
)
ÍÍC D
;
ÍÍD E
try
ÎÎ 
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
_isConnected
ÏÏ  
)
ÏÏ  !
{
ÏÏ" #
await
ÌÌ !
_matchManagerClient
ÌÌ -
.
ÌÌ- .
LeaveMatchAsync
ÌÌ. =
(
ÌÌ= >

_matchCode
ÌÌ> H
,
ÌÌH I"
UserProfileSingleton
ÌÌJ ^
.
ÌÌ^ _
UserName
ÌÌ_ g
)
ÌÌg h
;
ÌÌh i
ExitUseSinglenton
ÓÓ %
(
ÓÓ% &
)
ÓÓ& '
;
ÓÓ' (
}
ÔÔ 
}
 
catch
 
(
 '
EndpointNotFoundException
 .'
endpointNotFoundException
/ H
)
H I
{
J K
logger
ÒÒ 
.
ÒÒ 
LogError
ÒÒ 
(
ÒÒ  '
endpointNotFoundException
ÒÒ  9
)
ÒÒ9 :
;
ÒÒ: ;
DialogManager
ÚÚ 
.
ÚÚ #
ShowErrorMessageAlert
ÚÚ 3
(
ÚÚ3 4

Properties
ÚÚ4 >
.
ÚÚ> ?
	Resources
ÚÚ? H
.
ÚÚH I%
dialogEndPointException
ÚÚI `
)
ÚÚ` a
;
ÚÚa b
}
ÛÛ 
catch
ÛÛ 
(
ÛÛ 
TimeoutException
ÛÛ %
timeoutException
ÛÛ& 6
)
ÛÛ6 7
{
ÛÛ8 9
logger
ÙÙ 
.
ÙÙ 
LogError
ÙÙ 
(
ÙÙ  
timeoutException
ÙÙ  0
)
ÙÙ0 1
;
ÙÙ1 2
DialogManager
ıı 
.
ıı #
ShowErrorMessageAlert
ıı 3
(
ıı3 4

Properties
ıı4 >
.
ıı> ?
	Resources
ıı? H
.
ııH I$
dialogTimeOutException
ııI _
)
ıı_ `
;
ıı` a
}
ˆˆ 
catch
ˆˆ 
(
ˆˆ $
CommunicationException
ˆˆ +$
communicationException
ˆˆ, B
)
ˆˆB C
{
ˆˆD E
logger
˜˜ 
.
˜˜ 
LogError
˜˜ 
(
˜˜  $
communicationException
˜˜  6
)
˜˜6 7
;
˜˜7 8
DialogManager
¯¯ 
.
¯¯ #
ShowErrorMessageAlert
¯¯ 3
(
¯¯3 4

Properties
¯¯4 >
.
¯¯> ?
	Resources
¯¯? H
.
¯¯H I)
dialogComunicationException
¯¯I d
)
¯¯d e
;
¯¯e f
}
˘˘ 
catch
˘˘ 
(
˘˘ 
	Exception
˘˘ 
	exception
˘˘ (
)
˘˘( )
{
˘˘* +
logger
˙˙ 
.
˙˙ 
LogError
˙˙ 
(
˙˙  
	exception
˙˙  )
)
˙˙) *
;
˙˙* +
DialogManager
˚˚ 
.
˚˚ #
ShowErrorMessageAlert
˚˚ 3
(
˚˚3 4
string
˚˚4 :
.
˚˚: ;
Format
˚˚; A
(
˚˚A B

Properties
˚˚B L
.
˚˚L M
	Resources
˚˚M V
.
˚˚V W#
dialogUnexpectedError
˚˚W l
,
˚˚l m
	exception
˚˚n w
.
˚˚w x
Message
˚˚x 
)˚˚ Ä
)˚˚Ä Å
;˚˚Å Ç
}
¸¸ 
ExitUseSinglenton
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝  
}
˛˛ 	
private
ÄÄ 
void
ÄÄ 
ExitUseSinglenton
ÄÄ &
(
ÄÄ& '
)
ÄÄ' (
{
ÄÄ) *"
UserProfileSingleton
ÅÅ  
.
ÅÅ  !
ResetMatchCode
ÅÅ! /
(
ÅÅ/ 0
)
ÅÅ0 1
;
ÅÅ1 2
if
ÇÇ 
(
ÇÇ "
UserProfileSingleton
ÇÇ $
.
ÇÇ$ %
	IdProfile
ÇÇ% .
<
ÇÇ/ 0
$num
ÇÇ1 7
)
ÇÇ7 8
{
ÇÇ9 :
GoToMenuView
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 
else
ÑÑ 
{
ÑÑ 
GoToLoginView
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ  
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ 
GoToMenuView
ââ !
(
ââ! "
)
ââ" #
{
ââ$ %
MenuView
ää 
menuView
ää 
=
ää 
new
ää  #
MenuView
ää$ ,
(
ää, -
)
ää- .
;
ää. /
if
ãã 
(
ãã 
this
ãã 
.
ãã 
NavigationService
ãã &
!=
ãã' )
null
ãã* .
)
ãã. /
{
ãã0 1
this
åå 
.
åå 
NavigationService
åå &
.
åå& '
Navigate
åå' /
(
åå/ 0
menuView
åå0 8
)
åå8 9
;
åå9 :
}
çç 
else
çç 
{
çç 
DialogManager
éé 
.
éé #
ShowErrorMessageAlert
éé 3
(
éé3 4

Properties
éé4 >
.
éé> ?
	Resources
éé? H
.
ééH I#
dialogNavigationError
ééI ^
)
éé^ _
;
éé_ `
}
èè 
}
êê 	
private
íí 
void
íí 
GoToLoginView
íí "
(
íí" #
)
íí# $
{
íí% &
	LoginView
ìì 
	loginView
ìì 
=
ìì  !
new
ìì" %
	LoginView
ìì& /
(
ìì/ 0
)
ìì0 1
;
ìì1 2
if
îî 
(
îî 
this
îî 
.
îî 
NavigationService
îî &
!=
îî' )
null
îî* .
)
îî. /
{
îî0 1
this
ïï 
.
ïï 
NavigationService
ïï &
.
ïï& '
Navigate
ïï' /
(
ïï/ 0
	loginView
ïï0 9
)
ïï9 :
;
ïï: ;
}
ññ 
else
ññ 
{
ññ 
DialogManager
óó 
.
óó #
ShowErrorMessageAlert
óó 3
(
óó3 4

Properties
óó4 >
.
óó> ?
	Resources
óó? H
.
óóH I#
dialogNavigationError
óóI ^
)
óó^ _
;
óó_ `
}
òò 
}
ôô 	
public
õõ 
void
õõ 
NotifyYouLost
õõ !
(
õõ! "
)
õõ" #
{
õõ$ %!
DisableGameControls
úú 
(
úú  
)
úú  !
;
úú! "
Application
ùù 
.
ùù 
Current
ùù 
.
ùù  

Dispatcher
ùù  *
.
ùù* +
Invoke
ùù+ 1
(
ùù1 2
(
ùù2 3
)
ùù3 4
=>
ùù5 7
{
ùù8 9
lbMatchStatus
ûû 
.
ûû 
Content
ûû %
=
ûû& '

Properties
ûû( 2
.
ûû2 3
	Resources
ûû3 <
.
ûû< ="
lbMatchStatusYouLost
ûû= Q
;
ûûQ R
lbMatchStatus
üü 
.
üü 

Foreground
üü (
=
üü) *
Brushes
üü+ 2
.
üü2 3
Red
üü3 6
;
üü6 7
drawingCanvas
†† 
.
†† 
	IsEnabled
†† '
=
††( )
false
††* /
;
††/ 0
_timer
°° 
?
°° 
.
°° 
Stop
°° 
(
°° 
)
°° 
;
°° 
}
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
public
•• 
void
•• 
NotifyYouWon
••  
(
••  !
)
••! "
{
••# $!
DisableGameControls
¶¶ 
(
¶¶  
)
¶¶  !
;
¶¶! "
Application
ßß 
.
ßß 
Current
ßß 
.
ßß  

Dispatcher
ßß  *
.
ßß* +
Invoke
ßß+ 1
(
ßß1 2
(
ßß2 3
)
ßß3 4
=>
ßß5 7
{
ßß8 9
lbMatchStatus
®® 
.
®® 
Content
®® %
=
®®& '

Properties
®®( 2
.
®®2 3
	Resources
®®3 <
.
®®< =!
lbMatchStatusYouWon
®®= P
;
®®P Q
lbMatchStatus
©© 
.
©© 

Foreground
©© (
=
©©) *
Brushes
©©+ 2
.
©©2 3
Green
©©3 8
;
©©8 9
drawingCanvas
™™ 
.
™™ 
	IsEnabled
™™ '
=
™™( )
false
™™* /
;
™™/ 0
_timer
´´ 
?
´´ 
.
´´ 
Stop
´´ 
(
´´ 
)
´´ 
;
´´ 
}
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
public
ØØ 
void
ØØ 

NotifyDraw
ØØ 
(
ØØ 
)
ØØ  
{
ØØ! "!
DisableGameControls
∞∞ 
(
∞∞  
)
∞∞  !
;
∞∞! "
Application
±± 
.
±± 
Current
±± 
.
±±  

Dispatcher
±±  *
.
±±* +
Invoke
±±+ 1
(
±±1 2
(
±±2 3
)
±±3 4
=>
±±5 7
{
±±8 9
lbMatchStatus
≤≤ 
.
≤≤ 
Content
≤≤ %
=
≤≤& '

Properties
≤≤( 2
.
≤≤2 3
	Resources
≤≤3 <
.
≤≤< =
lbMatchStatusDraw
≤≤= N
;
≤≤N O
lbMatchStatus
≥≥ 
.
≥≥ 

Foreground
≥≥ (
=
≥≥) *
Brushes
≥≥+ 2
.
≥≥2 3
Orange
≥≥3 9
;
≥≥9 :
drawingCanvas
¥¥ 
.
¥¥ 
	IsEnabled
¥¥ '
=
¥¥( )
false
¥¥* /
;
¥¥/ 0
_timer
µµ 
?
µµ 
.
µµ 
Stop
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
public
ππ 
void
ππ !
DisableGameControls
ππ '
(
ππ' (
)
ππ( )
{
ππ* +
Application
∫∫ 
.
∫∫ 
Current
∫∫ 
.
∫∫  

Dispatcher
∫∫  *
.
∫∫* +
Invoke
∫∫+ 1
(
∫∫1 2
(
∫∫2 3
)
∫∫3 4
=>
∫∫5 7
{
∫∫8 9
drawingCanvas
ªª 
.
ªª 
	IsEnabled
ªª '
=
ªª( )
false
ªª* /
;
ªª/ 0
_timer
ºº 
?
ºº 
.
ºº 
Stop
ºº 
(
ºº 
)
ºº 
;
ºº 
}
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ææ 	
public
¿¿ 
void
¿¿ 
NotifyPlayerLeft
¿¿ $
(
¿¿$ %
)
¿¿% &
{
¿¿' (!
DisableGameControls
¡¡ 
(
¡¡  
)
¡¡  !
;
¡¡! "

Dispatcher
¬¬ 
.
¬¬ 
Invoke
¬¬ 
(
¬¬ 
async
¬¬ #
(
¬¬$ %
)
¬¬% &
=>
¬¬' )
{
¬¬* +
await
√√ 
Task
√√ 
.
√√ 
Run
√√ 
(
√√ 
(
√√  
)
√√  !
=>
√√" $
DialogManager
ƒƒ 
.
ƒƒ %
ShowWarningMessageAlert
ƒƒ 5
(
ƒƒ5 6

Properties
ƒƒ6 @
.
ƒƒ@ A
	Resources
ƒƒA J
.
ƒƒJ K%
dialogPlayerLeftWarning
ƒƒK b
)
ƒƒb c
)
≈≈ 
;
≈≈ 
ExitUseSinglenton
∆∆ !
(
∆∆! "
)
∆∆" #
;
∆∆# $
}
«« 
)
«« 
;
«« 
}
»» 	
}
…… 
}   ≤H
6C:\TripasDeGatoCliente\Views\CodeGameMatchView.xaml.cs
	namespace

 	
TripasDeGatoCliente


 
.

 
Views

 #
{

$ %
public 

partial 
class 
CodeGameMatch &
:' (
Page) -
{. /
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
public 
CodeGameMatch 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
} 	
public 
void  
GenerateGuestProfile (
(( )
)) *
{+ ,
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
try 
{ 
string 
	codeMatch  
=! "
txtCodeLobby# /
./ 0
Text0 4
;4 5 
UserProfileSingleton $
.$ %
Instance% -
.- .
CreateGuestInstance. A
(A B
)B C
;C D
} 
catch 
( %
EndpointNotFoundException .
endpointException/ @
)@ A
{B C
logger 
. 
LogError 
(  
endpointException  1
)1 2
;2 3
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
catch 
( 
TimeoutException %
timeoutException& 6
)6 7
{8 9
logger 
. 
LogError 
(  
timeoutException  0
)0 1
;1 2
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
catch 
( "
CommunicationException +"
communicationException, B
)B C
{D E
logger 
. 
LogError 
(  "
communicationException  6
)6 7
;7 8
DialogManager   
.   !
ShowErrorMessageAlert   3
(  3 4

Properties  4 >
.  > ?
	Resources  ? H
.  H I'
dialogComunicationException  I d
)  d e
;  e f
}!! 
catch!! 
(!! 
	Exception!! 
	exception!! (
)!!( )
{!!* +
logger"" 
."" 
LogError"" 
(""  
	exception""  )
)"") *
;""* +
DialogManager## 
.## !
ShowErrorMessageAlert## 3
(##3 4
string##4 :
.##: ;
Format##; A
(##A B

Properties##B L
.##L M
	Resources##M V
.##V W!
dialogUnexpectedError##W l
,##l m
	exception##n w
.##w x
Message##x 
)	## Ä
)
##Ä Å
;
##Å Ç
}$$ 
}%% 	
private'' 
void'' 
BtnBack_Click'' "
(''" #
object''# )
sender''* 0
,''0 1
RoutedEventArgs''2 A
e''B C
)''C D
{''E F
	LoginView(( 
	loginView(( 
=((  !
new((" %
	LoginView((& /
(((/ 0
)((0 1
;((1 2
this)) 
.)) 
NavigationService)) "
.))" #
Navigate))# +
())+ ,
	loginView)), 5
)))5 6
;))6 7
}** 	
public,, 
async,, 
void,, 
BtnLogin_Click,, (
(,,( )
object,,) /
sender,,0 6
,,,6 7
RoutedEventArgs,,8 G
e,,H I
),,I J
{,,K L
LoggerManager-- 
logger--  
=--! "
new--# &
LoggerManager--' 4
(--4 5
this--5 9
.--9 :
GetType--: A
(--A B
)--B C
)--C D
;--D E 
GenerateGuestProfile..  
(..  !
)..! "
;.." #
try// 
{// 
if00 
(00 
!00 
string00 
.00 
IsNullOrEmpty00 )
(00) *
txtCodeLobby00* 6
.006 7
Text007 ;
)00; <
)00< =
{00> ?
string11 
	lobbyCode11 $
=11% &
txtCodeLobby11' 3
.113 4
Text114 8
;118 9
var22 
guestProfile22 $
=22% &
new22' *
Profile22+ 2
{223 4
	IdProfile33 !
=33" # 
UserProfileSingleton33$ 8
.338 9
	IdProfile339 B
,33B C
Username44  
=44! " 
UserProfileSingleton44# 7
.447 8
UserName448 @
,44@ A
PicturePath55 #
=55$ % 
UserProfileSingleton55& :
.55: ;
PicPath55; B
,55B C
Score66 
=66  
UserProfileSingleton66  4
.664 5
Score665 :
}77 
;77 
bool88 
joined88 
=88  !
await88" '
_lobbyBrowser88( 5
.885 6
JoinLobbyAsync886 D
(88D E
	lobbyCode88E N
,88N O
guestProfile88P \
)88\ ]
;88] ^
if99 
(99 
joined99 
)99 
{99  !
	LobbyView:: !
	lobbyView::" +
=::, -
new::. 1
	LobbyView::2 ;
(::; <
	lobbyCode::< E
)::E F
;::F G
this;; 
.;; 
NavigationService;; .
.;;. /
Navigate;;/ 7
(;;7 8
	lobbyView;;8 A
);;A B
;;;B C
}<< 
else<< 
{<< 
DialogManager== %
.==% &#
ShowWarningMessageAlert==& =
(=== >

Properties==> H
.==H I
	Resources==I R
.==R S 
dialogLobbyJoinError==S g
)==g h
;==h i
}>> 
}?? 
else?? 
{?? 
DialogManager@@ !
.@@! "!
ShowErrorMessageAlert@@" 7
(@@7 8

Properties@@8 B
.@@B C
	Resources@@C L
.@@L M0
$dialogInvalidGuestProfileOrLobbyCode@@M q
)@@q r
;@@r s
}AA 
}BB 
catchBB 
(BB %
EndpointNotFoundExceptionBB .%
endpointNotFoundExceptionBB/ H
)BBH I
{BBJ K
loggerCC 
.CC 
LogErrorCC 
(CC  %
endpointNotFoundExceptionCC  9
)CC9 :
;CC: ;
DialogManagerDD 
.DD !
ShowErrorMessageAlertDD 3
(DD3 4

PropertiesDD4 >
.DD> ?
	ResourcesDD? H
.DDH I#
dialogEndPointExceptionDDI `
)DD` a
;DDa b
}EE 
catchEE 
(EE 
TimeoutExceptionEE %
timeoutExceptionEE& 6
)EE6 7
{EE8 9
loggerFF 
.FF 
LogErrorFF 
(FF  
timeoutExceptionFF  0
)FF0 1
;FF1 2
DialogManagerGG 
.GG !
ShowErrorMessageAlertGG 3
(GG3 4

PropertiesGG4 >
.GG> ?
	ResourcesGG? H
.GGH I"
dialogTimeOutExceptionGGI _
)GG_ `
;GG` a
}HH 
catchHH 
(HH "
CommunicationExceptionHH +"
communicationExceptionHH, B
)HHB C
{HHD E
loggerII 
.II 
LogErrorII 
(II  "
communicationExceptionII  6
)II6 7
;II7 8
DialogManagerJJ 
.JJ !
ShowErrorMessageAlertJJ 3
(JJ3 4

PropertiesJJ4 >
.JJ> ?
	ResourcesJJ? H
.JJH I'
dialogComunicationExceptionJJI d
)JJd e
;JJe f
}KK 
catchKK 
(KK 
	ExceptionKK 
	exceptionKK (
)KK( )
{KK* +
loggerLL 
.LL 
LogErrorLL 
(LL  
	exceptionLL  )
)LL) *
;LL* +
DialogManagerMM 
.MM !
ShowErrorMessageAlertMM 3
(MM3 4
stringMM4 :
.MM: ;
FormatMM; A
(MMA B

PropertiesMMB L
.MML M
	ResourcesMMM V
.MMV W!
dialogUnexpectedErrorMMW l
,MMl m
	exceptionMMn w
.MMw x
MessageMMx 
)	MM Ä
)
MMÄ Å
;
MMÅ Ç
}NN 
}OO 	
}PP 
}QQ ïS
)C:\TripasDeGatoCliente\Logic\Validador.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

static 
class 
	Validador !
{" #
private 
static 
Regex 
passwordRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 k
,k l
RegexOptionsm y
.y z
Nonez ~
,~ 
TimeSpan
Ä à
.
à â
FromMilliseconds
â ô
(
ô ö
$num
ö û
)
û ü
)
ü †
;
† °
private 
static 
Regex 
usernameRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 M
,M N
RegexOptionsO [
.[ \
None\ `
,` a
TimeSpanb j
.j k
FromMillisecondsk {
({ |
$num	| Ä
)
Ä Å
)
Å Ç
;
Ç É
private		 
static		 
Regex		 

emailRegex		 '
=		( )
new		* -
Regex		. 3
(		3 4
$str		4 Q
,		Q R
RegexOptions		S _
.		_ `
None		` d
,		d e
TimeSpan		f n
.		n o
FromMilliseconds		o 
(			 Ä
$num
		Ä Ñ
)
		Ñ Ö
)
		Ö Ü
;
		Ü á
private

 
static

 
Regex

 
codeLobbyMatchRegex

 0
=

1 2
new

3 6
Regex

7 <
(

< =
$str

= P
,

P Q
RegexOptions

R ^
.

^ _
None

_ c
,

c d
TimeSpan

e m
.

m n
FromMilliseconds

n ~
(

~ 
$num	

 É
)


É Ñ
)


Ñ Ö
;


Ö Ü
private 
static 
Regex 

stateRegex '
=( )
new* -
Regex. 3
(3 4
$str4 L
,L M
RegexOptionsN Z
.Z [
None[ _
,_ `
TimeSpana i
.i j
FromMillisecondsj z
(z {
$num{ 
)	 Ä
)
Ä Å
;
Å Ç
private 
static 
Regex 
gameNameRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 N
,N O
RegexOptionsP \
.\ ]
None] a
,a b
TimeSpanc k
.k l
FromMillisecondsl |
(| }
$num	} Å
)
Å Ç
)
Ç É
;
É Ñ
public 
static 
bool  
ValidateRegexPattern /
(/ 0
string0 6
data7 ;
,; <
Regex= B
regexC H
)H I
{J K
bool 
isValid 
= 
false  
;  !
try 
{ 
isValid 
= 
regex 
.  
IsMatch  '
(' (
data( ,
), -
;- .
} 
catch 
( &
RegexMatchTimeoutException /
)/ 0
{1 2
isValid 
= 
false 
;  
} 
return 
isValid 
; 
} 	
public 
static 
bool 
ValidatePassword +
(+ ,
string, 2
password3 ;
); <
{= >
string 
cleanedPassword "
=# $
Regex% *
.* +
Replace+ 2
(2 3
password3 ;
.; <
Trim< @
(@ A
)A B
,B C
$strD J
,J K
$strL N
)N O
;O P
return 
! 
string 
. 
IsNullOrWhiteSpace -
(- .
cleanedPassword. =
)= >
&&? A 
ValidateRegexPatternB V
(V W
cleanedPasswordW f
,f g
passwordRegexh u
)u v
;v w
} 	
public 
static 
bool 
ValidateUsername +
(+ ,
string, 2
username3 ;
); <
{= >
string 
cleanedUsername "
=# $
Regex% *
.* +
Replace+ 2
(2 3
username3 ;
.; <
Trim< @
(@ A
)A B
,B C
$strD J
,J K
$strL N
)N O
;O P
return 
! 
string 
. 
IsNullOrWhiteSpace -
(- .
cleanedUsername. =
)= >
&&? A 
ValidateRegexPatternB V
(V W
cleanedUsernameW f
,f g
usernameRegexh u
)u v
;v w
}   	
public"" 
static"" 
bool"" 
ValidateEmail"" (
(""( )
string"") /
email""0 5
)""5 6
{""7 8
string## 
cleanedEmail## 
=##  !
email##" '
?##' (
.##( )
Trim##) -
(##- .
)##. /
;##/ 0
if$$ 
($$ 
!$$ 
string$$ 
.$$ 
IsNullOrWhiteSpace$$ *
($$* +
cleanedEmail$$+ 7
)$$7 8
&&$$9 ;
cleanedEmail$$< H
.$$H I
Length$$I O
<=$$P R
$num$$S V
)$$V W
{$$X Y
if%% 
(%% 

emailRegex%% 
.%% 
IsMatch%% &
(%%& '
cleanedEmail%%' 3
)%%3 4
)%%4 5
{%%6 7
try&& 
{&& 
var'' 
mailAddress'' '
=''( )
new''* -
MailAddress''. 9
(''9 :
cleanedEmail'': F
)''F G
;''G H
return(( 
true(( #
;((# $
})) 
catch)) 
()) 
FormatException)) ,
))), -
{)). /
return** 
false** $
;**$ %
}++ 
},, 
}-- 
return.. 
false.. 
;.. 
}// 	
public11 
static11 
bool11 
ValidateGameName11 +
(11+ ,
string11, 2
gameName113 ;
)11; <
{11= >
string22 
cleanedGameName22 "
=22# $
gameName22% -
?22- .
.22. /
Trim22/ 3
(223 4
)224 5
;225 6
return33 
!33 
string33 
.33 
IsNullOrWhiteSpace33 -
(33- .
cleanedGameName33. =
)33= >
&&33? A 
ValidateRegexPattern33B V
(33V W
cleanedGameName33W f
,33f g
gameNameRegex33h u
)33u v
;33v w
}44 	
public66 
static66 
bool66 
ValidateCode66 '
(66' (
string66( .
	codeLobby66/ 8
)668 9
{66: ;
string77 
codeCleaned77 
=77  
Regex77! &
.77& '
Replace77' .
(77. /
	codeLobby77/ 8
.778 9
Trim779 =
(77= >
)77> ?
,77? @
$str77A G
,77G H
$str77I K
)77K L
;77L M
return88 
!88 
string88 
.88 
IsNullOrWhiteSpace88 -
(88- .
codeCleaned88. 9
)889 :
&&88; = 
ValidateRegexPattern88> R
(88R S
codeCleaned88S ^
,88^ _
codeLobbyMatchRegex88` s
)88s t
;88t u
}99 	
public;; 
static;; 
bool;; 
ValidateState;; (
(;;( )
string;;) /
state;;0 5
);;5 6
{;;7 8
string<< 
stateCleaned<< 
=<<  !
Regex<<" '
.<<' (
Replace<<( /
(<</ 0
state<<0 5
.<<5 6
Trim<<6 :
(<<: ;
)<<; <
,<<< =
$str<<> D
,<<D E
$str<<F H
)<<H I
;<<I J
return== 
!== 
string== 
.== 
IsNullOrWhiteSpace== -
(==- .
stateCleaned==. :
)==: ;
&&==< > 
ValidateRegexPattern==? S
(==S T
stateCleaned==T `
,==` a

stateRegex==b l
)==l m
;==m n
}>> 	
public@@ 
static@@ 
void@@ 
RegexPattern@@ '
(@@' (
string@@( .
input@@/ 4
)@@4 5
{@@6 7
boolAA 
isEmailValidAA 
=AA  
ValidateRegexPatternAA  4
(AA4 5
inputAA5 :
,AA: ;

emailRegexAA< F
)AAF G
;AAG H
boolBB 
isNumberBB 
=BB  
ValidateRegexPatternBB 0
(BB0 1
inputBB1 6
,BB6 7
newBB8 ;
RegexBB< A
(BBA B
$strBBB J
,BBJ K
RegexOptionsBBL X
.BBX Y
NoneBBY ]
,BB] ^
TimeSpanBB_ g
.BBg h
FromMillisecondsBBh x
(BBx y
$numBBy |
)BB| }
)BB} ~
)BB~ 
;	BB Ä
varCC 
	isLetterACC 
=CC 
RegexCC !
.CC! "
IsMatchCC" )
(CC) *
inputCC* /
,CC/ 0
$strCC1 8
,CC8 9
RegexOptionsCC: F
.CCF G
NoneCCG K
)CCK L
;CCL M
	AppDomainDD 
.DD 
CurrentDomainDD #
.DD# $
SetDataDD$ +
(DD+ ,
$strDD, I
,DDI J
TimeSpanDDK S
.DDS T
FromMillisecondsDDT d
(DDd e
$numDDe h
)DDh i
)DDi j
;DDj k
ConsoleEE 
.EE 
	WriteLineEE 
(EE 
$"EE  
$strEE  .
{EE. /
isEmailValidEE/ ;
}EE; <
$strEE< O
{EEO P
isNumberEEP X
}EEX Y
$strEEY o
{EEo p
	isLetterAEEp y
}EEy z
"EEz {
)EE{ |
;EE| }
}FF 	
}GG 
}HH Ó3
4C:\TripasDeGatoCliente\Logic\UserProfileSingleton.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

class  
UserProfileSingleton %
{& '
private 
static 
readonly  
UserProfileSingleton  4
singletonInstance5 F
=G H
newI L 
UserProfileSingletonM a
(a b
)b c
;c d
public 
static 
int 
	IdProfile #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public		 
static		 
string		 
UserName		 %
{		& '
get		( +
;		+ ,
private		- 4
set		5 8
;		8 9
}		: ;
public 
static 
int 
Score 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
static 
string 
PicPath $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
static 
int 
IdUser  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
static 
string 
Password %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
static 
string 
Mail !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
static 
string 
	LobbyCode &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
== >
$str? G
;G H
public 
static 
string 
ChatCode %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
=< =
$str> F
;F G
public 
static 
string 
	MatchCode &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
== >
$str? G
;G H
public 
static  
UserProfileSingleton *
Instance+ 3
=>4 6
singletonInstance7 H
;H I
public 
void 
CreateInstance "
(" #
Profile# *
profile+ 2
)2 3
{4 5
	IdProfile 
= 
profile 
.  
	IdProfile  )
;) *
UserName 
= 
profile 
. 
Username '
;' (
Score   
=   
profile   
.   
Score   !
;  ! "
PicPath!! 
=!! 
profile!! 
.!! 
PicturePath!! )
;!!) *
}"" 	
public$$ 
void$$ 
CreateGuestInstance$$ '
($$' (
)$$( )
{$$* +
GuestProfile%% 
guestProfile%% %
=%%& '
new%%( +
GuestProfile%%, 8
(%%8 9
)%%9 :
;%%: ;
	IdProfile&& 
=&& 
guestProfile&& $
.&&$ %
GuestId&&% ,
;&&, -
UserName'' 
='' 
guestProfile'' #
.''# $
Username''$ ,
;'', -
Score(( 
=(( 
$num(( 
;(( 
PicPath)) 
=)) 
guestProfile)) "
.))" #
Avatar))# )
;))) *
}** 	
public,, 
void,, 
ResetInstance,, !
(,,! "
),," #
{,,$ %
	IdProfile-- 
=-- 
$num-- 
;-- 
UserName.. 
=.. 
null.. 
;.. 
Score// 
=// 
$num// 
;// 
PicPath00 
=00 
null00 
;00 
IdUser11 
=11 
$num11 
;11 
Password22 
=22 
null22 
;22 
Mail33 
=33 
null33 
;33 
}44 	
public66 
static66 
void66 
ResetLobbyCode66 )
(66) *
)66* +
{66, -
	LobbyCode77 
=77 
$str77  
;77  !
}88 	
public:: 
static:: 
void:: 
ResetChatCode:: (
(::( )
)::) *
{::+ ,
	LobbyCode;; 
=;; 
$str;;  
;;;  !
}<< 	
public>> 
static>> 
void>> 
ResetMatchCode>> )
(>>) *
)>>* +
{>>, -
	LobbyCode?? 
=?? 
$str??  
;??  !
}@@ 	
publicBB 
staticBB 
voidBB 
UpdateFotoRutaBB )
(BB) *
stringBB* 0
	nuevaRutaBB1 :
)BB: ;
{BB< =
PicPathCC 
=CC 
	nuevaRutaCC 
;CC  
}DD 	
publicFF 
staticFF 
voidFF 
UpdateNombreFF '
(FF' (
stringFF( .
nuevoNombreFF/ :
)FF: ;
{FF< =
UserNameGG 
=GG 
nuevoNombreGG "
;GG" #
}HH 	
publicJJ 
staticJJ 
voidJJ 
UpdateLobbyCodeJJ *
(JJ* +
stringJJ+ 1
newCodeJJ2 9
)JJ9 :
{JJ; <
	LobbyCodeKK 
=KK 
newCodeKK 
;KK  
}LL 	
publicNN 
staticNN 
voidNN 
UpdateChatCodeNN )
(NN) *
stringNN* 0
newCodeNN1 8
)NN8 9
{NN: ;
ChatCodeOO 
=OO 
newCodeOO 
;OO 
}PP 	
publicRR 
staticRR 
voidRR 
UpdateMatchCodeRR *
(RR* +
stringRR+ 1
newCodeRR2 9
)RR9 :
{RR; <
	MatchCodeSS 
=SS 
newCodeSS 
;SS  
}TT 	
}VV 
}WW œ
-C:\TripasDeGatoCliente\Logic\LoggerManager.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

class 
LoggerManager 
{  
public 
ILog 
Logger 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public		 
LoggerManager		 
(		 
Type		 !
type		" &
)		& '
{		( )
Logger

 
=

 

LogManager

 
.

  
	GetLogger

  )
(

) *
type

* .
)

. /
;

/ 0
} 	
public 
ILog 
	GetLogger 
( 
Type "
type# '
)' (
{) *
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{, -
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
ex7 9
)9 :
{; <
Logger 
. 
Error 
( 
message  
,  !
ex" $
)$ %
;% &
} 	
public 
void 
LogError 
( 
	Exception &
ex' )
)) *
{+ ,
Logger 
. 
Error 
( 
ex 
) 
; 
} 	
public 
void 
LogFatal 
( 
	Exception &
ex' )
)) *
{+ ,
Logger 
. 
Fatal 
( 
ex 
) 
; 
} 	
public!! 
void!! 
LogWarn!! 
(!! 
	Exception!! %
ex!!& (
)!!( )
{!!* +
Logger"" 
."" 
Warn"" 
("" 
ex"" 
)"" 
;"" 
}## 	
public%% 
void%% 
LogDebug%% 
(%% 
	Exception%% &
ex%%' )
)%%) *
{%%+ ,
Logger&& 
.&& 
Debug&& 
(&& 
ex&& 
)&& 
;&& 
}'' 	
}(( 
})) ≈
&C:\TripasDeGatoCliente\Logic\Hasher.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
class 
Hasher 
{ 
public 
static 
string 
HashToSHA256 )
() *
string* 0

textToHash1 ;
); <
{= >
StringBuilder 
stringHashBuilder +
=, -
new. 1
StringBuilder2 ?
(? @
)@ A
;A B
byte		 
[		 
]		 

inputBytes		 
=		 
Encoding		  (
.		( )
UTF8		) -
.		- .
GetBytes		. 6
(		6 7

textToHash		7 A
)		A B
;		B C
using

 
(

 
SHA256

 
sha256

  
=

! "
SHA256

# )
.

) *
Create

* 0
(

0 1
)

1 2
)

2 3
{

4 5
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes #
=$ %
$num& '
;' (

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{V W
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
} 
} Œ
6C:\TripasDeGatoCliente\Logic\GuestProfileSinglenton.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
class !
GuestProfileSingleton (
{) *
private 
static 
readonly !
GuestProfileSingleton  5
SingletonInstance6 G
=H I
newJ M!
GuestProfileSingletonN c
(c d
)d e
;e f
public 
static 
GuestProfile "
PerfilInvitado# 1
{2 3
get4 7
;7 8
private9 @
setA D
;D E
}F G
public		 
static		 
string		 
	CodeMatch		 &
{		' (
get		) ,
;		, -
private		. 5
set		6 9
;		9 :
}		; <
public 
static !
GuestProfileSingleton +
Instance, 4
=>5 7
SingletonInstance8 I
;I J
public 
void 
CreateInstance "
(" #
string# )
code* .
). /
{0 1
PerfilInvitado 
= 
new  
GuestProfile! -
(- .
). /
;/ 0
PerfilInvitado 
. 
Username #
=$ %
GuestProfile& 2
.2 3!
RandomChooserUsername3 H
(H I
)I J
;J K
PerfilInvitado 
. 
Avatar !
=" #
GuestProfile$ 0
.0 1#
RandomChooserAvatarIcon1 H
(H I
)I J
;J K
	CodeMatch 
= 
code 
; 
} 	
public 
void 
ResetSingleton "
(" #
)# $
{% &
	CodeMatch 
= 
null 
; 
PerfilInvitado 
= 
null !
;! "
} 	
} 
} ˙
,C:\TripasDeGatoCliente\Logic\GuestProfile.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
class 
GuestProfile 
{  !
private 
static 
readonly 
Random  &
random' -
=. /
new0 3
Random4 :
(: ;
); <
;< =
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
Avatar		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public 
int 
GuestId 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
GuestProfile 
( 
) 
{ 
this 
. 
Username 
= !
RandomChooserUsername 1
(1 2
)2 3
;3 4
this 
. 
Avatar 
= #
RandomChooserAvatarIcon 1
(1 2
)2 3
;3 4
this 
. 
GuestId 
= 
GenerateRandomId +
(+ ,
), -
;- .
} 	
public 
static 
int 
GenerateRandomId *
(* +
)+ ,
{- .
return 
random 
. 
Next 
( 
$num %
,% &
$num' -
)- .
;. /
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{7 8
string 
[ 
] 
defaultAvatars #
=$ %
{& '
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
} 
; 
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultAvatars* 8
.8 9
Length9 ?
)? @
;@ A
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
} 	
public!! 
static!! 
string!! !
RandomChooserUsername!! 2
(!!2 3
)!!3 4
{!!5 6
int"" 
randomIndexNumber"" !
=""" #
random""$ *
.""* +
Next""+ /
(""/ 0
$num""0 1
,""1 2
$num""3 :
)"": ;
;""; <
return## 
$str## 
+## 
randomIndexNumber## .
;##. /
}$$ 	
}%% 
}&& õ
-C:\TripasDeGatoCliente\Logic\DialogManager.cs
public

 
static

 
class

 
DialogManager

 !
{

" #
public 

static 
void !
ShowErrorMessageAlert ,
(, -
string- 3
errorMessage4 @
)@ A
{B C

MessageBox 
. 
Show 
( 
errorMessage $
,$ %
TripasDeGatoCliente& 9
.9 :

Properties: D
.D E
	ResourcesE N
.N O
dialogTitleErrorO _
,_ `
MessageBoxButtona q
.q r
OKr t
,t u
MessageBoxImage	v Ö
.
Ö Ü
Error
Ü ã
)
ã å
;
å ç
} 
public 

static 
void #
ShowWarningMessageAlert .
(. /
string/ 5
warningMessage6 D
)D E
{F G

MessageBox 
. 
Show 
( 
warningMessage &
,& '
TripasDeGatoCliente( ;
.; <

Properties< F
.F G
	ResourcesG P
.P Q
dialogTitleWarningQ c
,c d
MessageBoxButtone u
.u v
OKv x
,x y
MessageBoxImage	z â
.
â ä
Warning
ä ë
)
ë í
;
í ì
} 
public 

static 
void #
ShowSuccessMessageAlert .
(. /
string/ 5
successMessage6 D
)D E
{F G

MessageBox 
. 
Show 
( 
successMessage &
,& '
TripasDeGatoCliente( ;
.; <

Properties< F
.F G
	ResourcesG P
.P Q
dialogTitleSuccesQ b
,b c
MessageBoxButtond t
.t u
OKu w
,w x
MessageBoxImage	y à
.
à â
Information
â î
)
î ï
;
ï ñ
} 
public 

static 
void (
ShowConfirmationMessageAlert 3
(3 4
string4 :
confirmMessage; I
)I J
{K L

MessageBox 
. 
Show 
( 
confirmMessage &
,& '
TripasDeGatoCliente( ;
.; <

Properties< F
.F G
	ResourcesG P
.P Q#
dialogTitleConfirmationQ h
,h i
MessageBoxButtonj z
.z {
OK{ }
,} ~
MessageBoxImage	 é
.
é è
Question
è ó
)
ó ò
;
ò ô
} 
} Ã
0C:\TripasDeGatoCliente\Logic\ConstantsManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
class 
ConstantsManager #
{$ %
public		 
static		 
class		 
	Constants		 %
{		& '
public

 
const

 
int

 
ERROR_OPERATION

 ,
=

- .
-

/ 0
$num

0 1
;

1 2
public 
const 
int 
SUCCES_OPERATION -
=. /
$num0 1
;1 2
public 
const 
int 
NO_DATA_MATCHES ,
=- .
-/ 0
$num0 1
;1 2
public 
const 
int 
DATA_MATCHES )
=* +
$num, -
;- .
public 
const 
int 
INITIAL_SCORE *
=+ ,
$num- .
;. /
public 
const 
string  
DEFAULT_IMAGE_PLAYER  4
=5 6
$str7 :
;: ;
public 
const 
string 
DEFAULT_IMAGE_GUEST  3
=4 5
$str6 9
;9 :
public 
const 
int 
HOW_MANY_SCORES ,
=- .
$num/ 1
;1 2
} 	
} 
} û(
1C:\TripasDeGatoCliente\Logic\ConnectionManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

class 
ConnectionManager "
{# $
private 
static 
readonly 
ConnectionManager  1%
connectionManagerInstance2 K
=L M
newN Q
ConnectionManagerR c
(c d
)d e
;e f
public		 
static		 
ConnectionManager		 '
Instance		( 0
=>		1 3%
connectionManagerInstance		4 M
;		M N
public 
LobbyManagerClient !
LobbyManager" .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
public 
ChatManagerClient  
ChatManager! ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 
MatchManagerClient !
MatchManager" .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
private 
ConnectionManager !
(! "
)" #
{$ %
}& '
public 
void "
InitializeLobbyManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
LobbyManager 
= 
new 
LobbyManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public 
void !
InitializeChatManager )
() *
InstanceContext* 9
context: A
)A B
{C D
ChatManager 
= 
new 
ChatManagerClient /
(/ 0
context0 7
)7 8
;8 9
} 	
public 
void "
InitializeMatchManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
MatchManager 
= 
new 
MatchManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public   
async   
Task   
DisconnectAllAsync   ,
(  , -
)  - .
{  / 0
if!! 
(!! 
LobbyManager!! 
!=!! 
null!!  $
&&!!% ' 
UserProfileSingleton!!( <
.!!< =
	LobbyCode!!= F
!=!!G I
$str!!J R
)!!R S
{!!T U
await"" 
LobbyManager"" "
.""" #
LeaveLobbyAsync""# 2
(""2 3 
UserProfileSingleton""3 G
.""G H
	LobbyCode""H Q
,""Q R 
UserProfileSingleton""S g
.""g h
	IdProfile""h q
)""q r
;""r s 
UserProfileSingleton## $
.##$ %
ResetLobbyCode##% 3
(##3 4
)##4 5
;##5 6
}$$ 
if&& 
(&& 
ChatManager&& 
!=&& 
null&& #
&&&&$ & 
UserProfileSingleton&&' ;
.&&; <
ChatCode&&< D
!=&&E G
$str&&H P
)&&P Q
{&&R S
await'' 
ChatManager'' !
.''! "
LeaveChatAsync''" 0
(''0 1 
UserProfileSingleton''1 E
.''E F
UserName''F N
,''N O 
UserProfileSingleton''P d
.''d e
ChatCode''e m
)''m n
;''n o 
UserProfileSingleton(( $
.(($ %
ResetChatCode((% 2
(((2 3
)((3 4
;((4 5
})) 
if++ 
(++ 
MatchManager++ 
!=++ 
null++  $
&&++% ' 
UserProfileSingleton++( <
.++< =
	MatchCode++= F
!=++G I
$str++J R
)++R S
{++T U
await,, 
MatchManager,, "
.,," #
LeaveMatchAsync,,# 2
(,,2 3 
UserProfileSingleton,,3 G
.,,G H
	MatchCode,,H Q
,,,Q R 
UserProfileSingleton,,S g
.,,g h
UserName,,h p
),,p q
;,,q r 
UserProfileSingleton-- $
.--$ %
ResetMatchCode--% 3
(--3 4
)--4 5
;--5 6
}.. 
}// 	
public22 
void22 
ReleaseLobbyManager22 '
(22' (
)22( )
{22* +
LobbyManager33 
=33 
null33 
;33  
}44 	
public66 
void66 
ReleaseChatManager66 &
(66& '
)66' (
{66) *
ChatManager77 
=77 
null77 
;77 
}88 	
public:: 
void:: 
ReleaseMatchManager:: '
(::' (
)::( )
{::* +
MatchManager;; 
=;; 
null;; 
;;;  
}<< 	
}== 
}>> 