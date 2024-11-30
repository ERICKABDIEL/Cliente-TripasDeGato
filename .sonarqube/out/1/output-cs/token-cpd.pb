�
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
]77) *�5
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
)	== �
)
==� �
;
==� �
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
}DD �
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
}00 �e
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
)	'' �
)
''� �
;
''� �
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
)	ii �
)
ii� �
;
ii� �
}jj 
}kk 	
}ll 
}mm ��
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
)	KK �
)
KK� �
;
KK� �
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
)	dd �
)
dd� �
;
dd� �
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
)	}} �
)
}}� �
;
}}� �
}~~ 
} 	
private
�� 
void
�� 
BtnGuest_Click
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
��F G
CodeGameMatch
�� 
codeGameMatch
�� '
=
��( )
new
��* -
CodeGameMatch
��. ;
(
��; <
)
��< =
;
��= >
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
codeGameMatch
��, 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
void
�� !
DisplayMainMenuView
�� (
(
��( )
)
��) *
{
��+ ,
MenuView
�� 
menuView
�� 
=
�� 
new
��  #
MenuView
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
menuView
��, 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
void
�� 
HighlightField
�� #
(
��# $
Control
��$ +
control
��, 3
,
��3 4
bool
��5 9
isValid
��: A
)
��A B
{
��C D
control
�� 
.
�� 
BorderBrush
�� 
=
��  !
isValid
��" )
?
��* +
Brushes
��, 3
.
��3 4
White
��4 9
:
��: ;
Brushes
��< C
.
��C D
Red
��D G
;
��G H
}
�� 	
private
�� 
void
�� "
TxtEmail_TextChanged
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8"
TextChangedEventArgs
��9 M
e
��N O
)
��O P
{
��Q R
string
�� 
email
�� 
=
�� 
txtEmail
�� #
.
��# $
Text
��$ (
;
��( )
bool
�� 
isValid
�� 
=
�� 
	Validador
�� $
.
��$ %
ValidateEmail
��% 2
(
��2 3
email
��3 8
)
��8 9
;
��9 :
HighlightField
�� 
(
�� 
txtEmail
�� #
,
��# $
isValid
��% ,
)
��, -
;
��- .
lbInvalidEmail
�� 
.
�� 

Visibility
�� %
=
��& '
isValid
��( /
?
��0 1

Visibility
��2 <
.
��< =
	Collapsed
��= F
:
��G H

Visibility
��I S
.
��S T
Visible
��T [
;
��[ \
}
�� 	
private
�� 
void
�� )
TxtPassword_PasswordChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
��S T
string
�� 
password
�� 
=
�� 
txtPassword
�� )
.
��) *
Password
��* 2
;
��2 3
bool
�� 
isValid
�� 
=
�� 
	Validador
�� $
.
��$ %
ValidatePassword
��% 5
(
��5 6
password
��6 >
)
��> ?
;
��? @
HighlightField
�� 
(
�� 
txtPassword
�� &
,
��& '
isValid
��( /
)
��/ 0
;
��0 1
lbInvalidPassword
�� 
.
�� 

Visibility
�� (
=
��) *
isValid
��+ 2
?
��3 4

Visibility
��5 ?
.
��? @
	Collapsed
��@ I
:
��J K

Visibility
��L V
.
��V W
Visible
��W ^
;
��^ _*
UpdatePasswordVisibilityIcon
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
private
�� 
void
�� 

ResetField
�� 
(
��  
Control
��  '
control
��( /
)
��/ 0
{
��1 2
control
�� 
.
�� 
BorderBrush
�� 
=
��  !
Brushes
��" )
.
��) *
White
��* /
;
��/ 0
}
�� 	
private
�� 
void
�� 
BtnSignIn_Click
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
RoutedEventArgs
��4 C
e
��D E
)
��E F
{
��G H
RegisterView
�� 
registerView
�� %
=
��& '
new
��( +
RegisterView
��, 8
(
��8 9
)
��9 :
;
��: ;
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
registerView
��, 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� 
BtnContinue_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
��I J
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 
email
�� 
=
�� 
txtEmailRecovery
�� +
.
��+ ,
Text
��, 0
.
��0 1
Trim
��1 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
email
��* /
)
��/ 0
)
��0 1
{
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogNullEmail
��I X
)
��X Y
;
��Y Z
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidateEmail
�� (
(
��( )
email
��) .
)
��. /
)
��/ 0
{
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I 
dialogInvalidEmail
��I [
)
��[ \
;
��\ ]
return
�� 
;
�� 
}
�� 
try
�� 
{
�� &
IPasswordRecoveryManager
�� (
passwordRecovery
��) 9
=
��: ;
new
��< ?+
PasswordRecoveryManagerClient
��@ ]
(
��] ^
)
��^ _
;
��_ `
int
�� 
result
�� 
=
�� 
passwordRecovery
�� -
.
��- .
SendRecoveryCode
��. >
(
��> ?
email
��? D
)
��D E
;
��E F
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� '
.
��' (
SUCCES_OPERATION
��( 8
)
��8 9
{
��: ;

_userEmail
�� 
=
��  
email
��! &
;
��& '
gridEnterEmail
�� "
.
��" #

Visibility
��# -
=
��. /

Visibility
��0 :
.
��: ;
	Collapsed
��; D
;
��D E
gridRecovery
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O+
dialogRecoveryCodeHasBeenSent
��O l
)
��l m
;
��m n
}
�� 
else
�� 
if
�� 
(
�� 
result
�� !
==
��" $
	Constants
��% .
.
��. /
NO_DATA_MATCHES
��/ >
)
��> ?
{
��@ A
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M 
dialogInvalidEmail
��M _
)
��_ `
;
��` a
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M,
dialogErrorSendingRecoveryCode
��M k
)
��k l
;
��l m
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .
ex
��/ 1
)
��1 2
{
��3 4
logger
�� 
.
�� 
LogError
�� 
(
��  
ex
��  "
)
��" #
;
��# $
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
ex
��& (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
ex
��  "
)
��" #
;
��# $
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
ex
��, .
)
��. /
{
��0 1
logger
�� 
.
�� 
LogError
�� 
(
��  
ex
��  "
)
��" #
;
��# $
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� %
BtnBackEnterEmail_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
��O P
gridEnterEmail
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
txtEmail
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtPassword
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��   
txtPasswordVisible
�� 
.
�� 
Clear
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
private
�� 
void
�� 
BtnValidate_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
��I J
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 
enteredCode
�� 
=
��  
$"
��! #
{
��# $ 
txtValidationCode1
��$ 6
.
��6 7
Text
��7 ;
}
��; <
{
��< = 
txtValidationCode2
��= O
.
��O P
Text
��P T
}
��T U
{
��U V 
txtValidationCode3
��V h
.
��h i
Text
��i m
}
��m n
{
��n o!
txtValidationCode4��o �
.��� �
Text��� �
}��� �
{��� �"
txtValidationCode5��� �
.��� �
Text��� �
}��� �
{��� �"
txtValidationCode6��� �
.��� �
Text��� �
}��� �
"��� �
;��� �
try
�� 
{
�� &
IPasswordRecoveryManager
�� (
passwordRecovery
��) 9
=
��: ;
new
��< ?+
PasswordRecoveryManagerClient
��@ ]
(
��] ^
)
��^ _
;
��_ `
bool
�� 
isCodeValid
��  
=
��! "
passwordRecovery
��# 3
.
��3 4 
VerifyRecoveryCode
��4 F
(
��F G

_userEmail
��G Q
,
��Q R
enteredCode
��S ^
)
��^ _
;
��_ `
if
�� 
(
�� 
isCodeValid
�� 
)
��  
{
��! "
gridRecovery
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C"
gridRecoveryPassword
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
Visible
��A H
;
��H I
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M'
dialogInvalidRecoveryCode
��M f
)
��f g
;
��g h
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� !
BtnResendCode_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
��K L
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

_userEmail
��% /
)
��/ 0
)
��0 1
{
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogNullEmail
��I X
)
��X Y
;
��Y Z
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 
var
�� $
emailVerificationProxy
�� *
=
��+ ,
new
��- 0"
TripasDeGatoServicio
��1 E
.
��E F+
PasswordRecoveryManagerClient
��F c
(
��c d
)
��d e
;
��e f
int
�� 
result
�� 
=
�� $
emailVerificationProxy
�� 3
.
��3 4
SendRecoveryCode
��4 D
(
��D E

_userEmail
��E O
)
��O P
;
��P Q
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� '
.
��' (
SUCCES_OPERATION
��( 8
)
��8 9
{
��: ;
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O&
dialogRecoveryCodeResent
��O g
)
��g h
;
��h i
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M.
 dialogErrorResendingRecoveryCode
��M m
)
��m n
;
��n o
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� #
BtnBackValidate_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N
gridRecovery
�� 
.
�� 

Visibility
�� #
=
��$ %

Visibility
��& 0
.
��0 1
	Collapsed
��1 :
;
��: ;
txtEmail
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtPassword
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��   
txtPasswordVisible
�� 
.
�� 
Clear
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
private
�� 
void
�� #
BtnSavePassword_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 
newPassword
�� 
=
��  
txtNewPassword
��! /
.
��/ 0
Password
��0 8
.
��8 9
Trim
��9 =
(
��= >
)
��> ?
;
��? @
string
�� 
confirmPassword
�� "
=
��# $#
txtNewPasswordConfirm
��% :
.
��: ;
Password
��; C
.
��C D
Trim
��D H
(
��H I
)
��I J
;
��J K
string
�� 
email
�� 
=
�� 
txtEmail
�� #
.
��# $
Text
��$ (
.
��( )
Trim
��) -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
�� 
newPassword
�� 
!=
�� 
confirmPassword
�� .
)
��. /
{
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I*
dialogMissmatchesCredentials
��I e
)
��e f
;
��f g
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
IsValidPassword
��  
(
��  !
newPassword
��! ,
)
��, -
)
��- .
{
��/ 0
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogInvalidPassword
��I ^
)
��^ _
;
��_ `
return
�� 
;
�� 
}
�� 
try
�� 
{
�� &
IPasswordRecoveryManager
�� (
passwordRecovery
��) 9
=
��: ;
new
��< ?+
PasswordRecoveryManagerClient
��@ ]
(
��] ^
)
��^ _
;
��_ `
int
�� 
result
�� 
=
�� 
passwordRecovery
�� -
.
��- .
UpdatePassword
��. <
(
��< =

_userEmail
��= G
,
��G H
Hasher
��I O
.
��O P
HashToSHA256
��P \
(
��\ ]
newPassword
��] h
)
��h i
)
��i j
;
��j k
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� '
.
��' (
SUCCES_OPERATION
��( 8
)
��8 9
{
��: ;
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O/
!dialogPasswordUpdatedSuccessfully
��O p
)
��p q
;
��q r
txtNewPassword
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +#
txtNewPasswordConfirm
�� )
.
��) *
Clear
��* /
(
��/ 0
)
��0 1
;
��1 2"
gridRecoveryPassword
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
	Collapsed
��A J
;
��J K
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogErrorUpdatingPassowrd
��M h
)
��h i
;
��i j
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� +
TxtValidationCode_TextChanged
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
TextChangedEventArgs
��B V
e
��W X
)
��X Y
{
��Z [
TextBox
�� 
currentTextBox
�� "
=
��# $
sender
��% +
as
��, .
TextBox
��/ 6
;
��6 7
if
�� 
(
�� 
currentTextBox
�� 
.
�� 
Text
�� #
.
��# $
Length
��$ *
==
��+ -
$num
��. /
)
��/ 0
{
��1 2
if
�� 
(
�� 
currentTextBox
�� "
==
��# % 
txtValidationCode1
��& 8
)
��8 9 
txtValidationCode2
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode2
��+ =
)
��= > 
txtValidationCode3
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode3
��+ =
)
��= > 
txtValidationCode4
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode4
��+ =
)
��= > 
txtValidationCode5
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode5
��+ =
)
��= > 
txtValidationCode6
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 	
private
�� 
bool
�� 
IsValidPassword
�� $
(
��$ %
string
��% +
password
��, 4
)
��4 5
{
��6 7
bool
�� 
isValid
�� 
=
�� 
true
�� 
;
��  
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidatePassword
�� +
(
��+ ,
password
��, 4
)
��4 5
)
��5 6
{
��7 8
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
private
�� 
void
�� *
BtnToggleNewPassword_Checked
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @
RoutedEventArgs
��A P
e
��Q R
)
��R S
{
��T U#
txtNewPasswordVisible
�� !
.
��! "
Text
��" &
=
��' (
txtNewPassword
��) 7
.
��7 8
Password
��8 @
;
��@ A#
txtNewPasswordVisible
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
txtNewPassword
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =*
txtNewPasswordConfirmVisible
�� (
.
��( )
Text
��) -
=
��. /#
txtNewPasswordConfirm
��0 E
.
��E F
Password
��F N
;
��N O*
txtNewPasswordConfirmVisible
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
Visible
��A H
;
��H I#
txtNewPasswordConfirm
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
}
�� 	
private
�� 
void
�� ,
BtnToggleNewPassword_Unchecked
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
RoutedEventArgs
��C R
e
��S T
)
��T U
{
��V W
txtNewPassword
�� 
.
�� 
Password
�� #
=
��$ %#
txtNewPasswordVisible
��& ;
.
��; <
Text
��< @
;
��@ A
txtNewPassword
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;#
txtNewPasswordVisible
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D#
txtNewPasswordConfirm
�� !
.
��! "
Password
��" *
=
��+ ,*
txtNewPasswordConfirmVisible
��- I
.
��I J
Text
��J N
;
��N O#
txtNewPasswordConfirm
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B*
txtNewPasswordConfirmVisible
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
	Collapsed
��A J
;
��J K
}
�� 	
private
�� 
void
�� #
BtnBackRecovery_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N"
gridRecoveryPassword
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C
txtEmail
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtPassword
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��   
txtPasswordVisible
�� 
.
�� 
Clear
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
private
�� 
void
�� '
BtnTogglePassword_Checked
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
��Q R 
txtPasswordVisible
�� 
.
�� 
Text
�� #
=
��$ %
txtPassword
��& 1
.
��1 2
Password
��2 :
;
��: ; 
txtPasswordVisible
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
	Collapsed
��0 9
;
��9 :
}
�� 	
private
�� 
void
�� )
BtnTogglePassword_Unchecked
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
��S T
txtPassword
�� 
.
�� 
Password
��  
=
��! " 
txtPasswordVisible
��# 5
.
��5 6
Text
��6 :
;
��: ; 
txtPasswordVisible
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
Visible
��0 7
;
��7 8
}
�� 	
private
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
)
��2 3
{
��4 5
btnTogglePassword
�� 
.
�� 

Visibility
�� (
=
��) *
txtPassword
��+ 6
.
��6 7
Password
��7 ?
.
��? @
Length
��@ F
>
��G H
$num
��I J
?
��K L

Visibility
��M W
.
��W X
Visible
��X _
:
��` a

Visibility
��b l
.
��l m
	Collapsed
��m v
;
��v w
}
�� 	
private
�� 
void
�� &
BtnRecoverPassword_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
��P Q
gridEnterEmail
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;
}
�� 	
}
�� 
}�� ��
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

Properties	 �
.
� �
	Resources
� �
.
� �
lbUnknownUser
� �
;
� �
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
)	qq �
)
qq� �
;
qq� �
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
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
txtUserName
��* 5
.
��5 6
Text
��6 :
)
��: ;
)
��; <
{
��= >
isValid
�� 
=
�� 
false
�� 
;
��  
txtUserName
�� 
.
�� 
BorderBrush
�� '
=
��( )
System
��* 0
.
��0 1
Windows
��1 8
.
��8 9
Media
��9 >
.
��> ?
Brushes
��? F
.
��F G
Red
��G J
;
��J K
}
�� 
else
�� 
{
�� 
txtUserName
�� 
.
�� 
BorderBrush
�� '
=
��( )
System
��* 0
.
��0 1
Windows
��1 8
.
��8 9
Media
��9 >
.
��> ?
Brushes
��? F
.
��F G
White
��G L
;
��L M
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
GoToMenuView
�� !
(
��! "
)
��" #
{
��$ %
MenuView
�� 
menuView
�� 
=
�� 
new
��  #
MenuView
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
?
��" #
.
��# $
Navigate
��$ ,
(
��, -
menuView
��- 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
void
�� 
BtnBack_Click
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
RoutedEventArgs
��2 A
e
��B C
)
��C D
{
��E F
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
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
)	&& �
)
&&� �
;
&&� �
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
)	FF �
)
FF� �
;
FF� �
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
)	hh �
)
hh� �
;
hh� �
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
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� !
BtnResendCode_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
��K L
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
var
�� $
emailVerificationProxy
�� *
=
��+ ,
new
��- 0"
TripasDeGatoServicio
��1 E
.
��E F,
EmailVerificationManagerClient
��F d
(
��d e
)
��e f
;
��f g
int
�� 
result
�� 
=
�� $
emailVerificationProxy
�� 3
.
��3 4*
SendVerificationCodeRegister
��4 P
(
��P Q
txtEmail
��Q Y
.
��Y Z
Text
��Z ^
)
��^ _
;
��_ `
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� '
.
��' (
SUCCES_OPERATION
��( 8
)
��8 9
{
��: ;
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O6
(dialogVerificationCodeResentSuccessfully
��O w
)
��w x
;
��x y
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M2
$dialogErrorResendingVerificationCode
��M q
)
��q r
;
��r s
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� 
BtnValidate_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
��I J
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 
enteredCode
�� 
=
��  
$"
��! #
{
��# $ 
txtValidationCode1
��$ 6
.
��6 7
Text
��7 ;
}
��; <
{
��< = 
txtValidationCode2
��= O
.
��O P
Text
��P T
}
��T U
{
��U V 
txtValidationCode3
��V h
.
��h i
Text
��i m
}
��m n
{
��n o!
txtValidationCode4��o �
.��� �
Text��� �
}��� �
{��� �"
txtValidationCode5��� �
.��� �
Text��� �
}��� �
{��� �"
txtValidationCode6��� �
.��� �
Text��� �
}��� �
"��� �
;��� �
try
�� 
{
�� 
var
�� $
emailVerificationProxy
�� *
=
��+ ,
new
��- 0"
TripasDeGatoServicio
��1 E
.
��E F,
EmailVerificationManagerClient
��F d
(
��d e
)
��e f
;
��f g
bool
�� 
isCodeValid
��  
=
��! "$
emailVerificationProxy
��# 9
.
��9 :

VerifyCode
��: D
(
��D E
txtEmail
��E M
.
��M N
Text
��N R
,
��R S
enteredCode
��T _
)
��_ `
;
��` a
if
�� 
(
�� 
isCodeValid
�� 
)
��  
{
��! "
var
�� 
	userProxy
�� !
=
��" #
new
��$ '"
TripasDeGatoServicio
��( <
.
��< =
UserManagerClient
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
newUser
�� 
=
��  !
new
��" %"
TripasDeGatoServicio
��& :
.
��: ;
	LoginUser
��; D
{
��E F
mail
�� 
=
�� 
txtEmail
�� '
.
��' (
Text
��( ,
,
��, -
password
��  
=
��! "
Hasher
��# )
.
��) *
HashToSHA256
��* 6
(
��6 7
txtPassword
��7 B
.
��B C
Password
��C K
)
��K L
}
�� 
;
�� 
var
�� 

newProfile
�� "
=
��# $
new
��% ("
TripasDeGatoServicio
��) =
.
��= >
Profile
��> E
{
��F G
Username
��  
=
��! "
txtName
��# *
.
��* +
Text
��+ /
,
��/ 0
Score
�� 
=
�� 
	Constants
��  )
.
��) *
INITIAL_SCORE
��* 7
,
��7 8
PicturePath
�� #
=
��$ %
$str
��& J
}
�� 
;
�� 
int
�� 
accountResult
�� %
=
��& '
	userProxy
��( 1
.
��1 2
CreateAccount
��2 ?
(
��? @
newUser
��@ G
,
��G H

newProfile
��I S
)
��S T
;
��T U
if
�� 
(
�� 
accountResult
�� %
==
��& (
	Constants
��) 2
.
��2 3
SUCCES_OPERATION
��3 C
)
��C D
{
��E F
DialogManager
�� %
.
��% &%
ShowSuccessMessageAlert
��& =
(
��= >

Properties
��> H
.
��H I
	Resources
��I R
.
��R S-
dialogAccountCreatedSuccesfully
��S r
)
��r s
;
��s t
verificationGrid
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
	Collapsed
��A J
;
��J K
GoToLoginView
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
{
�� 
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q(
dialogAccountCreatedErrror
��Q k
)
��k l
;
��l m
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M+
dialogInvalidVerificationCode
��M j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
bool
�� 
ValidateFields
�� #
(
��# $
string
��$ *
email
��+ 0
,
��0 1
string
��2 8
username
��9 A
,
��A B
string
��C I
password
��J R
)
��R S
{
��T U
bool
�� 
isValid
�� 
=
�� 
true
�� 
;
��  
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidateEmail
�� (
(
��( )
email
��) .
)
��. /
)
��/ 0
{
��1 2
HighlightField
�� 
(
�� 
txtEmail
�� '
)
��' (
;
��( )
lbInvalidEmail
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtEmail
�� #
)
��# $
;
��$ %
lbInvalidEmail
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
}
�� 
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidateUsername
�� +
(
��+ ,
username
��, 4
)
��4 5
)
��5 6
{
��7 8
HighlightField
�� 
(
�� 
txtName
�� &
)
��& '
;
��' (
lbInvalidUser
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
Visible
��6 =
;
��= >
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtName
�� "
)
��" #
;
��# $
lbInvalidUser
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
}
�� 
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidatePassword
�� +
(
��+ ,
password
��, 4
)
��4 5
)
��5 6
{
��7 8
HighlightField
�� 
(
�� 
txtPassword
�� *
)
��* +
;
��+ ,
lbInvalidPassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtPassword
�� &
)
��& '
;
��' (
lbInvalidPassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
HighlightField
�� #
(
��# $
Control
��$ +
control
��, 3
)
��3 4
{
��5 6
control
�� 
.
�� 
BorderBrush
�� 
=
��  !
Brushes
��" )
.
��) *
Red
��* -
;
��- .
}
�� 	
private
�� 
void
�� )
TxtPassword_PasswordChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
��S T
if
�� 
(
�� 
txtPassword
�� 
.
�� 

Visibility
�� &
==
��' )

Visibility
��* 4
.
��4 5
Visible
��5 <
)
��< =
{
��> ?
ValidatePassword
��  
(
��  !
txtPassword
��! ,
.
��, -
Password
��- 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
void
�� 0
"TxtPasswordVisible_PasswordChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
RoutedEventArgs
��G V
e
��W X
)
��X Y
{
��Z [
if
�� 
(
��  
txtPasswordVisible
�� "
.
��" #

Visibility
��# -
==
��. 0

Visibility
��1 ;
.
��; <
Visible
��< C
)
��C D
{
��E F
ValidatePassword
��  
(
��  ! 
txtPasswordVisible
��! 3
.
��3 4
Text
��4 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
�� 
ValidatePassword
�� %
(
��% &
string
��& ,
password
��- 5
)
��5 6
{
��7 8
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidatePassword
�� +
(
��+ ,
password
��, 4
)
��4 5
)
��5 6
{
��7 8
HighlightField
�� 
(
�� 
txtPassword
�� *
)
��* +
;
��+ ,
lbInvalidPassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtPassword
�� &
)
��& '
;
��' (
lbInvalidPassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
}
�� 
}
�� 	
private
�� 
void
�� '
BtnTogglePassword_Checked
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
��Q R 
txtPasswordVisible
�� 
.
�� 
Text
�� #
=
��$ %
txtPassword
��& 1
.
��1 2
Password
��2 :
;
��: ; 
txtPasswordVisible
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
	Collapsed
��0 9
;
��9 :
}
�� 	
private
�� 
void
�� )
BtnTogglePassword_Unchecked
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
��S T
txtPassword
�� 
.
�� 
Password
��  
=
��! " 
txtPasswordVisible
��# 5
.
��5 6
Text
��6 :
;
��: ; 
txtPasswordVisible
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
Visible
��0 7
;
��7 8
}
�� 	
private
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
)
��2 3
{
��4 5
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
txtPassword
��& 1
.
��1 2
Password
��2 :
)
��: ;
||
��< >
!
��? @
string
��@ F
.
��F G
IsNullOrEmpty
��G T
(
��T U 
txtPasswordVisible
��U g
.
��g h
Text
��h l
)
��l m
)
��m n
{
��o p
btnTogglePassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
}
�� 
else
�� 
{
�� 
btnTogglePassword
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
}
�� 
}
�� 	
private
�� 
void
�� 

ResetField
�� 
(
��  
Control
��  '
control
��( /
)
��/ 0
{
��1 2
control
�� 
.
�� 
BorderBrush
�� 
=
��  !
Brushes
��" )
.
��) *
White
��* /
;
��/ 0
}
�� 	
private
�� 
void
�� !
TxtName_TextChanged
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
TextChangedEventArgs
��8 L
e
��M N
)
��N O
{
��P Q
string
�� 
username
�� 
=
�� 
txtName
�� %
.
��% &
Text
��& *
;
��* +
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidateUsername
�� +
(
��+ ,
username
��, 4
)
��4 5
)
��5 6
{
��7 8
HighlightField
�� 
(
�� 
txtName
�� &
)
��& '
;
��' (
lbInvalidUser
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
Visible
��6 =
;
��= >
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtName
�� "
)
��" #
;
��# $
lbInvalidUser
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� "
TxtEmail_TextChanged
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8"
TextChangedEventArgs
��9 M
e
��N O
)
��O P
{
��Q R
string
�� 
email
�� 
=
�� 
txtEmail
�� #
.
��# $
Text
��$ (
;
��( )
if
�� 
(
�� 
!
�� 
	Validador
�� 
.
�� 
ValidateEmail
�� (
(
��( )
email
��) .
)
��. /
)
��/ 0
{
��1 2
HighlightField
�� 
(
�� 
txtEmail
�� '
)
��' (
;
��( )
lbInvalidEmail
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?
}
�� 
else
�� 
{
�� 

ResetField
�� 
(
�� 
txtEmail
�� #
)
��# $
;
��$ %
lbInvalidEmail
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
}
�� 
}
�� 	
private
�� 
void
�� 
GoToLoginView
�� "
(
��" #
)
��# $
{
��% &
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
.
��& '
	CanGoBack
��' 0
)
��0 1
{
��2 3
this
�� 
.
�� 
NavigationService
�� &
.
��& '
GoBack
��' -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 	
private
�� 
void
�� 
BtnBack_Click
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
RoutedEventArgs
��2 A
e
��B C
)
��C D
{
��E F
GoToLoginView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
BtnBackValidate_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N
verificationGrid
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
	Collapsed
��5 >
;
��> ?
txtEmail
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtName
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtPassword
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��   
txtPasswordVisible
�� 
.
�� 
Clear
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
private
�� 
void
�� +
TxtValidationCode_TextChanged
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
TextChangedEventArgs
��B V
e
��W X
)
��X Y
{
��Z [
TextBox
�� 
currentTextBox
�� "
=
��# $
sender
��% +
as
��, .
TextBox
��/ 6
;
��6 7
if
�� 
(
�� 
currentTextBox
�� 
.
�� 
Text
�� #
.
��# $
Length
��$ *
==
��+ -
$num
��. /
)
��/ 0
{
��1 2
if
�� 
(
�� 
currentTextBox
�� "
==
��# % 
txtValidationCode1
��& 8
)
��8 9 
txtValidationCode2
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode2
��+ =
)
��= > 
txtValidationCode3
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode3
��+ =
)
��= > 
txtValidationCode4
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode4
��+ =
)
��= > 
txtValidationCode5
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
else
�� 
if
�� 
(
�� 
currentTextBox
�� '
==
��( * 
txtValidationCode5
��+ =
)
��= > 
txtValidationCode6
�� &
.
��& '
Focus
��' ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 	
}
�� 
}�� ��
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
)	CC �
)
CC� �
;
CC� �
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
)	uu �
)
uu� �
;
uu� �
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
�� 
.
�� 
	IsEnabled
��  
=
��! "
true
��# '
;
��' (
btnAddFriend
�� 
.
�� 

Background
�� '
=
��( )
new
��* -
SolidColorBrush
��. =
(
��= >
Color
��> C
.
��C D
FromArgb
��D L
(
��L M
$num
��M O
,
��O P
$num
��Q S
,
��S T
$num
��U W
,
��W X
$num
��Y [
)
��[ \
)
��\ ]
;
��] ^
}
�� 
else
�� 
{
�� 
txtFriendName
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
btnAdd
�� 
.
�� 

Visibility
�� !
=
��" #

Visibility
��$ .
.
��. /
	Collapsed
��/ 8
;
��8 9
txtFriendName
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
btnAdd
�� 
.
�� 
	IsEnabled
��  
=
��! "
false
��# (
;
��( )
btnAddFriend
�� 
.
�� 

Background
�� '
=
��( )
new
��* -
SolidColorBrush
��. =
(
��= >
Color
��> C
.
��C D
FromArgb
��D L
(
��L M
$num
��M P
,
��P Q
$num
��R T
,
��T U
$num
��V X
,
��X Y
$num
��Z \
)
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
BtnAdd_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
��J K
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 

friendName
�� 
=
�� 
txtFriendName
��  -
.
��- .
Text
��. 2
.
��2 3
Trim
��3 7
(
��7 8
)
��8 9
;
��9 :
try
�� 
{
�� 
if
�� 
(
��  
ValidateFriendName
�� &
(
��& '

friendName
��' 1
)
��1 2
)
��2 3
{
��4 5
await
�� 
	AddFriend
�� #
(
��# $

friendName
��$ .
)
��. /
;
��/ 0
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
finally
�� 
{
�� 
txtFriendName
�� 
.
�� 
Clear
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 	
private
�� 
bool
��  
ValidateFriendName
�� '
(
��' (
string
��( .

friendName
��/ 9
)
��9 :
{
��; <
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %

friendName
��% /
)
��/ 0
)
��0 1
{
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogInvalidName
��I Z
)
��Z [
;
��[ \
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
	AddFriend
�� $
(
��$ %
string
��% +

friendName
��, 6
)
��6 7
{
��8 9
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
int
�� 
friendProfileId
�� #
=
��$ %
await
��& +
_userManager
��, 8
.
��8 9
GetProfileIdAsync
��9 J
(
��J K

friendName
��K U
)
��U V
;
��V W
if
�� 
(
�� 
friendProfileId
�� #
==
��$ &"
UserProfileSingleton
��' ;
.
��; <
	IdProfile
��< E
)
��E F
{
��G H
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogCannotAddSelfAsFriend
��M h
)
��h i
;
��i j
}
�� 
else
�� 
if
�� 
(
�� 
friendProfileId
�� *
>
��+ ,
$num
��- .
)
��. /
{
��0 1
await
�� #
ExecuteFriendAddition
�� /
(
��/ 0
friendProfileId
��0 ?
,
��? @

friendName
��A K
)
��K L
;
��L M
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M#
dialogProfileNotFound
��M b
)
��b c
;
��c d
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� #
ExecuteFriendAddition
�� 0
(
��0 1
int
��1 4
friendProfileId
��5 D
,
��D E
string
��F L

friendName
��M W
)
��W X
{
��Y Z
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
int
�� 
userProfileId
�� !
=
��" #"
UserProfileSingleton
��$ 8
.
��8 9
	IdProfile
��9 B
;
��B C
int
�� 
result
�� 
=
�� 
await
�� "
_friendsManager
��# 2
.
��2 3
AddFriendAsync
��3 A
(
��A B
userProfileId
��B O
,
��O P
friendProfileId
��Q `
)
��` a
;
��a b
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� '
.
��' (
SUCCES_OPERATION
��( 8
)
��8 9
{
��: ;
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :
string
��: @
.
��@ A
Format
��A G
(
��G H

Properties
��H R
.
��R S
	Resources
��S \
.
��\ ])
dialogAddFriendSuccessfully
��] x
,
��x y

friendName��z �
)��� �
)��� �
;��� �
await
�� "
LoadFriendsListAsync
�� .
(
��. /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogErrorAddingFriend
��M d
)
��d e
;
��e f
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� "
LoadFriendsListAsync
�� /
(
��/ 0
)
��0 1
{
��2 3
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
int
�� 
userProfileId
�� !
=
��" #"
UserProfileSingleton
��$ 8
.
��8 9
	IdProfile
��9 B
;
��B C
var
�� 
friendsList
�� 
=
��  !
await
��" '
_friendsManager
��( 7
.
��7 8
GetFriendsAsync
��8 G
(
��G H
userProfileId
��H U
)
��U V
;
��V W
var
�� 
friendsWithStatus
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
foreach
�� 
(
�� 
var
�� 
friend
�� #
in
��$ &
friendsList
��' 2
)
��2 3
{
��4 5
var
�� 
status
�� 
=
��  
await
��! &
_statusManager
��' 5
.
��5 6"
GetPlayerStatusAsync
��6 J
(
��J K
friend
��K Q
.
��Q R
	IdProfile
��R [
)
��[ \
;
��\ ]
friendsWithStatus
�� %
.
��% &
Add
��& )
(
��) *
$"
��* ,
{
��, -
friend
��- 3
.
��3 4
Username
��4 <
}
��< =
$str
��= @
{
��@ A
status
��A G
}
��G H
"
��H I
)
��I J
;
��J K
}
�� 

lstFriends
�� 
.
�� 
ItemsSource
�� &
=
��' (
friendsWithStatus
��) :
;
��: ;
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� #
BtnRemoveFriend_Click
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
��S T
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 

lstFriends
�� 
.
�� 
SelectedItem
�� '
!=
��( *
null
��+ /
)
��/ 0
{
��1 2
string
��  
selectedFriendName
�� )
=
��* +

lstFriends
��, 6
.
��6 7
SelectedItem
��7 C
.
��C D
ToString
��D L
(
��L M
)
��M N
;
��N O
string
�� 

friendName
�� !
=
��" # 
selectedFriendName
��$ 6
.
��6 7
Split
��7 <
(
��< =
$char
��= @
)
��@ A
[
��A B
$num
��B C
]
��C D
.
��D E
Trim
��E I
(
��I J
)
��J K
;
��K L
try
�� 
{
�� 
int
�� 
friendProfileId
�� '
=
��( )
await
��* /
_userManager
��0 <
.
��< =
GetProfileIdAsync
��= N
(
��N O

friendName
��O Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
friendProfileId
�� '
>
��( )
$num
��* +
)
��+ ,
{
��- .
int
�� 
userProfileId
�� )
=
��* +"
UserProfileSingleton
��, @
.
��@ A
	IdProfile
��A J
;
��J K
int
�� 
result
�� "
=
��# $
await
��% *
_friendsManager
��+ :
.
��: ;
DeleteFriendAsync
��; L
(
��L M
userProfileId
��M Z
,
��Z [
friendProfileId
��\ k
)
��k l
;
��l m
if
�� 
(
�� 
result
�� "
==
��# %
	Constants
��& /
.
��/ 0
SUCCES_OPERATION
��0 @
)
��@ A
{
��B C
DialogManager
�� )
.
��) *%
ShowSuccessMessageAlert
��* A
(
��A B
string
��B H
.
��H I
Format
��I O
(
��O P

Properties
��P Z
.
��Z [
	Resources
��[ d
.
��d e%
dialogFriendshipDeleted
��e |
,
��| }

friendName��~ �
)��� �
)��� �
;��� �
await
�� !"
LoadFriendsListAsync
��" 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
��  
DialogManager
�� )
.
��) *#
ShowErrorMessageAlert
��* ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U+
dialogErrorDeletingFriendship
��U r
)
��r s
;
��s t
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q'
dialogNotRetrievedProfile
��Q j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K(
dialogSelectFriendToDelete
��K e
)
��e f
;
��f g
}
�� 
}
�� 	
private
�� 
async
�� 
void
��  
BtnStartGame_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
��P Q!
GoToCreateLobbyView
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� 
BtnProfile_Click
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
��H I
GoToPerfilView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
BtnLaderboard_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
��K L 
GoToLaderboardView
�� 
(
�� 
)
��  
;
��  !
}
�� 	
private
�� 
void
�� 
BtnJoinGame_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
��I J!
GoToSelectLobbyView
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� !
GoToCreateLobbyView
�� (
(
��( )
)
��) *
{
��+ ,
CreateLobbyView
�� 
lobbyConfig
�� '
=
��( )
new
��* -
CreateLobbyView
��. =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
lobbyConfig
��0 ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
private
�� 
void
�� 
GoToPerfilView
�� #
(
��# $
)
��$ %
{
��& '
ProfileView
�� 
profileView
�� #
=
��$ %
new
��& )
ProfileView
��* 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
profileView
��0 ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
private
�� 
void
��  
GoToLaderboardView
�� '
(
��' (
)
��( )
{
��* +

Laderboard
�� 
laderboardView
�� %
=
��& '
new
��( +

Laderboard
��, 6
(
��6 7
)
��7 8
;
��8 9
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
laderboardView
��0 >
)
��> ?
;
��? @
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
private
�� 
void
�� !
GoToSelectLobbyView
�� (
(
��( )
)
��) *
{
��+ ,
SelectLobbyView
�� 
selectLobbyView
�� +
=
��, -
new
��. 1
SelectLobbyView
��2 A
(
��A B
)
��B C
;
��C D
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
selectLobbyView
��0 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
}
�� 
}�� ��
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
)	HH �
)
HH� �
;
HH� �
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
)	\\ �
)
\\� �
;
\\� �
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
	IdProfile	ccz �
)
cc� �
)
cc� �
;
cc� �
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
)	uu �
)
uu� �
;
uu� �
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
�� 
;
�� 
try
�� 
{
�� 
await
�� 
_chatManager
�� &
.
��& '
SendMessageAsync
��' 7
(
��7 8"
UserProfileSingleton
��8 L
.
��L M
UserName
��M U
,
��U V
message
��W ^
,
��^ _

_lobbyCode
��` j
)
��j k
;
��k l
txtMessageInput
�� #
.
��# $
Clear
��$ )
(
��) *
)
��* +
;
��+ ,
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
void
�� 
InitializeLobby
�� )
(
��) *
)
��* +
{
��, -
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
Lobby
�� 
lobby
�� 
=
�� 
await
�� #
_lobbyBrowser
��$ 1
.
��1 2!
GetLobbyByCodeAsync
��2 E
(
��E F

_lobbyCode
��F P
)
��P Q
;
��Q R"
UserProfileSingleton
�� $
.
��$ %
UpdateLobbyCode
��% 4
(
��4 5

_lobbyCode
��5 ?
)
��? @
;
��@ A"
UserProfileSingleton
�� $
.
��$ %
UpdateChatCode
��% 3
(
��3 4

_lobbyCode
��4 >
)
��> ?
;
��? @
if
�� 
(
�� 

IsUserHost
�� 
(
�� 
lobby
�� $
)
��$ %
)
��% &
{
��' (
	lbPlayer1
�� 
.
�� 
Content
�� %
=
��& '
lobby
��( -
.
��- .
Players
��. 5
.
��5 6
ContainsKey
��6 A
(
��A B
$str
��B M
)
��M N
?
��O P
lobby
��Q V
.
��V W
Players
��W ^
[
��^ _
$str
��_ j
]
��j k
.
��k l
Username
��l t
:
��u v

Properties��w �
.��� �
	Resources��� �
.��� �"
lbWaitingForPlayer��� �
;��� �
	lbPlayer2
�� 
.
�� 
Content
�� %
=
��& '
lobby
��( -
.
��- .
Players
��. 5
.
��5 6
ContainsKey
��6 A
(
��A B
$str
��B M
)
��M N
?
��O P
lobby
��Q V
.
��V W
Players
��W ^
[
��^ _
$str
��_ j
]
��j k
.
��k l
Username
��l t
:
��u v

Properties��w �
.��� �
	Resources��� �
.��� �"
lbWaitingForPlayer��� �
;��� �
imageProfile1
�� !
.
��! "
Source
��" (
=
��) *
new
��+ .
BitmapImage
��/ :
(
��: ;
new
��; >
Uri
��? B
(
��B C"
UserProfileSingleton
��C W
.
��W X
PicPath
��X _
,
��_ `
UriKind
��a h
.
��h i 
RelativeOrAbsolute
��i {
)
��{ |
)
��| }
;
��} ~
imageProfile2
�� !
.
��! "
Source
��" (
=
��) *
null
��+ /
;
��/ 0
}
�� 
else
�� 
{
�� 
	lbPlayer1
�� 
.
�� 
Content
�� %
=
��& '
lobby
��( -
.
��- .
Players
��. 5
.
��5 6
ContainsKey
��6 A
(
��A B
$str
��B M
)
��M N
?
��O P
lobby
��Q V
.
��V W
Players
��W ^
[
��^ _
$str
��_ j
]
��j k
.
��k l
Username
��l t
:
��u v

Properties��w �
.��� �
	Resources��� �
.��� �"
lbWaitingForPlayer��� �
;��� �
	lbPlayer2
�� 
.
�� 
Content
�� %
=
��& '
lobby
��( -
.
��- .
Players
��. 5
.
��5 6
ContainsKey
��6 A
(
��A B
$str
��B M
)
��M N
?
��O P
lobby
��Q V
.
��V W
Players
��W ^
[
��^ _
$str
��_ j
]
��j k
.
��k l
Username
��l t
:
��u v

Properties��w �
.��� �
	Resources��� �
.��� �"
lbWaitingForPlayer��� �
;��� �
imageProfile1
�� !
.
��! "
Source
��" (
=
��) *
new
��+ .
BitmapImage
��/ :
(
��: ;
new
��; >
Uri
��? B
(
��B C"
UserProfileSingleton
��C W
.
��W X
PicPath
��X _
,
��_ `
UriKind
��a h
.
��h i 
RelativeOrAbsolute
��i {
)
��{ |
)
��| }
;
��} ~
string
�� 
ruta
�� 
=
��  !
_userManager
��" .
.
��. /

GetPicPath
��/ 9
(
��9 :
lobby
��: ?
.
��? @
Players
��@ G
[
��G H
$str
��H S
]
��S T
.
��T U
Username
��U ]
)
��] ^
;
��^ _
imageProfile2
�� !
.
��! "
Source
��" (
=
��) *
new
��+ .
BitmapImage
��/ :
(
��: ;
new
��; >
Uri
��? B
(
��B C
ruta
��C G
,
��G H
UriKind
��I P
.
��P Q 
RelativeOrAbsolute
��Q c
)
��c d
)
��d e
;
��e f
btnKickPlayer
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
btnInvitedFriend
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
	Collapsed
��= F
;
��F G
btnStartGame
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
bool
�� 

IsUserHost
�� 
(
��  
Lobby
��  %
lobby
��& +
)
��+ ,
{
��- .
return
�� 
lobby
�� 
.
�� 
Players
��  
.
��  !
TryGetValue
��! ,
(
��, -
$str
��- 8
,
��8 9
out
��: =
var
��> A
host
��B F
)
��F G
&&
��H J
host
��K O
.
��O P
Username
��P X
==
��Y ["
UserProfileSingleton
��\ p
.
��p q
UserName
��q y
;
��y z
}
�� 	
private
�� 
async
�� 
void
�� 
BtnBack_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
��K L
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
await
�� 
_lobbyManager
�� #
.
��# $
LeaveLobbyAsync
��$ 3
(
��3 4

_lobbyCode
��4 >
,
��> ?"
UserProfileSingleton
��@ T
.
��T U
	IdProfile
��U ^
)
��^ _
;
��_ `
await
�� 
_chatManager
�� "
.
��" #
LeaveChatAsync
��# 1
(
��1 2"
UserProfileSingleton
��2 F
.
��F G
UserName
��G O
,
��O P

_lobbyCode
��Q [
)
��[ \
;
��\ ]
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� 
ExitUseSinglenton
�� &
(
��& '
)
��' (
{
��) *"
UserProfileSingleton
��  
.
��  !
ResetLobbyCode
��! /
(
��/ 0
)
��0 1
;
��1 2"
UserProfileSingleton
��  
.
��  !
ResetChatCode
��! .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� "
UserProfileSingleton
�� $
.
��$ %
	IdProfile
��% .
<
��/ 0
$num
��1 7
)
��7 8
{
��9 :
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
GoToLoginView
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
	OnClosing
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
CancelEventArgs
��4 C
e
��D E
)
��E F
{
��G H
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
_isConnected
�� 
)
�� 
{
�� 
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Run
�� "
(
��" #
(
��# $
)
��$ %
=>
��& (
_lobbyManager
�� !
.
��! "

LeaveLobby
��" ,
(
��, -

_lobbyCode
��- 7
,
��7 8"
UserProfileSingleton
��9 M
.
��M N
	IdProfile
��N W
)
��W X
)
��X Y
;
��Y Z
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
ScrollToBottom
�� #
(
��# $
)
��$ %
{
��& '
var
�� 
scrollViewer
�� 
=
�� 
VisualTreeHelper
�� /
.
��/ 0
	GetParent
��0 9
(
��9 :
ChatMessagesPanel
��: K
)
��K L
as
��M O
ScrollViewer
��P \
;
��\ ]
scrollViewer
�� 
?
�� 
.
�� 
ScrollToEnd
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
private
�� 
void
�� 
GoToMenuView
�� !
(
��! "
)
��" #
{
��$ %
MenuView
�� 
menuView
�� 
=
�� 
new
��  #
MenuView
��$ ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
menuView
��0 8
)
��8 9
;
��9 :
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
private
�� 
void
�� 
GoToLoginView
�� "
(
��" #
)
��# $
{
��% &
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
	loginView
��0 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
public
�� 
void
�� 
RemoveFromLobby
�� #
(
��# $
)
��$ %
{
��& '

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K
dialogLobbyExit
��K Z
)
��Z [
;
��[ \
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
HostLeftCallback
�� $
(
��$ %
)
��% &
{
��' (

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
async
�� #
(
��$ %
)
��% &
=>
��' )
{
��* +
await
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
��  
)
��  !
=>
��" $
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 1
(
��1 2

Properties
��2 <
.
��< =
	Resources
��= F
.
��F G!
dialogHostLeftLobby
��G Z
)
��Z [
)
�� 
;
�� 
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
GuestLeftCallback
�� %
(
��% &
)
��& '
{
��( )

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
string
�� 
waitingMessage
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =$
dialogWaitingForPlayer
��= S
;
��S T
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
waitingMessage
��$ 2
;
��2 3
imageProfile2
�� 
.
�� 
Source
�� $
=
��% &
null
��' +
;
��+ ,
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� !
GuestJoinedCallback
�� '
(
��' (
string
��( .
	guestName
��/ 8
,
��8 9
string
��: @
picturePath
��A L
,
��L M
int
��N Q
	idProfile
��R [
)
��[ \
{
��] ^

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
	guestName
��$ -
;
��- .
if
�� 
(
�� 
	idProfile
�� 
<
�� 
$num
��  &
)
��& '
{
��( )
string
�� 
ruta
�� 
=
��  !
_userManager
��" .
.
��. /

GetPicPath
��/ 9
(
��9 :
	guestName
��: C
)
��C D
;
��D E
imageProfile2
�� !
.
��! "
Source
��" (
=
��) *
new
��+ .
BitmapImage
��/ :
(
��: ;
new
��; >
Uri
��? B
(
��B C
ruta
��C G
,
��G H
UriKind
��I P
.
��P Q 
RelativeOrAbsolute
��Q c
)
��c d
)
��d e
;
��e f
}
�� 
else
�� 
{
�� 
string
�� 
ruta
�� 
=
��  !
picturePath
��" -
;
��- .
imageProfile2
�� !
.
��! "
Source
��" (
=
��) *
new
��+ .
BitmapImage
��/ :
(
��: ;
new
��; >
Uri
��? B
(
��B C
ruta
��C G
,
��G H
UriKind
��I P
.
��P Q 
RelativeOrAbsolute
��Q c
)
��c d
)
��d e
;
��e f
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
��  
BtnStartGame_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
��J K
_lobbyManager
�� 
.
�� 

StartMatch
�� $
(
��$ %

_lobbyCode
��% /
)
��/ 0
;
��0 1
}
�� 	
public
�� 
void
�� 
BroadcastMessage
�� $
(
��$ %
Message
��% ,
message
��- 4
)
��4 5
{
��6 7
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
Border
�� 
messageContainer
�� '
=
��( )
new
��* -
Border
��. 4
{
��5 6

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
BorderThickness
�� #
=
��$ %
new
��& )
	Thickness
��* 3
(
��3 4
$num
��4 5
)
��5 6
,
��6 7
Padding
�� 
=
�� 
new
�� !
	Thickness
��" +
(
��+ ,
$num
��, .
)
��. /
,
��/ 0
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 7
)
��7 8
,
��8 9!
HorizontalAlignment
�� '
=
��( )
message
��* 1
.
��1 2
userName
��2 :
==
��; ="
UserProfileSingleton
��> R
.
��R S
UserName
��S [
?
��\ ]!
HorizontalAlignment
��^ q
.
��q r
Right
��r w
:
��x y"
HorizontalAlignment��z �
.��� �
Left��� �
}
�� 
;
�� 
	TextBlock
�� 
messageBlock
�� &
=
��' (
new
��) ,
	TextBlock
��- 6
{
��7 8
Text
�� 
=
�� 
$"
�� 
{
�� 
message
�� %
.
��% &
chatMessage
��& 1
}
��1 2
$str
��2 3
{
��3 4
DateTime
��4 <
.
��< =
Now
��= @
:
��@ A
$str
��A F
}
��F G
"
��G H
,
��H I

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
Black
��< A
)
��A B
,
��B C
FontSize
�� 
=
�� 
$num
�� !
,
��! "

FontWeight
�� 
=
��  
FontWeights
��! ,
.
��, -
Bold
��- 1
,
��1 2
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
MaxWidth
�� 
=
�� 
$num
�� "
}
�� 
;
�� 
messageContainer
��  
.
��  !
Child
��! &
=
��' (
messageBlock
��) 5
;
��5 6
ChatMessagesPanel
�� !
.
��! "
Children
��" *
.
��* +
Add
��+ .
(
��. /
messageContainer
��/ ?
)
��? @
;
��@ A
ScrollToBottom
�� 
(
�� 
)
��  
;
��  !
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
GameStarted
�� 
(
��  
)
��  !
{
��" #
GoToGameMatch
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
GoToGameMatch
�� "
(
��" #
)
��# $
{
��% &
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
var
�� 
	gameMatch
�� 
=
�� 
new
��  #
	GameMatch
��$ -
(
��- .

_lobbyCode
��. 8
)
��8 9
;
��9 :
NavigationService
�� !
?
��! "
.
��" #
Navigate
��# +
(
��+ ,
	gameMatch
��, 5
)
��5 6
;
��6 7
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� "
LoadFriendsListAsync
�� /
(
��/ 0
)
��0 1
{
��2 3
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
int
�� 
userProfileId
�� !
=
��" #"
UserProfileSingleton
��$ 8
.
��8 9
	IdProfile
��9 B
;
��B C
var
�� 
friendsList
�� 
=
��  !
await
��" '
_friendsManager
��( 7
.
��7 8
GetFriendsAsync
��8 G
(
��G H
userProfileId
��H U
)
��U V
;
��V W
var
�� 
friendsWithStatus
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
string
��1 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
foreach
�� 
(
�� 
var
�� 
friend
�� #
in
��$ &
friendsList
��' 2
)
��2 3
{
��4 5
var
�� 
status
�� 
=
��  
await
��! &
_statusManager
��' 5
.
��5 6"
GetPlayerStatusAsync
��6 J
(
��J K
friend
��K Q
.
��Q R
	IdProfile
��R [
)
��[ \
;
��\ ]
friendsWithStatus
�� %
.
��% &
Add
��& )
(
��) *
$"
��* ,
{
��, -
friend
��- 3
.
��3 4
Username
��4 <
}
��< =
$str
��= @
{
��@ A
status
��A G
}
��G H
"
��H I
)
��I J
;
��J K
}
�� 

lstFriends
�� 
.
�� 
ItemsSource
�� &
=
��' (
friendsWithStatus
��) :
;
��: ;
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� $
BtnInvitedFriend_Click
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @
RoutedEventArgs
��A P
e
��Q R
)
��R S
{
��T U
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
_elementsVisible
��  
=
��! "
!
��# $
_elementsVisible
��$ 4
;
��4 5
if
�� 
(
�� 
_elementsVisible
�� $
)
��$ %
{
��& '
gridInvitedFriend
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F

lstFriends
�� 
.
�� 
	IsEnabled
�� (
=
��) *
true
��+ /
;
��/ 0

btnInvited
�� 
.
�� 
	IsEnabled
�� (
=
��) *
true
��+ /
;
��/ 0
await
�� "
LoadFriendsListAsync
�� .
(
��. /
)
��/ 0
;
��0 1
btnInvitedFriend
�� $
.
��$ %

Background
��% /
=
��0 1
new
��2 5
SolidColorBrush
��6 E
(
��E F
Colors
��F L
.
��L M
Green
��M R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
gridInvitedFriend
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
	Collapsed
��> G
;
��G H

lstFriends
�� 
.
�� 
	IsEnabled
�� (
=
��) *
false
��+ 0
;
��0 1

btnInvited
�� 
.
�� 
	IsEnabled
�� (
=
��) *
false
��+ 0
;
��0 1
btnInvitedFriend
�� $
.
��$ %

Background
��% /
=
��0 1
new
��2 5
SolidColorBrush
��6 E
(
��E F
Color
��F K
.
��K L
FromArgb
��L T
(
��T U
$num
��U X
,
��X Y
$num
��Z ]
,
��] ^
$num
��_ b
,
��b c
$num
��d g
)
��g h
)
��h i
;
��i j
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
BtnInvited_Click
�� +
(
��+ ,
object
��, 2
sender
��3 9
,
��9 :
RoutedEventArgs
��; J
e
��K L
)
��L M
{
��N O
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 

lstFriends
�� 
.
�� 
SelectedItem
�� '
!=
��( *
null
��+ /
)
��/ 0
{
��1 2
string
��  
selectedFriendName
�� )
=
��* +

lstFriends
��, 6
.
��6 7
SelectedItem
��7 C
.
��C D
ToString
��D L
(
��L M
)
��M N
;
��N O
string
�� 

friendName
�� !
=
��" # 
selectedFriendName
��$ 6
.
��6 7
Split
��7 <
(
��< =
$char
��= @
)
��@ A
[
��A B
$num
��B C
]
��C D
.
��D E
Trim
��E I
(
��I J
)
��J K
;
��K L
try
�� 
{
�� 
int
�� 
result
�� 
=
��  
await
��! &%
_emailInvitationManager
��' >
.
��> ?!
SendInvitationAsync
��? R
(
��R S

friendName
��S ]
,
��] ^

_lobbyCode
��_ i
)
��i j
;
��j k
if
�� 
(
�� 
result
�� 
==
�� !
	Constants
��" +
.
��+ ,
SUCCES_OPERATION
��, <
)
��< =
{
��> ?
DialogManager
�� %
.
��% &%
ShowSuccessMessageAlert
��& =
(
��= >
string
��> D
.
��D E
Format
��E K
(
��K L

Properties
��L V
.
��V W
	Resources
��W `
.
��` a"
dialogInvitationSent
��a u
,
��u v

friendName��w �
)��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q*
dialogErrorSendingInvitation
��Q m
)
��m n
;
��n o
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K(
dialogSelectFriendToInvite
��K e
)
��e f
;
��f g
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� !
BtnKickPlayer_Click
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
��Q R
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
MessageBoxResult
�� 
result
�� #
=
��$ %

MessageBox
��& 0
.
��0 1
Show
��1 5
(
��5 6

Properties
�� 
.
�� 
	Resources
�� $
.
��$ %%
dialogConfirmKickPlayer
��% <
,
��< =

Properties
�� 
.
�� 
	Resources
�� $
.
��$ %
titleConfirmKick
��% 5
,
��5 6
MessageBoxButton
��  
.
��  !
YesNo
��! &
,
��& '
MessageBoxImage
�� 
.
��  
Question
��  (
)
�� 
;
�� 
if
�� 
(
�� 
result
�� 
==
�� 
MessageBoxResult
�� *
.
��* +
Yes
��+ .
)
��. /
{
��0 1
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Run
�� "
(
��" #
(
��# $
)
��$ %
=>
��& (
_lobbyManager
��) 6
.
��6 7

KickPlayer
��7 A
(
��A B

_lobbyCode
��B L
)
��L M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
KickedFromLobby
�� #
(
��# $
)
��$ %
{
��& '

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K#
dialogKickedFromLobby
��K `
)
��` a
;
��a b
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �&
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
)	&& �
)
&&� �
;
&&� �
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
}33 �P
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
)	DD �
)
DD� �
;
DD� �
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
}ll ��
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
)	DD �
)
DD� �
;
DD� �
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
)	ee �
)
ee� �
;
ee� �
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
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
drawingCanvas
�� 
.
�� 
Children
�� &
.
��& '
Remove
��' -
(
��- .
_currentLine
��. :
)
��: ;
;
��; <!
_matchManagerClient
�� #
.
��# $
EndTurnAsync
��$ 0
(
��0 1

_matchCode
��1 ;
,
��; <"
UserProfileSingleton
��= Q
.
��Q R
UserName
��R Z
)
��Z [
;
��[ \
progressBarTimer
��  
.
��  !

Foreground
��! +
=
��, -
Brushes
��. 5
.
��5 6
Gray
��6 :
;
��: ;
}
�� 
}
�� 	
private
�� 
void
�� 
Canvas_MouseDown
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4"
MouseButtonEventArgs
��5 I
e
��J K
)
��K L
{
��M N
Point
�� 
mousePosition
�� 
=
��  !
e
��" #
.
��# $
GetPosition
��$ /
(
��/ 0
drawingCanvas
��0 =
)
��= >
;
��> ?

_startNode
�� 
=
�� 
FindNodeNearPoint
�� *
(
��* +
mousePosition
��+ 8
)
��8 9
;
��9 :
if
�� 
(
�� 

_startNode
�� 
==
�� 
null
�� "
)
��" #
{
��$ %
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogInvalidStartNode
��I _
)
��_ `
;
��` a
return
�� 
;
�� 
}
�� 

_isDrawing
�� 
=
�� 
true
�� 
;
�� !
_currentTracePoints
�� 
.
��  
Clear
��  %
(
��% &
)
��& '
;
��' (!
_currentTracePoints
�� 
.
��  
Add
��  #
(
��# $
new
��$ '"
TripasDeGatoServicio
��( <
.
��< =

TracePoint
��= G
{
��H I
X
��J K
=
��L M
mousePosition
��N [
.
��[ \
X
��\ ]
,
��] ^
Y
��_ `
=
��a b
mousePosition
��c p
.
��p q
Y
��q r
}
��s t
)
��t u
;
��u v
_currentLine
�� 
=
�� 
new
�� 
Polyline
�� '
{
��( )
Stroke
�� 
=
�� 
Brushes
��  
.
��  !
Blue
��! %
,
��% &
StrokeThickness
�� 
=
��  !
$num
��" #
}
�� 
;
�� 
drawingCanvas
�� 
.
�� 
Children
�� "
.
��" #
Add
��# &
(
��& '
_currentLine
��' 3
)
��3 4
;
��4 5
_currentLine
�� 
.
�� 
Points
�� 
.
��  
Add
��  #
(
��# $
mousePosition
��$ 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
void
�� 
NotifyYourTurn
�� "
(
��" #
)
��# $
{
��% &
if
�� 
(
�� 
_timer
�� 
!=
�� 
null
�� 
)
�� 
{
��  !
_timer
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
_timer
�� 
.
�� 
Tick
�� 
-=
�� 

Timer_Tick
�� )
;
��) *
}
�� 
_remainingTime
�� 
=
�� 

_totalTime
�� '
;
��' (
progressBarTimer
�� 
.
�� 
Value
�� "
=
��# $
$num
��% (
;
��( )
progressBarTimer
�� 
.
�� 

Foreground
�� '
=
��( )
Brushes
��* 1
.
��1 2
Green
��2 7
;
��7 8
drawingCanvas
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
true
��& *
;
��* +
_isPlayerTurn
�� 
=
�� 
true
��  
;
��  !
lbMatchStatus
�� 
.
�� 
Content
�� !
=
��" #

Properties
��$ .
.
��. /
	Resources
��/ 8
.
��8 9#
lbMatchStatusYourTurn
��9 N
;
��N O
lbMatchStatus
�� 
.
�� 

Foreground
�� $
=
��% &
Brushes
��' .
.
��. /
Green
��/ 4
;
��4 5

StartTimer
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
NotifyNotYourTurn
�� %
(
��% &
)
��& '
{
��( )
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
if
�� 
(
�� 
_timer
�� 
!=
�� 
null
�� "
)
��" #
{
��$ %
_timer
�� 
.
�� 
Stop
�� 
(
��  
)
��  !
;
��! "
_timer
�� 
.
�� 
Tick
�� 
-=
��  "

Timer_Tick
��# -
;
��- .
}
�� 
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_isPlayerTurn
�� 
=
�� 
false
��  %
;
��% &
lbMatchStatus
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =&
lbMatchStatusNotYourTurn
��= U
;
��U V
lbMatchStatus
�� 
.
�� 

Foreground
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Red
��3 6
;
��6 7
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Canvas_MouseMove
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
MouseEventArgs
��5 C
e
��D E
)
��E F
{
��G H
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
!
�� 

_isDrawing
�� 
)
�� 
return
�� #
;
��# $
Point
�� 
mousePosition
�� 
=
��  !
e
��" #
.
��# $
GetPosition
��$ /
(
��/ 0
drawingCanvas
��0 =
)
��= >
;
��> ?
var
�� 
newPoint
�� 
=
�� 
new
�� "
TripasDeGatoServicio
�� 3
.
��3 4

TracePoint
��4 >
{
��? @
X
��A B
=
��C D
mousePosition
��E R
.
��R S
X
��S T
,
��T U
Y
��V W
=
��X Y
mousePosition
��Z g
.
��g h
Y
��h i
}
��j k
;
��k l
if
�� 
(
�� !
IsCollisionDetected
�� #
(
��# $
newPoint
��$ ,
)
��, -
)
��- .
{
��/ 0
HandleInfraction
��  
(
��  !

Properties
��! +
.
��+ ,
	Resources
��, 5
.
��5 6'
dialogInfractionCollision
��6 O
)
��O P
;
��P Q
try
�� 
{
�� !
_matchManagerClient
�� '
.
��' (
EndMatchAsync
��( 5
(
��5 6

_matchCode
��6 @
)
��@ A
;
��A B
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 2'
endpointNotFoundException
��3 L
)
��L M
{
��N O
logger
�� 
.
�� 
LogError
�� #
(
��# $'
endpointNotFoundException
��$ =
)
��= >
;
��> ?
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� )
timeoutException
��* :
)
��: ;
{
��< =
logger
�� 
.
�� 
LogError
�� #
(
��# $
timeoutException
��$ 4
)
��4 5
;
��5 6
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� /$
communicationException
��0 F
)
��F G
{
��H I
logger
�� 
.
�� 
LogError
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
catch
�� 
(
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
logger
�� 
.
�� 
LogError
�� #
(
��# $
	exception
��$ -
)
��- .
;
��. /
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8
string
��8 >
.
��> ?
Format
��? E
(
��E F

Properties
��F P
.
��P Q
	Resources
��Q Z
.
��Z [#
dialogUnexpectedError
��[ p
,
��p q
	exception
��r {
.
��{ |
Message��| �
)��� �
)��� �
;��� �
}
�� 
return
�� 
;
�� 
}
�� 
Node
�� 
currentNode
�� 
=
�� 
FindNodeNearPoint
�� 0
(
��0 1
mousePosition
��1 >
)
��> ?
;
��? @
if
�� 
(
�� 
currentNode
�� 
!=
�� 
null
�� #
&&
��$ &
currentNode
��' 2
!=
��3 5

_startNode
��6 @
)
��@ A
{
��B C
if
�� 
(
�� 
!
�� 
IsPair
�� 
(
�� 

_startNode
�� &
,
��& '
currentNode
��( 3
)
��3 4
)
��4 5
{
��6 7
HandleInfraction
�� $
(
��$ %

Properties
��% /
.
��/ 0
	Resources
��0 9
.
��9 :)
dialogInfractionInvalidNode
��: U
)
��U V
;
��V W
return
�� 
;
�� 
}
�� 
}
�� !
_currentTracePoints
�� 
.
��  
Add
��  #
(
��# $
newPoint
��$ ,
)
��, -
;
��- .
_currentLine
�� 
.
�� 
Points
�� 
.
��  
Add
��  #
(
��# $
mousePosition
��$ 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
bool
��  
IsPointNearSegment
�� '
(
��' ("
TripasDeGatoServicio
��( <
.
��< =

TracePoint
��= G
point
��H M
,
��M N
Point
��O T
start
��U Z
,
��Z [
Point
��\ a
end
��b e
)
��e f
{
��g h
double
�� 
distance
�� 
=
�� (
DistanceFromPointToSegment
�� 8
(
��8 9
point
��9 >
,
��> ?
start
��@ E
,
��E F
end
��G J
)
��J K
;
��K L
return
�� 
distance
�� 
<
�� 
$num
�� 
;
��  
}
�� 	
private
�� 
bool
�� !
IsCollisionDetected
�� (
(
��( )"
TripasDeGatoServicio
��) =
.
��= >

TracePoint
��> H
newPoint
��I Q
)
��Q R
{
��S T
foreach
�� 
(
�� 
var
�� 
polyline
�� !
in
��" $

_allTraces
��% /
)
��/ 0
{
��1 2
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
polyline
��$ ,
.
��, -
Points
��- 3
.
��3 4
Count
��4 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
��@ A
Point
�� 
start
�� 
=
��  !
polyline
��" *
.
��* +
Points
��+ 1
[
��1 2
i
��2 3
-
��4 5
$num
��6 7
]
��7 8
;
��8 9
Point
�� 
end
�� 
=
�� 
polyline
��  (
.
��( )
Points
��) /
[
��/ 0
i
��0 1
]
��1 2
;
��2 3
if
�� 
(
��  
IsPointNearSegment
�� *
(
��* +
newPoint
��+ 3
,
��3 4
start
��5 :
,
��: ;
end
��< ?
)
��? @
)
��@ A
{
��B C
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
double
�� (
DistanceFromPointToSegment
�� 1
(
��1 2"
TripasDeGatoServicio
��2 F
.
��F G

TracePoint
��G Q
point
��R W
,
��W X
Point
��Y ^
start
��_ d
,
��d e
Point
��f k
end
��l o
)
��o p
{
��q r
double
�� 
px
�� 
=
�� 
point
�� 
.
�� 
X
�� 
;
��  
double
�� 
py
�� 
=
�� 
point
�� 
.
�� 
Y
�� 
;
��  
double
�� 
sx
�� 
=
�� 
start
�� 
.
�� 
X
�� 
;
��  
double
�� 
sy
�� 
=
�� 
start
�� 
.
�� 
Y
�� 
;
��  
double
�� 
ex
�� 
=
�� 
end
�� 
.
�� 
X
�� 
;
�� 
double
�� 
ey
�� 
=
�� 
end
�� 
.
�� 
Y
�� 
;
�� 
double
�� 
dx
�� 
=
�� 
ex
�� 
-
�� 
sx
�� 
;
��  
double
�� 
dy
�� 
=
�� 
ey
�� 
-
�� 
sy
�� 
;
��  
double
�� 
lengthSquared
��  
=
��! "
dx
��# %
*
��& '
dx
��( *
+
��+ ,
dy
��- /
*
��0 1
dy
��2 4
;
��4 5
if
�� 
(
�� 
lengthSquared
�� 
==
��  
$num
��! "
)
��" #
return
��$ *
Math
��+ /
.
��/ 0
Sqrt
��0 4
(
��4 5
(
��5 6
px
��6 8
-
��9 :
sx
��; =
)
��= >
*
��? @
(
��A B
px
��B D
-
��E F
sx
��G I
)
��I J
+
��K L
(
��M N
py
��N P
-
��Q R
sy
��S U
)
��U V
*
��W X
(
��Y Z
py
��Z \
-
��] ^
sy
��_ a
)
��a b
)
��b c
;
��c d
double
�� 
t
�� 
=
�� 
(
�� 
(
�� 
px
�� 
-
�� 
sx
��  
)
��  !
*
��" #
dx
��$ &
+
��' (
(
��) *
py
��* ,
-
��- .
sy
��/ 1
)
��1 2
*
��3 4
dy
��5 7
)
��7 8
/
��9 :
lengthSquared
��; H
;
��H I
t
�� 
=
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
$num
�� 
,
�� 
Math
��  
.
��  !
Min
��! $
(
��$ %
$num
��% &
,
��& '
t
��( )
)
��) *
)
��* +
;
��+ ,
double
�� 
projX
�� 
=
�� 
sx
�� 
+
�� 
t
��  !
*
��" #
dx
��$ &
;
��& '
double
�� 
projY
�� 
=
�� 
sy
�� 
+
�� 
t
��  !
*
��" #
dy
��$ &
;
��& '
return
�� 
Math
�� 
.
�� 
Sqrt
�� 
(
�� 
(
�� 
px
��  
-
��! "
projX
��# (
)
��( )
*
��* +
(
��, -
px
��- /
-
��0 1
projX
��2 7
)
��7 8
+
��9 :
(
��; <
py
��< >
-
��? @
projY
��A F
)
��F G
*
��H I
(
��J K
py
��K M
-
��N O
projY
��P U
)
��U V
)
��V W
;
��W X
}
�� 	
private
�� 
void
�� 
Canvas_MouseUp
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2"
MouseButtonEventArgs
��3 G
e
��H I
)
��I J
{
��K L
if
�� 
(
�� 
!
�� 

_isDrawing
�� 
)
�� 
return
�� #
;
��# $

_isDrawing
�� 
=
�� 
false
�� 
;
�� 
Point
�� 
mousePosition
�� 
=
��  !
e
��" #
.
��# $
GetPosition
��$ /
(
��/ 0
drawingCanvas
��0 =
)
��= >
;
��> ?
Node
�� 
endNode
�� 
=
�� 
FindNodeNearPoint
�� ,
(
��, -
mousePosition
��- :
)
��: ;
;
��; <
if
�� 
(
�� 
endNode
�� 
==
�� 
null
�� 
||
��  "
!
��# $
IsPair
��$ *
(
��* +

_startNode
��+ 5
,
��5 6
endNode
��7 >
)
��> ?
)
��? @
{
��A B
drawingCanvas
�� 
.
�� 
Children
�� &
.
��& '
Remove
��' -
(
��- .
_currentLine
��. :
)
��: ;
;
��; <
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogTraceMustConnectNodes
��I d
)
��d e
;
��e f
return
�� 
;
�� 
}
�� 
if
�� 
(
�� !
_currentTracePoints
�� #
.
��# $
Count
��$ )
>
��* +
$num
��, -
)
��- .
{
��/ 0

_allTraces
�� 
.
�� 
Add
�� 
(
�� 
_currentLine
�� +
)
��+ ,
;
��, -
	SendTrace
�� 
(
�� !
_currentTracePoints
�� -
)
��- .
;
��. /
Task
�� 
.
�� 
Run
�� 
(
�� 
(
�� 
)
�� 
=>
�� !
_matchManagerClient
�� 2
.
��2 3
EndTurnAsync
��3 ?
(
��? @

_matchCode
��@ J
,
��J K"
UserProfileSingleton
��L `
.
��` a
UserName
��a i
)
��i j
)
��j k
;
��k l
if
�� 
(
�� "
AreAllNodesConnected
�� (
(
��( )
)
��) *
)
��* +
{
��, -!
_matchManagerClient
�� '
.
��' (
EndMatchAsync
��( 5
(
��5 6

_matchCode
��6 @
)
��@ A
;
��A B
}
�� 
}
�� 
else
�� 
{
�� 
drawingCanvas
�� 
.
�� 
Children
�� &
.
��& '
Remove
��' -
(
��- .
_currentLine
��. :
)
��: ;
;
��; <
}
�� 
}
�� 	
private
�� 
bool
�� "
AreAllNodesConnected
�� )
(
��) *
)
��* +
{
��, -
foreach
�� 
(
�� 
var
�� 
pair
�� 
in
��  

_nodePairs
��! +
)
��+ ,
{
��- .
bool
�� 
isConnected
��  
=
��! "

_allTraces
��# -
.
��- .
Any
��. 1
(
��1 2
trace
��2 7
=>
��8 :
trace
�� 
.
�� 
Points
��  
.
��  !
Any
��! $
(
��$ %
point
��% *
=>
��+ -
FindNodeNearPoint
��. ?
(
��? @
point
��@ E
)
��E F
is
��G I
Node
��J N
start
��O T
&&
��U W
start
��X ]
.
��] ^
Id
��^ `
==
��a c
pair
��d h
.
��h i
Key
��i l
)
��l m
&&
��n p
trace
�� 
.
�� 
Points
��  
.
��  !
Any
��! $
(
��$ %
point
��% *
=>
��+ -
FindNodeNearPoint
��. ?
(
��? @
point
��@ E
)
��E F
is
��G I
Node
��J N
end
��O R
&&
��S U
end
��V Y
.
��Y Z
Id
��Z \
==
��] _
pair
��` d
.
��d e
Value
��e j
)
��j k
)
�� 
;
�� 
if
�� 
(
�� 
!
�� 
isConnected
��  
)
��  !
{
��" #
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
IsPair
�� 
(
�� 
Node
��  
start
��! &
,
��& '
Node
��( ,
end
��- 0
)
��0 1
{
��2 3
return
�� 

_nodePairs
�� 
.
�� 
ContainsKey
�� )
(
��) *
start
��* /
.
��/ 0
Id
��0 2
)
��2 3
&&
��4 6

_nodePairs
��7 A
[
��A B
start
��B G
.
��G H
Id
��H J
]
��J K
==
��L N
end
��O R
.
��R S
Id
��S U
;
��U V
}
�� 	
private
�� 
Node
�� 
FindNodeNearPoint
�� &
(
��& '
Point
��' ,
point
��- 2
)
��2 3
{
��4 5
const
�� 
double
�� 
detectionRadius
�� (
=
��) *
$num
��+ -
;
��- .
return
�� 
nodes
�� 
.
�� 
FirstOrDefault
�� '
(
��' (
node
��( ,
=>
��- /
Math
�� 
.
�� 
Sqrt
�� 
(
�� 
Math
�� 
.
�� 
Pow
�� "
(
��" #
node
��# '
.
��' (
X
��( )
-
��* +
point
��, 1
.
��1 2
X
��2 3
,
��3 4
$num
��5 6
)
��6 7
+
��8 9
Math
��: >
.
��> ?
Pow
��? B
(
��B C
node
��C G
.
��G H
Y
��H I
-
��J K
point
��L Q
.
��Q R
Y
��R S
,
��S T
$num
��U V
)
��V W
)
��W X
<=
��Y [
detectionRadius
��\ k
)
��k l
;
��l m
}
�� 	
private
�� 
void
�� 
	SendTrace
�� 
(
�� 
List
�� #
<
��# $

TracePoint
��$ .
>
��. /
points
��0 6
)
��6 7
{
��8 9
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
!
�� 
_isConnected
�� 
)
�� 
return
�� %
;
��% &
var
�� 
trace
�� 
=
�� 
new
�� "
TripasDeGatoServicio
�� 0
.
��0 1
Trace
��1 6
{
��7 8
Player
�� 
=
�� "
UserProfileSingleton
�� -
.
��- .
UserName
��. 6
,
��6 7
TracePoints
�� 
=
�� 
points
�� $
,
��$ %
	Timestamp
�� 
=
�� 
DateTime
�� $
.
��$ %
Now
��% (
,
��( )
Color
�� 
=
�� 
$str
�� 
}
�� 
;
�� 
try
�� 
{
�� !
_matchManagerClient
�� #
.
��# $
RegisterTrace
��$ 1
(
��1 2

_matchCode
��2 <
,
��< =
trace
��> C
)
��C D
;
��D E
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� 
HandleInfraction
�� %
(
��% &
string
��& ,
message
��- 4
)
��4 5
{
��6 7

_isDrawing
�� 
=
�� 
false
�� 
;
�� 
drawingCanvas
�� 
.
�� 
Children
�� "
.
��" #
Remove
��# )
(
��) *
_currentLine
��* 6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� /
(
��/ 0
message
��0 7
)
��7 8
;
��8 9
}
�� 	
public
�� 
void
�� 
TraceReceived
�� !
(
��! "
Trace
��" '
trace
��( -
)
��- .
{
��/ 0
var
�� 
receivedLine
�� 
=
�� 
new
�� "
Polyline
��# +
{
��, -
Stroke
�� 
=
�� 
Brushes
��  
.
��  !
Red
��! $
,
��$ %
StrokeThickness
�� 
=
��  !
$num
��" #
}
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
point
�� 
in
�� !
trace
��" '
.
��' (
TracePoints
��( 3
)
��3 4
{
��5 6
receivedLine
�� 
.
�� 
Points
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
Point
��, 1
(
��1 2
point
��2 7
.
��7 8
X
��8 9
,
��9 :
point
��; @
.
��@ A
Y
��A B
)
��B C
)
��C D
;
��D E
}
�� 
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
drawingCanvas
�� 
.
�� 
Children
�� &
.
��& '
Add
��' *
(
��* +
receivedLine
��+ 7
)
��7 8
;
��8 9
}
�� 
)
�� 
;
�� 

_allTraces
�� 
.
�� 
Add
�� 
(
�� 
receivedLine
�� '
)
��' (
;
��( )
}
�� 	
private
�� 
void
�� 
	DrawNodes
�� 
(
�� 
)
��  
{
��! "
if
�� 
(
�� 
nodes
�� 
==
�� 
null
�� 
)
�� 
return
�� %
;
��% &
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
drawingCanvas
��8 E
.
��E F
Children
��F N
.
��N O
Clear
��O T
(
��T U
)
��U V
)
��V W
;
��W X
foreach
�� 
(
�� 
var
�� 
node
�� 
in
��  
nodes
��! &
)
��& '
{
��( )
var
�� 
ellipse
�� 
=
�� 
new
�� !
Ellipse
��" )
{
��* +
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Fill
�� 
=
�� 
new
�� 
SolidColorBrush
�� .
(
��. /
(
��/ 0
Color
��0 5
)
��5 6
ColorConverter
��6 D
.
��D E
ConvertFromString
��E V
(
��V W
node
��W [
.
��[ \
Color
��\ a
)
��a b
)
��b c
,
��c d
Stroke
�� 
=
�� 
Brushes
�� $
.
��$ %
Black
��% *
,
��* +
StrokeThickness
�� #
=
��$ %
$num
��& '
}
�� 
;
�� 
Canvas
�� 
.
�� 
SetLeft
�� 
(
�� 
ellipse
�� &
,
��& '
node
��( ,
.
��, -
X
��- .
-
��/ 0
ellipse
��1 8
.
��8 9
Width
��9 >
/
��? @
$num
��A B
)
��B C
;
��C D
Canvas
�� 
.
�� 
SetTop
�� 
(
�� 
ellipse
�� %
,
��% &
node
��' +
.
��+ ,
Y
��, -
-
��. /
ellipse
��0 7
.
��7 8
Height
��8 >
/
��? @
$num
��A B
)
��B C
;
��C D
Application
�� 
.
�� 
Current
�� #
.
��# $

Dispatcher
��$ .
.
��. /
Invoke
��/ 5
(
��5 6
(
��6 7
)
��7 8
=>
��9 ;
drawingCanvas
��< I
.
��I J
Children
��J R
.
��R S
Add
��S V
(
��V W
ellipse
��W ^
)
��^ _
)
��_ `
;
��` a
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
BtnBack_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
��K L
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
if
�� 
(
�� 
_isConnected
��  
)
��  !
{
��" #
await
�� !
_matchManagerClient
�� -
.
��- .
LeaveMatchAsync
��. =
(
��= >

_matchCode
��> H
,
��H I"
UserProfileSingleton
��J ^
.
��^ _
UserName
��_ g
)
��g h
;
��h i
ExitUseSinglenton
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� .'
endpointNotFoundException
��/ H
)
��H I
{
��J K
logger
�� 
.
�� 
LogError
�� 
(
��  '
endpointNotFoundException
��  9
)
��9 :
;
��: ;
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
timeoutException
��& 6
)
��6 7
{
��8 9
logger
�� 
.
�� 
LogError
�� 
(
��  
timeoutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +$
communicationException
��, B
)
��B C
{
��D E
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
logger
�� 
.
�� 
LogError
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
string
��4 :
.
��: ;
Format
��; A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W#
dialogUnexpectedError
��W l
,
��l m
	exception
��n w
.
��w x
Message
��x 
)�� �
)��� �
;��� �
}
�� 
ExitUseSinglenton
�� 
(
�� 
)
�� 
;
��  
}
�� 	
private
�� 
void
�� 
ExitUseSinglenton
�� &
(
��& '
)
��' (
{
��) *"
UserProfileSingleton
��  
.
��  !
ResetMatchCode
��! /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� "
UserProfileSingleton
�� $
.
��$ %
	IdProfile
��% .
<
��/ 0
$num
��1 7
)
��7 8
{
��9 :
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
GoToLoginView
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
private
�� 
void
�� 
GoToMenuView
�� !
(
��! "
)
��" #
{
��$ %
MenuView
�� 
menuView
�� 
=
�� 
new
��  #
MenuView
��$ ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
menuView
��0 8
)
��8 9
;
��9 :
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
private
�� 
void
�� 
GoToLoginView
�� "
(
��" #
)
��# $
{
��% &
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
!=
��' )
null
��* .
)
��. /
{
��0 1
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
	loginView
��0 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogNavigationError
��I ^
)
��^ _
;
��_ `
}
�� 
}
�� 	
public
�� 
void
�� 
NotifyYouLost
�� !
(
��! "
)
��" #
{
��$ %!
DisableGameControls
�� 
(
��  
)
��  !
;
��! "
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
lbMatchStatus
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< ="
lbMatchStatusYouLost
��= Q
;
��Q R
lbMatchStatus
�� 
.
�� 

Foreground
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Red
��3 6
;
��6 7
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_timer
�� 
?
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
NotifyYouWon
��  
(
��  !
)
��! "
{
��# $!
DisableGameControls
�� 
(
��  
)
��  !
;
��! "
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
lbMatchStatus
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =!
lbMatchStatusYouWon
��= P
;
��P Q
lbMatchStatus
�� 
.
�� 

Foreground
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Green
��3 8
;
��8 9
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_timer
�� 
?
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 

NotifyDraw
�� 
(
�� 
)
��  
{
��! "!
DisableGameControls
�� 
(
��  
)
��  !
;
��! "
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
lbMatchStatus
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =
lbMatchStatusDraw
��= N
;
��N O
lbMatchStatus
�� 
.
�� 

Foreground
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Orange
��3 9
;
��9 :
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_timer
�� 
?
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� !
DisableGameControls
�� '
(
��' (
)
��( )
{
��* +
Application
�� 
.
�� 
Current
�� 
.
��  

Dispatcher
��  *
.
��* +
Invoke
��+ 1
(
��1 2
(
��2 3
)
��3 4
=>
��5 7
{
��8 9
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_timer
�� 
?
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
NotifyPlayerLeft
�� $
(
��$ %
)
��% &
{
��' (!
DisableGameControls
�� 
(
��  
)
��  !
;
��! "

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
async
�� #
(
��$ %
)
��% &
=>
��' )
{
��* +
await
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
��  
)
��  !
=>
��" $
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K%
dialogPlayerLeftWarning
��K b
)
��b c
)
�� 
;
�� 
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �H
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
)	## �
)
##� �
;
##� �
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
)	MM �
)
MM� �
;
MM� �
}NN 
}OO 	
}PP 
}QQ �S
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
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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
$num	| �
)
� �
)
� �
;
� �
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
(			 �
$num
		� �
)
		� �
)
		� �
;
		� �
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
 �
)


� �
)


� �
;


� �
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
)	 �
)
� �
;
� �
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
$num	} �
)
� �
)
� �
;
� �
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
;	BB �
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
}HH �3
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
}WW �
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
})) �
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
} �
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
} �
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
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
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
}&& �
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
MessageBoxImage	v �
.
� �
Error
� �
)
� �
;
� �
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
MessageBoxImage	z �
.
� �
Warning
� �
)
� �
;
� �
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
MessageBoxImage	y �
.
� �
Information
� �
)
� �
;
� �
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
MessageBoxImage	 �
.
� �
Question
� �
)
� �
;
� �
} 
} �
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
} �(
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