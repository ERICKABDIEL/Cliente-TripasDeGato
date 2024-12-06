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
]77) *�/
)C:\TripasDeGatoCliente\MainWindow.xaml.cs
	namespace

 	
TripasDeGatoCliente


 
{

 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{- .
public 

MainWindow 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
this 
. !
WindowStartupLocation &
=' (!
WindowStartupLocation) >
.> ?
CenterScreen? K
;K L
NavigationFrame 
. 
Navigate $
($ %
new% (
Views) .
.. /
	LoginView/ 8
(8 9
)9 :
): ;
;; <
this 
. 
Closing 
+= 
MainWindowClosing -
;- .
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
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
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
logger   
.   
LogError   
(    

methodName    *
,  * +
	exception  , 5
)  5 6
;  6 7
DialogManager!! 
.!! !
ShowErrorMessageAlert!! 3
(!!3 4

Properties!!4 >
.!!> ?
	Resources!!? H
.!!H I'
dialogComunicationException!!I d
)!!d e
;!!e f
}"" 
else"" 
{"" 
logger## 
.## 
LogError## 
(##  

methodName##  *
,##* +
	exception##, 5
)##5 6
;##6 7
DialogManager$$ 
.$$ !
ShowErrorMessageAlert$$ 3
($$3 4
string$$4 :
.$$: ;
Format$$; A
($$A B

Properties$$B L
.$$L M
	Resources$$M V
.$$V W!
dialogUnexpectedError$$W l
,$$l m
	exception$$n w
.$$w x
Message$$x 
)	$$ �
)
$$� �
;
$$� �
}&& 
}'' 	
private)) 
void)) 
MainWindowClosing)) &
())& '
object))' -
sender)). 4
,))4 5
System))6 <
.))< =
ComponentModel))= K
.))K L
CancelEventArgs))L [
e))\ ]
)))] ^
{))_ `
try** 
{** 
ConnectionManager++ !
.++! "
Instance++" *
.++* +
DisconnectAll+++ 8
(++8 9
)++9 :
;++: ;
SignOut,, 
(,, 
),, 
;,, 
}-- 
catch-- 
(-- 
	Exception-- 
	exception-- (
)--( )
{--* +
HandleException.. 
(..  
	exception..  )
,..) *
nameof..+ 1
(..1 2
MainWindowClosing..2 C
)..C D
)..D E
;..E F
}// 
}00 	
private22 
void22 
SignOut22 
(22 
)22 
{22  
int33 
playerId33 
=33  
UserProfileSingleton33 /
.33/ 0
	IdProfile330 9
;339 :"
SetPlayerOfflineStatus44 "
(44" #
playerId44# +
)44+ ,
;44, - 
UserProfileSingleton55  
.55  !
ResetInstance55! .
(55. /
)55/ 0
;550 1
}66 	
private88 
void88 "
SetPlayerOfflineStatus88 +
(88+ ,
int88, /
playerId880 8
)888 9
{88: ;
try99 
{99 
IStatusManager:: 
statusManager:: ,
=::- .
new::/ 2
StatusManagerClient::3 F
(::F G
)::G H
;::H I
statusManager;; 
.;; 
SetPlayerStatus;; -
(;;- .
playerId;;. 6
,;;6 7!
GameEnumsPlayerStatus;;8 M
.;;M N
Offline;;N U
);;U V
;;;V W
}<< 
catch<< 
(<< 
	Exception<< 
	exception<< (
)<<( )
{<<* +
HandleException== 
(==  
	exception==  )
,==) *
nameof==+ 1
(==1 2"
SetPlayerOfflineStatus==2 H
)==H I
)==I J
;==J K
}>> 
}?? 	
}@@ 
}AA �
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
string 
savedLanguage  
=! "
TripasDeGatoCliente# 6
.6 7

Properties7 A
.A B
SettingsB J
.J K
DefaultK R
.R S
LanguageS [
;[ \
if 
( 
string 
. 
IsNullOrEmpty $
($ %
savedLanguage% 2
)2 3
)3 4
{5 6
savedLanguage 
= 
CultureInfo  +
.+ ,
CurrentCulture, :
.: ;
Name; ?
.? @

StartsWith@ J
(J K
$strK O
)O P
?Q R
$strS Z
:[ \
$str] d
;d e
TripasDeGatoCliente #
.# $

Properties$ .
.. /
Settings/ 7
.7 8
Default8 ?
.? @
Language@ H
=I J
savedLanguageK X
;X Y
TripasDeGatoCliente #
.# $

Properties$ .
.. /
Settings/ 7
.7 8
Default8 ?
.? @
Save@ D
(D E
)E F
;F G
} 
ChangeLanguage 
( 
savedLanguage (
)( )
;) *
} 	
public 
static 
void 
ChangeLanguage )
() *
string* 0
cultureCode1 <
)< =
{> ?
CultureInfo 
culture 
=  !
new" %
CultureInfo& 1
(1 2
cultureCode2 =
)= >
;> ?
Thread   
.   
CurrentThread    
.    !
CurrentCulture  ! /
=  0 1
culture  2 9
;  9 :
Thread!! 
.!! 
CurrentThread!!  
.!!  !
CurrentUICulture!!! 1
=!!2 3
culture!!4 ;
;!!; <
TripasDeGatoCliente"" 
.""  

Properties""  *
.""* +
Settings""+ 3
.""3 4
Default""4 ;
.""; <
Reset""< A
(""A B
)""B C
;""C D
TripasDeGatoCliente## 
.##  

Properties##  *
.##* +
Settings##+ 3
.##3 4
Default##4 ;
.##; <
Language##< D
=##E F
cultureCode##G R
;##R S
TripasDeGatoCliente$$ 
.$$  

Properties$$  *
.$$* +
Settings$$+ 3
.$$3 4
Default$$4 ;
.$$; <
Save$$< @
($$@ A
)$$A B
;$$B C
}%% 	
}&& 
}'' �P
4C:\TripasDeGatoCliente\Views\SelectLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
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
;0 1
public 
SelectLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! "
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
LoadLobbiesData 
( 
) 
; 
} 	
private 
async 
Task 
LoadLobbiesData *
(* +
)+ ,
{- .
await 
LoadLobbiesAsync !
(! "
)" #
;# $
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
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
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger   
.   
LogError   
(    

methodName    *
,  * +
	exception  , 5
)  5 6
;  6 7
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
}"" 
else"" 
if"" 
("" 
	exception""  
is""! #"
CommunicationException""$ :
)"": ;
{""< =
logger## 
.## 
LogError## 
(##  

methodName##  *
,##* +
	exception##, 5
)##5 6
;##6 7
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
}%% 
else%% 
{%% 
logger&& 
.&& 
LogError&& 
(&&  

methodName&&  *
,&&* +
	exception&&, 5
)&&5 6
;&&6 7
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
})) 
}** 	
private,, 
async,, 
Task,, 
LoadLobbiesAsync,, +
(,,+ ,
),,, -
{,,. /
try-- 
{-- 
List.. 
<.. 
Lobby.. 
>.. 
lobbies.. $
=..% &
await..' ,
_lobbyBrowser..- :
...: ;$
GetAvailableLobbiesAsync..; S
(..S T
)..T U
;..U V
gridLobbyData// 
.// 
ItemsSource// )
=//* +
lobbies//, 3
;//3 4
}00 
catch00 
(00 
	Exception00 
	exception00 (
)00( )
{00* +
HandleException11 
(11  
	exception11  )
,11) *
nameof11+ 1
(111 2
LoadLobbiesAsync112 B
)11B C
)11C D
;11D E
}22 
}33 	
private55 
async55 
void55 
BtnJoinGame_Click55 ,
(55, -
object55- 3
sender554 :
,55: ;
RoutedEventArgs55< K
e55L M
)55M N
{55O P
if66 
(66 
gridLobbyData66 
.66 
SelectedItem66 *
is66+ -
Lobby66. 3
selectedLobby664 A
)66A B
{66C D
string77 
	lobbyCode77  
=77! "
selectedLobby77# 0
.770 1
Code771 5
;775 6
Profile88 
guest88 
=88 
new88  #
Profile88$ +
{88, -
	IdProfile99 
=99  
UserProfileSingleton99  4
.994 5
	IdProfile995 >
,99> ?
Username:: 
=::  
UserProfileSingleton:: 3
.::3 4
UserName::4 <
};; 
;;; 
try<< 
{<< 
bool== 
joined== 
===  !
await==" '
_lobbyBrowser==( 5
.==5 6
JoinLobbyAsync==6 D
(==D E
	lobbyCode==E N
,==N O
guest==P U
)==U V
;==V W
if>> 
(>> 
joined>> 
)>> 
{>>  !
	LobbyView?? !
	lobbyView??" +
=??, -
new??. 1
	LobbyView??2 ;
(??; <
	lobbyCode??< E
)??E F
;??F G
this@@ 
.@@ 
NavigationService@@ .
.@@. /
Navigate@@/ 7
(@@7 8
	lobbyView@@8 A
)@@A B
;@@B C
}AA 
elseAA 
{AA 
DialogManagerBB %
.BB% &#
ShowWarningMessageAlertBB& =
(BB= >

PropertiesBB> H
.BBH I
	ResourcesBBI R
.BBR S 
dialogLobbyJoinErrorBBS g
)BBg h
;BBh i
}CC 
}DD 
catchDD 
(DD 
	ExceptionDD "
	exceptionDD# ,
)DD, -
{DD. /
HandleExceptionEE #
(EE# $
	exceptionEE$ -
,EE- .
nameofEE/ 5
(EE5 6
BtnJoinGame_ClickEE6 G
)EEG H
)EEH I
;EEI J
}FF 
}GG 
elseGG 
{GG 
DialogManagerHH 
.HH #
ShowWarningMessageAlertHH 5
(HH5 6

PropertiesHH6 @
.HH@ A
	ResourcesHHA J
.HHJ K#
dialogSelectLobbyToJoinHHK b
)HHb c
;HHc d
}II 
}JJ 	
privateLL 
voidLL 
BtnBack_ClickLL "
(LL" #
objectLL# )
senderLL* 0
,LL0 1
RoutedEventArgsLL2 A
eLLB C
)LLC D
{LLE F
MenuViewMM 
menuViewMM 
=MM 
newMM  #
MenuViewMM$ ,
(MM, -
)MM- .
;MM. /
ifNN 
(NN 
thisNN 
.NN 
NavigationServiceNN &
!=NN' )
nullNN* .
)NN. /
{NN0 1
thisOO 
.OO 
NavigationServiceOO &
.OO& '
NavigateOO' /
(OO/ 0
menuViewOO0 8
)OO8 9
;OO9 :
}PP 
elsePP 
{PP 
DialogManagerQQ 
.QQ !
ShowErrorMessageAlertQQ 3
(QQ3 4

PropertiesQQ4 >
.QQ> ?
	ResourcesQQ? H
.QQH I!
dialogNavigationErrorQQI ^
)QQ^ _
;QQ_ `
}RR 
}SS 	
privateUU 
asyncUU 
voidUU 
BtnSearch_ClickUU *
(UU* +
objectUU+ 1
senderUU2 8
,UU8 9
RoutedEventArgsUU: I
eUUJ K
)UUK L
{UUM N
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
{WW 
ListXX 
<XX 
LobbyXX 
>XX 
lobbiesXX #
=XX$ %
awaitXX& +
_lobbyBrowserXX, 9
.XX9 :$
GetAvailableLobbiesAsyncXX: R
(XXR S
)XXS T
;XXT U
ListYY 
<YY 
LobbyYY 
>YY 
filteredLobbiesYY +
=YY, -
lobbiesYY. 5
.YY5 6
WhereYY6 ;
(YY; <
lobbyYY< A
=>YYB D
lobbyYYE J
.YYJ K
CodeYYK O
.YYO P
ContainsYYP X
(YYX Y

searchCodeYYY c
)YYc d
)YYd e
.YYe f
ToListYYf l
(YYl m
)YYm n
;YYn o
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
(^^ 
	Exception^^ 
	exception^^ (
)^^( )
{^^* +
HandleException__ 
(__  
	exception__  )
,__) *
nameof__+ 1
(__1 2
BtnSearch_Click__2 A
)__A B
)__B C
;__C D
}`` 
}aa 	
}bb 
}cc ��
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
public 

partial 
class 
	LoginView "
:# $
Page% )
{* +
private 
string 

_userEmail !
;! "
public 
	LoginView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "(
UpdatePasswordVisibilityIcon (
(( )
)) *
;* +
txtEmail 
. 
TextChanged  
+=! # 
TxtEmail_TextChanged$ 8
;8 9
txtPassword 
. 
PasswordChanged '
+=( *'
TxtPassword_PasswordChanged+ F
;F G 
UserProfileSingleton  
.  !
ResetLobbyCode! /
(/ 0
)0 1
;1 2 
UserProfileSingleton  
.  !
ResetChatCode! .
(. /
)/ 0
;0 1 
UserProfileSingleton  
.  !
ResetMatchCode! /
(/ 0
)0 1
;1 2
} 	
private 
void 
BtnLogin_Click #
(# $
object$ *
sender+ 1
,1 2
RoutedEventArgs3 B
eC D
)D E
{F G

ResetField 
( 
txtEmail 
)  
;  !

ResetField 
( 
txtPassword "
)" #
;# $

ResetField 
( 
txtPasswordVisible )
)) *
;* +
if 
( 
! 
VerifyFields 
( 
) 
)  
{! "
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I
dialogWrongDataI X
)X Y
;Y Z
return   
;   
}!! 
string"" 
email"" 
="" 
txtEmail"" #
.""# $
Text""$ (
;""( )
string## 
password## 
=## 
Hasher## $
.##$ %
HashToSHA256##% 1
(##1 2
txtPassword##2 =
.##= >
Password##> F
)##F G
;##G H
if$$ 
($$ 
AuthenticateUser$$  
($$  !
email$$! &
,$$& '
password$$( 0
)$$0 1
)$$1 2
{$$3 4!
SetPlayerOnlineStatus%% %
(%%% & 
UserProfileSingleton%%& :
.%%: ;
	IdProfile%%; D
)%%D E
;%%E F
DisplayMainMenuView&& #
(&&# $
)&&$ %
;&&% &
}'' 
}(( 	
private** 
bool** 
VerifyFields** !
(**! "
)**" #
{**$ %
bool++ 

emailValid++ 
=++ 
	Validador++ '
.++' (
ValidateEmail++( 5
(++5 6
txtEmail++6 >
.++> ?
Text++? C
)++C D
;++D E
bool,, 
passwordValid,, 
=,,  
	Validador,,! *
.,,* +
ValidatePassword,,+ ;
(,,; <
txtPassword,,< G
.,,G H
Password,,H P
),,P Q
;,,Q R
HighlightField-- 
(-- 
txtEmail-- #
,--# $

emailValid--% /
)--/ 0
;--0 1
HighlightField.. 
(.. 
txtPassword.. &
,..& '
passwordValid..( 5
)..5 6
;..6 7
return// 

emailValid// 
&&//  
passwordValid//! .
;//. /
}00 	
private22 
bool22 
AuthenticateUser22 %
(22% &
string22& ,
email22- 2
,222 3
string224 :
hashedPassword22; I
)22I J
{22K L
bool33 
isAuthenticated33  
=33! "
false33# (
;33( )
try44 
{44 
IUserManager55 
userManager55 (
=55) *
new55+ .
UserManagerClient55/ @
(55@ A
)55A B
;55B C
int66 
validationResult66 $
=66% &
userManager66' 2
.662 3
VerifyLogin663 >
(66> ?
email66? D
,66D E
hashedPassword66F T
)66T U
;66U V
if77 
(77 
validationResult77 $
==77% '
	Constants77( 1
.771 2
DATA_MATCHES772 >
)77> ?
{77@ A
Profile88 
profile88 #
=88$ %
userManager88& 1
.881 2
GetProfileByMail882 B
(88B C
email88C H
)88H I
;88I J
if99 
(99 
profile99 
!=99  "
null99# '
)99' (
{99) *
if:: 
(:: 
IsPlayerOnline:: *
(::* +
profile::+ 2
.::2 3
	IdProfile::3 <
)::< =
)::= >
{::? @
return;; "
false;;# (
;;;( )
}<< 
ObtainSingletonData== +
(==+ ,
profile==, 3
)==3 4
;==4 5
isAuthenticated>> '
=>>( )
true>>* .
;>>. /
}?? 
else?? 
{?? 
DialogManager@@ %
.@@% &!
ShowErrorMessageAlert@@& ;
(@@; <

Properties@@< F
.@@F G
	Resources@@G P
.@@P Q%
dialogNotRetrievedProfile@@Q j
)@@j k
;@@k l
}AA 
}BB 
elseBB 
{BB 
DialogManagerCC !
.CC! "!
ShowErrorMessageAlertCC" 7
(CC7 8

PropertiesCC8 B
.CCB C
	ResourcesCCC L
.CCL M(
dialogMissmatchesCredentialsCCM i
)CCi j
;CCj k
}DD 
}EE 
catchEE 
(EE 
	ExceptionEE 
	exceptionEE (
)EE( )
{EE* +
HandleExceptionFF 
(FF  
	exceptionFF  )
,FF) *
nameofFF+ 1
(FF1 2
AuthenticateUserFF2 B
)FFB C
)FFC D
;FFD E
}GG 
returnHH 
isAuthenticatedHH "
;HH" #
}II 	
privateLL 
voidLL 
HandleExceptionLL $
(LL$ %
	ExceptionLL% .
	exceptionLL/ 8
,LL8 9
stringLL: @

methodNameLLA K
)LLK L
{LLM N
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
;MMD E
ifNN 
(NN 
	exceptionNN 
isNN %
EndpointNotFoundExceptionNN 6
)NN6 7
{NN8 9
loggerOO 
.OO 
LogErrorOO 
(OO  

methodNameOO  *
,OO* +
	exceptionOO, 5
)OO5 6
;OO6 7
DialogManagerPP 
.PP !
ShowErrorMessageAlertPP 3
(PP3 4

PropertiesPP4 >
.PP> ?
	ResourcesPP? H
.PPH I#
dialogEndPointExceptionPPI `
)PP` a
;PPa b
}QQ 
elseQQ 
ifQQ 
(QQ 
	exceptionQQ  
isQQ! #
TimeoutExceptionQQ$ 4
)QQ4 5
{QQ6 7
loggerRR 
.RR 
LogErrorRR 
(RR  

methodNameRR  *
,RR* +
	exceptionRR, 5
)RR5 6
;RR6 7
DialogManagerSS 
.SS !
ShowErrorMessageAlertSS 3
(SS3 4

PropertiesSS4 >
.SS> ?
	ResourcesSS? H
.SSH I"
dialogTimeOutExceptionSSI _
)SS_ `
;SS` a
}TT 
elseTT 
ifTT 
(TT 
	exceptionTT  
isTT! #"
CommunicationExceptionTT$ :
)TT: ;
{TT< =
loggerUU 
.UU 
LogErrorUU 
(UU  

methodNameUU  *
,UU* +
	exceptionUU, 5
)UU5 6
;UU6 7
DialogManagerVV 
.VV !
ShowErrorMessageAlertVV 3
(VV3 4

PropertiesVV4 >
.VV> ?
	ResourcesVV? H
.VVH I'
dialogComunicationExceptionVVI d
)VVd e
;VVe f
}WW 
elseWW 
{WW 
loggerXX 
.XX 
LogErrorXX 
(XX  

methodNameXX  *
,XX* +
	exceptionXX, 5
)XX5 6
;XX6 7
DialogManagerYY 
.YY !
ShowErrorMessageAlertYY 3
(YY3 4
stringYY4 :
.YY: ;
FormatYY; A
(YYA B

PropertiesYYB L
.YYL M
	ResourcesYYM V
.YYV W!
dialogUnexpectedErrorYYW l
,YYl m
	exceptionYYn w
.YYw x
MessageYYx 
)	YY �
)
YY� �
;
YY� �
}[[ 
}\\ 	
private^^ 
bool^^ 
IsPlayerOnline^^ #
(^^# $
int^^$ '
	idProfile^^( 1
)^^1 2
{^^3 4
try__ 
{__ 
IStatusManager`` 
statusManager`` ,
=``- .
new``/ 2
StatusManagerClient``3 F
(``F G
)``G H
;``H I!
GameEnumsPlayerStatusaa %
playerStatusaa& 2
=aa3 4
statusManageraa5 B
.aaB C
GetPlayerStatusaaC R
(aaR S
	idProfileaaS \
)aa\ ]
;aa] ^
ifbb 
(bb 
playerStatusbb  
==bb! #!
GameEnumsPlayerStatusbb$ 9
.bb9 :
Onlinebb: @
)bb@ A
{bbB C
DialogManagercc !
.cc! "#
ShowWarningMessageAlertcc" 9
(cc9 :

Propertiescc: D
.ccD E
	ResourcesccE N
.ccN O%
dialogPlayerAlreadyOnlineccO h
)cch i
;cci j
returndd 
truedd 
;dd  
}ee 
}ff 
catchff 
(ff 
	Exceptionff 
	exceptionff (
)ff( )
{ff* +
HandleExceptiongg 
(gg  
	exceptiongg  )
,gg) *
nameofgg+ 1
(gg1 2
IsPlayerOnlinegg2 @
)gg@ A
)ggA B
;ggB C
}hh 
returnii 
falseii 
;ii 
}jj 	
privatell 
staticll 
voidll 
ObtainSingletonDatall /
(ll/ 0
Profilell0 7
profilell8 ?
)ll? @
{llA B 
UserProfileSingletonmm  
.mm  !
CreateInstancemm! /
(mm/ 0
profilemm0 7
)mm7 8
;mm8 9
}nn 	
privatepp 
voidpp !
SetPlayerOnlineStatuspp *
(pp* +
intpp+ .
playerIdpp/ 7
)pp7 8
{pp9 :
tryqq 
{qq 
IStatusManagerrr 
statusManagerrr ,
=rr- .
newrr/ 2
StatusManagerClientrr3 F
(rrF G
)rrG H
;rrH I
statusManagerss 
.ss 
SetPlayerStatusss -
(ss- .
playerIdss. 6
,ss6 7!
GameEnumsPlayerStatusss8 M
.ssM N
OnlinessN T
)ssT U
;ssU V
}tt 
catchtt 
(tt 
	Exceptiontt 
	exceptiontt (
)tt( )
{tt* +
HandleExceptionuu 
(uu  
	exceptionuu  )
,uu) *
nameofuu+ 1
(uu1 2!
SetPlayerOnlineStatusuu2 G
)uuG H
)uuH I
;uuI J
}vv 
}ww 	
privateyy 
voidyy 
BtnGuest_Clickyy #
(yy# $
objectyy$ *
senderyy+ 1
,yy1 2
RoutedEventArgsyy3 B
eyyC D
)yyD E
{yyF G
CodeGameMatchzz 
codeGameMatchzz '
=zz( )
newzz* -
CodeGameMatchzz. ;
(zz; <
)zz< =
;zz= >
this{{ 
.{{ 
NavigationService{{ "
.{{" #
Navigate{{# +
({{+ ,
codeGameMatch{{, 9
){{9 :
;{{: ;
}|| 	
private~~ 
void~~ 
DisplayMainMenuView~~ (
(~~( )
)~~) *
{~~+ ,
MenuView 
menuView 
= 
new  #
MenuView$ ,
(, -
)- .
;. /
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
�� 
static
�� 
void
�� 
HighlightField
�� *
(
��* +
Control
��+ 2
control
��3 :
,
��: ;
bool
��< @
isValid
��A H
)
��H I
{
��J K
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
�� 
static
�� 
void
�� 

ResetField
�� &
(
��& '
Control
��' .
control
��/ 6
)
��6 7
{
��8 9
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
��I J
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnContinue_Click
��2 C
)
��C D
)
��D E
;
��E F
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
��I J
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnValidate_Click
��2 C
)
��C D
)
��D E
;
��E F
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
��K L
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
�� +
PasswordRecoveryManagerClient
�� -$
emailVerificationProxy
��. D
=
��E F
new
��G J"
TripasDeGatoServicio
��K _
.
��_ `+
PasswordRecoveryManagerClient
��` }
(
��} ~
)
��~ 
;�� �
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2!
BtnResendCode_Click
��2 E
)
��E F
)
��F G
;
��G H
}
�� 
}
�� 	
private
�� 
void
�� #
BtnBackValidate_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N
gridRecovery
�� 
.
�� 

Visibility
�� #
=
��$ %

Visibility
��& 0
.
��0 1
	Collapsed
��1 :
;
��: ;
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
�� #
BtnSavePassword_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
��M N
string
�� 
newPassword
�� 
=
��  
txtNewPassword
��! /
.
��/ 0
Password
��0 8
.
��8 9
Trim
��9 =
(
��= >
)
��> ?
;
��? @
string
�� 
confirmPassword
�� "
=
��# $#
txtNewPasswordConfirm
��% :
.
��: ;
Password
��; C
.
��C D
Trim
��D H
(
��H I
)
��I J
;
��J K
if
�� 
(
�� 
newPassword
�� 
!=
�� 
confirmPassword
�� .
)
��. /
{
��0 1
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
��H I*
dialogMissmatchesCredentials
��I e
)
��e f
;
��f g
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
�� 
IsValidPassword
��  
(
��  !
newPassword
��! ,
)
��, -
)
��- .
{
��/ 0
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
dialogInvalidPassword
��I ^
)
��^ _
;
��_ `
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
UpdatePassword
��. <
(
��< =

_userEmail
��= G
,
��G H
Hasher
��I O
.
��O P
HashToSHA256
��P \
(
��\ ]
newPassword
��] h
)
��h i
)
��i j
;
��j k
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
��N O/
!dialogPasswordUpdatedSuccessfully
��O p
)
��p q
;
��q r
txtNewPassword
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +#
txtNewPasswordConfirm
�� )
.
��) *
Clear
��* /
(
��/ 0
)
��0 1
;
��1 2"
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
��@ A
	Collapsed
��A J
;
��J K
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
��L M)
dialogErrorUpdatingPassowrd
��M h
)
��h i
;
��i j
}
�� 
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
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2#
BtnSavePassword_Click
��2 G
)
��G H
)
��H I
;
��I J
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
��8 9
{
��: ; 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode2
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode3
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode4
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode5
��- ?
)
��? @
{
��A B 
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
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsValidPassword
�� +
(
��+ ,
string
��, 2
password
��3 ;
)
��; <
{
��= >
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
�� 
}�� ��
2C:\TripasDeGatoCliente\Views\GameMatchView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	GameMatch "
:# $
Page% )
,) *!
IMatchManagerCallback+ @
{A B
private 
List 
< 
Polyline 
> 

_allTraces )
;) *
private 
DispatcherTimer 
_timer  &
;& '
private 
int 

_totalTime 
=  
$num! #
;# $
private 
double 
_remainingTime %
;% &
private 
string 

_matchCode !
;! "
private 
bool 
_isConnected !
;! "
private 
MatchManagerClient "
_matchManagerClient# 6
;6 7
private 
bool 

_isDrawing 
=  !
false" '
;' (
private 
List 
<  
TripasDeGatoServicio )
.) *

TracePoint* 4
>4 5
_currentTracePoints6 I
=J K
newL O
ListP T
<T U 
TripasDeGatoServicioU i
.i j

TracePointj t
>t u
(u v
)v w
;w x
private 
Polyline 
_currentLine %
;% &
private 
List 
< 
Node 
> 
nodes  
;  !
private 

Dictionary 
< 
string !
,! "
string# )
>) *

_nodePairs+ 5
;5 6
private 
Node 

_startNode 
;  
private   
bool   
_isPlayerTurn   "
=  # $
false  % *
;  * +
public"" 
	GameMatch"" 
("" 
string"" 
gameCode""  (
)""( )
{""* +
InitializeComponent## 
(##  
)##  !
;##! "
this$$ 
.$$ 

_matchCode$$ 
=$$ 
gameCode$$ &
;$$& '
InstanceContext%% 
context%% #
=%%$ %
new%%& )
InstanceContext%%* 9
(%%9 :
this%%: >
)%%> ?
;%%? @
_matchManagerClient&& 
=&&  !
new&&" %
MatchManagerClient&&& 8
(&&8 9
context&&9 @
)&&@ A
;&&A B
ConnectionManager'' 
.'' 
Instance'' &
.''& '"
InitializeMatchManager''' =
(''= >
context''> E
)''E F
;''F G
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
private00 
void00 
HandleException00 $
(00$ %
	Exception00% .
	exception00/ 8
,008 9
string00: @

methodName00A K
)00K L
{00M N
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
;11D E
if22 
(22 
	exception22 
is22 %
EndpointNotFoundException22 6
)226 7
{228 9
logger33 
.33 
LogError33 
(33  

methodName33  *
,33* +
	exception33, 5
)335 6
;336 7
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
}55 
else55 
if55 
(55 
	exception55  
is55! #
TimeoutException55$ 4
)554 5
{556 7
logger66 
.66 
LogError66 
(66  

methodName66  *
,66* +
	exception66, 5
)665 6
;666 7
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
}88 
else88 
if88 
(88 
	exception88  
is88! #"
CommunicationException88$ :
)88: ;
{88< =
logger99 
.99 
LogError99 
(99  

methodName99  *
,99* +
	exception99, 5
)995 6
;996 7
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
};; 
else;; 
{;; 
logger<< 
.<< 
LogError<< 
(<<  

methodName<<  *
,<<* +
	exception<<, 5
)<<5 6
;<<6 7
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
}?? 
}@@ 	
privateBB 
asyncBB 
TaskBB 
CheckCurrentTurnBB +
(BB+ ,
)BB, -
{BB. /
tryCC 
{CC 
stringDD 
currentTurnDD "
=DD# $
awaitDD% *
TaskDD+ /
.DD/ 0
RunDD0 3
(DD3 4
(DD4 5
)DD5 6
=>DD7 9
_matchManagerClientDD: M
.DDM N
GetCurrentTurnDDN \
(DD\ ]

_matchCodeDD] g
)DDg h
)DDh i
;DDi j
ifEE 
(EE 
currentTurnEE 
==EE  " 
UserProfileSingletonEE# 7
.EE7 8
UserNameEE8 @
)EE@ A
{EEB C
NotifyYourTurnFF "
(FF" #
)FF# $
;FF$ %
}GG 
elseGG 
{GG 
NotifyNotYourTurnHH %
(HH% &
)HH& '
;HH' (
}II 
}JJ 
catchJJ 
(JJ 
	ExceptionJJ 
	exceptionJJ (
)JJ( )
{JJ* +
HandleExceptionKK 
(KK  
	exceptionKK  )
,KK) *
nameofKK+ 1
(KK1 2
CheckCurrentTurnKK2 B
)KKB C
)KKC D
;KKD E
}LL 
}MM 	
privateOO 
asyncOO 
voidOO 
InitializeMatchOO *
(OO* +
)OO+ ,
{OO- .
tryPP 
{PP 
boolQQ 
	connectedQQ 
=QQ  
awaitQQ! &
_matchManagerClientQQ' :
.QQ: ;'
RegisterPlayerCallbackAsyncQQ; V
(QQV W

_matchCodeQQW a
,QQa b 
UserProfileSingletonQQc w
.QQw x
UserName	QQx �
)
QQ� �
;
QQ� �
ifRR 
(RR 
!RR 
	connectedRR 
)RR 
{RR  !
DialogManagerSS !
.SS! "!
ShowErrorMessageAlertSS" 7
(SS7 8

PropertiesSS8 B
.SSB C
	ResourcesSSC L
.SSL M"
dialogConnectionFailedSSM c
)SSc d
;SSd e
}TT 
elseTT 
{TT 
_isConnectedUU  
=UU! "
trueUU# '
;UU' ( 
UserProfileSingletonVV (
.VV( )
UpdateMatchCodeVV) 8
(VV8 9

_matchCodeVV9 C
)VVC D
;VVD E
nodesWW 
=WW 
awaitWW !
TaskWW" &
.WW& '
RunWW' *
(WW* +
(WW+ ,
)WW, -
=>WW. 0
_matchManagerClientWW1 D
.WWD E
GetNodesWWE M
(WWM N

_matchCodeWWN X
)WWX Y
)WWY Z
;WWZ [

_nodePairsXX 
=XX  
awaitXX! &
TaskXX' +
.XX+ ,
RunXX, /
(XX/ 0
(XX0 1
)XX1 2
=>XX3 5
_matchManagerClientXX6 I
.XXI J
GetNodePairsXXJ V
(XXV W

_matchCodeXXW a
)XXa b
)XXb c
;XXc d
ifYY 
(YY 
nodesYY 
!=YY  
nullYY! %
&&YY& (
nodesYY) .
.YY. /
CountYY/ 4
>YY5 6
$numYY7 8
)YY8 9
{YY: ;
	DrawNodesZZ !
(ZZ! "
)ZZ" #
;ZZ# $
await[[ 
CheckCurrentTurn[[ .
([[. /
)[[/ 0
;[[0 1
}\\ 
else\\ 
{\\ 
DialogManager]] %
.]]% &!
ShowErrorMessageAlert]]& ;
(]]; <

Properties]]< F
.]]F G
	Resources]]G P
.]]P Q
dialogNodesNotFound]]Q d
)]]d e
;]]e f
}^^ 
}__ 
}`` 
catch`` 
(`` 
	Exception`` 
	exception`` (
)``( )
{``* +
HandleExceptionaa 
(aa  
	exceptionaa  )
,aa) *
nameofaa+ 1
(aa1 2
InitializeMatchaa2 A
)aaA B
)aaB C
;aaC D
}bb 
}cc 	
privateee 
voidee 

StartTimeree 
(ee  
)ee  !
{ee" #
_remainingTimeff 
=ff 

_totalTimeff '
;ff' (
progressBarTimergg 
.gg 
Valuegg "
=gg# $
$numgg% (
;gg( )
_timerhh 
=hh 
newhh 
DispatcherTimerhh (
(hh( )
)hh) *
;hh* +
_timerii 
.ii 
Intervalii 
=ii 
TimeSpanii &
.ii& '
FromMillisecondsii' 7
(ii7 8
$numii8 ;
)ii; <
;ii< =
_timerjj 
.jj 
Tickjj 
+=jj 

Timer_Tickjj %
;jj% &
ifkk 
(kk 
_isPlayerTurnkk 
)kk 
{kk  
_timerll 
.ll 
Startll 
(ll 
)ll 
;ll 
}mm 
}nn 	
privatepp 
voidpp 

Timer_Tickpp 
(pp  
objectpp  &
senderpp' -
,pp- .
	EventArgspp/ 8
epp9 :
)pp: ;
{pp< =
ifqq 
(qq 
_remainingTimeqq 
>qq  
$numqq! "
)qq" #
{qq$ %
_remainingTimerr 
-=rr !
$numrr" %
;rr% &
progressBarTimerss  
.ss  !
Valuess! &
=ss' (
(ss) *
_remainingTimess* 8
/ss9 :

_totalTimess; E
)ssE F
*ssG H
$numssI L
;ssL M
iftt 
(tt 
_remainingTimett "
>tt# $

_totalTimett% /
*tt0 1
$numtt2 5
)tt5 6
{tt7 8
progressBarTimeruu $
.uu$ %

Foregrounduu% /
=uu0 1
Brushesuu2 9
.uu9 :
Greenuu: ?
;uu? @
}vv 
elsevv 
ifvv 
(vv 
_remainingTimevv )
>vv* +

_totalTimevv, 6
*vv7 8
$numvv9 <
)vv< =
{vv> ?
progressBarTimerww $
.ww$ %

Foregroundww% /
=ww0 1
Brushesww2 9
.ww9 :
Orangeww: @
;ww@ A
}xx 
elsexx 
{xx 
progressBarTimeryy $
.yy$ %

Foregroundyy% /
=yy0 1
Brushesyy2 9
.yy9 :
Redyy: =
;yy= >
}zz 
}{{ 
else{{ 
{{{ 
_timer|| 
.|| 
Stop|| 
(|| 
)|| 
;|| 
drawingCanvas}} 
.}} 
Children}} &
.}}& '
Remove}}' -
(}}- .
_currentLine}}. :
)}}: ;
;}}; <
_matchManagerClient~~ #
.~~# $
EndTurnAsync~~$ 0
(~~0 1

_matchCode~~1 ;
,~~; < 
UserProfileSingleton~~= Q
.~~Q R
UserName~~R Z
)~~Z [
;~~[ \
progressBarTimer  
.  !

Foreground! +
=, -
Brushes. 5
.5 6
Gray6 :
;: ;
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
��G H
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
��> ?

TracePoint
�� 
newPoint
�� 
=
��  !
new
��" %"
TripasDeGatoServicio
��& :
.
��: ;

TracePoint
��; E
{
��F G
X
��H I
=
��J K
mousePosition
��L Y
.
��Y Z
X
��Z [
,
��[ \
Y
��] ^
=
��_ `
mousePosition
��a n
.
��n o
Y
��o p
}
��q r
;
��r s
DrawingValidation
�� 
drawingValidation
�� /
=
��0 1
new
��2 5
DrawingValidation
��6 G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� 
drawingValidation
�� !
.
��! "$
IsPointInForbiddenArea
��" 8
(
��8 9
mousePosition
��9 F
)
��F G
)
��G H
{
��I J
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
��5 6(
dialogForbiddenAreaWarning
��6 P
)
��P Q
;
��Q R
return
�� 
;
�� 
}
�� 
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
�� 
	Exception
�� "
	exception
��# ,
)
��, -
{
��. /
HandleException
�� #
(
��# $
	exception
��$ -
,
��- .
nameof
��/ 5
(
��5 6
Canvas_MouseMove
��6 F
)
��F G
)
��G H
;
��H I
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
��6 @
&&
��A C
!
��D E
IsPair
��E K
(
��K L

_startNode
��L V
,
��V W
currentNode
��X c
)
��c d
)
��d e
{
��f g
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
��5 6)
dialogInfractionInvalidNode
��6 Q
)
��Q R
;
��R S
return
�� 
;
�� 
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
�� 
static
�� 
bool
��  
IsPointNearSegment
�� .
(
��. /"
TripasDeGatoServicio
��/ C
.
��C D

TracePoint
��D N
point
��O T
,
��T U
Point
��V [
start
��\ a
,
��a b
Point
��c h
end
��i l
)
��l m
{
��n o
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
��S T
return
�� 

_allTraces
�� 
.
�� 

SelectMany
�� 
(
�� 
polyline
�� $
=>
��% '
polyline
��( 0
.
��0 1
Points
��1 7
.
��7 8
Zip
��8 ;
(
��; <
polyline
��< D
.
��D E
Points
��E K
.
��K L
Skip
��L P
(
��P Q
$num
��Q R
)
��R S
,
��S T
(
��U V
start
��V [
,
��[ \
end
��] `
)
��` a
=>
��b d
new
��e h
{
��i j
start
��k p
,
��p q
end
��r u
}
��v w
)
��w x
)
��x y
.
�� 
Any
�� 
(
�� 
pair
�� 
=>
��  
IsPointNearSegment
�� /
(
��/ 0
newPoint
��0 8
,
��8 9
pair
��: >
.
��> ?
start
��? D
,
��D E
pair
��F J
.
��J K
end
��K N
)
��N O
)
��O P
;
��P Q
}
�� 	
private
�� 
static
�� 
double
�� (
DistanceFromPointToSegment
�� 8
(
��8 9"
TripasDeGatoServicio
��9 M
.
��M N

TracePoint
��N X
point
��Y ^
,
��^ _
Point
��` e
start
��f k
,
��k l
Point
��m r
end
��s v
)
��v w
{
��x y
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
��4 5
double
�� 
	tolerance
�� 
=
�� 
$num
�� #
;
��# $
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
lengthSquared
�� &
)
��& '
<
��( )
	tolerance
��* 3
)
��3 4
{
��5 6
return
�� 
Math
�� 
.
�� 
Sqrt
��  
(
��  !
(
��! "
px
��" $
-
��% &
sx
��' )
)
��) *
*
��+ ,
(
��- .
px
��. 0
-
��1 2
sx
��3 5
)
��5 6
+
��7 8
(
��9 :
py
��: <
-
��= >
sy
��? A
)
��A B
*
��C D
(
��E F
py
��F H
-
��I J
sy
��K M
)
��M N
)
��N O
;
��O P
}
�� 
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
�� 
endNode
�� 
=
�� 
FindNodeNearPoint
�� ,
(
��, -
mousePosition
��- :
)
��: ;
;
��; <
if
�� 
(
�� 
endNode
�� 
==
�� 
null
�� 
||
��  "
!
��# $
IsPair
��$ *
(
��* +

_startNode
��+ 5
,
��5 6
endNode
��7 >
)
��> ?
)
��? @
{
��A B
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
��; <
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
dialogTraceMustConnectNodes
��I d
)
��d e
;
��e f
return
�� 
;
�� 
}
�� 
if
�� 
(
�� !
_currentTracePoints
�� #
.
��# $
Count
��$ )
>
��* +
$num
��, -
)
��- .
{
��/ 0

_allTraces
�� 
.
�� 
Add
�� 
(
�� 
_currentLine
�� +
)
��+ ,
;
��, -
	SendTrace
�� 
(
�� !
_currentTracePoints
�� -
)
��- .
;
��. /
Task
�� 
.
�� 
Run
�� 
(
�� 
(
�� 
)
�� 
=>
�� !
_matchManagerClient
�� 2
.
��2 3
EndTurnAsync
��3 ?
(
��? @

_matchCode
��@ J
,
��J K"
UserProfileSingleton
��L `
.
��` a
UserName
��a i
)
��i j
)
��j k
;
��k l
if
�� 
(
�� "
AreAllNodesConnected
�� (
(
��( )
)
��) *
)
��* +
{
��, -!
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
�� 
}
�� 
else
�� 
{
�� 
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
��; <
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
�� 
Find
�� 
(
�� 
node
�� "
=>
��# %
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
��8 9
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
��% &
Trace
�� 
trace
�� 
=
�� 
new
�� "
TripasDeGatoServicio
�� 2
.
��2 3
Trace
��3 8
{
��9 :
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
	SendTrace
��2 ;
)
��; <
)
��< =
;
��= >
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
��/ 0
Polyline
�� 
receivedLine
�� !
=
��" #
new
��$ '
Polyline
��( 0
{
��1 2
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
�� 

TracePoint
�� 
point
��  %
in
��& (
trace
��) .
.
��. /
TracePoints
��/ :
)
��: ;
{
��< =
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
�� 
Node
�� 
node
�� 
in
�� !
nodes
��" '
)
��' (
{
��) *
Ellipse
�� 
ellipse
�� 
=
��  !
new
��" %
Ellipse
��& -
{
��. /
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
��K L
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnBack_Click
��2 ?
)
��? @
)
��@ A
;
��A B
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
�� 
void
�� 
ExitUseSinglenton
�� &
(
��& '
)
��' (
{
��) *"
UserProfileSingleton
��  
.
��  !
ResetMatchCode
��! /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� "
UserProfileSingleton
�� $
.
��$ %
	IdProfile
��% .
<
��/ 0
$num
��1 7
)
��7 8
{
��9 :
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
GoToLoginView
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 	
private
�� 
void
�� 
GoToMenuView
�� !
(
��! "
)
��" #
{
��$ %
MenuView
�� 
menuView
�� 
=
�� 
new
��  #
MenuView
��$ ,
(
��, -
)
��- .
;
��. /
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
��/ 0
menuView
��0 8
)
��8 9
;
��9 :
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
�� 
NotifyYouLost
�� !
(
��! "
)
��" #
{
��$ %!
DisableGameControls
�� 
(
��  
)
��  !
;
��! "
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
lbMatchStatus
�� 
.
�� 
Content
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< ="
lbMatchStatusYouLost
��= Q
;
��Q R
lbMatchStatus
�� 
.
�� 

Foreground
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Red
��3 6
;
��6 7
drawingCanvas
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_timer
�� 
?
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
DialogManager
�� 
.
�� %
ShowSuccessMessageAlert
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
��J K"
lbMatchStatusYouLost
��K _
)
��_ `
;
��` a
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
�� 
DialogManager
�� 
.
�� %
ShowSuccessMessageAlert
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
��J K!
lbMatchStatusYouWon
��K ^
)
��^ _
;
��_ `
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
�� 
DialogManager
�� 
.
�� %
ShowSuccessMessageAlert
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
��J K
lbMatchStatusDraw
��K \
)
��\ ]
;
��] ^
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
}�� ��
1C:\TripasDeGatoCliente\Views\RegisterView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
RegisterView %
:& '
Page( ,
{- .
public 
RegisterView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
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
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I'
dialogComunicationExceptionI d
)d e
;e f
} 
else 
{ 
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager   
.   !
ShowErrorMessageAlert   3
(  3 4
string  4 :
.  : ;
Format  ; A
(  A B

Properties  B L
.  L M
	Resources  M V
.  V W!
dialogUnexpectedError  W l
,  l m
	exception  n w
.  w x
Message  x 
)	   �
)
  � �
;
  � �
}"" 
}## 	
private%% 
void%% 
BtnSignIn_Click%% $
(%%$ %
object%%% +
sender%%, 2
,%%2 3
RoutedEventArgs%%4 C
e%%D E
)%%E F
{%%G H
string&& 
email&& 
=&& 
txtEmail&& #
.&&# $
Text&&$ (
;&&( )
string'' 
username'' 
='' 
txtName'' %
.''% &
Text''& *
;''* +
string(( 
password(( 
=(( 
txtPassword(( )
.(() *
Password((* 2
;((2 3
if)) 
()) 
!)) 
ValidateFields)) 
())  
email))  %
,))% &
username))' /
,))/ 0
password))1 9
)))9 :
))): ;
return))< B
;))B C
try** 
{** 
if++ 
(++ 
!++ #
VerifyEmailAvailability++ ,
(++, -
email++- 2
)++2 3
)++3 4
{++5 6
return,, 
;,, 
}-- 
if.. 
(.. 
!.. &
VerifyUsernameAvailability.. /
(../ 0
username..0 8
)..8 9
)..9 :
{..; <
return// 
;// 
}00  
SendVerificationCode11 $
(11$ %
email11% *
)11* +
;11+ ,
}22 
catch22 
(22 
	Exception22 
	exception22 (
)22( )
{22* +
HandleException33 
(33  
	exception33  )
,33) *
nameof33+ 1
(331 2
BtnSignIn_Click332 A
)33A B
)33B C
;33C D
}44 
}55 	
private77 
bool77 #
VerifyEmailAvailability77 ,
(77, -
string77- 3
email774 9
)779 :
{77; <
bool88 
isEmailAvailable88 !
=88" #
true88$ (
;88( )
UserManagerClient99 
	userProxy99 '
=99( )
new99* - 
TripasDeGatoServicio99. B
.99B C
UserManagerClient99C T
(99T U
)99U V
;99V W
try:: 
{:: 
int;; 
emailCheckResult;; $
=;;% &
	userProxy;;' 0
.;;0 1
IsEmailRegistered;;1 B
(;;B C
email;;C H
);;H I
;;;I J
if<< 
(<< 
emailCheckResult<< $
==<<% '
	Constants<<( 1
.<<1 2
DATA_MATCHES<<2 >
)<<> ?
{<<@ A
DialogManager== !
.==! "!
ShowErrorMessageAlert==" 7
(==7 8

Properties==8 B
.==B C
	Resources==C L
.==L M
dialogEmailInUse==M ]
)==] ^
;==^ _
HighlightField>> "
(>>" #
txtEmail>># +
)>>+ ,
;>>, -
isEmailAvailable?? $
=??% &
false??' ,
;??, -
}@@ 
else@@ 
if@@ 
(@@ 
emailCheckResult@@ +
==@@, .
	Constants@@/ 8
.@@8 9
ERROR_OPERATION@@9 H
)@@H I
{@@J K
DialogManagerAA !
.AA! "!
ShowErrorMessageAlertAA" 7
(AA7 8

PropertiesAA8 B
.AAB C
	ResourcesAAC L
.AAL M$
dialogErrorCheckingEmailAAM e
)AAe f
;AAf g
isEmailAvailableBB $
=BB% &
falseBB' ,
;BB, -
}CC 
}DD 
catchDD 
(DD 
	ExceptionDD 
	exceptionDD (
)DD( )
{DD* +
HandleExceptionEE 
(EE  
	exceptionEE  )
,EE) *
nameofEE+ 1
(EE1 2#
VerifyEmailAvailabilityEE2 I
)EEI J
)EEJ K
;EEK L
isEmailAvailableFF  
=FF! "
falseFF# (
;FF( )
}GG 
returnHH 
isEmailAvailableHH #
;HH# $
}II 	
privateKK 
boolKK &
VerifyUsernameAvailabilityKK /
(KK/ 0
stringKK0 6
usernameKK7 ?
)KK? @
{KKA B
boolLL 
isUsernameAvailableLL $
=LL% &
trueLL' +
;LL+ ,
UserManagerClientMM 
	userProxyMM '
=MM( )
newMM* - 
TripasDeGatoServicioMM. B
.MMB C
UserManagerClientMMC T
(MMT U
)MMU V
;MMV W
tryNN 
{NN 
intOO 
usernameCheckResultOO '
=OO( )
	userProxyOO* 3
.OO3 4
IsNameRegisteredOO4 D
(OOD E
usernameOOE M
)OOM N
;OON O
ifPP 
(PP 
usernameCheckResultPP '
==PP( *
	ConstantsPP+ 4
.PP4 5
DATA_MATCHESPP5 A
)PPA B
{PPC D
DialogManagerQQ !
.QQ! "!
ShowErrorMessageAlertQQ" 7
(QQ7 8

PropertiesQQ8 B
.QQB C
	ResourcesQQC L
.QQL M
dialogUserNameInUseQQM `
)QQ` a
;QQa b
HighlightFieldRR "
(RR" #
txtNameRR# *
)RR* +
;RR+ ,
isUsernameAvailableSS '
=SS( )
falseSS* /
;SS/ 0
}TT 
elseTT 
ifTT 
(TT 
usernameCheckResultTT .
==TT/ 1
	ConstantsTT2 ;
.TT; <
ERROR_OPERATIONTT< K
)TTK L
{TTM N
DialogManagerUU !
.UU! "!
ShowErrorMessageAlertUU" 7
(UU7 8

PropertiesUU8 B
.UUB C
	ResourcesUUC L
.UUL M'
dialogErrorCheckingUserNameUUM h
)UUh i
;UUi j
isUsernameAvailableVV '
=VV( )
falseVV* /
;VV/ 0
}WW 
}XX 
catchXX 
(XX 
	ExceptionXX 
	exceptionXX (
)XX( )
{XX* +
HandleExceptionYY 
(YY  
	exceptionYY  )
,YY) *
nameofYY+ 1
(YY1 2&
VerifyUsernameAvailabilityYY2 L
)YYL M
)YYM N
;YYN O
isUsernameAvailableZZ #
=ZZ$ %
falseZZ& +
;ZZ+ ,
}[[ 
return\\ 
isUsernameAvailable\\ &
;\\& '
}]] 	
private__ 
void__  
SendVerificationCode__ )
(__) *
string__* 0
email__1 6
)__6 7
{__8 9
try`` 
{`` *
EmailVerificationManagerClientaa ."
emailVerificationProxyaa/ E
=aaF G
newaaH K 
TripasDeGatoServicioaaL `
.aa` a*
EmailVerificationManagerClientaaa 
(	aa �
)
aa� �
;
aa� �
intbb 
resultbb 
=bb "
emailVerificationProxybb 3
.bb3 4(
SendVerificationCodeRegisterbb4 P
(bbP Q
emailbbQ V
)bbV W
;bbW X
ifcc 
(cc 
resultcc 
==cc 
	Constantscc '
.cc' (
SUCCES_OPERATIONcc( 8
)cc8 9
{cc: ;
verificationGriddd $
.dd$ %

Visibilitydd% /
=dd0 1

Visibilitydd2 <
.dd< =
Visibledd= D
;ddD E
DialogManageree !
.ee! "#
ShowSuccessMessageAlertee" 9
(ee9 :

Propertiesee: D
.eeD E
	ResourceseeE N
.eeN O&
dialogVerificationCodeSenteeO i
)eei j
;eej k
}ff 
elseff 
{ff 
DialogManagergg !
.gg! "!
ShowErrorMessageAlertgg" 7
(gg7 8

Propertiesgg8 B
.ggB C
	ResourcesggC L
.ggL M.
"dialogErrorSendingVerificationCodeggM o
)ggo p
;ggp q
}hh 
}ii 
catchii 
(ii 
	Exceptionii 
	exceptionii (
)ii( )
{ii* +
HandleExceptionjj 
(jj  
	exceptionjj  )
,jj) *
nameofjj+ 1
(jj1 2 
SendVerificationCodejj2 F
)jjF G
)jjG H
;jjH I
}kk 
}ll 	
privatenn 
voidnn 
BtnResendCode_Clicknn (
(nn( )
objectnn) /
sendernn0 6
,nn6 7
RoutedEventArgsnn8 G
ennH I
)nnI J
{nnK L
tryoo 
{oo *
EmailVerificationManagerClientpp ."
emailVerificationProxypp/ E
=ppF G
newppH K 
TripasDeGatoServicioppL `
.pp` a*
EmailVerificationManagerClientppa 
(	pp �
)
pp� �
;
pp� �
intqq 
resultqq 
=qq "
emailVerificationProxyqq 3
.qq3 4(
SendVerificationCodeRegisterqq4 P
(qqP Q
txtEmailqqQ Y
.qqY Z
TextqqZ ^
)qq^ _
;qq_ `
ifrr 
(rr 
resultrr 
==rr 
	Constantsrr '
.rr' (
SUCCES_OPERATIONrr( 8
)rr8 9
{rr: ;
DialogManagerss !
.ss! "#
ShowSuccessMessageAlertss" 9
(ss9 :

Propertiesss: D
.ssD E
	ResourcesssE N
.ssN O4
(dialogVerificationCodeResentSuccessfullyssO w
)ssw x
;ssx y
}tt 
elsett 
{tt 
DialogManageruu !
.uu! "!
ShowErrorMessageAlertuu" 7
(uu7 8

Propertiesuu8 B
.uuB C
	ResourcesuuC L
.uuL M0
$dialogErrorResendingVerificationCodeuuM q
)uuq r
;uur s
}vv 
}ww 
catchww 
(ww 
	Exceptionww 
	exceptionww (
)ww( )
{ww* +
HandleExceptionxx 
(xx  
	exceptionxx  )
,xx) *
nameofxx+ 1
(xx1 2
BtnResendCode_Clickxx2 E
)xxE F
)xxF G
;xxG H
}yy 
}zz 	
private|| 
void|| 
BtnValidate_Click|| &
(||& '
object||' -
sender||. 4
,||4 5
RoutedEventArgs||6 E
e||F G
)||G H
{||I J
try}} 
{}} 
string~~ 
enteredCode~~ "
=~~# $
$"~~% '
{~~' (
txtValidationCode1~~( :
.~~: ;
Text~~; ?
}~~? @
{~~@ A
txtValidationCode2~~A S
.~~S T
Text~~T X
}~~X Y
{~~Y Z
txtValidationCode3~~Z l
.~~l m
Text~~m q
}~~q r
{~~r s
txtValidationCode4	~~s �
.
~~� �
Text
~~� �
}
~~� �
{
~~� � 
txtValidationCode5
~~� �
.
~~� �
Text
~~� �
}
~~� �
{
~~� � 
txtValidationCode6
~~� �
.
~~� �
Text
~~� �
}
~~� �
"
~~� �
;
~~� �*
EmailVerificationManagerClient ."
emailVerificationProxy/ E
=F G
newH K 
TripasDeGatoServicioL `
.` a*
EmailVerificationManagerClienta 
(	 �
)
� �
;
� �
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
��! "
UserManagerClient
�� %
	userProxy
��& /
=
��0 1
new
��2 5"
TripasDeGatoServicio
��6 J
.
��J K
UserManagerClient
��K \
(
��\ ]
)
��] ^
;
��^ _
	LoginUser
�� 
newUser
�� %
=
��& '
new
��( +"
TripasDeGatoServicio
��, @
.
��@ A
	LoginUser
��A J
{
��K L
Mail
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
Password
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
�� 
Profile
�� 

newProfile
�� &
=
��' (
new
��) ,"
TripasDeGatoServicio
��- A
.
��A B
Profile
��B I
{
��J K
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
��/ 0
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnValidate_Click
��2 C
)
��C D
)
��D E
;
��E F
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
�� 
static
�� 
void
�� 
HighlightField
�� *
(
��* +
Control
��+ 2
control
��3 :
)
��: ;
{
��< =
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
�� 
}
�� 	
private
�� 
void
�� '
BtnTogglePassword_Checked
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
��Q R 
txtPasswordVisible
�� 
.
�� 
Text
�� #
=
��$ %
txtPassword
��& 1
.
��1 2
Password
��2 :
;
��: ; 
txtPasswordVisible
�� 
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
��> ?
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
	Collapsed
��0 9
;
��9 :
}
�� 	
private
�� 
void
�� )
BtnTogglePassword_Unchecked
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
��S T
txtPassword
�� 
.
�� 
Password
��  
=
��! " 
txtPasswordVisible
��# 5
.
��5 6
Text
��6 :
;
��: ; 
txtPasswordVisible
�� 
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
��@ A
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
Visible
��0 7
;
��7 8
}
�� 	
private
�� 
static
�� 
void
�� 

ResetField
�� &
(
��& '
Control
��' .
control
��/ 6
)
��6 7
{
��8 9
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
�� !
TxtName_TextChanged
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
TextChangedEventArgs
��8 L
e
��M N
)
��N O
{
��P Q
string
�� 
username
�� 
=
�� 
txtName
�� %
.
��% &
Text
��& *
;
��* +
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
��= >
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
�� 
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
��( )
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
��> ?
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
�� 
}
�� 	
private
�� 
void
�� 
GoToLoginView
�� "
(
��" #
)
��# $
{
��% &
if
�� 
(
�� 
this
�� 
.
�� 
NavigationService
�� &
.
��& '
	CanGoBack
��' 0
)
��0 1
{
��2 3
this
�� 
.
�� 
NavigationService
�� &
.
��& '
GoBack
��' -
(
��- .
)
��. /
;
��/ 0
}
�� 
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
��E F
GoToLoginView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
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
��8 9
{
��: ; 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode2
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode3
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode4
��- ?
)
��? @
{
��A B 
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
��. /
}
�� 
else
�� 
if
�� 
(
�� 
currentTextBox
�� )
==
��* , 
txtValidationCode5
��- ?
)
��? @
{
��A B 
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
�� 
}
�� 
}
�� 	
}
�� 
}�� �
0C:\TripasDeGatoCliente\Views\ProfileView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
ProfileView $
:% &
Page' +
{, -
private 
bool 

_isEditing 
=  !
false" '
;' (
private 
string 
_selectedProfile '
=( ) 
UserProfileSingleton* >
.> ?
PicPath? F
;F G
public 
ProfileView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
LoadProfile 
( 
) 
; 
DisableEditing 
( 
) 
; 
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
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
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
logger   
.   
LogError   
(    

methodName    *
,  * +
	exception  , 5
)  5 6
;  6 7
DialogManager!! 
.!! !
ShowErrorMessageAlert!! 3
(!!3 4

Properties!!4 >
.!!> ?
	Resources!!? H
.!!H I'
dialogComunicationException!!I d
)!!d e
;!!e f
}"" 
else"" 
{"" 
logger## 
.## 
LogError## 
(##  

methodName##  *
,##* +
	exception##, 5
)##5 6
;##6 7
DialogManager$$ 
.$$ !
ShowErrorMessageAlert$$ 3
($$3 4
string$$4 :
.$$: ;
Format$$; A
($$A B

Properties$$B L
.$$L M
	Resources$$M V
.$$V W!
dialogUnexpectedError$$W l
,$$l m
	exception$$n w
.$$w x
Message$$x 
)	$$ �
)
$$� �
;
$$� �
}&& 
}'' 	
private)) 
void)) 
LoadProfile))  
())  !
)))! "
{))# $
lbUserNameProfile** 
.** 
Content** %
=**& '
!**( )
string**) /
.**/ 0
IsNullOrEmpty**0 =
(**= > 
UserProfileSingleton**> R
.**R S
UserName**S [
)**[ \
?**] ^ 
UserProfileSingleton**_ s
.**s t
UserName**t |
:**} ~

Properties	** �
.
**� �
	Resources
**� �
.
**� �
lbUnknownUser
**� �
;
**� �
txtUserName++ 
.++ 
Text++ 
=++  
UserProfileSingleton++ 3
.++3 4
UserName++4 <
;++< =
cboxLanguage,, 
.,, 
ItemsSource,, $
=,,% &
new,,' *
List,,+ /
<,,/ 0
string,,0 6
>,,6 7
{,,8 9
$str,,: A
,,,A B
$str,,C J
},,K L
;,,L M
if-- 
(-- 
!-- 
string-- 
.-- 
IsNullOrEmpty-- %
(--% & 
UserProfileSingleton--& :
.--: ;
PicPath--; B
)--B C
)--C D
{--E F
imageProfile.. 
... 
Source.. #
=..$ %
new..& )
BitmapImage..* 5
(..5 6
new..6 9
Uri..: =
(..= > 
UserProfileSingleton..> R
...R S
PicPath..S Z
,..Z [
UriKind..\ c
...c d
RelativeOrAbsolute..d v
)..v w
)..w x
;..x y
}// 
lbScoreProfile00 
.00 
Content00 "
=00# $
string00% +
.00+ ,
Format00, 2
(002 3

Properties003 =
.00= >
	Resources00> G
.00G H
lbScore00H O
,00O P 
UserProfileSingleton00Q e
.00e f
Score00f k
)00k l
;00l m
}11 	
private33 
void33 
EnableEditing33 "
(33" #
)33# $
{33% &
txtUserName44 
.44 
	IsEnabled44 !
=44" #
true44$ (
;44( )
cboxLanguage55 
.55 
	IsEnabled55 "
=55# $
true55% )
;55) *
btnSave66 
.66 
	IsEnabled66 
=66 
true66  $
;66$ %

_isEditing77 
=77 
true77 
;77 
borderProfiles88 
.88 
	IsEnabled88 $
=88% &
true88' +
;88+ ,
borderProfiles99 
.99 

Visibility99 %
=99& '

Visibility99( 2
.992 3
Visible993 :
;99: ;
btnSave:: 
.:: 

Visibility:: 
=::  

Visibility::! +
.::+ ,
Visible::, 3
;::3 4
};; 	
private== 
void== 
DisableEditing== #
(==# $
)==$ %
{==& '
txtUserName>> 
.>> 
	IsEnabled>> !
=>>" #
false>>$ )
;>>) *
cboxLanguage?? 
.?? 
	IsEnabled?? "
=??# $
false??% *
;??* +
btnSave@@ 
.@@ 
	IsEnabled@@ 
=@@ 
false@@  %
;@@% &

_isEditingAA 
=AA 
falseAA 
;AA 
borderProfilesBB 
.BB 
	IsEnabledBB $
=BB% &
falseBB' ,
;BB, -
borderProfilesCC 
.CC 

VisibilityCC %
=CC& '

VisibilityCC( 2
.CC2 3
	CollapsedCC3 <
;CC< =
btnSaveDD 
.DD 

VisibilityDD 
=DD  

VisibilityDD! +
.DD+ ,
	CollapsedDD, 5
;DD5 6
}EE 	
privateGG 
voidGG 
BtnEdit_ClickGG "
(GG" #
objectGG# )
senderGG* 0
,GG0 1
RoutedEventArgsGG2 A
eGGB C
)GGC D
{GGE F
ifHH 
(HH 
!HH 

_isEditingHH 
)HH 
{HH 
EnableEditingII 
(II 
)II 
;II  
}JJ 
}KK 	
privateMM 
voidMM 
BtnSave_ClickMM "
(MM" #
objectMM# )
senderMM* 0
,MM0 1
RoutedEventArgsMM2 A
eMMB C
)MMC D
{MME F
ifNN 
(NN 

_isEditingNN 
)NN 
{NN 
ifOO 
(OO 
ValidateFieldsOO "
(OO" #
)OO# $
)OO$ %
{OO& '
stringPP 
userNamePP #
=PP$ %
txtUserNamePP& 1
.PP1 2
TextPP2 6
;PP6 7
stringQQ 
selectedLanguageQQ +
=QQ, -
cboxLanguageQQ. :
.QQ: ;
SelectedItemQQ; G
?QQG H
.QQH I
ToStringQQI Q
(QQQ R
)QQR S
;QQS T
ifRR 
(RR 
stringRR 
.RR 
IsNullOrEmptyRR ,
(RR, -
selectedLanguageRR- =
)RR= >
)RR> ?
{RR@ A
SaveProfileSS #
(SS# $
userNameSS$ ,
,SS, -
_selectedProfileSS. >
)SS> ?
;SS? @
}TT 
elseTT 
{TT 
MessageBoxResultUU (
resultUU) /
=UU0 1

MessageBoxUU2 <
.UU< =
ShowUU= A
(UUA B

PropertiesVV &
.VV& '
	ResourcesVV' 0
.VV0 1'
dialogMessageLanguagechangeVV1 L
,VVL M

PropertiesWW &
.WW& '
	ResourcesWW' 0
.WW0 1
lbLanguageChangeWW1 A
,WWA B
MessageBoxButtonXX ,
.XX, -
YesNoXX- 2
,XX2 3
MessageBoxImageYY +
.YY+ ,
QuestionYY, 4
)ZZ 
;ZZ 
if[[ 
([[ 
result[[ "
==[[# %
MessageBoxResult[[& 6
.[[6 7
Yes[[7 :
)[[: ;
{[[< =
App\\ 
.\\  
ChangeLanguage\\  .
(\\. /
selectedLanguage\\/ ?
)\\? @
;\\@ A
System]] "
.]]" #
Diagnostics]]# .
.]]. /
Process]]/ 6
.]]6 7
Start]]7 <
(]]< =
Application]]= H
.]]H I
ResourceAssembly]]I Y
.]]Y Z
Location]]Z b
)]]b c
;]]c d
Application^^ '
.^^' (
Current^^( /
.^^/ 0
Shutdown^^0 8
(^^8 9
)^^9 :
;^^: ;
}__ 
else__ 
{__  
SaveProfile`` '
(``' (
userName``( 0
,``0 1
_selectedProfile``2 B
)``B C
;``C D
}aa 
}bb 
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
.ddL M%
dialogCompleteFieldsErrorddM f
)ddf g
;ddg h
}ee 
}ff 
}gg 	
privateii 
asyncii 
voidii 
SaveProfileii &
(ii& '
stringii' -
userNameii. 6
,ii6 7
stringii8 >
selectedProfileii? N
)iiN O
{iiP Q
tryjj 
{jj 
UserManagerClientkk !
servicekk" )
=kk* +
newkk, / 
TripasDeGatoServiciokk0 D
.kkD E
UserManagerClientkkE V
(kkV W
)kkW X
;kkX Y
intll 
	idProfilell 
=ll  
UserProfileSingletonll  4
.ll4 5
	IdProfilell5 >
;ll> ?
stringmm 
newPicmm 
=mm 
selectedProfilemm  /
??mm0 2 
UserProfileSingletonmm3 G
.mmG H
PicPathmmH O
;mmO P
intnn 
updateResultnn  
=nn! "
awaitnn# (
servicenn) 0
.nn0 1
UpdateProfileAsyncnn1 C
(nnC D
	idProfilennD M
,nnM N
userNamennO W
,nnW X
newPicnnY _
)nn_ `
;nn` a
ifoo 
(oo 
updateResultoo  
==oo! #
ConstantsManageroo$ 4
.oo4 5
	Constantsoo5 >
.oo> ?
SUCCES_OPERATIONoo? O
)ooO P
{ooQ R 
UserProfileSingletonpp (
.pp( )
UpdateNombrepp) 5
(pp5 6
userNamepp6 >
)pp> ?
;pp? @ 
UserProfileSingletonqq (
.qq( )
UpdateFotoRutaqq) 7
(qq7 8
newPicqq8 >
)qq> ?
;qq? @
LoadProfilerr 
(rr  
)rr  !
;rr! "
DialogManagerss !
.ss! "#
ShowSuccessMessageAlertss" 9
(ss9 :

Propertiesss: D
.ssD E
	ResourcesssE N
.ssN O
dialogChangesSavedssO a
)ssa b
;ssb c
DisableEditingtt "
(tt" #
)tt# $
;tt$ %
}uu 
elseuu 
{uu 
DialogManagervv !
.vv! "!
ShowErrorMessageAlertvv" 7
(vv7 8

Propertiesvv8 B
.vvB C
	ResourcesvvC L
.vvL M(
dialogErrorSavingProfileDatavvM i
)vvi j
;vvj k
}ww 
}xx 
catchxx 
(xx 
	Exceptionxx 
	exceptionxx (
)xx( )
{xx* +
HandleExceptionyy 
(yy  
	exceptionyy  )
,yy) *
nameofyy+ 1
(yy1 2
SaveProfileyy2 =
)yy= >
)yy> ?
;yy? @
}zz 
}{{ 	
private}} 
void}} ,
 ListProfilePics_SelectionChanged}} 5
(}}5 6
object}}6 <
sender}}= C
,}}C D%
SelectionChangedEventArgs}}E ^
e}}_ `
)}}` a
{}}b c
if~~ 
(~~ 
lstProfilePics~~ 
.~~ 
SelectedItem~~ +
is~~, .
ListBoxItem~~/ :
selectedItem~~; G
)~~G H
{~~I J
string 
selectedImage $
=% &
selectedItem' 3
.3 4
Tag4 7
.7 8
ToString8 @
(@ A
)A B
;B C
imageProfile
�� 
.
�� 
Source
�� #
=
��$ %
new
��& )
BitmapImage
��* 5
(
��5 6
new
��6 9
Uri
��: =
(
��= >
selectedImage
��> K
,
��K L
UriKind
��M T
.
��T U
Relative
��U ]
)
��] ^
)
��^ _
;
��_ `"
UserProfileSingleton
�� $
.
��$ %
UpdateFotoRuta
��% 3
(
��3 4
selectedImage
��4 A
)
��A B
;
��B C
_selectedProfile
��  
=
��! "
selectedImage
��# 0
;
��0 1
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
��# $
)
��$ %
{
��& '
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
}�� �
-C:\TripasDeGatoCliente\Views\MenuView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
MenuView !
:" #
Page$ (
{) *
private 
UserManagerClient !
_userManager" .
;. /
private  
FriendsManagerClient $
_friendsManager% 4
;4 5
private 
StatusManagerClient #
_statusManager$ 2
;2 3
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
;6 7
LoadUserProfile 
( 
) 
; 
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager   
logger    
=  ! "
new  # &
LoggerManager  ' 4
(  4 5
this  5 9
.  9 :
GetType  : A
(  A B
)  B C
)  C D
;  D E
if!! 
(!! 
	exception!! 
is!! %
EndpointNotFoundException!! 6
)!!6 7
{!!8 9
logger"" 
."" 
LogError"" 
(""  

methodName""  *
,""* +
	exception"", 5
)""5 6
;""6 7
DialogManager## 
.## !
ShowErrorMessageAlert## 3
(##3 4

Properties##4 >
.##> ?
	Resources##? H
.##H I#
dialogEndPointException##I `
)##` a
;##a b
}$$ 
else$$ 
if$$ 
($$ 
	exception$$  
is$$! #
TimeoutException$$$ 4
)$$4 5
{$$6 7
logger%% 
.%% 
LogError%% 
(%%  

methodName%%  *
,%%* +
	exception%%, 5
)%%5 6
;%%6 7
DialogManager&& 
.&& !
ShowErrorMessageAlert&& 3
(&&3 4

Properties&&4 >
.&&> ?
	Resources&&? H
.&&H I"
dialogTimeOutException&&I _
)&&_ `
;&&` a
}'' 
else'' 
if'' 
('' 
	exception''  
is''! #"
CommunicationException''$ :
)'': ;
{''< =
logger(( 
.(( 
LogError(( 
(((  

methodName((  *
,((* +
	exception((, 5
)((5 6
;((6 7
DialogManager)) 
.)) !
ShowErrorMessageAlert)) 3
())3 4

Properties))4 >
.))> ?
	Resources))? H
.))H I'
dialogComunicationException))I d
)))d e
;))e f
}** 
else** 
{** 
logger++ 
.++ 
LogError++ 
(++  

methodName++  *
,++* +
	exception++, 5
)++5 6
;++6 7
DialogManager,, 
.,, !
ShowErrorMessageAlert,, 3
(,,3 4
string,,4 :
.,,: ;
Format,,; A
(,,A B

Properties,,B L
.,,L M
	Resources,,M V
.,,V W!
dialogUnexpectedError,,W l
,,,l m
	exception,,n w
.,,w x
Message,,x 
)	,, �
)
,,� �
;
,,� �
}.. 
}// 	
private11 
void11 
LoadUserProfile11 $
(11$ %
)11% &
{11' (
if22 
(22 
!22 
string22 
.22 
IsNullOrEmpty22 %
(22% & 
UserProfileSingleton22& :
.22: ;
UserName22; C
)22C D
)22D E
{22F G

lbUserName33 
.33 
Content33 "
=33# $ 
UserProfileSingleton33% 9
.339 :
UserName33: B
;33B C 
UserProfileSingleton44 $
.44$ %
ResetChatCode44% 2
(442 3
)443 4
;444 5 
UserProfileSingleton55 $
.55$ %
ResetLobbyCode55% 3
(553 4
)554 5
;555 6 
UserProfileSingleton66 $
.66$ %
ResetMatchCode66% 3
(663 4
)664 5
;665 6
}77 
else77 
{77 

lbUserName88 
.88 
Content88 "
=88# $

Properties88% /
.88/ 0
	Resources880 9
.889 :
lbUnknownUser88: G
;88G H
}99 
}:: 	
private<< 
void<< 
BtnSignOut_Click<< %
(<<% &
object<<& ,
sender<<- 3
,<<3 4
RoutedEventArgs<<5 D
e<<E F
)<<F G
{<<H I
SignOut== 
(== 
)== 
;== 
NavigateToLoginView>> 
(>>  
)>>  !
;>>! "
}?? 	
privateAA 
voidAA 
SignOutAA 
(AA 
)AA 
{AA  
intBB 
playerIdBB 
=BB  
UserProfileSingletonBB /
.BB/ 0
	IdProfileBB0 9
;BB9 :"
SetPlayerOfflineStatusCC "
(CC" #
playerIdCC# +
)CC+ ,
;CC, - 
UserProfileSingletonDD  
.DD  !
ResetInstanceDD! .
(DD. /
)DD/ 0
;DD0 1
}EE 	
privateGG 
voidGG "
SetPlayerOfflineStatusGG +
(GG+ ,
intGG, /
playerIdGG0 8
)GG8 9
{GG: ;
tryHH 
{HH 
IStatusManagerII 
statusManagerII ,
=II- .
newII/ 2
StatusManagerClientII3 F
(IIF G
)IIG H
;IIH I
statusManagerJJ 
.JJ 
SetPlayerStatusJJ -
(JJ- .
playerIdJJ. 6
,JJ6 7!
GameEnumsPlayerStatusJJ8 M
.JJM N
OfflineJJN U
)JJU V
;JJV W
}KK 
catchKK 
(KK 
	ExceptionKK 
	exceptionKK (
)KK( )
{KK* +
HandleExceptionLL 
(LL  
	exceptionLL  )
,LL) *
nameofLL+ 1
(LL1 2"
SetPlayerOfflineStatusLL2 H
)LLH I
)LLI J
;LLJ K
}MM 
}NN 	
privatePP 
voidPP 
NavigateToLoginViewPP (
(PP( )
)PP) *
{PP+ ,
	LoginViewQQ 
	loginViewQQ 
=QQ  !
newQQ" %
	LoginViewQQ& /
(QQ/ 0
)QQ0 1
;QQ1 2
thisRR 
.RR 
NavigationServiceRR "
.RR" #
NavigateRR# +
(RR+ ,
	loginViewRR, 5
)RR5 6
;RR6 7
}SS 	
privateUU 
asyncUU 
voidUU 
BtnFriends_ClickUU +
(UU+ ,
objectUU, 2
senderUU3 9
,UU9 :
RoutedEventArgsUU; J
eUUK L
)UUL M
{UUN O
tryVV 
{VV 
_elementsVisibleWW  
=WW! "
!WW# $
_elementsVisibleWW$ 4
;WW4 5
ifXX 
(XX 
_elementsVisibleXX $
)XX$ %
{XX& '

lstFriendsYY 
.YY 

VisibilityYY )
=YY* +

VisibilityYY, 6
.YY6 7
VisibleYY7 >
;YY> ?
btnAddFriendZZ  
.ZZ  !

VisibilityZZ! +
=ZZ, -

VisibilityZZ. 8
.ZZ8 9
VisibleZZ9 @
;ZZ@ A
btnRemoveFriend[[ #
.[[# $

Visibility[[$ .
=[[/ 0

Visibility[[1 ;
.[[; <
Visible[[< C
;[[C D
await\\  
LoadFriendsListAsync\\ .
(\\. /
)\\/ 0
;\\0 1

lstFriends]] 
.]] 
	IsEnabled]] (
=]]) *
true]]+ /
;]]/ 0
btnAddFriend^^  
.^^  !
	IsEnabled^^! *
=^^+ ,
true^^- 1
;^^1 2
btnRemoveFriend__ #
.__# $
	IsEnabled__$ -
=__. /
true__0 4
;__4 5

btnFriends`` 
.`` 

Background`` )
=``* +
new``, /
SolidColorBrush``0 ?
(``? @
Color``@ E
.``E F
FromArgb``F N
(``N O
$num``O Q
,``Q R
$num``S V
,``V W
$num``X [
,``[ \
$num``] `
)``` a
)``a b
;``b c
}aa 
elseaa 
{aa 

lstFriendsbb 
.bb 

Visibilitybb )
=bb* +

Visibilitybb, 6
.bb6 7
	Collapsedbb7 @
;bb@ A
btnAddFriendcc  
.cc  !

Visibilitycc! +
=cc, -

Visibilitycc. 8
.cc8 9
	Collapsedcc9 B
;ccB C
btnRemoveFrienddd #
.dd# $

Visibilitydd$ .
=dd/ 0

Visibilitydd1 ;
.dd; <
	Collapseddd< E
;ddE F
txtFriendNameee !
.ee! "

Visibilityee" ,
=ee- .

Visibilityee/ 9
.ee9 :
	Collapsedee: C
;eeC D
btnAddff 
.ff 

Visibilityff %
=ff& '

Visibilityff( 2
.ff2 3
	Collapsedff3 <
;ff< =

lstFriendsgg 
.gg 
	IsEnabledgg (
=gg) *
falsegg+ 0
;gg0 1
btnAddFriendhh  
.hh  !
	IsEnabledhh! *
=hh+ ,
falsehh- 2
;hh2 3
btnRemoveFriendii #
.ii# $
	IsEnabledii$ -
=ii. /
falseii0 5
;ii5 6
txtFriendNamejj !
.jj! "
	IsEnabledjj" +
=jj, -
falsejj. 3
;jj3 4
btnAddkk 
.kk 
	IsEnabledkk $
=kk% &
falsekk' ,
;kk, -

btnFriendsll 
.ll 

Backgroundll )
=ll* +
newll, /
SolidColorBrushll0 ?
(ll? @
Colorll@ E
.llE F
FromArgbllF N
(llN O
$numllO Q
,llQ R
$numllS V
,llV W
$numllX [
,ll[ \
$numll] `
)ll` a
)lla b
;llb c
btnAddFriendmm  
.mm  !

Backgroundmm! +
=mm, -
newmm. 1
SolidColorBrushmm2 A
(mmA B
ColormmB G
.mmG H
FromArgbmmH P
(mmP Q
$nummmQ T
,mmT U
$nummmV X
,mmX Y
$nummmZ \
,mm\ ]
$nummm^ `
)mm` a
)mma b
;mmb c
}nn 
}oo 
catchoo 
(oo 
	Exceptionoo 
	exceptionoo (
)oo( )
{oo* +
HandleExceptionpp 
(pp  
	exceptionpp  )
,pp) *
nameofpp+ 1
(pp1 2
BtnFriends_Clickpp2 B
)ppB C
)ppC D
;ppD E
}qq 
}rr 	
privatett 
voidtt 
BtnAddFriend_Clicktt '
(tt' (
objecttt( .
sendertt/ 5
,tt5 6
RoutedEventArgstt7 F
ettG H
)ttH I
{ttJ K
_elementsVisibleuu 
=uu 
!uu  
_elementsVisibleuu  0
;uu0 1
ifvv 
(vv 
_elementsVisiblevv  
)vv  !
{vv" #
txtFriendNameww 
.ww 

Visibilityww (
=ww) *

Visibilityww+ 5
.ww5 6
Visibleww6 =
;ww= >
btnAddxx 
.xx 

Visibilityxx !
=xx" #

Visibilityxx$ .
.xx. /
Visiblexx/ 6
;xx6 7
txtFriendNameyy 
.yy 
	IsEnabledyy '
=yy( )
trueyy* .
;yy. /
btnAddzz 
.zz 
	IsEnabledzz  
=zz! "
truezz# '
;zz' (
btnAddFriend{{ 
.{{ 

Background{{ '
={{( )
new{{* -
SolidColorBrush{{. =
({{= >
Color{{> C
.{{C D
FromArgb{{D L
({{L M
$num{{M O
,{{O P
$num{{Q S
,{{S T
$num{{U W
,{{W X
$num{{Y [
){{[ \
){{\ ]
;{{] ^
}|| 
else|| 
{|| 
txtFriendName}} 
.}} 

Visibility}} (
=}}) *

Visibility}}+ 5
.}}5 6
	Collapsed}}6 ?
;}}? @
btnAdd~~ 
.~~ 

Visibility~~ !
=~~" #

Visibility~~$ .
.~~. /
	Collapsed~~/ 8
;~~8 9
txtFriendName 
. 
	IsEnabled '
=( )
false* /
;/ 0
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
��J K
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnAdd_Click
��2 >
)
��> ?
)
��? @
;
��@ A
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
�� 
static
�� 
bool
��  
ValidateFriendName
�� .
(
��. /
string
��/ 5

friendName
��6 @
)
��@ A
{
��B C
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
��8 9
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
��0 1
int
�� 
result
�� 
=
��  
_friendsManager
��! 0
.
��0 1"
IsFriendAlreadyAdded
��1 E
(
��E F"
UserProfileSingleton
��F Z
.
��Z [
	IdProfile
��[ d
,
��d e
friendProfileId
��f u
)
��u v
;
��v w
if
�� 
(
�� 
result
�� 
==
�� !
	Constants
��" +
.
��+ ,
SUCCES_OPERATION
��, <
)
��< =
{
��> ?
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <
string
��< B
.
��B C
Format
��C I
(
��I J

Properties
��J T
.
��T U
	Resources
��U ^
.
��^ _"
dialogAlreadyFriends
��_ s
,
��s t

friendName
��u 
)�� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
await
�� #
ExecuteFriendAddition
�� 3
(
��3 4
friendProfileId
��4 C
,
��C D

friendName
��E O
)
��O P
;
��P Q
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
	AddFriend
��2 ;
)
��; <
)
��< =
;
��= >
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
��Y Z
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2#
ExecuteFriendAddition
��2 G
)
��G H
)
��H I
;
��I J
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
��2 3
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
��B C
List
�� 
<
�� 
Profile
�� 
>
�� 
friendsList
�� *
=
��+ ,
await
��- 2
_friendsManager
��3 B
.
��B C
GetFriendsAsync
��C R
(
��R S
userProfileId
��S `
)
��` a
;
��a b
List
�� 
<
�� 
string
�� 
>
�� 
friendsWithStatus
�� /
=
��0 1
new
��2 5
List
��6 :
<
��: ;
string
��; A
>
��A B
(
��B C
)
��C D
;
��D E
foreach
�� 
(
�� 
Profile
��  
friend
��! '
in
��( *
friendsList
��+ 6
)
��6 7
{
��8 9#
GameEnumsPlayerStatus
�� )
status
��* 0
=
��1 2
await
��3 8
_statusManager
��9 G
.
��G H"
GetPlayerStatusAsync
��H \
(
��\ ]
friend
��] c
.
��c d
	IdProfile
��d m
)
��m n
;
��n o
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2"
LoadFriendsListAsync
��2 F
)
��F G
)
��G H
;
��H I
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
��S T
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
�� 
(
�� 
friendProfileId
�� '
>
��( )
$num
��* +
)
��+ ,
{
��- .
int
�� 
userProfileId
�� )
=
��* +"
UserProfileSingleton
��, @
.
��@ A
	IdProfile
��A J
;
��J K
int
�� 
result
�� "
=
��# $
await
��% *
_friendsManager
��+ :
.
��: ;
DeleteFriendAsync
��; L
(
��L M
userProfileId
��M Z
,
��Z [
friendProfileId
��\ k
)
��k l
;
��l m
if
�� 
(
�� 
result
�� "
==
��# %
	Constants
��& /
.
��/ 0
SUCCES_OPERATION
��0 @
)
��@ A
{
��B C
DialogManager
�� )
.
��) *%
ShowSuccessMessageAlert
��* A
(
��A B
string
��B H
.
��H I
Format
��I O
(
��O P

Properties
��P Z
.
��Z [
	Resources
��[ d
.
��d e%
dialogFriendshipDeleted
��e |
,
��| }

friendName��~ �
)��� �
)��� �
;��� �
await
�� !"
LoadFriendsListAsync
��" 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
else
�� 
if
�� !
(
��" #
result
��# )
==
��* ,
	Constants
��- 6
.
��6 7
NO_DATA_MATCHES
��7 F
)
��F G
{
��H I
DialogManager
�� )
.
��) *%
ShowWarningMessageAlert
��* A
(
��A B

Properties
��B L
.
��L M
	Resources
��M V
.
��V W-
dialogFriendshipNotFoundWarning
��W v
)
��v w
;
��w x
}
�� 
else
�� 
{
��  
DialogManager
�� )
.
��) *#
ShowErrorMessageAlert
��* ?
(
��? @

Properties
��@ J
.
��J K
	Resources
��K T
.
��T U+
dialogErrorDeletingFriendship
��U r
)
��r s
;
��s t
}
�� 
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
��P Q'
dialogNotRetrievedProfile
��Q j
)
��j k
;
��k l
}
�� 
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
��. /
HandleException
�� #
(
��# $
	exception
��$ -
,
��- .
nameof
��/ 5
(
��5 6#
BtnRemoveFriend_Click
��6 K
)
��K L
)
��L M
;
��M N
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K(
dialogSelectFriendToDelete
��K e
)
��e f
;
��f g
}
�� 
}
�� 	
private
�� 
void
��  
BtnStartGame_Click
�� '
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
��J K!
GoToCreateLobbyView
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� 
BtnProfile_Click
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
��H I
GoToPerfilView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
BtnLaderboard_Click
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
��K L 
GoToLaderboardView
�� 
(
�� 
)
��  
;
��  !
}
�� 	
private
�� 
void
�� 
BtnJoinGame_Click
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
��I J!
GoToSelectLobbyView
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� !
GoToCreateLobbyView
�� (
(
��( )
)
��) *
{
��+ ,
CreateLobbyView
�� 
lobbyConfig
�� '
=
��( )
new
��* -
CreateLobbyView
��. =
(
��= >
)
��> ?
;
��? @
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
��/ 0
lobbyConfig
��0 ;
)
��; <
;
��< =
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
�� 
}
�� 	
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
}�� ��
.C:\TripasDeGatoCliente\Views\LobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback+ ?
,? @!
ILobbyManagerCallbackA V
{W X
private 
ChatManagerClient !
_chatManager" .
;. /
private 
LobbyManagerClient "
_lobbyManager# 0
;0 1
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
private 
UserManagerClient !
_userManager" .
;. /
private 
bool 
_isConnected !
=" #
false$ )
;) *
private 
string 

_lobbyCode !
;! "
private  
FriendsManagerClient $
_friendsManager% 4
;4 5
private 
StatusManagerClient #
_statusManager$ 2
;2 3
private (
EmailInvitationManagerClient ,#
_emailInvitationManager- D
;D E
private 
bool 
_elementsVisible %
=& '
false( -
;- .
private 
const 
string 

PLAYER_ONE '
=( )
$str* 5
;5 6
private 
const 
string 

PLAYER_TWO '
=( )
$str* 5
;5 6
public 
	LobbyView 
( 
string 
	lobbyCode  )
)) *
{+ ,
InitializeComponent   
(    
)    !
;  ! "
this!! 
.!! 

_lobbyCode!! 
=!! 
	lobbyCode!! '
;!!' (
lbCode"" 
."" 
Content"" 
="" 
	lobbyCode"" &
;""& '
_lobbyBrowser## 
=## 
new## 
LobbyBrowserClient##  2
(##2 3
)##3 4
;##4 5
InitializeLobby$$ 
($$ 
)$$ 
;$$ 
InstanceContext%% 
context%% #
=%%$ %
new%%& )
InstanceContext%%* 9
(%%9 :
this%%: >
)%%> ?
;%%? @
_lobbyManager&& 
=&& 
new&& 
LobbyManagerClient&&  2
(&&2 3
context&&3 :
)&&: ;
;&&; <
_chatManager'' 
='' 
new'' 
ChatManagerClient'' 0
(''0 1
context''1 8
)''8 9
;''9 :
ConnectionManager(( 
.(( 
Instance(( &
.((& '"
InitializeLobbyManager((' =
(((= >
context((> E
)((E F
;((F G
ConnectionManager)) 
.)) 
Instance)) &
.))& '!
InitializeChatManager))' <
())< =
context))= D
)))D E
;))E F
_userManager** 
=** 
new** 
UserManagerClient** 0
(**0 1
)**1 2
;**2 3
_friendsManager++ 
=++ 
new++ ! 
FriendsManagerClient++" 6
(++6 7
)++7 8
;++8 9
_statusManager,, 
=,, 
new,,  
StatusManagerClient,,! 4
(,,4 5
),,5 6
;,,6 7#
_emailInvitationManager-- #
=--$ %
new--& )(
EmailInvitationManagerClient--* F
(--F G
)--G H
;--H I&
InitializeConnectionsAsync.. &
(..& '
)..' (
;..( )
if// 
(// 
!// 
string// 
.// 
IsNullOrEmpty// %
(//% & 
UserProfileSingleton//& :
.//: ;
PicPath//; B
)//B C
)//C D
{//E F
imageProfile100 
.00 
Source00 $
=00% &
new00' *
BitmapImage00+ 6
(006 7
new007 :
Uri00; >
(00> ? 
UserProfileSingleton00? S
.00S T
PicPath00T [
,00[ \
UriKind00] d
.00d e
RelativeOrAbsolute00e w
)00w x
)00x y
;00y z
}11 
}22 	
private44 
void44 
HandleException44 $
(44$ %
	Exception44% .
	exception44/ 8
,448 9
string44: @

methodName44A K
)44K L
{44M N
LoggerManager55 
logger55  
=55! "
new55# &
LoggerManager55' 4
(554 5
this555 9
.559 :
GetType55: A
(55A B
)55B C
)55C D
;55D E
if66 
(66 
	exception66 
is66 %
EndpointNotFoundException66 6
)666 7
{668 9
logger77 
.77 
LogError77 
(77  

methodName77  *
,77* +
	exception77, 5
)775 6
;776 7
DialogManager88 
.88 !
ShowErrorMessageAlert88 3
(883 4

Properties884 >
.88> ?
	Resources88? H
.88H I#
dialogEndPointException88I `
)88` a
;88a b
}99 
else99 
if99 
(99 
	exception99  
is99! #
TimeoutException99$ 4
)994 5
{996 7
logger:: 
.:: 
LogError:: 
(::  

methodName::  *
,::* +
	exception::, 5
)::5 6
;::6 7
DialogManager;; 
.;; !
ShowErrorMessageAlert;; 3
(;;3 4

Properties;;4 >
.;;> ?
	Resources;;? H
.;;H I"
dialogTimeOutException;;I _
);;_ `
;;;` a
}<< 
else<< 
if<< 
(<< 
	exception<<  
is<<! #"
CommunicationException<<$ :
)<<: ;
{<<< =
logger== 
.== 
LogError== 
(==  

methodName==  *
,==* +
	exception==, 5
)==5 6
;==6 7
DialogManager>> 
.>> !
ShowErrorMessageAlert>> 3
(>>3 4

Properties>>4 >
.>>> ?
	Resources>>? H
.>>H I'
dialogComunicationException>>I d
)>>d e
;>>e f
}?? 
else?? 
{?? 
logger@@ 
.@@ 
LogError@@ 
(@@  

methodName@@  *
,@@* +
	exception@@, 5
)@@5 6
;@@6 7
DialogManagerAA 
.AA !
ShowErrorMessageAlertAA 3
(AA3 4
stringAA4 :
.AA: ;
FormatAA; A
(AAA B

PropertiesAAB L
.AAL M
	ResourcesAAM V
.AAV W!
dialogUnexpectedErrorAAW l
,AAl m
	exceptionAAn w
.AAw x
MessageAAx 
)	AA �
)
AA� �
;
AA� �
}BB 
ExitUseSinglentonCC 
(CC 
)CC 
;CC  
}DD 	
privateFF 
asyncFF 
voidFF &
InitializeConnectionsAsyncFF 5
(FF5 6
)FF6 7
{FF8 9
tryGG 
{GG 
awaitHH 
InitializeChatAsyncHH )
(HH) *
)HH* +
;HH+ ,
awaitII 
ConnectToLobbyAsyncII )
(II) *
)II* +
;II+ ,
}JJ 
catchJJ 
(JJ 
	ExceptionJJ 
	exceptionJJ (
)JJ( )
{JJ* +
HandleExceptionKK 
(KK  
	exceptionKK  )
,KK) *
nameofKK+ 1
(KK1 2&
InitializeConnectionsAsyncKK2 L
)KKL M
)KKM N
;KKN O
}LL 
}MM 	
privateOO 
asyncOO 
TaskOO 
InitializeChatAsyncOO .
(OO. /
)OO/ 0
{OO1 2
tryPP 
{PP 
awaitQQ 
_chatManagerQQ "
.QQ" #
ConnectToChatAsyncQQ# 5
(QQ5 6 
UserProfileSingletonQQ6 J
.QQJ K
UserNameQQK S
,QQS T

_lobbyCodeQQU _
)QQ_ `
;QQ` a
}RR 
catchRR 
(RR 
	ExceptionRR 
	exceptionRR (
)RR( )
{RR* +
HandleExceptionSS 
(SS  
	exceptionSS  )
,SS) *
nameofSS+ 1
(SS1 2
InitializeChatAsyncSS2 E
)SSE F
)SSF G
;SSG H
}TT 
}UU 	
privateWW 
asyncWW 
TaskWW 
ConnectToLobbyAsyncWW .
(WW. /
)WW/ 0
{WW1 2
tryXX 
{XX 
boolYY 
	connectedYY 
=YY  
awaitYY! &
TaskYY' +
.YY+ ,
RunYY, /
(YY/ 0
(YY0 1
)YY1 2
=>YY3 5
_lobbyManagerYY6 C
.YYC D 
ConnectPlayerToLobbyYYD X
(YYX Y

_lobbyCodeYYY c
,YYc d 
UserProfileSingletonYYe y
.YYy z
	IdProfile	YYz �
)
YY� �
)
YY� �
;
YY� �
ifZZ 
(ZZ 
!ZZ 
	connectedZZ 
)ZZ 
{ZZ  !
DialogManager[[ !
.[[! "!
ShowErrorMessageAlert[[" 7
([[7 8

Properties[[8 B
.[[B C
	Resources[[C L
.[[L M!
dialogConnectionError[[M b
)[[b c
;[[c d
ExitUseSinglenton\\ %
(\\% &
)\\& '
;\\' (
}]] 
else]] 
{]] 
_isConnected^^  
=^^! "
true^^# '
;^^' (
}__ 
}`` 
catch`` 
(`` 
	Exception`` 
	exception`` (
)``( )
{``* +
HandleExceptionaa 
(aa  
	exceptionaa  )
,aa) *
nameofaa+ 1
(aa1 2
ConnectToLobbyAsyncaa2 E
)aaE F
)aaF G
;aaG H
}bb 
}cc 	
privateee 
asyncee 
voidee  
BtnSendMessage_Clickee /
(ee/ 0
objectee0 6
senderee7 =
,ee= >
RoutedEventArgsee? N
eeeO P
)eeP Q
{eeR S
stringff 
messageTextff 
=ff  
txtMessageInputff! 0
.ff0 1
Textff1 5
.ff5 6
Trimff6 :
(ff: ;
)ff; <
;ff< =
ifgg 
(gg 
!gg 
stringgg 
.gg 
IsNullOrEmptygg %
(gg% &
messageTextgg& 1
)gg1 2
)gg2 3
{gg4 5
Messagehh 
messagehh 
=hh  !
newhh" %
Messagehh& -
{hh. /
Usernameii 
=ii  
UserProfileSingletonii 3
.ii3 4
UserNameii4 <
,ii< =
ChatMessagejj 
=jj  !
messageTextjj" -
}kk 
;kk 
tryll 
{ll 
awaitmm 
_chatManagermm &
.mm& '
SendMessageAsyncmm' 7
(mm7 8 
UserProfileSingletonmm8 L
.mmL M
UserNamemmM U
,mmU V
messagemmW ^
,mm^ _

_lobbyCodemm` j
)mmj k
;mmk l
txtMessageInputnn #
.nn# $
Clearnn$ )
(nn) *
)nn* +
;nn+ ,
}oo 
catchoo 
(oo 
	Exceptionoo "
	exceptionoo# ,
)oo, -
{oo. /
HandleExceptionpp #
(pp# $
	exceptionpp$ -
,pp- .
nameofpp/ 5
(pp5 6 
BtnSendMessage_Clickpp6 J
)ppJ K
)ppK L
;ppL M
}qq 
}rr 
}ss 	
publicuu 
asyncuu 
voiduu 
InitializeLobbyuu )
(uu) *
)uu* +
{uu, -
tryvv 
{vv 
Lobbyww 
lobbyww 
=ww 
awaitww #
_lobbyBrowserww$ 1
.ww1 2
GetLobbyByCodeAsyncww2 E
(wwE F

_lobbyCodewwF P
)wwP Q
;wwQ R 
UserProfileSingletonxx $
.xx$ %
UpdateLobbyCodexx% 4
(xx4 5

_lobbyCodexx5 ?
)xx? @
;xx@ A 
UserProfileSingletonyy $
.yy$ %
UpdateChatCodeyy% 3
(yy3 4

_lobbyCodeyy4 >
)yy> ?
;yy? @
ifzz 
(zz 

IsUserHostzz 
(zz 
lobbyzz $
)zz$ %
)zz% &
{zz' (
	lbPlayer1{{ 
.{{ 
Content{{ %
={{& '
lobby{{( -
.{{- .
Players{{. 5
.{{5 6
ContainsKey{{6 A
({{A B

PLAYER_ONE{{B L
){{L M
?{{N O
lobby{{P U
.{{U V
Players{{V ]
[{{] ^

PLAYER_ONE{{^ h
]{{h i
.{{i j
Username{{j r
:{{s t

Properties{{u 
.	{{ �
	Resources
{{� �
.
{{� � 
lbWaitingForPlayer
{{� �
;
{{� �
	lbPlayer2|| 
.|| 
Content|| %
=||& '
lobby||( -
.||- .
Players||. 5
.||5 6
ContainsKey||6 A
(||A B

PLAYER_TWO||B L
)||L M
?||N O
lobby||P U
.||U V
Players||V ]
[||] ^

PLAYER_TWO||^ h
]||h i
.||i j
Username||j r
:||s t

Properties||u 
.	|| �
	Resources
||� �
.
||� � 
lbWaitingForPlayer
||� �
;
||� �
imageProfile1}} !
.}}! "
Source}}" (
=}}) *
new}}+ .
BitmapImage}}/ :
(}}: ;
new}}; >
Uri}}? B
(}}B C 
UserProfileSingleton}}C W
.}}W X
PicPath}}X _
,}}_ `
UriKind}}a h
.}}h i
RelativeOrAbsolute}}i {
)}}{ |
)}}| }
;}}} ~
imageProfile2~~ !
.~~! "
Source~~" (
=~~) *
null~~+ /
;~~/ 0
} 
else 
{ 
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
��A B

PLAYER_TWO
��B L
)
��L M
?
��N O
lobby
��P U
.
��U V
Players
��V ]
[
��] ^

PLAYER_TWO
��^ h
]
��h i
.
��i j
Username
��j r
:
��s t

Properties
��u 
.�� �
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
��A B

PLAYER_ONE
��B L
)
��L M
?
��N O
lobby
��P U
.
��U V
Players
��V ]
[
��] ^

PLAYER_ONE
��^ h
]
��h i
.
��i j
Username
��j r
:
��s t

Properties
��u 
.�� �
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
��  !
await
��" '
_userManager
��( 4
.
��4 5
GetPicPathAsync
��5 D
(
��D E
lobby
��E J
.
��J K
Players
��K R
[
��R S

PLAYER_ONE
��S ]
]
��] ^
.
��^ _
Username
��_ g
)
��g h
;
��h i
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
InitializeLobby
��2 A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 

IsUserHost
�� &
(
��& '
Lobby
��' ,
lobby
��- 2
)
��2 3
{
��4 5
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
��, -

PLAYER_ONE
��- 7
,
��7 8
out
��9 <
Profile
��= D
host
��E I
)
��I J
&&
��K M
host
��N R
.
��R S
Username
��S [
==
��\ ^"
UserProfileSingleton
��_ s
.
��s t
UserName
��t |
;
��| }
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
��K L
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
��T U
UserName
��U ]
)
��] ^
;
��^ _
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2
BtnBack_Click
��2 ?
)
��? @
)
��@ A
;
��A B
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
��G H
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
��M N
UserName
��N V
)
��V W
)
��W X
;
��X Y
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
��. /
HandleException
�� #
(
��# $
	exception
��$ -
,
��- .
nameof
��/ 5
(
��5 6
	OnClosing
��6 ?
)
��? @
)
��@ A
;
��A B
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
��& '
ScrollViewer
�� 
scrollViewer
�� %
=
��& '
VisualTreeHelper
��( 8
.
��8 9
	GetParent
��9 B
(
��B C
ChatMessagesPanel
��C T
)
��T U
as
��V X
ScrollViewer
��Y e
;
��e f
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
�� 
}
�� 	
private
�� 
void
�� 
GoToLoginView
�� "
(
��" #
)
��# $
{
��% &
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
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
��/ 0
	loginView
��0 9
)
��9 :
;
��: ;
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
�� 
}
�� 	
public
�� 
void
�� 
RemoveFromLobby
�� #
(
��# $
)
��$ %
{
��& '

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K
dialogLobbyExit
��K Z
)
��Z [
;
��[ \
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
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
HostLeftCallback
�� $
(
��$ %
)
��% &
{
��' (

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
async
�� #
(
��$ %
)
��% &
=>
��' )
{
��* +
await
�� 
Task
�� 
.
�� 
Run
�� 
(
�� 
(
��  
)
��  !
=>
��" $
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 1
(
��1 2

Properties
��2 <
.
��< =
	Resources
��= F
.
��F G!
dialogHostLeftLobby
��G Z
)
��Z [
)
�� 
;
�� 
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
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
GuestLeftCallback
�� %
(
��% &
)
��& '
{
��( )

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
string
�� 
waitingMessage
�� %
=
��& '

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =$
dialogWaitingForPlayer
��= S
;
��S T
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
waitingMessage
��$ 2
;
��2 3
imageProfile2
�� 
.
�� 
Source
�� $
=
��% &
null
��' +
;
��+ ,
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� !
GuestJoinedCallback
�� '
(
��' (
string
��( .
	guestName
��/ 8
,
��8 9
string
��: @
picturePath
��A L
,
��L M
int
��N Q
	idProfile
��R [
)
��[ \
{
��] ^

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
��$ %
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
	guestName
��$ -
;
��- .
if
�� 
(
�� 
	idProfile
�� 
<
�� 
$num
��  &
)
��& '
{
��( )
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
��9 :
	guestName
��: C
)
��C D
;
��D E
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
��e f
}
�� 
else
�� 
{
�� 
string
�� 
ruta
�� 
=
��  !
picturePath
��" -
;
��- .
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
��e f
}
�� 
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
BtnStartGame_Click
�� '
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
��J K
try
�� 
{
�� 
_lobbyManager
�� 
.
�� 

StartMatch
�� (
(
��( )

_lobbyCode
��) 3
)
��3 4
;
��4 5
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
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2 
BtnStartGame_Click
��2 D
)
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
public
�� 
void
�� 
BroadcastMessage
�� $
(
��$ %
Message
��% ,
message
��- 4
)
��4 5
{
��6 7
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
��8 9
Border
�� 
messageContainer
�� '
=
��( )
new
��* -
Border
��. 4
{
��5 6

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
BorderThickness
�� #
=
��$ %
new
��& )
	Thickness
��* 3
(
��3 4
$num
��4 5
)
��5 6
,
��6 7
Padding
�� 
=
�� 
new
�� !
	Thickness
��" +
(
��+ ,
$num
��, .
)
��. /
,
��/ 0
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 7
)
��7 8
,
��8 9!
HorizontalAlignment
�� '
=
��( )
message
��* 1
.
��1 2
Username
��2 :
==
��; ="
UserProfileSingleton
��> R
.
��R S
UserName
��S [
?
��\ ]!
HorizontalAlignment
��^ q
.
��q r
Right
��r w
:
��x y"
HorizontalAlignment��z �
.��� �
Left��� �
}
�� 
;
�� 
	TextBlock
�� 
messageBlock
�� &
=
��' (
new
��) ,
	TextBlock
��- 6
{
��7 8
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
ChatMessage
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
��8 9
	GameMatch
�� 
	gameMatch
�� #
=
��$ %
new
��& )
	GameMatch
��* 3
(
��3 4

_lobbyCode
��4 >
)
��> ?
;
��? @
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
��2 3
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
��B C
List
�� 
<
�� 
Profile
�� 
>
�� 
friendsList
�� *
=
��+ ,
await
��- 2
_friendsManager
��3 B
.
��B C
GetFriendsAsync
��C R
(
��R S
userProfileId
��S `
)
��` a
;
��a b
List
�� 
<
�� 
string
�� 
>
�� 
friendsWithStatus
�� /
=
��0 1
new
��2 5
List
��6 :
<
��: ;
string
��; A
>
��A B
(
��B C
)
��C D
;
��D E
foreach
�� 
(
�� 
Profile
��  
friend
��! '
in
��( *
friendsList
��+ 6
)
��6 7
{
��8 9#
GameEnumsPlayerStatus
�� )
status
��* 0
=
��1 2
await
��3 8
_statusManager
��9 G
.
��G H"
GetPlayerStatusAsync
��H \
(
��\ ]
friend
��] c
.
��c d
	IdProfile
��d m
)
��m n
;
��n o
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2"
LoadFriendsListAsync
��2 F
)
��F G
)
��G H
;
��H I
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
��T U
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
��E F
Color
��F K
.
��K L
FromArgb
��L T
(
��T U
$num
��U X
,
��X Y
$num
��Z ]
,
��] ^
$num
��_ b
,
��b c
$num
��d g
)
��g h
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
�� 
	Exception
�� 
	exception
�� (
)
��( )
{
��* +
HandleException
�� 
(
��  
	exception
��  )
,
��) *
nameof
��+ 1
(
��1 2$
BtnInvitedFriend_Click
��2 H
)
��H I
)
��I J
;
��J K
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
BtnInvited_Click
�� +
(
��+ ,
object
��, 2
sender
��3 9
,
��9 :
RoutedEventArgs
��; J
e
��K L
)
��L M
{
��N O
if
�� 
(
�� 

lstFriends
�� 
.
�� 
SelectedItem
�� '
!=
��( *
null
��+ /
)
��/ 0
{
��1 2
string
��  
selectedFriendName
�� )
=
��* +

lstFriends
��, 6
.
��6 7
SelectedItem
��7 C
.
��C D
ToString
��D L
(
��L M
)
��M N
;
��N O
string
�� 

friendName
�� !
=
��" # 
selectedFriendName
��$ 6
.
��6 7
Split
��7 <
(
��< =
$char
��= @
)
��@ A
[
��A B
$num
��B C
]
��C D
.
��D E
Trim
��E I
(
��I J
)
��J K
;
��K L
try
�� 
{
�� 
int
�� 
result
�� 
=
��  
await
��! &%
_emailInvitationManager
��' >
.
��> ?!
SendInvitationAsync
��? R
(
��R S

friendName
��S ]
,
��] ^

_lobbyCode
��_ i
)
��i j
;
��j k
if
�� 
(
�� 
result
�� 
==
�� !
	Constants
��" +
.
��+ ,
SUCCES_OPERATION
��, <
)
��< =
{
��> ?
DialogManager
�� %
.
��% &%
ShowSuccessMessageAlert
��& =
(
��= >
string
��> D
.
��D E
Format
��E K
(
��K L

Properties
��L V
.
��V W
	Resources
��W `
.
��` a"
dialogInvitationSent
��a u
,
��u v

friendName��w �
)��� �
)��� �
;��� �
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
��P Q*
dialogErrorSendingInvitation
��Q m
)
��m n
;
��n o
}
�� 
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
��. /
HandleException
�� #
(
��# $
	exception
��$ -
,
��- .
nameof
��/ 5
(
��5 6
BtnInvited_Click
��6 F
)
��F G
)
��G H
;
��H I
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
dialogSelectFriendToInvite
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
�� !
BtnKickPlayer_Click
�� .
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
MessageBoxResult
�� 
result
�� #
=
��$ %)
ShowConfirmKickPlayerDialog
��& A
(
��A B
)
��B C
;
��C D
if
�� 
(
�� 
result
�� 
==
�� 
MessageBoxResult
�� *
.
��* +
Yes
��+ .
)
��. /
{
��0 1
try
�� 
{
�� 
await
�� 
Task
�� 
.
�� 
Run
�� "
(
��" #
(
��# $
)
��$ %
=>
��& (
_lobbyManager
��) 6
.
��6 7

KickPlayer
��7 A
(
��A B

_lobbyCode
��B L
)
��L M
)
��M N
;
��N O
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
��. /
HandleException
�� #
(
��# $
	exception
��$ -
,
��- .
nameof
��/ 5
(
��5 6!
BtnKickPlayer_Click
��6 I
)
��I J
)
��J K
;
��K L
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
MessageBoxResult
�� ')
ShowConfirmKickPlayerDialog
��( C
(
��C D
)
��D E
{
��F G
return
�� 

MessageBox
�� 
.
�� 
Show
�� "
(
��" #

Properties
�� 
.
�� 
	Resources
�� $
.
��$ %%
dialogConfirmKickPlayer
��% <
,
��< =

Properties
�� 
.
�� 
	Resources
�� $
.
��$ %
titleConfirmKick
��% 5
,
��5 6
MessageBoxButton
��  
.
��  !
YesNo
��! &
,
��& '
MessageBoxImage
�� 
.
��  
Question
��  (
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
KickedFromLobby
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
��J K#
dialogKickedFromLobby
��K `
)
��` a
;
��a b
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
�� 	
}
�� 
}�� �-
4C:\TripasDeGatoCliente\Views\LeaderboardView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 

Laderboard #
:$ %
Page& *
{+ ,
private $
LeaderboardManagerClient (%
_leaderboardManagerClient) B
;B C
public 

Laderboard 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "%
_leaderboardManagerClient %
=& '
new( +$
LeaderboardManagerClient, D
(D E
)E F
;F G
LoadLeaderboardData 
(  
)  !
;! "
} 	
private 
async 
Task 
LoadLeaderboardData .
(. /
)/ 0
{1 2
await $
LoadLeaderboardDataAsync *
(* +
)+ ,
;, -
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager   
.   !
ShowErrorMessageAlert   3
(  3 4

Properties  4 >
.  > ?
	Resources  ? H
.  H I#
dialogEndPointException  I `
)  ` a
;  a b
}!! 
else!! 
if!! 
(!! 
	exception!!  
is!!! #
TimeoutException!!$ 4
)!!4 5
{!!6 7
logger"" 
."" 
LogError"" 
(""  

methodName""  *
,""* +
	exception"", 5
)""5 6
;""6 7
DialogManager## 
.## !
ShowErrorMessageAlert## 3
(##3 4

Properties##4 >
.##> ?
	Resources##? H
.##H I"
dialogTimeOutException##I _
)##_ `
;##` a
}$$ 
else$$ 
if$$ 
($$ 
	exception$$  
is$$! #"
CommunicationException$$$ :
)$$: ;
{$$< =
logger%% 
.%% 
LogError%% 
(%%  

methodName%%  *
,%%* +
	exception%%, 5
)%%5 6
;%%6 7
DialogManager&& 
.&& !
ShowErrorMessageAlert&& 3
(&&3 4

Properties&&4 >
.&&> ?
	Resources&&? H
.&&H I'
dialogComunicationException&&I d
)&&d e
;&&e f
}'' 
else'' 
{'' 
logger(( 
.(( 
LogError(( 
(((  

methodName((  *
,((* +
	exception((, 5
)((5 6
;((6 7
DialogManager)) 
.)) !
ShowErrorMessageAlert)) 3
())3 4
string))4 :
.)): ;
Format)); A
())A B

Properties))B L
.))L M
	Resources))M V
.))V W!
dialogUnexpectedError))W l
,))l m
	exception))n w
.))w x
Message))x 
)	)) �
)
))� �
;
))� �
}++ 
},, 	
private.. 
async.. 
Task.. $
LoadLeaderboardDataAsync.. 3
(..3 4
)..4 5
{..6 7
try// 
{// 
List00 
<00 
Profile00 
>00 
highestScores00 +
=00, -
(00. /
await00/ 4%
_leaderboardManagerClient005 N
.00N O!
GetHighestScoresAsync00O d
(00d e
)00e f
)00f g
.00g h
ToList00h n
(00n o
)00o p
;00p q
lstViewLeaderboard11 "
.11" #
ItemsSource11# .
=11/ 0
highestScores111 >
;11> ?
}22 
catch22 
(22 
	Exception22 
	exception22 (
)22( )
{22* +
HandleException33 
(33  
	exception33  )
,33) *
nameof33+ 1
(331 2$
LoadLeaderboardDataAsync332 J
)33J K
)33K L
;33L M
}44 
}55 	
private77 
void77 
BtnBack_Click77 "
(77" #
object77# )
sender77* 0
,770 1
RoutedEventArgs772 A
e77B C
)77C D
{77E F
MenuView88 
menuView88 
=88 
new88  #
MenuView88$ ,
(88, -
)88- .
;88. /
if99 
(99 
this99 
.99 
NavigationService99 &
!=99' )
null99* .
)99. /
{990 1
this:: 
.:: 
NavigationService:: &
.::& '
Navigate::' /
(::/ 0
menuView::0 8
)::8 9
;::9 :
};; 
else;; 
{;; 
DialogManager<< 
.<< !
ShowErrorMessageAlert<< 3
(<<3 4

Properties<<4 >
.<<> ?
	Resources<<? H
.<<H I!
dialogNavigationError<<I ^
)<<^ _
;<<_ `
}== 
}>> 	
}?? 
}@@ �S
4C:\TripasDeGatoCliente\Views\CreateLobbyView.xaml.cs
	namespace		 	
TripasDeGatoCliente		
 
.		 
Views		 #
{		$ %
public 

partial 
class 
CreateLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
public 
CreateLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! " 
InitializeFormValues  
(  !
)! "
;" #
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I'
dialogComunicationExceptionI d
)d e
;e f
}   
else   
{   
logger!! 
.!! 
LogError!! 
(!!  

methodName!!  *
,!!* +
	exception!!, 5
)!!5 6
;!!6 7
DialogManager"" 
."" !
ShowErrorMessageAlert"" 3
(""3 4
string""4 :
."": ;
Format""; A
(""A B

Properties""B L
.""L M
	Resources""M V
.""V W!
dialogUnexpectedError""W l
,""l m
	exception""n w
.""w x
Message""x 
)	"" �
)
""� �
;
""� �
}$$ 
}%% 	
private'' 
void''  
InitializeFormValues'' )
('') *
)''* +
{'', -
cboxNode(( 
.(( 
ItemsSource((  
=((! "
new((# &
List((' +
<((+ ,
int((, /
>((/ 0
{((1 2
$num((3 4
,((4 5
$num((6 8
,((8 9
$num((: <
,((< =
$num((> @
,((@ A
$num((B D
,((D E
$num((F H
,((H I
$num((J L
}((M N
;((N O
cboxNode)) 
.)) 
SelectedIndex)) "
=))# $
$num))% &
;))& '
}** 	
private,, 
async,, 
void,,  
BtnCreateLobby_Click,, /
(,,/ 0
object,,0 6
sender,,7 =
,,,= >
RoutedEventArgs,,? N
e,,O P
),,P Q
{,,R S
string-- 
gameName-- 
=-- 
txtNameLobby-- *
.--* +
Text--+ /
.--/ 0
Trim--0 4
(--4 5
)--5 6
;--6 7
if.. 
(.. 
!.. 
ValidationGameName.. #
(..# $
gameName..$ ,
).., -
)..- .
{../ 0
return// 
;// 
}00 
if11 
(11 
cboxNode11 
.11 
SelectedItem11 %
==11& (
null11) -
)11- .
{11/ 0
DialogManager22 
.22 #
ShowWarningMessageAlert22 5
(225 6

Properties226 @
.22@ A
	Resources22A J
.22J K"
dialogSelectNodesError22K a
)22a b
;22b c
return33 
;33 
}44 
int55 
	nodeCount55 
=55 
(55 
int55  
)55  !
cboxNode55! )
.55) *
SelectedItem55* 6
;556 7
try66 
{66 
Profile77 
owner77 
=77 
new77  #
Profile77$ +
{77, -
	IdProfile88 
=88  
UserProfileSingleton88  4
.884 5
	IdProfile885 >
,88> ?
Username99 
=99  
UserProfileSingleton99 3
.993 4
UserName994 <
}:: 
;:: 
string;; 
	lobbyCode;;  
=;;! "
await;;# (
_lobbyBrowser;;) 6
.;;6 7
CreateLobbyAsync;;7 G
(;;G H
gameName;;H P
,;;P Q
	nodeCount;;R [
,;;[ \
owner;;] b
);;b c
;;;c d
if<< 
(<< 
	lobbyCode<< 
!=<<  
ConstantsManager<<! 1
.<<1 2
	Constants<<2 ;
.<<; <#
FAILED_OPERATION_STRING<<< S
)<<S T
{<<U V
GoToLobbyView== !
(==! "
	lobbyCode==" +
)==+ ,
;==, -
}>> 
else>> 
{>> 
DialogManager?? !
.??! "#
ShowWarningMessageAlert??" 9
(??9 :

Properties??: D
.??D E
	Resources??E N
.??N O$
dialogLobbyCreationError??O g
)??g h
;??h i
}@@ 
}AA 
catchAA 
(AA 
	ExceptionAA 
	exceptionAA (
)AA( )
{AA* +
HandleExceptionBB 
(BB  
	exceptionBB  )
,BB) *
nameofBB+ 1
(BB1 2 
BtnCreateLobby_ClickBB2 F
)BBF G
)BBG H
;BBH I
}CC 
}DD 	
publicFF 
boolFF 
ValidationGameNameFF &
(FF& '
stringFF' -
gameNameFF. 6
)FF6 7
{FF8 9
boolGG 
resultGG 
=GG 
falseGG 
;GG  
ifHH 
(HH 
stringHH 
.HH 
IsNullOrWhiteSpaceHH )
(HH) *
txtNameLobbyHH* 6
.HH6 7
TextHH7 ;
)HH; <
)HH< =
{HH> ?
DialogManagerII 
.II #
ShowWarningMessageAlertII 5
(II5 6

PropertiesII6 @
.II@ A
	ResourcesIIA J
.IIJ K$
dialogEnterGameNameErrorIIK c
)IIc d
;IId e
returnJJ 
resultJJ 
;JJ 
}KK 
ifLL 
(LL 
!LL 
	ValidadorLL 
.LL 
ValidateGameNameLL +
(LL+ ,
gameNameLL, 4
)LL4 5
)LL5 6
{LL7 8
DialogManagerMM 
.MM #
ShowWarningMessageAlertMM 5
(MM5 6

PropertiesMM6 @
.MM@ A
	ResourcesMMA J
.MMJ K&
dialogInvalidGameNameErrorMMK e
)MMe f
;MMf g
returnNN 
resultNN 
;NN 
}OO 
resultPP 
=PP 
truePP 
;PP 
returnQQ 
resultQQ 
;QQ 
}RR 	
privateTT 
voidTT 
BtnBack_ClickTT "
(TT" #
objectTT# )
senderTT* 0
,TT0 1
	EventArgsTT2 ;
eTT< =
)TT= >
{TT? @
GoToMenuViewUU 
(UU 
)UU 
;UU 
}VV 	
privateXX 
voidXX 
GoToLobbyViewXX "
(XX" #
stringXX# )
	lobbyCodeXX* 3
)XX3 4
{XX5 6
	LobbyViewYY 
	lobbyViewYY 
=YY  !
newYY" %
	LobbyViewYY& /
(YY/ 0
	lobbyCodeYY0 9
)YY9 :
;YY: ;
ifZZ 
(ZZ 
thisZZ 
.ZZ 
NavigationServiceZZ &
!=ZZ' )
nullZZ* .
)ZZ. /
{ZZ0 1
this[[ 
.[[ 
NavigationService[[ &
.[[& '
Navigate[[' /
([[/ 0
	lobbyView[[0 9
)[[9 :
;[[: ;
}\\ 
else\\ 
{\\ 
DialogManager]] 
.]] !
ShowErrorMessageAlert]] 3
(]]3 4

Properties]]4 >
.]]> ?
	Resources]]? H
.]]H I!
dialogNavigationError]]I ^
)]]^ _
;]]_ `
}^^ 
}__ 	
privateaa 
voidaa 
GoToMenuViewaa !
(aa! "
)aa" #
{aa$ %
MenuViewbb 
menuViewbb 
=bb 
newbb  #
MenuViewbb$ ,
(bb, -
)bb- .
;bb. /
ifcc 
(cc 
thiscc 
.cc 
NavigationServicecc &
!=cc' )
nullcc* .
)cc. /
{cc0 1
thisdd 
.dd 
NavigationServicedd &
.dd& '
Navigatedd' /
(dd/ 0
menuViewdd0 8
)dd8 9
;dd9 :
}ee 
elseee 
{ee 
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I!
dialogNavigationErrorffI ^
)ff^ _
;ff_ `
}gg 
}hh 	
}ii 
}jj �;
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
private 
LobbyBrowserClient "
_lobbyBrowser# 0
;0 1
public 
CodeGameMatch 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I'
dialogComunicationExceptionI d
)d e
;e f
} 
else 
{ 
logger   
.   
LogError   
(    

methodName    *
,  * +
	exception  , 5
)  5 6
;  6 7
DialogManager!! 
.!! !
ShowErrorMessageAlert!! 3
(!!3 4
string!!4 :
.!!: ;
Format!!; A
(!!A B

Properties!!B L
.!!L M
	Resources!!M V
.!!V W!
dialogUnexpectedError!!W l
,!!l m
	exception!!n w
.!!w x
Message!!x 
)	!! �
)
!!� �
;
!!� �
}## 
}$$ 	
public&& 
void&&  
GenerateGuestProfile&& (
(&&( )
)&&) *
{&&+ ,
try'' 
{''  
UserProfileSingleton(( $
.(($ %
CreateGuestInstance((% 8
(((8 9
)((9 :
;((: ;
})) 
catch)) 
()) 
	Exception)) 
	exception)) (
)))( )
{))* +
HandleException** 
(**  
	exception**  )
,**) *
nameof**+ 1
(**1 2 
GenerateGuestProfile**2 F
)**F G
)**G H
;**H I
}++ 
},, 	
private.. 
void.. 
BtnBack_Click.. "
(.." #
object..# )
sender..* 0
,..0 1
RoutedEventArgs..2 A
e..B C
)..C D
{..E F
	LoginView// 
	loginView// 
=//  !
new//" %
	LoginView//& /
(/// 0
)//0 1
;//1 2
this00 
.00 
NavigationService00 "
.00" #
Navigate00# +
(00+ ,
	loginView00, 5
)005 6
;006 7
}11 	
public33 
async33 
void33 
BtnLogin_Click33 (
(33( )
object33) /
sender330 6
,336 7
RoutedEventArgs338 G
e33H I
)33I J
{33K L 
GenerateGuestProfile44  
(44  !
)44! "
;44" #
try55 
{55 
if66 
(66 
!66 
string66 
.66 
IsNullOrEmpty66 )
(66) *
txtCodeLobby66* 6
.666 7
Text667 ;
)66; <
)66< =
{66> ?
string77 
	lobbyCode77 $
=77% &
txtCodeLobby77' 3
.773 4
Text774 8
;778 9
Profile88 
guestProfile88 (
=88) *
new88+ .
Profile88/ 6
{887 8
	IdProfile99 !
=99" # 
UserProfileSingleton99$ 8
.998 9
	IdProfile999 B
,99B C
Username::  
=::! " 
UserProfileSingleton::# 7
.::7 8
UserName::8 @
,::@ A
PicturePath;; #
=;;$ % 
UserProfileSingleton;;& :
.;;: ;
PicPath;;; B
,;;B C
Score<< 
=<<  
UserProfileSingleton<<  4
.<<4 5
Score<<5 :
}== 
;== 
bool>> 
joined>> 
=>>  !
await>>" '
_lobbyBrowser>>( 5
.>>5 6
JoinLobbyAsync>>6 D
(>>D E
	lobbyCode>>E N
,>>N O
guestProfile>>P \
)>>\ ]
;>>] ^
if?? 
(?? 
joined?? 
)?? 
{??  !
	LobbyView@@ !
	lobbyView@@" +
=@@, -
new@@. 1
	LobbyView@@2 ;
(@@; <
	lobbyCode@@< E
)@@E F
;@@F G
thisAA 
.AA 
NavigationServiceAA .
.AA. /
NavigateAA/ 7
(AA7 8
	lobbyViewAA8 A
)AAA B
;AAB C
}BB 
elseBB 
{BB 
DialogManagerCC %
.CC% &#
ShowWarningMessageAlertCC& =
(CC= >

PropertiesCC> H
.CCH I
	ResourcesCCI R
.CCR S 
dialogLobbyJoinErrorCCS g
)CCg h
;CCh i
}DD 
}EE 
elseEE 
{EE 
DialogManagerFF !
.FF! "!
ShowErrorMessageAlertFF" 7
(FF7 8

PropertiesFF8 B
.FFB C
	ResourcesFFC L
.FFL M0
$dialogInvalidGuestProfileOrLobbyCodeFFM q
)FFq r
;FFr s
}GG 
}HH 
catchHH 
(HH 
	ExceptionHH 
	exceptionHH (
)HH( )
{HH* +
HandleExceptionII 
(II  
	exceptionII  )
,II) *
nameofII+ 1
(II1 2
BtnLogin_ClickII2 @
)II@ A
)IIA B
;IIB C
}JJ 
}KK 	
}LL 
}MM �Q
)C:\TripasDeGatoCliente\Logic\Validador.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

static 
class 
	Validador !
{" #
private 
static 
Regex 
passwordRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 k
,k l
RegexOptionsm y
.y z
Nonez ~
,~ 
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
private		 
static		 
Regex		 
usernameRegex		 *
=		+ ,
new		- 0
Regex		1 6
(		6 7
$str		7 M
,		M N
RegexOptions		O [
.		[ \
None		\ `
,		` a
TimeSpan		b j
.		j k
FromMilliseconds		k {
(		{ |
$num		| 
)			 �
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
 

emailRegex

 '
=

( )
new

* -
Regex

. 3
(

3 4
$str

4 Q
,

Q R
RegexOptions

S _
.

_ `
None

` d
,

d e
TimeSpan

f n
.

n o
FromMilliseconds

o 
(	

 �
$num


� �
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
Regex 
codeLobbyMatchRegex 0
=1 2
new3 6
Regex7 <
(< =
$str= P
,P Q
RegexOptionsR ^
.^ _
None_ c
,c d
TimeSpane m
.m n
FromMillisecondsn ~
(~ 
$num	 �
)
� �
)
� �
;
� �
private 
static 
Regex 

stateRegex '
=( )
new* -
Regex. 3
(3 4
$str4 L
,L M
RegexOptionsN Z
.Z [
None[ _
,_ `
TimeSpana i
.i j
FromMillisecondsj z
(z {
$num{ ~
)~ 
)	 �
;
� �
private 
static 
Regex 
gameNameRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 N
,N O
RegexOptionsP \
.\ ]
None] a
,a b
TimeSpanc k
.k l
FromMillisecondsl |
(| }
$num	} �
)
� �
)
� �
;
� �
public 
static 
bool  
ValidateRegexPattern /
(/ 0
string0 6
data7 ;
,; <
Regex= B
regexC H
)H I
{J K
bool 
isValid 
= 
false  
;  !
try 
{ 
isValid 
= 
regex 
.  
IsMatch  '
(' (
data( ,
), -
;- .
} 
catch 
( &
RegexMatchTimeoutException /
)/ 0
{1 2
isValid 
= 
false 
;  
} 
return 
isValid 
; 
} 	
public 
static 
bool 
ValidatePassword +
(+ ,
string, 2
password3 ;
); <
{= >
string 
cleanedPassword "
=# $
Regex% *
.* +
Replace+ 2
(2 3
password3 ;
.; <
Trim< @
(@ A
)A B
,B C
$strD J
,J K
$strL N
)N O
;O P
return 
! 
string 
. 
IsNullOrWhiteSpace -
(- .
cleanedPassword. =
)= >
&&? A 
ValidateRegexPatternB V
(V W
cleanedPasswordW f
,f g
passwordRegexh u
)u v
;v w
} 	
public 
static 
bool 
ValidateUsername +
(+ ,
string, 2
username3 ;
); <
{= >
string 
cleanedUsername "
=# $
Regex% *
.* +
Replace+ 2
(2 3
username3 ;
.; <
Trim< @
(@ A
)A B
,B C
$strD J
,J K
$strL N
)N O
;O P
return   
!   
string   
.   
IsNullOrWhiteSpace   -
(  - .
cleanedUsername  . =
)  = >
&&  ? A 
ValidateRegexPattern  B V
(  V W
cleanedUsername  W f
,  f g
usernameRegex  h u
)  u v
;  v w
}!! 	
public## 
static## 
bool## 
ValidateEmail## (
(##( )
string##) /
email##0 5
)##5 6
{##7 8
string$$ 
cleanedEmail$$ 
=$$  !
email$$" '
?$$' (
.$$( )
Trim$$) -
($$- .
)$$. /
;$$/ 0
if%% 
(%% 
!%% 
string%% 
.%% 
IsNullOrWhiteSpace%% *
(%%* +
cleanedEmail%%+ 7
)%%7 8
&&%%9 ;
cleanedEmail%%< H
.%%H I
Length%%I O
<=%%P R
$num%%S V
&&%%W Y

emailRegex%%Z d
.%%d e
IsMatch%%e l
(%%l m
cleanedEmail%%m y
)%%y z
)%%z {
{%%| }
try&& 
{&& 
return'' 
true'' 
;''  
}(( 
catch(( 
((( 
FormatException(( (
)((( )
{((* +
return)) 
false))  
;))  !
}** 
}++ 
return,, 
false,, 
;,, 
}-- 	
public// 
static// 
bool// 
ValidateGameName// +
(//+ ,
string//, 2
gameName//3 ;
)//; <
{//= >
string00 
cleanedGameName00 "
=00# $
gameName00% -
?00- .
.00. /
Trim00/ 3
(003 4
)004 5
;005 6
return11 
!11 
string11 
.11 
IsNullOrWhiteSpace11 -
(11- .
cleanedGameName11. =
)11= >
&&11? A 
ValidateRegexPattern11B V
(11V W
cleanedGameName11W f
,11f g
gameNameRegex11h u
)11u v
;11v w
}22 	
public44 
static44 
bool44 
ValidateCode44 '
(44' (
string44( .
	codeLobby44/ 8
)448 9
{44: ;
string55 
codeCleaned55 
=55  
Regex55! &
.55& '
Replace55' .
(55. /
	codeLobby55/ 8
.558 9
Trim559 =
(55= >
)55> ?
,55? @
$str55A G
,55G H
$str55I K
)55K L
;55L M
return66 
!66 
string66 
.66 
IsNullOrWhiteSpace66 -
(66- .
codeCleaned66. 9
)669 :
&&66; = 
ValidateRegexPattern66> R
(66R S
codeCleaned66S ^
,66^ _
codeLobbyMatchRegex66` s
)66s t
;66t u
}77 	
public99 
static99 
bool99 
ValidateState99 (
(99( )
string99) /
state990 5
)995 6
{997 8
string:: 
stateCleaned:: 
=::  !
Regex::" '
.::' (
Replace::( /
(::/ 0
state::0 5
.::5 6
Trim::6 :
(::: ;
)::; <
,::< =
$str::> D
,::D E
$str::F H
)::H I
;::I J
return;; 
!;; 
string;; 
.;; 
IsNullOrWhiteSpace;; -
(;;- .
stateCleaned;;. :
);;: ;
&&;;< > 
ValidateRegexPattern;;? S
(;;S T
stateCleaned;;T `
,;;` a

stateRegex;;b l
);;l m
;;;m n
}<< 	
public>> 
static>> 
void>> 
RegexPattern>> '
(>>' (
string>>( .
input>>/ 4
)>>4 5
{>>6 7
bool?? 
isEmailValid?? 
=??  
ValidateRegexPattern??  4
(??4 5
input??5 :
,??: ;

emailRegex??< F
)??F G
;??G H
bool@@ 
isNumber@@ 
=@@  
ValidateRegexPattern@@ 0
(@@0 1
input@@1 6
,@@6 7
new@@8 ;
Regex@@< A
(@@A B
$str@@B J
,@@J K
RegexOptions@@L X
.@@X Y
None@@Y ]
,@@] ^
TimeSpan@@_ g
.@@g h
FromMilliseconds@@h x
(@@x y
$num@@y |
)@@| }
)@@} ~
)@@~ 
;	@@ �
boolAA 
	isLetterAAA 
=AA 
RegexAA "
.AA" #
IsMatchAA# *
(AA* +
inputAA+ 0
,AA0 1
$strAA2 9
,AA9 :
RegexOptionsAA; G
.AAG H
NoneAAH L
)AAL M
;AAM N
	AppDomainBB 
.BB 
CurrentDomainBB #
.BB# $
SetDataBB$ +
(BB+ ,
$strBB, I
,BBI J
TimeSpanBBK S
.BBS T
FromMillisecondsBBT d
(BBd e
$numBBe h
)BBh i
)BBi j
;BBj k
ConsoleCC 
.CC 
	WriteLineCC 
(CC 
$"CC  
$strCC  .
{CC. /
isEmailValidCC/ ;
}CC; <
$strCC< O
{CCO P
isNumberCCP X
}CCX Y
$strCCY o
{CCo p
	isLetterACCp y
}CCy z
"CCz {
)CC{ |
;CC| }
}DD 	
}EE 
}FF �4
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
private 
static 
readonly  
UserProfileSingleton  4
singletonInstance5 F
=G H
newI L 
UserProfileSingletonM a
(a b
)b c
;c d
public 
static 
int 
	IdProfile #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public

 
static

 
string

 
UserName

 %
{

& '
get

( +
;

+ ,
private

- 4
set

5 8
;

8 9
}

: ;
public 
static 
int 
Score 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
static 
string 
PicPath $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
public 
static 
int 
IdUser  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
static 
string 
Password %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
static 
string 
Mail !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
static 
string 
	LobbyCode &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
== >
$str? G
;G H
public 
static 
string 
ChatCode %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
=< =
$str> F
;F G
public 
static 
string 
	MatchCode &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
== >
$str? G
;G H
public 
static  
UserProfileSingleton *
Instance+ 3
=>4 6
singletonInstance7 H
;H I
public 
static 
void 
CreateInstance )
() *
Profile* 1
profile2 9
)9 :
{; <
	IdProfile 
= 
profile 
.  
	IdProfile  )
;) *
UserName   
=   
profile   
.   
Username   '
;  ' (
Score!! 
=!! 
profile!! 
.!! 
Score!! !
;!!! "
PicPath"" 
="" 
profile"" 
."" 
PicturePath"" )
;"") *
}## 	
public%% 
static%% 
void%% 
CreateGuestInstance%% .
(%%. /
)%%/ 0
{%%1 2
GuestProfile&& 
guestProfile&& %
=&&& '
new&&( +
GuestProfile&&, 8
(&&8 9
)&&9 :
;&&: ;
	IdProfile'' 
='' 
guestProfile'' $
.''$ %
GuestId''% ,
;'', -
UserName(( 
=(( 
guestProfile(( #
.((# $
Username(($ ,
;((, -
Score)) 
=)) 
$num)) 
;)) 
PicPath** 
=** 
guestProfile** "
.**" #
Avatar**# )
;**) *
}++ 	
public-- 
static-- 
void-- 
ResetInstance-- (
(--( )
)--) *
{--+ ,
	IdProfile.. 
=.. 
$num.. 
;.. 
UserName// 
=// 
null// 
;// 
Score00 
=00 
$num00 
;00 
PicPath11 
=11 
null11 
;11 
IdUser22 
=22 
$num22 
;22 
Password33 
=33 
null33 
;33 
Mail44 
=44 
null44 
;44 
}55 	
public77 
static77 
void77 
ResetLobbyCode77 )
(77) *
)77* +
{77, -
	LobbyCode88 
=88 
$str88  
;88  !
}99 	
public;; 
static;; 
void;; 
ResetChatCode;; (
(;;( )
);;) *
{;;+ ,
	LobbyCode<< 
=<< 
$str<<  
;<<  !
}== 	
public?? 
static?? 
void?? 
ResetMatchCode?? )
(??) *
)??* +
{??, -
	LobbyCode@@ 
=@@ 
$str@@  
;@@  !
}AA 	
publicCC 
staticCC 
voidCC 
UpdateFotoRutaCC )
(CC) *
stringCC* 0
	nuevaRutaCC1 :
)CC: ;
{CC< =
PicPathDD 
=DD 
	nuevaRutaDD 
;DD  
}EE 	
publicGG 
staticGG 
voidGG 
UpdateNombreGG '
(GG' (
stringGG( .
nuevoNombreGG/ :
)GG: ;
{GG< =
UserNameHH 
=HH 
nuevoNombreHH "
;HH" #
}II 	
publicKK 
staticKK 
voidKK 
UpdateLobbyCodeKK *
(KK* +
stringKK+ 1
newCodeKK2 9
)KK9 :
{KK; <
	LobbyCodeLL 
=LL 
newCodeLL 
;LL  
}MM 	
publicOO 
staticOO 
voidOO 
UpdateChatCodeOO )
(OO) *
stringOO* 0
newCodeOO1 8
)OO8 9
{OO: ;
ChatCodePP 
=PP 
newCodePP 
;PP 
}QQ 	
publicSS 
staticSS 
voidSS 
UpdateMatchCodeSS *
(SS* +
stringSS+ 1
newCodeSS2 9
)SS9 :
{SS; <
	MatchCodeTT 
=TT 
newCodeTT 
;TT  
}UU 	
}WW 
}XX �
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
public 

class 
LoggerManager 
{  
public

 
ILog

 
Logger

 
{

 
get

  
;

  !
private

" )
set

* -
;

- .
}

/ 0
public 
LoggerManager 
( 
Type !
type" &
)& '
{( )
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
static 
ILog 
	GetLogger $
($ %
Type% )
type* .
). /
{0 1
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{, -
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
	exception7 @
)@ A
{B C
Logger 
. 
Error 
( 
message  
,  !
	exception" +
)+ ,
;, -
} 	
public 
void 
LogError 
( 
	Exception &
	exception' 0
)0 1
{2 3
Logger 
. 
Error 
( 
	exception "
)" #
;# $
} 	
public   
void   
LogFatal   
(   
	Exception   &
	exception  ' 0
)  0 1
{  2 3
Logger!! 
.!! 
Fatal!! 
(!! 
	exception!! "
)!!" #
;!!# $
}"" 	
public$$ 
void$$ 
LogWarn$$ 
($$ 
	Exception$$ %
	exception$$& /
)$$/ 0
{$$1 2
Logger%% 
.%% 
Warn%% 
(%% 
	exception%% !
)%%! "
;%%" #
}&& 	
public(( 
void(( 
LogDebug(( 
((( 
	Exception(( &
	exception((' 0
)((0 1
{((2 3
Logger)) 
.)) 
Debug)) 
()) 
	exception)) "
)))" #
;))# $
}** 	
}++ 
},, �
&C:\TripasDeGatoCliente\Logic\Hasher.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
static 
class 
Hasher  
{! "
public		 
static		 
string		 
HashToSHA256		 )
(		) *
string		* 0

textToHash		1 ;
)		; <
{		= >
StringBuilder

 
stringHashBuilder

 +
=

, -
new

. 1
StringBuilder

2 ?
(

? @
)

@ A
;

A B
byte 
[ 
] 

inputBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7

textToHash7 A
)A B
;B C
using 
( 
SHA256 
sha256  
=! "
SHA256# )
.) *
Create* 0
(0 1
)1 2
)2 3
{4 5
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes #
=$ %
$num& '
;' (

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{V W
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
} 
} �
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
private 
static 
readonly !
GuestProfileSingleton  5
SingletonInstance6 G
=H I
newJ M!
GuestProfileSingletonN c
(c d
)d e
;e f
public 
static 
GuestProfile "
PerfilInvitado# 1
{2 3
get4 7
;7 8
private9 @
setA D
;D E
}F G
public

 
static

 
string

 
	CodeMatch

 &
{

' (
get

) ,
;

, -
private

. 5
set

6 9
;

9 :
}

; <
public 
static !
GuestProfileSingleton +
Instance, 4
=>5 7
SingletonInstance8 I
;I J
public 
static 
void 
CreateInstance )
() *
string* 0
code1 5
)5 6
{7 8
PerfilInvitado 
= 
new  
GuestProfile! -
(- .
). /
;/ 0
PerfilInvitado 
. 
Username #
=$ %
GuestProfile& 2
.2 3!
RandomChooserUsername3 H
(H I
)I J
;J K
PerfilInvitado 
. 
Avatar !
=" #
GuestProfile$ 0
.0 1#
RandomChooserAvatarIcon1 H
(H I
)I J
;J K
	CodeMatch 
= 
code 
; 
} 	
public 
static 
void 
ResetSingleton )
() *
)* +
{, -
	CodeMatch 
= 
null 
; 
PerfilInvitado 
= 
null !
;! "
} 	
} 
} �
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
private 
static 
readonly 
Random  &
random' -
=. /
new0 3
Random4 :
(: ;
); <
;< =
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 
string

 
Avatar

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
int 
GuestId 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
public 
GuestProfile 
( 
) 
{ 
this 
. 
Username 
= !
RandomChooserUsername 1
(1 2
)2 3
;3 4
this 
. 
Avatar 
= #
RandomChooserAvatarIcon 1
(1 2
)2 3
;3 4
this 
. 
GuestId 
= 
GenerateRandomId +
(+ ,
), -
;- .
} 	
public 
static 
int 
GenerateRandomId *
(* +
)+ ,
{- .
return 
random 
. 
Next 
( 
$num %
,% &
$num' -
)- .
;. /
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{7 8
string 
[ 
] 
defaultAvatars #
=$ %
{& '
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
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
} 
; 
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultAvatars* 8
.8 9
Length9 ?
)? @
;@ A
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
}   	
public"" 
static"" 
string"" !
RandomChooserUsername"" 2
(""2 3
)""3 4
{""5 6
int## 
randomIndexNumber## !
=##" #
random##$ *
.##* +
Next##+ /
(##/ 0
$num##0 1
,##1 2
$num##3 :
)##: ;
;##; <
return$$ 
$str$$ 
+$$ 
randomIndexNumber$$ .
;$$. /
}%% 	
}&& 
}'' �d
1C:\TripasDeGatoCliente\Logic\DrawingValidation.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

class 
DrawingValidation "
{# $
private

 
readonly

 
List

 
<

 
Point

 #
>

# $
permittedArea

% 2
;

2 3
public 
DrawingValidation  
(  !
)! "
{# $
permittedArea 
= 
new 
List  $
<$ %
Point% *
>* +
{, -
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num !
)! "
," #
new 
Point 
( 
$num 
, 
$num "
)" #
,# $
new 
Point 
( 
$num 
, 
$num "
)" #
,# $
new   
Point   
(   
$num   
,   
$num   "
)  " #
,  # $
new!! 
Point!! 
(!! 
$num!! 
,!! 
$num!! "
)!!" #
,!!# $
new"" 
Point"" 
("" 
$num"" 
,"" 
$num"" "
)""" #
,""# $
new## 
Point## 
(## 
$num## 
,## 
$num## "
)##" #
,### $
new$$ 
Point$$ 
($$ 
$num$$ 
,$$ 
$num$$ "
)$$" #
,$$# $
new%% 
Point%% 
(%% 
$num%% 
,%% 
$num%% "
)%%" #
,%%# $
new&& 
Point&& 
(&& 
$num&& 
,&& 
$num&& "
)&&" #
,&&# $
new'' 
Point'' 
('' 
$num'' 
,'' 
$num'' "
)''" #
,''# $
new(( 
Point(( 
((( 
$num(( 
,(( 
$num(( "
)((" #
,((# $
new)) 
Point)) 
()) 
$num)) 
,)) 
$num)) "
)))" #
,))# $
new** 
Point** 
(** 
$num** 
,** 
$num** "
)**" #
,**# $
new++ 
Point++ 
(++ 
$num++ 
,++ 
$num++ "
)++" #
,++# $
new,, 
Point,, 
(,, 
$num,, 
,,, 
$num,, "
),," #
,,,# $
new-- 
Point-- 
(-- 
$num-- 
,-- 
$num-- "
)--" #
,--# $
new.. 
Point.. 
(.. 
$num.. 
,.. 
$num.. "
).." #
,..# $
new// 
Point// 
(// 
$num// 
,// 
$num// "
)//" #
,//# $
new00 
Point00 
(00 
$num00 
,00 
$num00 "
)00" #
,00# $
new11 
Point11 
(11 
$num11 
,11 
$num11 "
)11" #
,11# $
new22 
Point22 
(22 
$num22 
,22 
$num22 "
)22" #
,22# $
new33 
Point33 
(33 
$num33 
,33 
$num33 "
)33" #
,33# $
new44 
Point44 
(44 
$num44 
,44 
$num44 "
)44" #
,44# $
new55 
Point55 
(55 
$num55 
,55 
$num55 "
)55" #
,55# $
new66 
Point66 
(66 
$num66 
,66 
$num66 "
)66" #
,66# $
new77 
Point77 
(77 
$num77 
,77 
$num77 "
)77" #
,77# $
new88 
Point88 
(88 
$num88 
,88 
$num88 "
)88" #
,88# $
new99 
Point99 
(99 
$num99 
,99 
$num99 "
)99" #
,99# $
new:: 
Point:: 
(:: 
$num:: 
,:: 
$num:: "
)::" #
,::# $
new;; 
Point;; 
(;; 
$num;; 
,;; 
$num;; "
);;" #
,;;# $
new<< 
Point<< 
(<< 
$num<< 
,<< 
$num<< "
)<<" #
,<<# $
new== 
Point== 
(== 
$num== 
,== 
$num== "
)==" #
,==# $
new>> 
Point>> 
(>> 
$num>> 
,>> 
$num>> "
)>>" #
,>># $
new?? 
Point?? 
(?? 
$num?? 
,?? 
$num?? "
)??" #
,??# $
new@@ 
Point@@ 
(@@ 
$num@@ 
,@@ 
$num@@ "
)@@" #
,@@# $
newAA 
PointAA 
(AA 
$numAA 
,AA 
$numAA "
)AA" #
,AA# $
newBB 
PointBB 
(BB 
$numBB 
,BB 
$numBB "
)BB" #
,BB# $
newCC 
PointCC 
(CC 
$numCC 
,CC 
$numCC "
)CC" #
,CC# $
newDD 
PointDD 
(DD 
$numDD 
,DD 
$numDD "
)DD" #
,DD# $
newEE 
PointEE 
(EE 
$numEE 
,EE 
$numEE !
)EE! "
,EE" #
newFF 
PointFF 
(FF 
$numFF 
,FF 
$numFF !
)FF! "
,FF" #
newGG 
PointGG 
(GG 
$numGG 
,GG 
$numGG !
)GG! "
,GG" #
newHH 
PointHH 
(HH 
$numHH 
,HH 
$numHH !
)HH! "
,HH" #
newII 
PointII 
(II 
$numII 
,II 
$numII  
)II  !
,II! "
newJJ 
PointJJ 
(JJ 
$numJJ 
,JJ 
$numJJ  
)JJ  !
,JJ! "
newKK 
PointKK 
(KK 
$numKK 
,KK 
$numKK  
)KK  !
,KK! "
newLL 
PointLL 
(LL 
$numLL 
,LL 
$numLL !
)LL! "
,LL" #
newMM 
PointMM 
(MM 
$numMM 
,MM 
$numMM !
)MM! "
,MM" #
newNN 
PointNN 
(NN 
$numNN 
,NN 
$numNN !
)NN! "
,NN" #
newOO 
PointOO 
(OO 
$numOO 
,OO 
$numOO !
)OO! "
,OO" #
newPP 
PointPP 
(PP 
$numPP 
,PP 
$numPP  
)PP  !
,PP! "
newQQ 
PointQQ 
(QQ 
$numQQ 
,QQ 
$numQQ  
)QQ  !
,QQ! "
newRR 
PointRR 
(RR 
$numRR 
,RR 
$numRR  
)RR  !
,RR! "
newSS 
PointSS 
(SS 
$numSS 
,SS 
$numSS  
)SS  !
,SS! "
newTT 
PointTT 
(TT 
$numTT 
,TT 
$numTT  
)TT  !
,TT! "
newUU 
PointUU 
(UU 
$numUU 
,UU 
$numUU  
)UU  !
,UU! "
}VV 
;VV 
}WW 	
publicYY 
boolYY "
IsPointInForbiddenAreaYY *
(YY* +
PointYY+ 0
pointYY1 6
)YY6 7
{YY8 9
returnZZ 
!ZZ  
IsPointInDrawingAreaZZ (
(ZZ( )
pointZZ) .
)ZZ. /
;ZZ/ 0
}[[ 	
public]] 
bool]]  
IsPointInDrawingArea]] (
(]]( )
Point]]) .
point]]/ 4
)]]4 5
{]]6 7
int^^ 
intersections^^ 
=^^ 
$num^^  !
;^^! "
int__ 
count__ 
=__ 
permittedArea__ %
.__% &
Count__& +
;__+ ,
for`` 
(`` 
int`` 
i`` 
=`` 
$num`` 
;`` 
i`` 
<`` 
count``  %
;``% &
i``' (
++``( *
)``* +
{``, -
Pointaa 
p1aa 
=aa 
permittedAreaaa (
[aa( )
iaa) *
]aa* +
;aa+ ,
Pointbb 
p2bb 
=bb 
permittedAreabb (
[bb( )
(bb) *
ibb* +
+bb, -
$numbb. /
)bb/ 0
%bb1 2
countbb3 8
]bb8 9
;bb9 :
ifcc 
(cc 
(cc 
pointcc 
.cc 
Ycc 
>cc 
p1cc !
.cc! "
Ycc" #
)cc# $
!=cc% '
(cc( )
pointcc) .
.cc. /
Ycc/ 0
>cc1 2
p2cc3 5
.cc5 6
Ycc6 7
)cc7 8
)cc8 9
{cc: ;
doubledd 
xIntersectiondd (
=dd) *
(dd+ ,
pointdd, 1
.dd1 2
Ydd2 3
-dd4 5
p1dd6 8
.dd8 9
Ydd9 :
)dd: ;
*dd< =
(dd> ?
p2dd? A
.ddA B
XddB C
-ddD E
p1ddF H
.ddH I
XddI J
)ddJ K
/ddL M
(ddN O
p2ddO Q
.ddQ R
YddR S
-ddT U
p1ddV X
.ddX Y
YddY Z
)ddZ [
+dd\ ]
p1dd^ `
.dd` a
Xdda b
;ddb c
ifee 
(ee 
pointee 
.ee 
Xee 
<ee  !
xIntersectionee" /
)ee/ 0
{ee1 2
intersectionsff %
++ff% '
;ff' (
}gg 
}hh 
}ii 
returnjj 
(jj 
intersectionsjj !
%jj" #
$numjj$ %
)jj% &
!=jj' )
$numjj* +
;jj+ ,
}kk 	
}ll 
}mm �
-C:\TripasDeGatoCliente\Logic\DialogManager.cs
	namespace		 	
TripasDeGatoCliente		
 
.		 
Logic		 #
{		$ %
public 

static 
class 
DialogManager %
{& '
public 
static 
void !
ShowErrorMessageAlert 0
(0 1
string1 7
errorMessage8 D
)D E
{F G

MessageBox 
. 
Show 
( 
errorMessage (
,( )
TripasDeGatoCliente* =
.= >

Properties> H
.H I
	ResourcesI R
.R S
dialogTitleErrorS c
,c d
MessageBoxButtone u
.u v
OKv x
,x y
MessageBoxImage	z �
.
� �
Error
� �
)
� �
;
� �
} 	
public 
static 
void #
ShowWarningMessageAlert 2
(2 3
string3 9
warningMessage: H
)H I
{J K

MessageBox 
. 
Show 
( 
warningMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleWarningU g
,g h
MessageBoxButtoni y
.y z
OKz |
,| }
MessageBoxImage	~ �
.
� �
Warning
� �
)
� �
;
� �
} 	
public 
static 
void #
ShowSuccessMessageAlert 2
(2 3
string3 9
successMessage: H
)H I
{J K

MessageBox 
. 
Show 
( 
successMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleSuccesU f
,f g
MessageBoxButtonh x
.x y
OKy {
,{ |
MessageBoxImage	} �
.
� �
Information
� �
)
� �
;
� �
} 	
public 
static 
void (
ShowConfirmationMessageAlert 7
(7 8
string8 >
confirmMessage? M
)M N
{O P

MessageBox 
. 
Show 
( 
confirmMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U#
dialogTitleConfirmationU l
,l m
MessageBoxButtonn ~
.~ 
OK	 �
,
� �
MessageBoxImage
� �
.
� �
Question
� �
)
� �
;
� �
} 	
} 
} �
0C:\TripasDeGatoCliente\Logic\ConstantsManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal		 
static		 
class		 
ConstantsManager		 *
{		+ ,
public 
static 
class 
	Constants %
{& '
public 
const 
int 
ERROR_OPERATION ,
=- .
-/ 0
$num0 1
;1 2
public 
const 
int 
SUCCES_OPERATION -
=. /
$num0 1
;1 2
public 
const 
int 
NO_DATA_MATCHES ,
=- .
-/ 0
$num0 1
;1 2
public 
const 
int 
DATA_MATCHES )
=* +
$num, -
;- .
public 
const 
int 
INITIAL_SCORE *
=+ ,
$num- .
;. /
public 
const 
string  
DEFAULT_IMAGE_PLAYER  4
=5 6
$str7 :
;: ;
public 
const 
string 
DEFAULT_IMAGE_GUEST  3
=4 5
$str6 9
;9 :
public 
const 
int 
HOW_MANY_SCORES ,
=- .
$num/ 1
;1 2
public 
const 
string #
FAILED_OPERATION_STRING  7
=8 9
$str: L
;L M
} 	
} 
} �'
1C:\TripasDeGatoCliente\Logic\ConnectionManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public 

class 
ConnectionManager "
{# $
private 
static 
readonly 
ConnectionManager  1%
connectionManagerInstance2 K
=L M
newN Q
ConnectionManagerR c
(c d
)d e
;e f
public

 
static

 
ConnectionManager

 '
Instance

( 0
=>

1 3%
connectionManagerInstance

4 M
;

M N
public 
LobbyManagerClient !
LobbyManager" .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
public 
ChatManagerClient  
ChatManager! ,
{- .
get/ 2
;2 3
private4 ;
set< ?
;? @
}A B
public 
MatchManagerClient !
MatchManager" .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
private 
ConnectionManager !
(! "
)" #
{$ %
}& '
public 
void "
InitializeLobbyManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
LobbyManager 
= 
new 
LobbyManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public 
void !
InitializeChatManager )
() *
InstanceContext* 9
context: A
)A B
{C D
ChatManager 
= 
new 
ChatManagerClient /
(/ 0
context0 7
)7 8
;8 9
} 	
public 
void "
InitializeMatchManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
MatchManager 
= 
new 
MatchManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public!! 
void!! 
DisconnectAll!! !
(!!! "
)!!" #
{!!$ %
if"" 
("" 
LobbyManager"" 
!="" 
null""  $
&&""% ' 
UserProfileSingleton""( <
.""< =
	LobbyCode""= F
!=""G I
$str""J R
)""R S
{""T U
LobbyManager## 
.## 

LeaveLobby## '
(##' ( 
UserProfileSingleton##( <
.##< =
	LobbyCode##= F
,##F G 
UserProfileSingleton##H \
.##\ ]
UserName##] e
)##e f
;##f g 
UserProfileSingleton$$ $
.$$$ %
ResetLobbyCode$$% 3
($$3 4
)$$4 5
;$$5 6
}%% 
if'' 
('' 
ChatManager'' 
!='' 
null'' #
&&''$ & 
UserProfileSingleton''' ;
.''; <
ChatCode''< D
!=''E G
$str''H P
)''P Q
{''R S
ChatManager(( 
.(( 
	LeaveChat(( %
(((% & 
UserProfileSingleton((& :
.((: ;
UserName((; C
,((C D 
UserProfileSingleton((E Y
.((Y Z
ChatCode((Z b
)((b c
;((c d 
UserProfileSingleton)) $
.))$ %
ResetChatCode))% 2
())2 3
)))3 4
;))4 5
}** 
if,, 
(,, 
MatchManager,, 
!=,, 
null,,  $
&&,,% ' 
UserProfileSingleton,,( <
.,,< =
	MatchCode,,= F
!=,,G I
$str,,J R
),,R S
{,,T U
MatchManager-- 
.-- 

LeaveMatch-- '
(--' ( 
UserProfileSingleton--( <
.--< =
	MatchCode--= F
,--F G 
UserProfileSingleton--H \
.--\ ]
UserName--] e
)--e f
;--f g 
UserProfileSingleton.. $
...$ %
ResetMatchCode..% 3
(..3 4
)..4 5
;..5 6
}// 
}00 	
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