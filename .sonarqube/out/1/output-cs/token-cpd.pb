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
]77) *¬/
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
)	$$ Ä
)
$$Ä Å
;
$$Å Ç
}&& 
}'' 	
private)) 
async)) 
void)) 
MainWindowClosing)) ,
()), -
object))- 3
sender))4 :
,)): ;
System))< B
.))B C
ComponentModel))C Q
.))Q R
CancelEventArgs))R a
e))b c
)))c d
{))e f
try** 
{** 
await++ 
ConnectionManager++ '
.++' (
Instance++( 0
.++0 1
DisconnectAllAsync++1 C
(++C D
)++D E
;++E F
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
}AA ª
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
}'' ¶O
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
)	'' Ä
)
''Ä Å
;
''Å Ç
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
{-- 
var.. 
lobbies.. 
=.. 
await.. #
_lobbyBrowser..$ 1
...1 2$
GetAvailableLobbiesAsync..2 J
(..J K
)..K L
;..L M
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
}cc ∂Ñ
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
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
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
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
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
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
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
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
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
.  H I'
dialogComunicationException  I d
)  d e
;  e f
}!! 
else!! 
{!! 
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
}%% 
}&& 	
private(( 
void(( 
LoadProfile((  
(((  !
)((! "
{((# $
lbUserNameProfile)) 
.)) 
Content)) %
=))& '
!))( )
string))) /
.))/ 0
IsNullOrEmpty))0 =
())= > 
UserProfileSingleton))> R
.))R S
UserName))S [
)))[ \
?))] ^ 
UserProfileSingleton))_ s
.))s t
UserName))t |
:))} ~

Properties	)) â
.
))â ä
	Resources
))ä ì
.
))ì î
lbUnknownUser
))î °
;
))° ¢
txtUserName** 
.** 
Text** 
=**  
UserProfileSingleton** 3
.**3 4
UserName**4 <
;**< =
cboxLanguage++ 
.++ 
ItemsSource++ $
=++% &
new++' *
List+++ /
<++/ 0
string++0 6
>++6 7
{++8 9
$str++: A
,++A B
$str++C J
}++K L
;++L M
if,, 
(,, 
!,, 
string,, 
.,, 
IsNullOrEmpty,, %
(,,% & 
UserProfileSingleton,,& :
.,,: ;
PicPath,,; B
),,B C
),,C D
{,,E F
imageProfile-- 
.-- 
Source-- #
=--$ %
new--& )
BitmapImage--* 5
(--5 6
new--6 9
Uri--: =
(--= > 
UserProfileSingleton--> R
.--R S
PicPath--S Z
,--Z [
UriKind--\ c
.--c d
RelativeOrAbsolute--d v
)--v w
)--w x
;--x y
}.. 
lbScoreProfile// 
.// 
Content// "
=//# $
string//% +
.//+ ,
Format//, 2
(//2 3

Properties//3 =
.//= >
	Resources//> G
.//G H
lbScore//H O
,//O P 
UserProfileSingleton//Q e
.//e f
Score//f k
)//k l
;//l m
}00 	
private22 
void22 
EnableEditing22 "
(22" #
)22# $
{22% &
txtUserName33 
.33 
	IsEnabled33 !
=33" #
true33$ (
;33( )
cboxLanguage44 
.44 
	IsEnabled44 "
=44# $
true44% )
;44) *
btnSave55 
.55 
	IsEnabled55 
=55 
true55  $
;55$ %

_isEditing66 
=66 
true66 
;66 
borderProfiles77 
.77 
	IsEnabled77 $
=77% &
true77' +
;77+ ,
borderProfiles88 
.88 

Visibility88 %
=88& '

Visibility88( 2
.882 3
Visible883 :
;88: ;
btnSave99 
.99 

Visibility99 
=99  

Visibility99! +
.99+ ,
Visible99, 3
;993 4
}:: 	
private<< 
void<< 
DisableEditing<< #
(<<# $
)<<$ %
{<<& '
txtUserName== 
.== 
	IsEnabled== !
===" #
false==$ )
;==) *
cboxLanguage>> 
.>> 
	IsEnabled>> "
=>># $
false>>% *
;>>* +
btnSave?? 
.?? 
	IsEnabled?? 
=?? 
false??  %
;??% &

_isEditing@@ 
=@@ 
false@@ 
;@@ 
borderProfilesAA 
.AA 
	IsEnabledAA $
=AA% &
falseAA' ,
;AA, -
borderProfilesBB 
.BB 

VisibilityBB %
=BB& '

VisibilityBB( 2
.BB2 3
	CollapsedBB3 <
;BB< =
btnSaveCC 
.CC 

VisibilityCC 
=CC  

VisibilityCC! +
.CC+ ,
	CollapsedCC, 5
;CC5 6
}DD 	
privateFF 
voidFF 
BtnEdit_ClickFF "
(FF" #
objectFF# )
senderFF* 0
,FF0 1
RoutedEventArgsFF2 A
eFFB C
)FFC D
{FFE F
ifGG 
(GG 
!GG 

_isEditingGG 
)GG 
{GG 
EnableEditingHH 
(HH 
)HH 
;HH  
}II 
}JJ 	
privateLL 
voidLL 
BtnSave_ClickLL "
(LL" #
objectLL# )
senderLL* 0
,LL0 1
RoutedEventArgsLL2 A
eLLB C
)LLC D
{LLE F
ifMM 
(MM 

_isEditingMM 
)MM 
{MM 
ifNN 
(NN 
ValidateFieldsNN "
(NN" #
)NN# $
)NN$ %
{NN& '
stringOO 
userNameOO #
=OO$ %
txtUserNameOO& 1
.OO1 2
TextOO2 6
;OO6 7
stringPP 
selectedLanguagePP +
=PP, -
cboxLanguagePP. :
.PP: ;
SelectedItemPP; G
?PPG H
.PPH I
ToStringPPI Q
(PPQ R
)PPR S
;PPS T
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrEmptyQQ ,
(QQ, -
selectedLanguageQQ- =
)QQ= >
)QQ> ?
{QQ@ A
SaveProfileRR #
(RR# $
userNameRR$ ,
,RR, -
_selectedProfileRR. >
)RR> ?
;RR? @
}SS 
elseSS 
{SS 
MessageBoxResultTT (
resultTT) /
=TT0 1

MessageBoxTT2 <
.TT< =
ShowTT= A
(TTA B

PropertiesUU &
.UU& '
	ResourcesUU' 0
.UU0 1'
dialogMessageLanguagechangeUU1 L
,UUL M

PropertiesVV &
.VV& '
	ResourcesVV' 0
.VV0 1
lbLanguageChangeVV1 A
,VVA B
MessageBoxButtonWW ,
.WW, -
YesNoWW- 2
,WW2 3
MessageBoxImageXX +
.XX+ ,
QuestionXX, 4
)YY 
;YY 
ifZZ 
(ZZ 
resultZZ "
==ZZ# %
MessageBoxResultZZ& 6
.ZZ6 7
YesZZ7 :
)ZZ: ;
{ZZ< =
App[[ 
.[[  
ChangeLanguage[[  .
([[. /
selectedLanguage[[/ ?
)[[? @
;[[@ A
System\\ "
.\\" #
Diagnostics\\# .
.\\. /
Process\\/ 6
.\\6 7
Start\\7 <
(\\< =
Application\\= H
.\\H I
ResourceAssembly\\I Y
.\\Y Z
Location\\Z b
)\\b c
;\\c d
Application]] '
.]]' (
Current]]( /
.]]/ 0
Shutdown]]0 8
(]]8 9
)]]9 :
;]]: ;
}^^ 
else^^ 
{^^  
SaveProfile__ '
(__' (
userName__( 0
,__0 1
_selectedProfile__2 B
)__B C
;__C D
}`` 
}aa 
}bb 
elsebb 
{bb 
DialogManagercc !
.cc! "!
ShowErrorMessageAlertcc" 7
(cc7 8

Propertiescc8 B
.ccB C
	ResourcesccC L
.ccL M%
dialogCompleteFieldsErrorccM f
)ccf g
;ccg h
}dd 
}ee 
}ff 	
privatehh 
asynchh 
voidhh 
SaveProfilehh &
(hh& '
stringhh' -
userNamehh. 6
,hh6 7
stringhh8 >
selectedProfilehh? N
)hhN O
{hhP Q
tryii 
{ii 
varjj 
servicejj 
=jj 
newjj ! 
TripasDeGatoServiciojj" 6
.jj6 7
UserManagerClientjj7 H
(jjH I
)jjI J
;jjJ K
intkk 
	idProfilekk 
=kk  
UserProfileSingletonkk  4
.kk4 5
	IdProfilekk5 >
;kk> ?
stringll 
newPicll 
=ll 
selectedProfilell  /
??ll0 2 
UserProfileSingletonll3 G
.llG H
PicPathllH O
;llO P
intmm 
updateResultmm  
=mm! "
awaitmm# (
servicemm) 0
.mm0 1
UpdateProfileAsyncmm1 C
(mmC D
	idProfilemmD M
,mmM N
userNamemmO W
,mmW X
newPicmmY _
)mm_ `
;mm` a
ifnn 
(nn 
updateResultnn  
==nn! #
ConstantsManagernn$ 4
.nn4 5
	Constantsnn5 >
.nn> ?
SUCCES_OPERATIONnn? O
)nnO P
{nnQ R 
UserProfileSingletonoo (
.oo( )
UpdateNombreoo) 5
(oo5 6
userNameoo6 >
)oo> ?
;oo? @ 
UserProfileSingletonpp (
.pp( )
UpdateFotoRutapp) 7
(pp7 8
newPicpp8 >
)pp> ?
;pp? @
LoadProfileqq 
(qq  
)qq  !
;qq! "
DialogManagerrr !
.rr! "#
ShowSuccessMessageAlertrr" 9
(rr9 :

Propertiesrr: D
.rrD E
	ResourcesrrE N
.rrN O
dialogChangesSavedrrO a
)rra b
;rrb c
DisableEditingss "
(ss" #
)ss# $
;ss$ %
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
.uuL M(
dialogErrorSavingProfileDatauuM i
)uui j
;uuj k
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
(xx1 2
SaveProfilexx2 =
)xx= >
)xx> ?
;xx? @
}yy 
}zz 	
private|| 
void|| ,
 ListProfilePics_SelectionChanged|| 5
(||5 6
object||6 <
sender||= C
,||C D%
SelectionChangedEventArgs||E ^
e||_ `
)||` a
{||b c
if}} 
(}} 
lstProfilePics}} 
.}} 
SelectedItem}} +
is}}, .
ListBoxItem}}/ :
selectedItem}}; G
)}}G H
{}}I J
string~~ 
selectedImage~~ $
=~~% &
selectedItem~~' 3
.~~3 4
Tag~~4 7
.~~7 8
ToString~~8 @
(~~@ A
)~~A B
;~~B C
imageProfile 
. 
Source #
=$ %
new& )
BitmapImage* 5
(5 6
new6 9
Uri: =
(= >
selectedImage> K
,K L
UriKindM T
.T U
RelativeU ]
)] ^
)^ _
;_ `"
UserProfileSingleton
ÄÄ $
.
ÄÄ$ %
UpdateFotoRuta
ÄÄ% 3
(
ÄÄ3 4
selectedImage
ÄÄ4 A
)
ÄÄA B
;
ÄÄB C
_selectedProfile
ÅÅ  
=
ÅÅ! "
selectedImage
ÅÅ# 0
;
ÅÅ0 1
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ 
ValidateFields
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
{
ÖÖ& '
bool
ÜÜ 
isValid
ÜÜ 
=
ÜÜ 
true
ÜÜ 
;
ÜÜ  
if
áá 
(
áá 
string
áá 
.
áá  
IsNullOrWhiteSpace
áá )
(
áá) *
txtUserName
áá* 5
.
áá5 6
Text
áá6 :
)
áá: ;
)
áá; <
{
áá= >
isValid
àà 
=
àà 
false
àà 
;
àà  
txtUserName
ââ 
.
ââ 
BorderBrush
ââ '
=
ââ( )
System
ââ* 0
.
ââ0 1
Windows
ââ1 8
.
ââ8 9
Media
ââ9 >
.
ââ> ?
Brushes
ââ? F
.
ââF G
Red
ââG J
;
ââJ K
}
ää 
else
ää 
{
ää 
txtUserName
ãã 
.
ãã 
BorderBrush
ãã '
=
ãã( )
System
ãã* 0
.
ãã0 1
Windows
ãã1 8
.
ãã8 9
Media
ãã9 >
.
ãã> ?
Brushes
ãã? F
.
ããF G
White
ããG L
;
ããL M
}
åå 
return
çç 
isValid
çç 
;
çç 
}
éé 	
private
êê 
void
êê 
GoToMenuView
êê !
(
êê! "
)
êê" #
{
êê$ %
MenuView
ëë 
menuView
ëë 
=
ëë 
new
ëë  #
MenuView
ëë$ ,
(
ëë, -
)
ëë- .
;
ëë. /
this
íí 
.
íí 
NavigationService
íí "
?
íí" #
.
íí# $
Navigate
íí$ ,
(
íí, -
menuView
íí- 5
)
íí5 6
;
íí6 7
}
ìì 	
private
ïï 
void
ïï 
BtnBack_Click
ïï "
(
ïï" #
object
ïï# )
sender
ïï* 0
,
ïï0 1
RoutedEventArgs
ïï2 A
e
ïïB C
)
ïïC D
{
ïïE F
GoToMenuView
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 	
}
òò 
}ôô Ñ∂
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
{,,K L
bool-- 
isAuthenticated--  
=--! "
false--# (
;--( )
try.. 
{.. 
IUserManager// 
userManager// (
=//) *
new//+ .
UserManagerClient/// @
(//@ A
)//A B
;//B C
int00 
validationResult00 $
=00% &
userManager00' 2
.002 3
VerifyLogin003 >
(00> ?
email00? D
,00D E
hashedPassword00F T
)00T U
;00U V
if11 
(11 
validationResult11 $
==11% '
	Constants11( 1
.111 2
DATA_MATCHES112 >
)11> ?
{11@ A
Profile22 
profile22 #
=22$ %
userManager22& 1
.221 2
GetProfileByMail222 B
(22B C
email22C H
)22H I
;22I J
if33 
(33 
profile33 
!=33  "
null33# '
)33' (
{33) *
if44 
(44 
IsPlayerOnline44 *
(44* +
profile44+ 2
.442 3
	IdProfile443 <
)44< =
)44= >
{44? @
return55 "
false55# (
;55( )
}66 
ObtainSingletonData77 +
(77+ ,
profile77, 3
)773 4
;774 5
isAuthenticated88 '
=88( )
true88* .
;88. /
}99 
else99 
{99 
DialogManager:: %
.::% &!
ShowErrorMessageAlert::& ;
(::; <

Properties::< F
.::F G
	Resources::G P
.::P Q%
dialogNotRetrievedProfile::Q j
)::j k
;::k l
};; 
}<< 
else<< 
{<< 
DialogManager== !
.==! "!
ShowErrorMessageAlert==" 7
(==7 8

Properties==8 B
.==B C
	Resources==C L
.==L M(
dialogMissmatchesCredentials==M i
)==i j
;==j k
}>> 
}?? 
catch?? 
(?? 
	Exception?? 
	exception?? (
)??( )
{??* +
HandleException@@ 
(@@  
	exception@@  )
,@@) *
nameof@@+ 1
(@@1 2
AuthenticateUser@@2 B
)@@B C
)@@C D
;@@D E
}AA 
returnBB 
isAuthenticatedBB "
;BB" #
}CC 	
privateFF 
voidFF 
HandleExceptionFF $
(FF$ %
	ExceptionFF% .
	exceptionFF/ 8
,FF8 9
stringFF: @

methodNameFFA K
)FFK L
{FFM N
LoggerManagerGG 
loggerGG  
=GG! "
newGG# &
LoggerManagerGG' 4
(GG4 5
thisGG5 9
.GG9 :
GetTypeGG: A
(GGA B
)GGB C
)GGC D
;GGD E
ifHH 
(HH 
	exceptionHH 
isHH %
EndpointNotFoundExceptionHH 6
)HH6 7
{HH8 9
loggerII 
.II 
LogErrorII 
(II  

methodNameII  *
,II* +
	exceptionII, 5
)II5 6
;II6 7
DialogManagerJJ 
.JJ !
ShowErrorMessageAlertJJ 3
(JJ3 4

PropertiesJJ4 >
.JJ> ?
	ResourcesJJ? H
.JJH I#
dialogEndPointExceptionJJI `
)JJ` a
;JJa b
}KK 
elseKK 
ifKK 
(KK 
	exceptionKK  
isKK! #
TimeoutExceptionKK$ 4
)KK4 5
{KK6 7
loggerLL 
.LL 
LogErrorLL 
(LL  

methodNameLL  *
,LL* +
	exceptionLL, 5
)LL5 6
;LL6 7
DialogManagerMM 
.MM !
ShowErrorMessageAlertMM 3
(MM3 4

PropertiesMM4 >
.MM> ?
	ResourcesMM? H
.MMH I"
dialogTimeOutExceptionMMI _
)MM_ `
;MM` a
}NN 
elseNN 
ifNN 
(NN 
	exceptionNN  
isNN! #"
CommunicationExceptionNN$ :
)NN: ;
{NN< =
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
.PPH I'
dialogComunicationExceptionPPI d
)PPd e
;PPe f
}QQ 
elseQQ 
{QQ 
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
(SS3 4
stringSS4 :
.SS: ;
FormatSS; A
(SSA B

PropertiesSSB L
.SSL M
	ResourcesSSM V
.SSV W!
dialogUnexpectedErrorSSW l
,SSl m
	exceptionSSn w
.SSw x
MessageSSx 
)	SS Ä
)
SSÄ Å
;
SSÅ Ç
}UU 
}VV 	
privateXX 
boolXX 
IsPlayerOnlineXX #
(XX# $
intXX$ '
	idProfileXX( 1
)XX1 2
{XX3 4
tryYY 
{YY 
IStatusManagerZZ 
statusManagerZZ ,
=ZZ- .
newZZ/ 2
StatusManagerClientZZ3 F
(ZZF G
)ZZG H
;ZZH I
var[[ 
playerStatus[[  
=[[! "
statusManager[[# 0
.[[0 1
GetPlayerStatus[[1 @
([[@ A
	idProfile[[A J
)[[J K
;[[K L
if\\ 
(\\ 
playerStatus\\  
==\\! #!
GameEnumsPlayerStatus\\$ 9
.\\9 :
Online\\: @
)\\@ A
{\\B C
DialogManager]] !
.]]! "#
ShowWarningMessageAlert]]" 9
(]]9 :

Properties]]: D
.]]D E
	Resources]]E N
.]]N O%
dialogPlayerAlreadyOnline]]O h
)]]h i
;]]i j
return^^ 
true^^ 
;^^  
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
(aa1 2
IsPlayerOnlineaa2 @
)aa@ A
)aaA B
;aaB C
}bb 
returncc 
falsecc 
;cc 
}dd 	
privateff 
staticff 
voidff 
ObtainSingletonDataff /
(ff/ 0
Profileff0 7
profileff8 ?
)ff? @
{ffA B 
UserProfileSingletongg  
.gg  !
CreateInstancegg! /
(gg/ 0
profilegg0 7
)gg7 8
;gg8 9
}hh 	
privatejj 
voidjj !
SetPlayerOnlineStatusjj *
(jj* +
intjj+ .
playerIdjj/ 7
)jj7 8
{jj9 :
trykk 
{kk 
IStatusManagerll 
statusManagerll ,
=ll- .
newll/ 2
StatusManagerClientll3 F
(llF G
)llG H
;llH I
statusManagermm 
.mm 
SetPlayerStatusmm -
(mm- .
playerIdmm. 6
,mm6 7!
GameEnumsPlayerStatusmm8 M
.mmM N
OnlinemmN T
)mmT U
;mmU V
}nn 
catchnn 
(nn 
	Exceptionnn 
	exceptionnn (
)nn( )
{nn* +
HandleExceptionoo 
(oo  
	exceptionoo  )
,oo) *
nameofoo+ 1
(oo1 2!
SetPlayerOnlineStatusoo2 G
)ooG H
)ooH I
;ooI J
}pp 
}qq 	
privatess 
voidss 
BtnGuest_Clickss #
(ss# $
objectss$ *
senderss+ 1
,ss1 2
RoutedEventArgsss3 B
essC D
)ssD E
{ssF G
CodeGameMatchtt 
codeGameMatchtt '
=tt( )
newtt* -
CodeGameMatchtt. ;
(tt; <
)tt< =
;tt= >
thisuu 
.uu 
NavigationServiceuu "
.uu" #
Navigateuu# +
(uu+ ,
codeGameMatchuu, 9
)uu9 :
;uu: ;
}vv 	
privatexx 
voidxx 
DisplayMainMenuViewxx (
(xx( )
)xx) *
{xx+ ,
MenuViewyy 
menuViewyy 
=yy 
newyy  #
MenuViewyy$ ,
(yy, -
)yy- .
;yy. /
thiszz 
.zz 
NavigationServicezz "
.zz" #
Navigatezz# +
(zz+ ,
menuViewzz, 4
)zz4 5
;zz5 6
}{{ 	
private}} 
static}} 
void}} 
HighlightField}} *
(}}* +
Control}}+ 2
control}}3 :
,}}: ;
bool}}< @
isValid}}A H
)}}H I
{}}J K
control~~ 
.~~ 
BorderBrush~~ 
=~~  !
isValid~~" )
?~~* +
Brushes~~, 3
.~~3 4
White~~4 9
:~~: ;
Brushes~~< C
.~~C D
Red~~D G
;~~G H
} 	
private
ÅÅ 
void
ÅÅ "
TxtEmail_TextChanged
ÅÅ )
(
ÅÅ) *
object
ÅÅ* 0
sender
ÅÅ1 7
,
ÅÅ7 8"
TextChangedEventArgs
ÅÅ9 M
e
ÅÅN O
)
ÅÅO P
{
ÅÅQ R
string
ÇÇ 
email
ÇÇ 
=
ÇÇ 
txtEmail
ÇÇ #
.
ÇÇ# $
Text
ÇÇ$ (
;
ÇÇ( )
bool
ÉÉ 
isValid
ÉÉ 
=
ÉÉ 
	Validador
ÉÉ $
.
ÉÉ$ %
ValidateEmail
ÉÉ% 2
(
ÉÉ2 3
email
ÉÉ3 8
)
ÉÉ8 9
;
ÉÉ9 :
HighlightField
ÑÑ 
(
ÑÑ 
txtEmail
ÑÑ #
,
ÑÑ# $
isValid
ÑÑ% ,
)
ÑÑ, -
;
ÑÑ- .
lbInvalidEmail
ÖÖ 
.
ÖÖ 

Visibility
ÖÖ %
=
ÖÖ& '
isValid
ÖÖ( /
?
ÖÖ0 1

Visibility
ÖÖ2 <
.
ÖÖ< =
	Collapsed
ÖÖ= F
:
ÖÖG H

Visibility
ÖÖI S
.
ÖÖS T
Visible
ÖÖT [
;
ÖÖ[ \
}
ÜÜ 	
private
àà 
void
àà )
TxtPassword_PasswordChanged
àà 0
(
àà0 1
object
àà1 7
sender
àà8 >
,
àà> ?
RoutedEventArgs
àà@ O
e
ààP Q
)
ààQ R
{
ààS T
string
ââ 
password
ââ 
=
ââ 
txtPassword
ââ )
.
ââ) *
Password
ââ* 2
;
ââ2 3
bool
ää 
isValid
ää 
=
ää 
	Validador
ää $
.
ää$ %
ValidatePassword
ää% 5
(
ää5 6
password
ää6 >
)
ää> ?
;
ää? @
HighlightField
ãã 
(
ãã 
txtPassword
ãã &
,
ãã& '
isValid
ãã( /
)
ãã/ 0
;
ãã0 1
lbInvalidPassword
åå 
.
åå 

Visibility
åå (
=
åå) *
isValid
åå+ 2
?
åå3 4

Visibility
åå5 ?
.
åå? @
	Collapsed
åå@ I
:
ååJ K

Visibility
ååL V
.
ååV W
Visible
ååW ^
;
åå^ _*
UpdatePasswordVisibilityIcon
çç (
(
çç( )
)
çç) *
;
çç* +
}
éé 	
private
êê 
static
êê 
void
êê 

ResetField
êê &
(
êê& '
Control
êê' .
control
êê/ 6
)
êê6 7
{
êê8 9
control
ëë 
.
ëë 
BorderBrush
ëë 
=
ëë  !
Brushes
ëë" )
.
ëë) *
White
ëë* /
;
ëë/ 0
}
íí 	
private
îî 
void
îî 
BtnSignIn_Click
îî $
(
îî$ %
object
îî% +
sender
îî, 2
,
îî2 3
RoutedEventArgs
îî4 C
e
îîD E
)
îîE F
{
îîG H
RegisterView
ïï 
registerView
ïï %
=
ïï& '
new
ïï( +
RegisterView
ïï, 8
(
ïï8 9
)
ïï9 :
;
ïï: ;
this
ññ 
.
ññ 
NavigationService
ññ "
.
ññ" #
Navigate
ññ# +
(
ññ+ ,
registerView
ññ, 8
)
ññ8 9
;
ññ9 :
}
óó 	
private
ôô 
void
ôô 
BtnContinue_Click
ôô &
(
ôô& '
object
ôô' -
sender
ôô. 4
,
ôô4 5
RoutedEventArgs
ôô6 E
e
ôôF G
)
ôôG H
{
ôôI J
string
öö 
email
öö 
=
öö 
txtEmailRecovery
öö +
.
öö+ ,
Text
öö, 0
.
öö0 1
Trim
öö1 5
(
öö5 6
)
öö6 7
;
öö7 8
if
õõ 
(
õõ 
string
õõ 
.
õõ  
IsNullOrWhiteSpace
õõ )
(
õõ) *
email
õõ* /
)
õõ/ 0
)
õõ0 1
{
õõ2 3
DialogManager
úú 
.
úú #
ShowErrorMessageAlert
úú 3
(
úú3 4

Properties
úú4 >
.
úú> ?
	Resources
úú? H
.
úúH I
dialogNullEmail
úúI X
)
úúX Y
;
úúY Z
return
ùù 
;
ùù 
}
ûû 
if
üü 
(
üü 
!
üü 
	Validador
üü 
.
üü 
ValidateEmail
üü (
(
üü( )
email
üü) .
)
üü. /
)
üü/ 0
{
üü1 2
DialogManager
†† 
.
†† #
ShowErrorMessageAlert
†† 3
(
††3 4

Properties
††4 >
.
††> ?
	Resources
††? H
.
††H I 
dialogInvalidEmail
††I [
)
††[ \
;
††\ ]
return
°° 
;
°° 
}
¢¢ 
try
££ 
{
££ &
IPasswordRecoveryManager
§§ (
passwordRecovery
§§) 9
=
§§: ;
new
§§< ?+
PasswordRecoveryManagerClient
§§@ ]
(
§§] ^
)
§§^ _
;
§§_ `
int
•• 
result
•• 
=
•• 
passwordRecovery
•• -
.
••- .
SendRecoveryCode
••. >
(
••> ?
email
••? D
)
••D E
;
••E F
if
¶¶ 
(
¶¶ 
result
¶¶ 
==
¶¶ 
	Constants
¶¶ '
.
¶¶' (
SUCCES_OPERATION
¶¶( 8
)
¶¶8 9
{
¶¶: ;

_userEmail
ßß 
=
ßß  
email
ßß! &
;
ßß& '
gridEnterEmail
®® "
.
®®" #

Visibility
®®# -
=
®®. /

Visibility
®®0 :
.
®®: ;
	Collapsed
®®; D
;
®®D E
gridRecovery
©©  
.
©©  !

Visibility
©©! +
=
©©, -

Visibility
©©. 8
.
©©8 9
Visible
©©9 @
;
©©@ A
DialogManager
™™ !
.
™™! "%
ShowSuccessMessageAlert
™™" 9
(
™™9 :

Properties
™™: D
.
™™D E
	Resources
™™E N
.
™™N O+
dialogRecoveryCodeHasBeenSent
™™O l
)
™™l m
;
™™m n
}
´´ 
else
´´ 
if
´´ 
(
´´ 
result
´´ !
==
´´" $
	Constants
´´% .
.
´´. /
NO_DATA_MATCHES
´´/ >
)
´´> ?
{
´´@ A
DialogManager
¨¨ !
.
¨¨! "#
ShowErrorMessageAlert
¨¨" 7
(
¨¨7 8

Properties
¨¨8 B
.
¨¨B C
	Resources
¨¨C L
.
¨¨L M 
dialogInvalidEmail
¨¨M _
)
¨¨_ `
;
¨¨` a
}
≠≠ 
else
≠≠ 
{
≠≠ 
DialogManager
ÆÆ !
.
ÆÆ! "#
ShowErrorMessageAlert
ÆÆ" 7
(
ÆÆ7 8

Properties
ÆÆ8 B
.
ÆÆB C
	Resources
ÆÆC L
.
ÆÆL M,
dialogErrorSendingRecoveryCode
ÆÆM k
)
ÆÆk l
;
ÆÆl m
}
ØØ 
}
∞∞ 
catch
∞∞ 
(
∞∞ 
	Exception
∞∞ 
	exception
∞∞ (
)
∞∞( )
{
∞∞* +
HandleException
±± 
(
±±  
	exception
±±  )
,
±±) *
nameof
±±+ 1
(
±±1 2
BtnContinue_Click
±±2 C
)
±±C D
)
±±D E
;
±±E F
}
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ %
BtnBackEnterEmail_Click
µµ ,
(
µµ, -
object
µµ- 3
sender
µµ4 :
,
µµ: ;
RoutedEventArgs
µµ< K
e
µµL M
)
µµM N
{
µµO P
gridEnterEmail
∂∂ 
.
∂∂ 

Visibility
∂∂ %
=
∂∂& '

Visibility
∂∂( 2
.
∂∂2 3
	Collapsed
∂∂3 <
;
∂∂< =
txtEmail
∑∑ 
.
∑∑ 
Clear
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
txtPassword
∏∏ 
.
∏∏ 
Clear
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏   
txtPasswordVisible
ππ 
.
ππ 
Clear
ππ $
(
ππ$ %
)
ππ% &
;
ππ& '
}
∫∫ 	
private
ºº 
void
ºº 
BtnValidate_Click
ºº &
(
ºº& '
object
ºº' -
sender
ºº. 4
,
ºº4 5
RoutedEventArgs
ºº6 E
e
ººF G
)
ººG H
{
ººI J
string
ΩΩ 
enteredCode
ΩΩ 
=
ΩΩ  
$"
ΩΩ! #
{
ΩΩ# $ 
txtValidationCode1
ΩΩ$ 6
.
ΩΩ6 7
Text
ΩΩ7 ;
}
ΩΩ; <
{
ΩΩ< = 
txtValidationCode2
ΩΩ= O
.
ΩΩO P
Text
ΩΩP T
}
ΩΩT U
{
ΩΩU V 
txtValidationCode3
ΩΩV h
.
ΩΩh i
Text
ΩΩi m
}
ΩΩm n
{
ΩΩn o!
txtValidationCode4ΩΩo Å
.ΩΩÅ Ç
TextΩΩÇ Ü
}ΩΩÜ á
{ΩΩá à"
txtValidationCode5ΩΩà ö
.ΩΩö õ
TextΩΩõ ü
}ΩΩü †
{ΩΩ† °"
txtValidationCode6ΩΩ° ≥
.ΩΩ≥ ¥
TextΩΩ¥ ∏
}ΩΩ∏ π
"ΩΩπ ∫
;ΩΩ∫ ª
try
ææ 
{
ææ &
IPasswordRecoveryManager
øø (
passwordRecovery
øø) 9
=
øø: ;
new
øø< ?+
PasswordRecoveryManagerClient
øø@ ]
(
øø] ^
)
øø^ _
;
øø_ `
bool
¿¿ 
isCodeValid
¿¿  
=
¿¿! "
passwordRecovery
¿¿# 3
.
¿¿3 4 
VerifyRecoveryCode
¿¿4 F
(
¿¿F G

_userEmail
¿¿G Q
,
¿¿Q R
enteredCode
¿¿S ^
)
¿¿^ _
;
¿¿_ `
if
¡¡ 
(
¡¡ 
isCodeValid
¡¡ 
)
¡¡  
{
¡¡! "
gridRecovery
¬¬  
.
¬¬  !

Visibility
¬¬! +
=
¬¬, -

Visibility
¬¬. 8
.
¬¬8 9
	Collapsed
¬¬9 B
;
¬¬B C"
gridRecoveryPassword
√√ (
.
√√( )

Visibility
√√) 3
=
√√4 5

Visibility
√√6 @
.
√√@ A
Visible
√√A H
;
√√H I
}
ƒƒ 
else
ƒƒ 
{
ƒƒ 
DialogManager
≈≈ !
.
≈≈! "#
ShowErrorMessageAlert
≈≈" 7
(
≈≈7 8

Properties
≈≈8 B
.
≈≈B C
	Resources
≈≈C L
.
≈≈L M'
dialogInvalidRecoveryCode
≈≈M f
)
≈≈f g
;
≈≈g h
}
∆∆ 
}
«« 
catch
«« 
(
«« 
	Exception
«« 
	exception
«« (
)
««( )
{
««* +
HandleException
»» 
(
»»  
	exception
»»  )
,
»») *
nameof
»»+ 1
(
»»1 2
BtnValidate_Click
»»2 C
)
»»C D
)
»»D E
;
»»E F
}
…… 
}
   	
private
ÃÃ 
void
ÃÃ !
BtnResendCode_Click
ÃÃ (
(
ÃÃ( )
object
ÃÃ) /
sender
ÃÃ0 6
,
ÃÃ6 7
RoutedEventArgs
ÃÃ8 G
e
ÃÃH I
)
ÃÃI J
{
ÃÃK L
if
ÕÕ 
(
ÕÕ 
string
ÕÕ 
.
ÕÕ 
IsNullOrEmpty
ÕÕ $
(
ÕÕ$ %

_userEmail
ÕÕ% /
)
ÕÕ/ 0
)
ÕÕ0 1
{
ÕÕ2 3
DialogManager
ŒŒ 
.
ŒŒ #
ShowErrorMessageAlert
ŒŒ 3
(
ŒŒ3 4

Properties
ŒŒ4 >
.
ŒŒ> ?
	Resources
ŒŒ? H
.
ŒŒH I
dialogNullEmail
ŒŒI X
)
ŒŒX Y
;
ŒŒY Z
return
œœ 
;
œœ 
}
–– 
try
—— 
{
—— 
var
““ $
emailVerificationProxy
““ *
=
““+ ,
new
““- 0"
TripasDeGatoServicio
““1 E
.
““E F+
PasswordRecoveryManagerClient
““F c
(
““c d
)
““d e
;
““e f
int
”” 
result
”” 
=
”” $
emailVerificationProxy
”” 3
.
””3 4
SendRecoveryCode
””4 D
(
””D E

_userEmail
””E O
)
””O P
;
””P Q
if
‘‘ 
(
‘‘ 
result
‘‘ 
==
‘‘ 
	Constants
‘‘ '
.
‘‘' (
SUCCES_OPERATION
‘‘( 8
)
‘‘8 9
{
‘‘: ;
DialogManager
’’ !
.
’’! "%
ShowSuccessMessageAlert
’’" 9
(
’’9 :

Properties
’’: D
.
’’D E
	Resources
’’E N
.
’’N O&
dialogRecoveryCodeResent
’’O g
)
’’g h
;
’’h i
}
÷÷ 
else
÷÷ 
{
÷÷ 
DialogManager
◊◊ !
.
◊◊! "#
ShowErrorMessageAlert
◊◊" 7
(
◊◊7 8

Properties
◊◊8 B
.
◊◊B C
	Resources
◊◊C L
.
◊◊L M.
 dialogErrorResendingRecoveryCode
◊◊M m
)
◊◊m n
;
◊◊n o
}
ÿÿ 
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
ŸŸ* +
HandleException
⁄⁄ 
(
⁄⁄  
	exception
⁄⁄  )
,
⁄⁄) *
nameof
⁄⁄+ 1
(
⁄⁄1 2!
BtnResendCode_Click
⁄⁄2 E
)
⁄⁄E F
)
⁄⁄F G
;
⁄⁄G H
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ #
BtnBackValidate_Click
ﬁﬁ *
(
ﬁﬁ* +
object
ﬁﬁ+ 1
sender
ﬁﬁ2 8
,
ﬁﬁ8 9
RoutedEventArgs
ﬁﬁ: I
e
ﬁﬁJ K
)
ﬁﬁK L
{
ﬁﬁM N
gridRecovery
ﬂﬂ 
.
ﬂﬂ 

Visibility
ﬂﬂ #
=
ﬂﬂ$ %

Visibility
ﬂﬂ& 0
.
ﬂﬂ0 1
	Collapsed
ﬂﬂ1 :
;
ﬂﬂ: ;
txtEmail
‡‡ 
.
‡‡ 
Clear
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
txtPassword
·· 
.
·· 
Clear
·· 
(
·· 
)
·· 
;
··   
txtPasswordVisible
‚‚ 
.
‚‚ 
Clear
‚‚ $
(
‚‚$ %
)
‚‚% &
;
‚‚& '
}
„„ 	
private
ÂÂ 
void
ÂÂ #
BtnSavePassword_Click
ÂÂ *
(
ÂÂ* +
object
ÂÂ+ 1
sender
ÂÂ2 8
,
ÂÂ8 9
RoutedEventArgs
ÂÂ: I
e
ÂÂJ K
)
ÂÂK L
{
ÂÂM N
string
ÊÊ 
newPassword
ÊÊ 
=
ÊÊ  
txtNewPassword
ÊÊ! /
.
ÊÊ/ 0
Password
ÊÊ0 8
.
ÊÊ8 9
Trim
ÊÊ9 =
(
ÊÊ= >
)
ÊÊ> ?
;
ÊÊ? @
string
ÁÁ 
confirmPassword
ÁÁ "
=
ÁÁ# $#
txtNewPasswordConfirm
ÁÁ% :
.
ÁÁ: ;
Password
ÁÁ; C
.
ÁÁC D
Trim
ÁÁD H
(
ÁÁH I
)
ÁÁI J
;
ÁÁJ K
if
ËË 
(
ËË 
newPassword
ËË 
!=
ËË 
confirmPassword
ËË .
)
ËË. /
{
ËË0 1
DialogManager
ÈÈ 
.
ÈÈ #
ShowErrorMessageAlert
ÈÈ 3
(
ÈÈ3 4

Properties
ÈÈ4 >
.
ÈÈ> ?
	Resources
ÈÈ? H
.
ÈÈH I*
dialogMissmatchesCredentials
ÈÈI e
)
ÈÈe f
;
ÈÈf g
return
ÍÍ 
;
ÍÍ 
}
ÎÎ 
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
IsValidPassword
ÏÏ  
(
ÏÏ  !
newPassword
ÏÏ! ,
)
ÏÏ, -
)
ÏÏ- .
{
ÏÏ/ 0
DialogManager
ÌÌ 
.
ÌÌ #
ShowErrorMessageAlert
ÌÌ 3
(
ÌÌ3 4

Properties
ÌÌ4 >
.
ÌÌ> ?
	Resources
ÌÌ? H
.
ÌÌH I#
dialogInvalidPassword
ÌÌI ^
)
ÌÌ^ _
;
ÌÌ_ `
return
ÓÓ 
;
ÓÓ 
}
ÔÔ 
try
 
{
 &
IPasswordRecoveryManager
ÒÒ (
passwordRecovery
ÒÒ) 9
=
ÒÒ: ;
new
ÒÒ< ?+
PasswordRecoveryManagerClient
ÒÒ@ ]
(
ÒÒ] ^
)
ÒÒ^ _
;
ÒÒ_ `
int
ÚÚ 
result
ÚÚ 
=
ÚÚ 
passwordRecovery
ÚÚ -
.
ÚÚ- .
UpdatePassword
ÚÚ. <
(
ÚÚ< =

_userEmail
ÚÚ= G
,
ÚÚG H
Hasher
ÚÚI O
.
ÚÚO P
HashToSHA256
ÚÚP \
(
ÚÚ\ ]
newPassword
ÚÚ] h
)
ÚÚh i
)
ÚÚi j
;
ÚÚj k
if
ÛÛ 
(
ÛÛ 
result
ÛÛ 
==
ÛÛ 
	Constants
ÛÛ '
.
ÛÛ' (
SUCCES_OPERATION
ÛÛ( 8
)
ÛÛ8 9
{
ÛÛ: ;
DialogManager
ÙÙ !
.
ÙÙ! "%
ShowSuccessMessageAlert
ÙÙ" 9
(
ÙÙ9 :

Properties
ÙÙ: D
.
ÙÙD E
	Resources
ÙÙE N
.
ÙÙN O/
!dialogPasswordUpdatedSuccessfully
ÙÙO p
)
ÙÙp q
;
ÙÙq r
txtNewPassword
ıı "
.
ıı" #
Clear
ıı# (
(
ıı( )
)
ıı) *
;
ıı* +#
txtNewPasswordConfirm
ˆˆ )
.
ˆˆ) *
Clear
ˆˆ* /
(
ˆˆ/ 0
)
ˆˆ0 1
;
ˆˆ1 2"
gridRecoveryPassword
˜˜ (
.
˜˜( )

Visibility
˜˜) 3
=
˜˜4 5

Visibility
˜˜6 @
.
˜˜@ A
	Collapsed
˜˜A J
;
˜˜J K
}
¯¯ 
else
¯¯ 
{
¯¯ 
DialogManager
˘˘ !
.
˘˘! "#
ShowErrorMessageAlert
˘˘" 7
(
˘˘7 8

Properties
˘˘8 B
.
˘˘B C
	Resources
˘˘C L
.
˘˘L M)
dialogErrorUpdatingPassowrd
˘˘M h
)
˘˘h i
;
˘˘i j
}
˙˙ 
}
˚˚ 
catch
˚˚ 
(
˚˚ 
	Exception
˚˚ 
	exception
˚˚ (
)
˚˚( )
{
˚˚* +
HandleException
¸¸ 
(
¸¸  
	exception
¸¸  )
,
¸¸) *
nameof
¸¸+ 1
(
¸¸1 2#
BtnSavePassword_Click
¸¸2 G
)
¸¸G H
)
¸¸H I
;
¸¸I J
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ +
TxtValidationCode_TextChanged
ÄÄ 2
(
ÄÄ2 3
object
ÄÄ3 9
sender
ÄÄ: @
,
ÄÄ@ A"
TextChangedEventArgs
ÄÄB V
e
ÄÄW X
)
ÄÄX Y
{
ÄÄZ [
TextBox
ÅÅ 
currentTextBox
ÅÅ "
=
ÅÅ# $
sender
ÅÅ% +
as
ÅÅ, .
TextBox
ÅÅ/ 6
;
ÅÅ6 7
if
ÇÇ 
(
ÇÇ 
currentTextBox
ÇÇ 
.
ÇÇ 
Text
ÇÇ #
.
ÇÇ# $
Length
ÇÇ$ *
==
ÇÇ+ -
$num
ÇÇ. /
)
ÇÇ/ 0
{
ÇÇ1 2
if
ÉÉ 
(
ÉÉ 
currentTextBox
ÉÉ "
==
ÉÉ# % 
txtValidationCode1
ÉÉ& 8
)
ÉÉ8 9 
txtValidationCode2
ÑÑ &
.
ÑÑ& '
Focus
ÑÑ' ,
(
ÑÑ, -
)
ÑÑ- .
;
ÑÑ. /
else
ÖÖ 
if
ÖÖ 
(
ÖÖ 
currentTextBox
ÖÖ '
==
ÖÖ( * 
txtValidationCode2
ÖÖ+ =
)
ÖÖ= > 
txtValidationCode3
ÜÜ &
.
ÜÜ& '
Focus
ÜÜ' ,
(
ÜÜ, -
)
ÜÜ- .
;
ÜÜ. /
else
áá 
if
áá 
(
áá 
currentTextBox
áá '
==
áá( * 
txtValidationCode3
áá+ =
)
áá= > 
txtValidationCode4
àà &
.
àà& '
Focus
àà' ,
(
àà, -
)
àà- .
;
àà. /
else
ââ 
if
ââ 
(
ââ 
currentTextBox
ââ '
==
ââ( * 
txtValidationCode4
ââ+ =
)
ââ= > 
txtValidationCode5
ää &
.
ää& '
Focus
ää' ,
(
ää, -
)
ää- .
;
ää. /
else
ãã 
if
ãã 
(
ãã 
currentTextBox
ãã '
==
ãã( * 
txtValidationCode5
ãã+ =
)
ãã= > 
txtValidationCode6
åå &
.
åå& '
Focus
åå' ,
(
åå, -
)
åå- .
;
åå. /
}
çç 
}
éé 	
private
êê 
static
êê 
bool
êê 
IsValidPassword
êê +
(
êê+ ,
string
êê, 2
password
êê3 ;
)
êê; <
{
êê= >
bool
ëë 
isValid
ëë 
=
ëë 
true
ëë 
;
ëë  
if
íí 
(
íí 
!
íí 
	Validador
íí 
.
íí 
ValidatePassword
íí +
(
íí+ ,
password
íí, 4
)
íí4 5
)
íí5 6
{
íí7 8
isValid
ìì 
=
ìì 
false
ìì 
;
ìì  
}
îî 
return
ïï 
isValid
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò *
BtnToggleNewPassword_Checked
òò 1
(
òò1 2
object
òò2 8
sender
òò9 ?
,
òò? @
RoutedEventArgs
òòA P
e
òòQ R
)
òòR S
{
òòT U#
txtNewPasswordVisible
ôô !
.
ôô! "
Text
ôô" &
=
ôô' (
txtNewPassword
ôô) 7
.
ôô7 8
Password
ôô8 @
;
ôô@ A#
txtNewPasswordVisible
öö !
.
öö! "

Visibility
öö" ,
=
öö- .

Visibility
öö/ 9
.
öö9 :
Visible
öö: A
;
ööA B
txtNewPassword
õõ 
.
õõ 

Visibility
õõ %
=
õõ& '

Visibility
õõ( 2
.
õõ2 3
	Collapsed
õõ3 <
;
õõ< =*
txtNewPasswordConfirmVisible
úú (
.
úú( )
Text
úú) -
=
úú. /#
txtNewPasswordConfirm
úú0 E
.
úúE F
Password
úúF N
;
úúN O*
txtNewPasswordConfirmVisible
ùù (
.
ùù( )

Visibility
ùù) 3
=
ùù4 5

Visibility
ùù6 @
.
ùù@ A
Visible
ùùA H
;
ùùH I#
txtNewPasswordConfirm
ûû !
.
ûû! "

Visibility
ûû" ,
=
ûû- .

Visibility
ûû/ 9
.
ûû9 :
	Collapsed
ûû: C
;
ûûC D
}
üü 	
private
°° 
void
°° ,
BtnToggleNewPassword_Unchecked
°° 3
(
°°3 4
object
°°4 :
sender
°°; A
,
°°A B
RoutedEventArgs
°°C R
e
°°S T
)
°°T U
{
°°V W
txtNewPassword
¢¢ 
.
¢¢ 
Password
¢¢ #
=
¢¢$ %#
txtNewPasswordVisible
¢¢& ;
.
¢¢; <
Text
¢¢< @
;
¢¢@ A
txtNewPassword
££ 
.
££ 

Visibility
££ %
=
££& '

Visibility
££( 2
.
££2 3
Visible
££3 :
;
££: ;#
txtNewPasswordVisible
§§ !
.
§§! "

Visibility
§§" ,
=
§§- .

Visibility
§§/ 9
.
§§9 :
	Collapsed
§§: C
;
§§C D#
txtNewPasswordConfirm
•• !
.
••! "
Password
••" *
=
••+ ,*
txtNewPasswordConfirmVisible
••- I
.
••I J
Text
••J N
;
••N O#
txtNewPasswordConfirm
¶¶ !
.
¶¶! "

Visibility
¶¶" ,
=
¶¶- .

Visibility
¶¶/ 9
.
¶¶9 :
Visible
¶¶: A
;
¶¶A B*
txtNewPasswordConfirmVisible
ßß (
.
ßß( )

Visibility
ßß) 3
=
ßß4 5

Visibility
ßß6 @
.
ßß@ A
	Collapsed
ßßA J
;
ßßJ K
}
®® 	
private
™™ 
void
™™ #
BtnBackRecovery_Click
™™ *
(
™™* +
object
™™+ 1
sender
™™2 8
,
™™8 9
RoutedEventArgs
™™: I
e
™™J K
)
™™K L
{
™™M N"
gridRecoveryPassword
´´  
.
´´  !

Visibility
´´! +
=
´´, -

Visibility
´´. 8
.
´´8 9
	Collapsed
´´9 B
;
´´B C
txtEmail
¨¨ 
.
¨¨ 
Clear
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
txtPassword
≠≠ 
.
≠≠ 
Clear
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠   
txtPasswordVisible
ÆÆ 
.
ÆÆ 
Clear
ÆÆ $
(
ÆÆ$ %
)
ÆÆ% &
;
ÆÆ& '
}
ØØ 	
private
±± 
void
±± '
BtnTogglePassword_Checked
±± .
(
±±. /
object
±±/ 5
sender
±±6 <
,
±±< =
RoutedEventArgs
±±> M
e
±±N O
)
±±O P
{
±±Q R 
txtPasswordVisible
≤≤ 
.
≤≤ 
Text
≤≤ #
=
≤≤$ %
txtPassword
≤≤& 1
.
≤≤1 2
Password
≤≤2 :
;
≤≤: ; 
txtPasswordVisible
≥≥ 
.
≥≥ 

Visibility
≥≥ )
=
≥≥* +

Visibility
≥≥, 6
.
≥≥6 7
Visible
≥≥7 >
;
≥≥> ?
txtPassword
¥¥ 
.
¥¥ 

Visibility
¥¥ "
=
¥¥# $

Visibility
¥¥% /
.
¥¥/ 0
	Collapsed
¥¥0 9
;
¥¥9 :
}
µµ 	
private
∑∑ 
void
∑∑ )
BtnTogglePassword_Unchecked
∑∑ 0
(
∑∑0 1
object
∑∑1 7
sender
∑∑8 >
,
∑∑> ?
RoutedEventArgs
∑∑@ O
e
∑∑P Q
)
∑∑Q R
{
∑∑S T
txtPassword
∏∏ 
.
∏∏ 
Password
∏∏  
=
∏∏! " 
txtPasswordVisible
∏∏# 5
.
∏∏5 6
Text
∏∏6 :
;
∏∏: ; 
txtPasswordVisible
ππ 
.
ππ 

Visibility
ππ )
=
ππ* +

Visibility
ππ, 6
.
ππ6 7
	Collapsed
ππ7 @
;
ππ@ A
txtPassword
∫∫ 
.
∫∫ 

Visibility
∫∫ "
=
∫∫# $

Visibility
∫∫% /
.
∫∫/ 0
Visible
∫∫0 7
;
∫∫7 8
}
ªª 	
private
ΩΩ 
void
ΩΩ *
UpdatePasswordVisibilityIcon
ΩΩ 1
(
ΩΩ1 2
)
ΩΩ2 3
{
ΩΩ4 5
btnTogglePassword
ææ 
.
ææ 

Visibility
ææ (
=
ææ) *
txtPassword
ææ+ 6
.
ææ6 7
Password
ææ7 ?
.
ææ? @
Length
ææ@ F
>
ææG H
$num
ææI J
?
ææK L

Visibility
ææM W
.
ææW X
Visible
ææX _
:
ææ` a

Visibility
ææb l
.
ææl m
	Collapsed
ææm v
;
ææv w
}
øø 	
private
¡¡ 
void
¡¡ &
BtnRecoverPassword_Click
¡¡ -
(
¡¡- .
object
¡¡. 4
sender
¡¡5 ;
,
¡¡; <
RoutedEventArgs
¡¡= L
e
¡¡M N
)
¡¡N O
{
¡¡P Q
gridEnterEmail
¬¬ 
.
¬¬ 

Visibility
¬¬ %
=
¬¬& '

Visibility
¬¬( 2
.
¬¬2 3
Visible
¬¬3 :
;
¬¬: ;
}
√√ 	
}
ƒƒ 
}≈≈ ‰˙
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
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
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
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
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
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
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
.H I'
dialogComunicationExceptionI d
)d e
;e f
} 
else 
{ 
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
(3 4
string4 :
.: ;
Format; A
(A B

PropertiesB L
.L M
	ResourcesM V
.V W!
dialogUnexpectedErrorW l
,l m
	exceptionn w
.w x
Messagex 
)	 Ä
)
Ä Å
;
Å Ç
}   
}!! 	
private## 
void## 
BtnSignIn_Click## $
(##$ %
object##% +
sender##, 2
,##2 3
RoutedEventArgs##4 C
e##D E
)##E F
{##G H
string$$ 
email$$ 
=$$ 
txtEmail$$ #
.$$# $
Text$$$ (
;$$( )
string%% 
username%% 
=%% 
txtName%% %
.%%% &
Text%%& *
;%%* +
string&& 
password&& 
=&& 
txtPassword&& )
.&&) *
Password&&* 2
;&&2 3
if'' 
('' 
!'' 
ValidateFields'' 
(''  
email''  %
,''% &
username''' /
,''/ 0
password''1 9
)''9 :
)'': ;
return''< B
;''B C
try(( 
{(( 
if)) 
()) 
!)) #
VerifyEmailAvailability)) ,
()), -
email))- 2
)))2 3
)))3 4
return))5 ;
;)); <
if** 
(** 
!** &
VerifyUsernameAvailability** /
(**/ 0
username**0 8
)**8 9
)**9 :
return**; A
;**A B 
SendVerificationCode++ $
(++$ %
email++% *
)++* +
;+++ ,
},, 
catch,, 
(,, 
	Exception,, 
	exception,, (
),,( )
{,,* +
HandleException-- 
(--  
	exception--  )
,--) *
nameof--+ 1
(--1 2
BtnSignIn_Click--2 A
)--A B
)--B C
;--C D
}.. 
}// 	
private11 
bool11 #
VerifyEmailAvailability11 ,
(11, -
string11- 3
email114 9
)119 :
{11; <
bool22 
isEmailAvailable22 !
=22" #
true22$ (
;22( )
var33 
	userProxy33 
=33 
new33  
TripasDeGatoServicio33  4
.334 5
UserManagerClient335 F
(33F G
)33G H
;33H I
try44 
{44 
int55 
emailCheckResult55 $
=55% &
	userProxy55' 0
.550 1
IsEmailRegistered551 B
(55B C
email55C H
)55H I
;55I J
if66 
(66 
emailCheckResult66 $
==66% '
	Constants66( 1
.661 2
DATA_MATCHES662 >
)66> ?
{66@ A
DialogManager77 !
.77! "!
ShowErrorMessageAlert77" 7
(777 8

Properties778 B
.77B C
	Resources77C L
.77L M
dialogEmailInUse77M ]
)77] ^
;77^ _
HighlightField88 "
(88" #
txtEmail88# +
)88+ ,
;88, -
isEmailAvailable99 $
=99% &
false99' ,
;99, -
}:: 
else:: 
if:: 
(:: 
emailCheckResult:: +
==::, .
	Constants::/ 8
.::8 9
ERROR_OPERATION::9 H
)::H I
{::J K
DialogManager;; !
.;;! "!
ShowErrorMessageAlert;;" 7
(;;7 8

Properties;;8 B
.;;B C
	Resources;;C L
.;;L M$
dialogErrorCheckingEmail;;M e
);;e f
;;;f g
isEmailAvailable<< $
=<<% &
false<<' ,
;<<, -
}== 
}>> 
catch>> 
(>> 
	Exception>> 
	exception>> (
)>>( )
{>>* +
HandleException?? 
(??  
	exception??  )
,??) *
nameof??+ 1
(??1 2#
VerifyEmailAvailability??2 I
)??I J
)??J K
;??K L
isEmailAvailable@@  
=@@! "
false@@# (
;@@( )
}AA 
returnBB 
isEmailAvailableBB #
;BB# $
}CC 	
privateEE 
boolEE &
VerifyUsernameAvailabilityEE /
(EE/ 0
stringEE0 6
usernameEE7 ?
)EE? @
{EEA B
boolFF 
isUsernameAvailableFF $
=FF% &
trueFF' +
;FF+ ,
varGG 
	userProxyGG 
=GG 
newGG  
TripasDeGatoServicioGG  4
.GG4 5
UserManagerClientGG5 F
(GGF G
)GGG H
;GGH I
tryHH 
{HH 
intII 
usernameCheckResultII '
=II( )
	userProxyII* 3
.II3 4
IsNameRegisteredII4 D
(IID E
usernameIIE M
)IIM N
;IIN O
ifJJ 
(JJ 
usernameCheckResultJJ '
==JJ( *
	ConstantsJJ+ 4
.JJ4 5
DATA_MATCHESJJ5 A
)JJA B
{JJC D
DialogManagerKK !
.KK! "!
ShowErrorMessageAlertKK" 7
(KK7 8

PropertiesKK8 B
.KKB C
	ResourcesKKC L
.KKL M
dialogUserNameInUseKKM `
)KK` a
;KKa b
HighlightFieldLL "
(LL" #
txtNameLL# *
)LL* +
;LL+ ,
isUsernameAvailableMM '
=MM( )
falseMM* /
;MM/ 0
}NN 
elseNN 
ifNN 
(NN 
usernameCheckResultNN .
==NN/ 1
	ConstantsNN2 ;
.NN; <
ERROR_OPERATIONNN< K
)NNK L
{NNM N
DialogManagerOO !
.OO! "!
ShowErrorMessageAlertOO" 7
(OO7 8

PropertiesOO8 B
.OOB C
	ResourcesOOC L
.OOL M'
dialogErrorCheckingUserNameOOM h
)OOh i
;OOi j
isUsernameAvailablePP '
=PP( )
falsePP* /
;PP/ 0
}QQ 
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
(SS1 2&
VerifyUsernameAvailabilitySS2 L
)SSL M
)SSM N
;SSN O
isUsernameAvailableTT #
=TT$ %
falseTT& +
;TT+ ,
}UU 
returnVV 
isUsernameAvailableVV &
;VV& '
}WW 	
privateYY 
voidYY  
SendVerificationCodeYY )
(YY) *
stringYY* 0
emailYY1 6
)YY6 7
{YY8 9
tryZZ 
{ZZ 
var[[ "
emailVerificationProxy[[ *
=[[+ ,
new[[- 0 
TripasDeGatoServicio[[1 E
.[[E F*
EmailVerificationManagerClient[[F d
([[d e
)[[e f
;[[f g
int\\ 
result\\ 
=\\ "
emailVerificationProxy\\ 3
.\\3 4(
SendVerificationCodeRegister\\4 P
(\\P Q
email\\Q V
)\\V W
;\\W X
if]] 
(]] 
result]] 
==]] 
	Constants]] '
.]]' (
SUCCES_OPERATION]]( 8
)]]8 9
{]]: ;
verificationGrid^^ $
.^^$ %

Visibility^^% /
=^^0 1

Visibility^^2 <
.^^< =
Visible^^= D
;^^D E
DialogManager__ !
.__! "#
ShowSuccessMessageAlert__" 9
(__9 :

Properties__: D
.__D E
	Resources__E N
.__N O&
dialogVerificationCodeSent__O i
)__i j
;__j k
}`` 
else`` 
{`` 
DialogManageraa !
.aa! "!
ShowErrorMessageAlertaa" 7
(aa7 8

Propertiesaa8 B
.aaB C
	ResourcesaaC L
.aaL M.
"dialogErrorSendingVerificationCodeaaM o
)aao p
;aap q
}bb 
}cc 
catchcc 
(cc 
	Exceptioncc 
	exceptioncc (
)cc( )
{cc* +
HandleExceptiondd 
(dd  
	exceptiondd  )
,dd) *
nameofdd+ 1
(dd1 2 
SendVerificationCodedd2 F
)ddF G
)ddG H
;ddH I
}ee 
}ff 	
privatehh 
voidhh 
BtnResendCode_Clickhh (
(hh( )
objecthh) /
senderhh0 6
,hh6 7
RoutedEventArgshh8 G
ehhH I
)hhI J
{hhK L
tryii 
{ii 
varjj "
emailVerificationProxyjj *
=jj+ ,
newjj- 0 
TripasDeGatoServiciojj1 E
.jjE F*
EmailVerificationManagerClientjjF d
(jjd e
)jje f
;jjf g
intkk 
resultkk 
=kk "
emailVerificationProxykk 3
.kk3 4(
SendVerificationCodeRegisterkk4 P
(kkP Q
txtEmailkkQ Y
.kkY Z
TextkkZ ^
)kk^ _
;kk_ `
ifll 
(ll 
resultll 
==ll 
	Constantsll '
.ll' (
SUCCES_OPERATIONll( 8
)ll8 9
{ll: ;
DialogManagermm !
.mm! "#
ShowSuccessMessageAlertmm" 9
(mm9 :

Propertiesmm: D
.mmD E
	ResourcesmmE N
.mmN O4
(dialogVerificationCodeResentSuccessfullymmO w
)mmw x
;mmx y
}nn 
elsenn 
{nn 
DialogManageroo !
.oo! "!
ShowErrorMessageAlertoo" 7
(oo7 8

Propertiesoo8 B
.ooB C
	ResourcesooC L
.ooL M0
$dialogErrorResendingVerificationCodeooM q
)ooq r
;oor s
}pp 
}qq 
catchqq 
(qq 
	Exceptionqq 
	exceptionqq (
)qq( )
{qq* +
HandleExceptionrr 
(rr  
	exceptionrr  )
,rr) *
nameofrr+ 1
(rr1 2
BtnResendCode_Clickrr2 E
)rrE F
)rrF G
;rrG H
}ss 
}tt 	
privatevv 
voidvv 
BtnValidate_Clickvv &
(vv& '
objectvv' -
sendervv. 4
,vv4 5
RoutedEventArgsvv6 E
evvF G
)vvG H
{vvI J
tryww 
{ww 
stringxx 
enteredCodexx "
=xx# $
$"xx% '
{xx' (
txtValidationCode1xx( :
.xx: ;
Textxx; ?
}xx? @
{xx@ A
txtValidationCode2xxA S
.xxS T
TextxxT X
}xxX Y
{xxY Z
txtValidationCode3xxZ l
.xxl m
Textxxm q
}xxq r
{xxr s
txtValidationCode4	xxs Ö
.
xxÖ Ü
Text
xxÜ ä
}
xxä ã
{
xxã å 
txtValidationCode5
xxå û
.
xxû ü
Text
xxü £
}
xx£ §
{
xx§ • 
txtValidationCode6
xx• ∑
.
xx∑ ∏
Text
xx∏ º
}
xxº Ω
"
xxΩ æ
;
xxæ ø
varyy "
emailVerificationProxyyy *
=yy+ ,
newyy- 0 
TripasDeGatoServicioyy1 E
.yyE F*
EmailVerificationManagerClientyyF d
(yyd e
)yye f
;yyf g
boolzz 
isCodeValidzz  
=zz! ""
emailVerificationProxyzz# 9
.zz9 :

VerifyCodezz: D
(zzD E
txtEmailzzE M
.zzM N
TextzzN R
,zzR S
enteredCodezzT _
)zz_ `
;zz` a
if{{ 
({{ 
isCodeValid{{ 
){{  
{{{! "
var|| 
	userProxy|| !
=||" #
new||$ ' 
TripasDeGatoServicio||( <
.||< =
UserManagerClient||= N
(||N O
)||O P
;||P Q
var}} 
newUser}} 
=}}  !
new}}" % 
TripasDeGatoServicio}}& :
.}}: ;
	LoginUser}}; D
{}}E F
mail~~ 
=~~ 
txtEmail~~ '
.~~' (
Text~~( ,
,~~, -
password  
=! "
Hasher# )
.) *
HashToSHA256* 6
(6 7
txtPassword7 B
.B C
PasswordC K
)K L
}
ÄÄ 
;
ÄÄ 
var
ÅÅ 

newProfile
ÅÅ "
=
ÅÅ# $
new
ÅÅ% ("
TripasDeGatoServicio
ÅÅ) =
.
ÅÅ= >
Profile
ÅÅ> E
{
ÅÅF G
Username
ÇÇ  
=
ÇÇ! "
txtName
ÇÇ# *
.
ÇÇ* +
Text
ÇÇ+ /
,
ÇÇ/ 0
Score
ÉÉ 
=
ÉÉ 
	Constants
ÉÉ  )
.
ÉÉ) *
INITIAL_SCORE
ÉÉ* 7
,
ÉÉ7 8
PicturePath
ÑÑ #
=
ÑÑ$ %
$str
ÑÑ& J
}
ÖÖ 
;
ÖÖ 
int
ÜÜ 
accountResult
ÜÜ %
=
ÜÜ& '
	userProxy
ÜÜ( 1
.
ÜÜ1 2
CreateAccount
ÜÜ2 ?
(
ÜÜ? @
newUser
ÜÜ@ G
,
ÜÜG H

newProfile
ÜÜI S
)
ÜÜS T
;
ÜÜT U
if
áá 
(
áá 
accountResult
áá %
==
áá& (
	Constants
áá) 2
.
áá2 3
SUCCES_OPERATION
áá3 C
)
ááC D
{
ááE F
DialogManager
àà %
.
àà% &%
ShowSuccessMessageAlert
àà& =
(
àà= >

Properties
àà> H
.
ààH I
	Resources
ààI R
.
ààR S-
dialogAccountCreatedSuccesfully
ààS r
)
ààr s
;
ààs t
verificationGrid
ââ (
.
ââ( )

Visibility
ââ) 3
=
ââ4 5

Visibility
ââ6 @
.
ââ@ A
	Collapsed
ââA J
;
ââJ K
GoToLoginView
ää %
(
ää% &
)
ää& '
;
ää' (
}
ãã 
else
ãã 
{
ãã 
DialogManager
åå %
.
åå% &#
ShowErrorMessageAlert
åå& ;
(
åå; <

Properties
åå< F
.
ååF G
	Resources
ååG P
.
ååP Q(
dialogAccountCreatedErrror
ååQ k
)
ååk l
;
åål m
}
çç 
}
éé 
else
éé 
{
éé 
DialogManager
èè !
.
èè! "#
ShowErrorMessageAlert
èè" 7
(
èè7 8

Properties
èè8 B
.
èèB C
	Resources
èèC L
.
èèL M+
dialogInvalidVerificationCode
èèM j
)
èèj k
;
èèk l
}
êê 
}
ëë 
catch
ëë 
(
ëë 
	Exception
ëë 
	exception
ëë (
)
ëë( )
{
ëë* +
HandleException
íí 
(
íí  
	exception
íí  )
,
íí) *
nameof
íí+ 1
(
íí1 2
BtnValidate_Click
íí2 C
)
ííC D
)
ííD E
;
ííE F
}
ìì 
}
îî 	
private
ññ 
bool
ññ 
ValidateFields
ññ #
(
ññ# $
string
ññ$ *
email
ññ+ 0
,
ññ0 1
string
ññ2 8
username
ññ9 A
,
ññA B
string
ññC I
password
ññJ R
)
ññR S
{
ññT U
bool
óó 
isValid
óó 
=
óó 
true
óó 
;
óó  
if
òò 
(
òò 
!
òò 
	Validador
òò 
.
òò 
ValidateEmail
òò (
(
òò( )
email
òò) .
)
òò. /
)
òò/ 0
{
òò1 2
HighlightField
ôô 
(
ôô 
txtEmail
ôô '
)
ôô' (
;
ôô( )
lbInvalidEmail
öö 
.
öö 

Visibility
öö )
=
öö* +

Visibility
öö, 6
.
öö6 7
Visible
öö7 >
;
öö> ?
isValid
õõ 
=
õõ 
false
õõ 
;
õõ  
}
úú 
else
úú 
{
úú 

ResetField
ùù 
(
ùù 
txtEmail
ùù #
)
ùù# $
;
ùù$ %
lbInvalidEmail
ûû 
.
ûû 

Visibility
ûû )
=
ûû* +

Visibility
ûû, 6
.
ûû6 7
	Collapsed
ûû7 @
;
ûû@ A
}
üü 
if
†† 
(
†† 
!
†† 
	Validador
†† 
.
†† 
ValidateUsername
†† +
(
††+ ,
username
††, 4
)
††4 5
)
††5 6
{
††7 8
HighlightField
°° 
(
°° 
txtName
°° &
)
°°& '
;
°°' (
lbInvalidUser
¢¢ 
.
¢¢ 

Visibility
¢¢ (
=
¢¢) *

Visibility
¢¢+ 5
.
¢¢5 6
Visible
¢¢6 =
;
¢¢= >
isValid
££ 
=
££ 
false
££ 
;
££  
}
§§ 
else
§§ 
{
§§ 

ResetField
•• 
(
•• 
txtName
•• "
)
••" #
;
••# $
lbInvalidUser
¶¶ 
.
¶¶ 

Visibility
¶¶ (
=
¶¶) *

Visibility
¶¶+ 5
.
¶¶5 6
	Collapsed
¶¶6 ?
;
¶¶? @
}
ßß 
if
®® 
(
®® 
!
®® 
	Validador
®® 
.
®® 
ValidatePassword
®® +
(
®®+ ,
password
®®, 4
)
®®4 5
)
®®5 6
{
®®7 8
HighlightField
©© 
(
©© 
txtPassword
©© *
)
©©* +
;
©©+ ,
lbInvalidPassword
™™ !
.
™™! "

Visibility
™™" ,
=
™™- .

Visibility
™™/ 9
.
™™9 :
Visible
™™: A
;
™™A B
isValid
´´ 
=
´´ 
false
´´ 
;
´´  
}
¨¨ 
else
¨¨ 
{
¨¨ 

ResetField
≠≠ 
(
≠≠ 
txtPassword
≠≠ &
)
≠≠& '
;
≠≠' (
lbInvalidPassword
ÆÆ !
.
ÆÆ! "

Visibility
ÆÆ" ,
=
ÆÆ- .

Visibility
ÆÆ/ 9
.
ÆÆ9 :
	Collapsed
ÆÆ: C
;
ÆÆC D
}
ØØ 
return
∞∞ 
isValid
∞∞ 
;
∞∞ 
}
±± 	
private
≥≥ 
static
≥≥ 
void
≥≥ 
HighlightField
≥≥ *
(
≥≥* +
Control
≥≥+ 2
control
≥≥3 :
)
≥≥: ;
{
≥≥< =
control
¥¥ 
.
¥¥ 
BorderBrush
¥¥ 
=
¥¥  !
Brushes
¥¥" )
.
¥¥) *
Red
¥¥* -
;
¥¥- .
}
µµ 	
private
∑∑ 
void
∑∑ )
TxtPassword_PasswordChanged
∑∑ 0
(
∑∑0 1
object
∑∑1 7
sender
∑∑8 >
,
∑∑> ?
RoutedEventArgs
∑∑@ O
e
∑∑P Q
)
∑∑Q R
{
∑∑S T
if
∏∏ 
(
∏∏ 
txtPassword
∏∏ 
.
∏∏ 

Visibility
∏∏ &
==
∏∏' )

Visibility
∏∏* 4
.
∏∏4 5
Visible
∏∏5 <
)
∏∏< =
{
∏∏> ?
ValidatePassword
ππ  
(
ππ  !
txtPassword
ππ! ,
.
ππ, -
Password
ππ- 5
)
ππ5 6
;
ππ6 7
}
∫∫ 
}
ªª 	
private
ΩΩ 
void
ΩΩ 0
"TxtPasswordVisible_PasswordChanged
ΩΩ 7
(
ΩΩ7 8
object
ΩΩ8 >
sender
ΩΩ? E
,
ΩΩE F
RoutedEventArgs
ΩΩG V
e
ΩΩW X
)
ΩΩX Y
{
ΩΩZ [
if
ææ 
(
ææ  
txtPasswordVisible
ææ "
.
ææ" #

Visibility
ææ# -
==
ææ. 0

Visibility
ææ1 ;
.
ææ; <
Visible
ææ< C
)
ææC D
{
ææE F
ValidatePassword
øø  
(
øø  ! 
txtPasswordVisible
øø! 3
.
øø3 4
Text
øø4 8
)
øø8 9
;
øø9 :
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
ValidatePassword
√√ %
(
√√% &
string
√√& ,
password
√√- 5
)
√√5 6
{
√√7 8
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
	Validador
ƒƒ 
.
ƒƒ 
ValidatePassword
ƒƒ +
(
ƒƒ+ ,
password
ƒƒ, 4
)
ƒƒ4 5
)
ƒƒ5 6
{
ƒƒ7 8
HighlightField
≈≈ 
(
≈≈ 
txtPassword
≈≈ *
)
≈≈* +
;
≈≈+ ,
lbInvalidPassword
∆∆ !
.
∆∆! "

Visibility
∆∆" ,
=
∆∆- .

Visibility
∆∆/ 9
.
∆∆9 :
Visible
∆∆: A
;
∆∆A B
}
«« 
else
«« 
{
«« 

ResetField
»» 
(
»» 
txtPassword
»» &
)
»»& '
;
»»' (
lbInvalidPassword
…… !
.
……! "

Visibility
……" ,
=
……- .

Visibility
……/ 9
.
……9 :
	Collapsed
……: C
;
……C D
}
   
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ '
BtnTogglePassword_Checked
ÕÕ .
(
ÕÕ. /
object
ÕÕ/ 5
sender
ÕÕ6 <
,
ÕÕ< =
RoutedEventArgs
ÕÕ> M
e
ÕÕN O
)
ÕÕO P
{
ÕÕQ R 
txtPasswordVisible
ŒŒ 
.
ŒŒ 
Text
ŒŒ #
=
ŒŒ$ %
txtPassword
ŒŒ& 1
.
ŒŒ1 2
Password
ŒŒ2 :
;
ŒŒ: ; 
txtPasswordVisible
œœ 
.
œœ 

Visibility
œœ )
=
œœ* +

Visibility
œœ, 6
.
œœ6 7
Visible
œœ7 >
;
œœ> ?
txtPassword
–– 
.
–– 

Visibility
–– "
=
––# $

Visibility
––% /
.
––/ 0
	Collapsed
––0 9
;
––9 :
}
—— 	
private
”” 
void
”” )
BtnTogglePassword_Unchecked
”” 0
(
””0 1
object
””1 7
sender
””8 >
,
””> ?
RoutedEventArgs
””@ O
e
””P Q
)
””Q R
{
””S T
txtPassword
‘‘ 
.
‘‘ 
Password
‘‘  
=
‘‘! " 
txtPasswordVisible
‘‘# 5
.
‘‘5 6
Text
‘‘6 :
;
‘‘: ; 
txtPasswordVisible
’’ 
.
’’ 

Visibility
’’ )
=
’’* +

Visibility
’’, 6
.
’’6 7
	Collapsed
’’7 @
;
’’@ A
txtPassword
÷÷ 
.
÷÷ 

Visibility
÷÷ "
=
÷÷# $

Visibility
÷÷% /
.
÷÷/ 0
Visible
÷÷0 7
;
÷÷7 8
}
◊◊ 	
private
ŸŸ 
static
ŸŸ 
void
ŸŸ 

ResetField
ŸŸ &
(
ŸŸ& '
Control
ŸŸ' .
control
ŸŸ/ 6
)
ŸŸ6 7
{
ŸŸ8 9
control
⁄⁄ 
.
⁄⁄ 
BorderBrush
⁄⁄ 
=
⁄⁄  !
Brushes
⁄⁄" )
.
⁄⁄) *
White
⁄⁄* /
;
⁄⁄/ 0
}
€€ 	
private
›› 
void
›› !
TxtName_TextChanged
›› (
(
››( )
object
››) /
sender
››0 6
,
››6 7"
TextChangedEventArgs
››8 L
e
››M N
)
››N O
{
››P Q
string
ﬁﬁ 
username
ﬁﬁ 
=
ﬁﬁ 
txtName
ﬁﬁ %
.
ﬁﬁ% &
Text
ﬁﬁ& *
;
ﬁﬁ* +
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
	Validador
ﬂﬂ 
.
ﬂﬂ 
ValidateUsername
ﬂﬂ +
(
ﬂﬂ+ ,
username
ﬂﬂ, 4
)
ﬂﬂ4 5
)
ﬂﬂ5 6
{
ﬂﬂ7 8
HighlightField
‡‡ 
(
‡‡ 
txtName
‡‡ &
)
‡‡& '
;
‡‡' (
lbInvalidUser
·· 
.
·· 

Visibility
·· (
=
··) *

Visibility
··+ 5
.
··5 6
Visible
··6 =
;
··= >
}
‚‚ 
else
‚‚ 
{
‚‚ 

ResetField
„„ 
(
„„ 
txtName
„„ "
)
„„" #
;
„„# $
lbInvalidUser
‰‰ 
.
‰‰ 

Visibility
‰‰ (
=
‰‰) *

Visibility
‰‰+ 5
.
‰‰5 6
	Collapsed
‰‰6 ?
;
‰‰? @
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË "
TxtEmail_TextChanged
ËË )
(
ËË) *
object
ËË* 0
sender
ËË1 7
,
ËË7 8"
TextChangedEventArgs
ËË9 M
e
ËËN O
)
ËËO P
{
ËËQ R
string
ÈÈ 
email
ÈÈ 
=
ÈÈ 
txtEmail
ÈÈ #
.
ÈÈ# $
Text
ÈÈ$ (
;
ÈÈ( )
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
	Validador
ÍÍ 
.
ÍÍ 
ValidateEmail
ÍÍ (
(
ÍÍ( )
email
ÍÍ) .
)
ÍÍ. /
)
ÍÍ/ 0
{
ÍÍ1 2
HighlightField
ÎÎ 
(
ÎÎ 
txtEmail
ÎÎ '
)
ÎÎ' (
;
ÎÎ( )
lbInvalidEmail
ÏÏ 
.
ÏÏ 

Visibility
ÏÏ )
=
ÏÏ* +

Visibility
ÏÏ, 6
.
ÏÏ6 7
Visible
ÏÏ7 >
;
ÏÏ> ?
}
ÌÌ 
else
ÌÌ 
{
ÌÌ 

ResetField
ÓÓ 
(
ÓÓ 
txtEmail
ÓÓ #
)
ÓÓ# $
;
ÓÓ$ %
lbInvalidEmail
ÔÔ 
.
ÔÔ 

Visibility
ÔÔ )
=
ÔÔ* +

Visibility
ÔÔ, 6
.
ÔÔ6 7
	Collapsed
ÔÔ7 @
;
ÔÔ@ A
}
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ 
GoToLoginView
ÛÛ "
(
ÛÛ" #
)
ÛÛ# $
{
ÛÛ% &
if
ÙÙ 
(
ÙÙ 
this
ÙÙ 
.
ÙÙ 
NavigationService
ÙÙ &
.
ÙÙ& '
	CanGoBack
ÙÙ' 0
)
ÙÙ0 1
{
ÙÙ2 3
this
ıı 
.
ıı 
NavigationService
ıı &
.
ıı& '
GoBack
ıı' -
(
ıı- .
)
ıı. /
;
ıı/ 0
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ 
BtnBack_Click
˘˘ "
(
˘˘" #
object
˘˘# )
sender
˘˘* 0
,
˘˘0 1
RoutedEventArgs
˘˘2 A
e
˘˘B C
)
˘˘C D
{
˘˘E F
GoToLoginView
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ #
BtnBackValidate_Click
˝˝ *
(
˝˝* +
object
˝˝+ 1
sender
˝˝2 8
,
˝˝8 9
RoutedEventArgs
˝˝: I
e
˝˝J K
)
˝˝K L
{
˝˝M N
verificationGrid
˛˛ 
.
˛˛ 

Visibility
˛˛ '
=
˛˛( )

Visibility
˛˛* 4
.
˛˛4 5
	Collapsed
˛˛5 >
;
˛˛> ?
txtEmail
ˇˇ 
.
ˇˇ 
Clear
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
txtName
ÄÄ 
.
ÄÄ 
Clear
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
txtPassword
ÅÅ 
.
ÅÅ 
Clear
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ   
txtPasswordVisible
ÇÇ 
.
ÇÇ 
Clear
ÇÇ $
(
ÇÇ$ %
)
ÇÇ% &
;
ÇÇ& '
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ +
TxtValidationCode_TextChanged
ÖÖ 2
(
ÖÖ2 3
object
ÖÖ3 9
sender
ÖÖ: @
,
ÖÖ@ A"
TextChangedEventArgs
ÖÖB V
e
ÖÖW X
)
ÖÖX Y
{
ÖÖZ [
TextBox
ÜÜ 
currentTextBox
ÜÜ "
=
ÜÜ# $
sender
ÜÜ% +
as
ÜÜ, .
TextBox
ÜÜ/ 6
;
ÜÜ6 7
if
áá 
(
áá 
currentTextBox
áá 
.
áá 
Text
áá #
.
áá# $
Length
áá$ *
==
áá+ -
$num
áá. /
)
áá/ 0
{
áá1 2
if
àà 
(
àà 
currentTextBox
àà "
==
àà# % 
txtValidationCode1
àà& 8
)
àà8 9 
txtValidationCode2
ââ &
.
ââ& '
Focus
ââ' ,
(
ââ, -
)
ââ- .
;
ââ. /
else
ää 
if
ää 
(
ää 
currentTextBox
ää '
==
ää( * 
txtValidationCode2
ää+ =
)
ää= > 
txtValidationCode3
ãã &
.
ãã& '
Focus
ãã' ,
(
ãã, -
)
ãã- .
;
ãã. /
else
åå 
if
åå 
(
åå 
currentTextBox
åå '
==
åå( * 
txtValidationCode3
åå+ =
)
åå= > 
txtValidationCode4
çç &
.
çç& '
Focus
çç' ,
(
çç, -
)
çç- .
;
çç. /
else
éé 
if
éé 
(
éé 
currentTextBox
éé '
==
éé( * 
txtValidationCode4
éé+ =
)
éé= > 
txtValidationCode5
èè &
.
èè& '
Focus
èè' ,
(
èè, -
)
èè- .
;
èè. /
else
êê 
if
êê 
(
êê 
currentTextBox
êê '
==
êê( * 
txtValidationCode5
êê+ =
)
êê= > 
txtValidationCode6
ëë &
.
ëë& '
Focus
ëë' ,
(
ëë, -
)
ëë- .
;
ëë. /
}
íí 
}
ìì 	
}
îî 
}ïï Ñˆ
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
private 
bool 
_elementsVisible %
=& '
false( -
;- .
public 
MenuView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
_userManager 
= 
new 
UserManagerClient 0
(0 1
)1 2
;2 3
_friendsManager 
= 
new ! 
FriendsManagerClient" 6
(6 7
)7 8
;8 9
_statusManager 
= 
new  
StatusManagerClient! 4
(4 5
)5 6
;6 7
LoadUserProfile 
( 
) 
; 
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if   
(   
	exception   
is   %
EndpointNotFoundException   6
)  6 7
{  8 9
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
(""3 4

Properties""4 >
.""> ?
	Resources""? H
.""H I#
dialogEndPointException""I `
)""` a
;""a b
}## 
else## 
if## 
(## 
	exception##  
is##! #
TimeoutException##$ 4
)##4 5
{##6 7
logger$$ 
.$$ 
LogError$$ 
($$  

methodName$$  *
,$$* +
	exception$$, 5
)$$5 6
;$$6 7
DialogManager%% 
.%% !
ShowErrorMessageAlert%% 3
(%%3 4

Properties%%4 >
.%%> ?
	Resources%%? H
.%%H I"
dialogTimeOutException%%I _
)%%_ `
;%%` a
}&& 
else&& 
if&& 
(&& 
	exception&&  
is&&! #"
CommunicationException&&$ :
)&&: ;
{&&< =
logger'' 
.'' 
LogError'' 
(''  

methodName''  *
,''* +
	exception'', 5
)''5 6
;''6 7
DialogManager(( 
.(( !
ShowErrorMessageAlert(( 3
(((3 4

Properties((4 >
.((> ?
	Resources((? H
.((H I'
dialogComunicationException((I d
)((d e
;((e f
})) 
else)) 
{)) 
logger** 
.** 
LogError** 
(**  

methodName**  *
,*** +
	exception**, 5
)**5 6
;**6 7
DialogManager++ 
.++ !
ShowErrorMessageAlert++ 3
(++3 4
string++4 :
.++: ;
Format++; A
(++A B

Properties++B L
.++L M
	Resources++M V
.++V W!
dialogUnexpectedError++W l
,++l m
	exception++n w
.++w x
Message++x 
)	++ Ä
)
++Ä Å
;
++Å Ç
}-- 
}.. 	
private00 
void00 
LoadUserProfile00 $
(00$ %
)00% &
{00' (
if11 
(11 
!11 
string11 
.11 
IsNullOrEmpty11 %
(11% & 
UserProfileSingleton11& :
.11: ;
UserName11; C
)11C D
)11D E
{11F G

lbUserName22 
.22 
Content22 "
=22# $ 
UserProfileSingleton22% 9
.229 :
UserName22: B
;22B C
}33 
else33 
{33 

lbUserName44 
.44 
Content44 "
=44# $

Properties44% /
.44/ 0
	Resources440 9
.449 :
lbUnknownUser44: G
;44G H
}55 
}66 	
private88 
void88 
BtnSignOut_Click88 %
(88% &
object88& ,
sender88- 3
,883 4
RoutedEventArgs885 D
e88E F
)88F G
{88H I
SignOut99 
(99 
)99 
;99 
NavigateToLoginView:: 
(::  
)::  !
;::! "
};; 	
private== 
void== 
SignOut== 
(== 
)== 
{==  
int>> 
playerId>> 
=>>  
UserProfileSingleton>> /
.>>/ 0
	IdProfile>>0 9
;>>9 :"
SetPlayerOfflineStatus?? "
(??" #
playerId??# +
)??+ ,
;??, - 
UserProfileSingleton@@  
.@@  !
ResetInstance@@! .
(@@. /
)@@/ 0
;@@0 1
}AA 	
privateCC 
voidCC "
SetPlayerOfflineStatusCC +
(CC+ ,
intCC, /
playerIdCC0 8
)CC8 9
{CC: ;
tryDD 
{DD 
IStatusManagerEE 
statusManagerEE ,
=EE- .
newEE/ 2
StatusManagerClientEE3 F
(EEF G
)EEG H
;EEH I
statusManagerFF 
.FF 
SetPlayerStatusFF -
(FF- .
playerIdFF. 6
,FF6 7!
GameEnumsPlayerStatusFF8 M
.FFM N
OfflineFFN U
)FFU V
;FFV W
}GG 
catchGG 
(GG 
	ExceptionGG 
	exceptionGG (
)GG( )
{GG* +
HandleExceptionHH 
(HH  
	exceptionHH  )
,HH) *
nameofHH+ 1
(HH1 2"
SetPlayerOfflineStatusHH2 H
)HHH I
)HHI J
;HHJ K
}II 
}JJ 	
privateLL 
voidLL 
NavigateToLoginViewLL (
(LL( )
)LL) *
{LL+ ,
	LoginViewMM 
	loginViewMM 
=MM  !
newMM" %
	LoginViewMM& /
(MM/ 0
)MM0 1
;MM1 2
thisNN 
.NN 
NavigationServiceNN "
.NN" #
NavigateNN# +
(NN+ ,
	loginViewNN, 5
)NN5 6
;NN6 7
}OO 	
privateQQ 
asyncQQ 
voidQQ 
BtnFriends_ClickQQ +
(QQ+ ,
objectQQ, 2
senderQQ3 9
,QQ9 :
RoutedEventArgsQQ; J
eQQK L
)QQL M
{QQN O
tryRR 
{RR 
_elementsVisibleSS  
=SS! "
!SS# $
_elementsVisibleSS$ 4
;SS4 5
ifTT 
(TT 
_elementsVisibleTT $
)TT$ %
{TT& '

lstFriendsUU 
.UU 

VisibilityUU )
=UU* +

VisibilityUU, 6
.UU6 7
VisibleUU7 >
;UU> ?
btnAddFriendVV  
.VV  !

VisibilityVV! +
=VV, -

VisibilityVV. 8
.VV8 9
VisibleVV9 @
;VV@ A
btnRemoveFriendWW #
.WW# $

VisibilityWW$ .
=WW/ 0

VisibilityWW1 ;
.WW; <
VisibleWW< C
;WWC D
awaitXX  
LoadFriendsListAsyncXX .
(XX. /
)XX/ 0
;XX0 1

lstFriendsYY 
.YY 
	IsEnabledYY (
=YY) *
trueYY+ /
;YY/ 0
btnAddFriendZZ  
.ZZ  !
	IsEnabledZZ! *
=ZZ+ ,
trueZZ- 1
;ZZ1 2
btnRemoveFriend[[ #
.[[# $
	IsEnabled[[$ -
=[[. /
true[[0 4
;[[4 5

btnFriends\\ 
.\\ 

Background\\ )
=\\* +
new\\, /
SolidColorBrush\\0 ?
(\\? @
Color\\@ E
.\\E F
FromArgb\\F N
(\\N O
$num\\O Q
,\\Q R
$num\\S V
,\\V W
$num\\X [
,\\[ \
$num\\] `
)\\` a
)\\a b
;\\b c
}]] 
else]] 
{]] 

lstFriends^^ 
.^^ 

Visibility^^ )
=^^* +

Visibility^^, 6
.^^6 7
	Collapsed^^7 @
;^^@ A
btnAddFriend__  
.__  !

Visibility__! +
=__, -

Visibility__. 8
.__8 9
	Collapsed__9 B
;__B C
btnRemoveFriend`` #
.``# $

Visibility``$ .
=``/ 0

Visibility``1 ;
.``; <
	Collapsed``< E
;``E F
txtFriendNameaa !
.aa! "

Visibilityaa" ,
=aa- .

Visibilityaa/ 9
.aa9 :
	Collapsedaa: C
;aaC D
btnAddbb 
.bb 

Visibilitybb %
=bb& '

Visibilitybb( 2
.bb2 3
	Collapsedbb3 <
;bb< =

lstFriendscc 
.cc 
	IsEnabledcc (
=cc) *
falsecc+ 0
;cc0 1
btnAddFrienddd  
.dd  !
	IsEnableddd! *
=dd+ ,
falsedd- 2
;dd2 3
btnRemoveFriendee #
.ee# $
	IsEnabledee$ -
=ee. /
falseee0 5
;ee5 6
txtFriendNameff !
.ff! "
	IsEnabledff" +
=ff, -
falseff. 3
;ff3 4
btnAddgg 
.gg 
	IsEnabledgg $
=gg% &
falsegg' ,
;gg, -

btnFriendshh 
.hh 

Backgroundhh )
=hh* +
newhh, /
SolidColorBrushhh0 ?
(hh? @
Colorhh@ E
.hhE F
FromArgbhhF N
(hhN O
$numhhO Q
,hhQ R
$numhhS V
,hhV W
$numhhX [
,hh[ \
$numhh] `
)hh` a
)hha b
;hhb c
btnAddFriendii  
.ii  !

Backgroundii! +
=ii, -
newii. 1
SolidColorBrushii2 A
(iiA B
ColoriiB G
.iiG H
FromArgbiiH P
(iiP Q
$numiiQ T
,iiT U
$numiiV X
,iiX Y
$numiiZ \
,ii\ ]
$numii^ `
)ii` a
)iia b
;iib c
}jj 
}kk 
catchkk 
(kk 
	Exceptionkk 
	exceptionkk (
)kk( )
{kk* +
HandleExceptionll 
(ll  
	exceptionll  )
,ll) *
nameofll+ 1
(ll1 2
BtnFriends_Clickll2 B
)llB C
)llC D
;llD E
}mm 
}nn 	
privateqq 
voidqq 
BtnAddFriend_Clickqq '
(qq' (
objectqq( .
senderqq/ 5
,qq5 6
RoutedEventArgsqq7 F
eqqG H
)qqH I
{qqJ K
_elementsVisiblerr 
=rr 
!rr  
_elementsVisiblerr  0
;rr0 1
ifss 
(ss 
_elementsVisibless  
)ss  !
{ss" #
txtFriendNamett 
.tt 

Visibilitytt (
=tt) *

Visibilitytt+ 5
.tt5 6
Visiblett6 =
;tt= >
btnAdduu 
.uu 

Visibilityuu !
=uu" #

Visibilityuu$ .
.uu. /
Visibleuu/ 6
;uu6 7
txtFriendNamevv 
.vv 
	IsEnabledvv '
=vv( )
truevv* .
;vv. /
btnAddww 
.ww 
	IsEnabledww  
=ww! "
trueww# '
;ww' (
btnAddFriendxx 
.xx 

Backgroundxx '
=xx( )
newxx* -
SolidColorBrushxx. =
(xx= >
Colorxx> C
.xxC D
FromArgbxxD L
(xxL M
$numxxM O
,xxO P
$numxxQ S
,xxS T
$numxxU W
,xxW X
$numxxY [
)xx[ \
)xx\ ]
;xx] ^
}yy 
elseyy 
{yy 
txtFriendNamezz 
.zz 

Visibilityzz (
=zz) *

Visibilityzz+ 5
.zz5 6
	Collapsedzz6 ?
;zz? @
btnAdd{{ 
.{{ 

Visibility{{ !
={{" #

Visibility{{$ .
.{{. /
	Collapsed{{/ 8
;{{8 9
txtFriendName|| 
.|| 
	IsEnabled|| '
=||( )
false||* /
;||/ 0
btnAdd}} 
.}} 
	IsEnabled}}  
=}}! "
false}}# (
;}}( )
btnAddFriend~~ 
.~~ 

Background~~ '
=~~( )
new~~* -
SolidColorBrush~~. =
(~~= >
Color~~> C
.~~C D
FromArgb~~D L
(~~L M
$num~~M P
,~~P Q
$num~~R T
,~~T U
$num~~V X
,~~X Y
$num~~Z \
)~~\ ]
)~~] ^
;~~^ _
} 
}
ÄÄ 	
private
ÇÇ 
async
ÇÇ 
void
ÇÇ 
BtnAdd_Click
ÇÇ '
(
ÇÇ' (
object
ÇÇ( .
sender
ÇÇ/ 5
,
ÇÇ5 6
RoutedEventArgs
ÇÇ7 F
e
ÇÇG H
)
ÇÇH I
{
ÇÇJ K
string
ÉÉ 

friendName
ÉÉ 
=
ÉÉ 
txtFriendName
ÉÉ  -
.
ÉÉ- .
Text
ÉÉ. 2
.
ÉÉ2 3
Trim
ÉÉ3 7
(
ÉÉ7 8
)
ÉÉ8 9
;
ÉÉ9 :
try
ÑÑ 
{
ÑÑ 
if
ÖÖ 
(
ÖÖ  
ValidateFriendName
ÖÖ &
(
ÖÖ& '

friendName
ÖÖ' 1
)
ÖÖ1 2
)
ÖÖ2 3
{
ÖÖ4 5
await
ÜÜ 
	AddFriend
ÜÜ #
(
ÜÜ# $

friendName
ÜÜ$ .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 
}
àà 
catch
àà 
(
àà 
	Exception
àà 
	exception
àà (
)
àà( )
{
àà* +
HandleException
ââ 
(
ââ  
	exception
ââ  )
,
ââ) *
nameof
ââ+ 1
(
ââ1 2
BtnAdd_Click
ââ2 >
)
ââ> ?
)
ââ? @
;
ââ@ A
}
ää 
finally
ää 
{
ää 
txtFriendName
ãã 
.
ãã 
Clear
ãã #
(
ãã# $
)
ãã$ %
;
ãã% &
}
åå 
}
çç 	
private
èè 
static
èè 
bool
èè  
ValidateFriendName
èè .
(
èè. /
string
èè/ 5

friendName
èè6 @
)
èè@ A
{
èèB C
if
êê 
(
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê $
(
êê$ %

friendName
êê% /
)
êê/ 0
)
êê0 1
{
êê2 3
DialogManager
ëë 
.
ëë #
ShowErrorMessageAlert
ëë 3
(
ëë3 4

Properties
ëë4 >
.
ëë> ?
	Resources
ëë? H
.
ëëH I
dialogInvalidName
ëëI Z
)
ëëZ [
;
ëë[ \
return
íí 
false
íí 
;
íí 
}
ìì 
return
îî 
true
îî 
;
îî 
}
ïï 	
private
óó 
async
óó 
Task
óó 
	AddFriend
óó $
(
óó$ %
string
óó% +

friendName
óó, 6
)
óó6 7
{
óó8 9
try
òò 
{
òò 
int
ôô 
friendProfileId
ôô #
=
ôô$ %
await
ôô& +
_userManager
ôô, 8
.
ôô8 9
GetProfileIdAsync
ôô9 J
(
ôôJ K

friendName
ôôK U
)
ôôU V
;
ôôV W
if
öö 
(
öö 
friendProfileId
öö #
==
öö$ &"
UserProfileSingleton
öö' ;
.
öö; <
	IdProfile
öö< E
)
ööE F
{
ööG H
DialogManager
õõ !
.
õõ! "#
ShowErrorMessageAlert
õõ" 7
(
õõ7 8

Properties
õõ8 B
.
õõB C
	Resources
õõC L
.
õõL M)
dialogCannotAddSelfAsFriend
õõM h
)
õõh i
;
õõi j
}
úú 
else
úú 
if
úú 
(
úú 
friendProfileId
úú *
>
úú+ ,
$num
úú- .
)
úú. /
{
úú0 1
await
ùù #
ExecuteFriendAddition
ùù /
(
ùù/ 0
friendProfileId
ùù0 ?
,
ùù? @

friendName
ùùA K
)
ùùK L
;
ùùL M
}
ûû 
else
ûû 
{
ûû 
DialogManager
üü !
.
üü! "#
ShowErrorMessageAlert
üü" 7
(
üü7 8

Properties
üü8 B
.
üüB C
	Resources
üüC L
.
üüL M#
dialogProfileNotFound
üüM b
)
üüb c
;
üüc d
}
†† 
}
°° 
catch
°° 
(
°° 
	Exception
°° 
	exception
°° (
)
°°( )
{
°°* +
HandleException
¢¢ 
(
¢¢  
	exception
¢¢  )
,
¢¢) *
nameof
¢¢+ 1
(
¢¢1 2
	AddFriend
¢¢2 ;
)
¢¢; <
)
¢¢< =
;
¢¢= >
}
££ 
}
§§ 	
private
¶¶ 
async
¶¶ 
Task
¶¶ #
ExecuteFriendAddition
¶¶ 0
(
¶¶0 1
int
¶¶1 4
friendProfileId
¶¶5 D
,
¶¶D E
string
¶¶F L

friendName
¶¶M W
)
¶¶W X
{
¶¶Y Z
try
ßß 
{
ßß 
int
®® 
userProfileId
®® !
=
®®" #"
UserProfileSingleton
®®$ 8
.
®®8 9
	IdProfile
®®9 B
;
®®B C
int
©© 
result
©© 
=
©© 
await
©© "
_friendsManager
©©# 2
.
©©2 3
AddFriendAsync
©©3 A
(
©©A B
userProfileId
©©B O
,
©©O P
friendProfileId
©©Q `
)
©©` a
;
©©a b
if
™™ 
(
™™ 
result
™™ 
==
™™ 
	Constants
™™ '
.
™™' (
SUCCES_OPERATION
™™( 8
)
™™8 9
{
™™: ;
DialogManager
´´ !
.
´´! "%
ShowSuccessMessageAlert
´´" 9
(
´´9 :
string
´´: @
.
´´@ A
Format
´´A G
(
´´G H

Properties
´´H R
.
´´R S
	Resources
´´S \
.
´´\ ])
dialogAddFriendSuccessfully
´´] x
,
´´x y

friendName´´z Ñ
)´´Ñ Ö
)´´Ö Ü
;´´Ü á
await
¨¨ "
LoadFriendsListAsync
¨¨ .
(
¨¨. /
)
¨¨/ 0
;
¨¨0 1
}
≠≠ 
else
≠≠ 
{
≠≠ 
DialogManager
ÆÆ !
.
ÆÆ! "#
ShowErrorMessageAlert
ÆÆ" 7
(
ÆÆ7 8

Properties
ÆÆ8 B
.
ÆÆB C
	Resources
ÆÆC L
.
ÆÆL M%
dialogErrorAddingFriend
ÆÆM d
)
ÆÆd e
;
ÆÆe f
}
ØØ 
}
∞∞ 
catch
∞∞ 
(
∞∞ 
	Exception
∞∞ 
	exception
∞∞ (
)
∞∞( )
{
∞∞* +
HandleException
±± 
(
±±  
	exception
±±  )
,
±±) *
nameof
±±+ 1
(
±±1 2#
ExecuteFriendAddition
±±2 G
)
±±G H
)
±±H I
;
±±I J
}
≤≤ 
}
≥≥ 	
private
µµ 
async
µµ 
Task
µµ "
LoadFriendsListAsync
µµ /
(
µµ/ 0
)
µµ0 1
{
µµ2 3
try
∂∂ 
{
∂∂ 
int
∑∑ 
userProfileId
∑∑ !
=
∑∑" #"
UserProfileSingleton
∑∑$ 8
.
∑∑8 9
	IdProfile
∑∑9 B
;
∑∑B C
var
∏∏ 
friendsList
∏∏ 
=
∏∏  !
await
∏∏" '
_friendsManager
∏∏( 7
.
∏∏7 8
GetFriendsAsync
∏∏8 G
(
∏∏G H
userProfileId
∏∏H U
)
∏∏U V
;
∏∏V W
var
ππ 
friendsWithStatus
ππ %
=
ππ& '
new
ππ( +
List
ππ, 0
<
ππ0 1
string
ππ1 7
>
ππ7 8
(
ππ8 9
)
ππ9 :
;
ππ: ;
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
friend
∫∫ #
in
∫∫$ &
friendsList
∫∫' 2
)
∫∫2 3
{
∫∫4 5
var
ªª 
status
ªª 
=
ªª  
await
ªª! &
_statusManager
ªª' 5
.
ªª5 6"
GetPlayerStatusAsync
ªª6 J
(
ªªJ K
friend
ªªK Q
.
ªªQ R
	IdProfile
ªªR [
)
ªª[ \
;
ªª\ ]
friendsWithStatus
ºº %
.
ºº% &
Add
ºº& )
(
ºº) *
$"
ºº* ,
{
ºº, -
friend
ºº- 3
.
ºº3 4
Username
ºº4 <
}
ºº< =
$str
ºº= @
{
ºº@ A
status
ººA G
}
ººG H
"
ººH I
)
ººI J
;
ººJ K
}
ΩΩ 

lstFriends
ææ 
.
ææ 
ItemsSource
ææ &
=
ææ' (
friendsWithStatus
ææ) :
;
ææ: ;
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
øø* +
HandleException
¿¿ 
(
¿¿  
	exception
¿¿  )
,
¿¿) *
nameof
¿¿+ 1
(
¿¿1 2"
LoadFriendsListAsync
¿¿2 F
)
¿¿F G
)
¿¿G H
;
¿¿H I
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
async
ƒƒ 
void
ƒƒ #
BtnRemoveFriend_Click
ƒƒ 0
(
ƒƒ0 1
object
ƒƒ1 7
sender
ƒƒ8 >
,
ƒƒ> ?
RoutedEventArgs
ƒƒ@ O
e
ƒƒP Q
)
ƒƒQ R
{
ƒƒS T
if
≈≈ 
(
≈≈ 

lstFriends
≈≈ 
.
≈≈ 
SelectedItem
≈≈ '
!=
≈≈( *
null
≈≈+ /
)
≈≈/ 0
{
≈≈1 2
string
∆∆  
selectedFriendName
∆∆ )
=
∆∆* +

lstFriends
∆∆, 6
.
∆∆6 7
SelectedItem
∆∆7 C
.
∆∆C D
ToString
∆∆D L
(
∆∆L M
)
∆∆M N
;
∆∆N O
string
«« 

friendName
«« !
=
««" # 
selectedFriendName
««$ 6
.
««6 7
Split
««7 <
(
««< =
$char
««= @
)
««@ A
[
««A B
$num
««B C
]
««C D
.
««D E
Trim
««E I
(
««I J
)
««J K
;
««K L
try
»» 
{
»» 
int
…… 
friendProfileId
…… '
=
……( )
await
……* /
_userManager
……0 <
.
……< =
GetProfileIdAsync
……= N
(
……N O

friendName
……O Y
)
……Y Z
;
……Z [
if
   
(
   
friendProfileId
   '
>
  ( )
$num
  * +
)
  + ,
{
  - .
int
ÀÀ 
userProfileId
ÀÀ )
=
ÀÀ* +"
UserProfileSingleton
ÀÀ, @
.
ÀÀ@ A
	IdProfile
ÀÀA J
;
ÀÀJ K
int
ÃÃ 
result
ÃÃ "
=
ÃÃ# $
await
ÃÃ% *
_friendsManager
ÃÃ+ :
.
ÃÃ: ;
DeleteFriendAsync
ÃÃ; L
(
ÃÃL M
userProfileId
ÃÃM Z
,
ÃÃZ [
friendProfileId
ÃÃ\ k
)
ÃÃk l
;
ÃÃl m
if
ÕÕ 
(
ÕÕ 
result
ÕÕ "
==
ÕÕ# %
	Constants
ÕÕ& /
.
ÕÕ/ 0
SUCCES_OPERATION
ÕÕ0 @
)
ÕÕ@ A
{
ÕÕB C
DialogManager
ŒŒ )
.
ŒŒ) *%
ShowSuccessMessageAlert
ŒŒ* A
(
ŒŒA B
string
ŒŒB H
.
ŒŒH I
Format
ŒŒI O
(
ŒŒO P

Properties
ŒŒP Z
.
ŒŒZ [
	Resources
ŒŒ[ d
.
ŒŒd e%
dialogFriendshipDeleted
ŒŒe |
,
ŒŒ| }

friendNameŒŒ~ à
)ŒŒà â
)ŒŒâ ä
;ŒŒä ã
await
œœ !"
LoadFriendsListAsync
œœ" 6
(
œœ6 7
)
œœ7 8
;
œœ8 9
}
–– 
else
–– 
{
––  
DialogManager
—— )
.
——) *#
ShowErrorMessageAlert
——* ?
(
——? @

Properties
——@ J
.
——J K
	Resources
——K T
.
——T U+
dialogErrorDeletingFriendship
——U r
)
——r s
;
——s t
}
““ 
}
”” 
else
”” 
{
”” 
DialogManager
‘‘ %
.
‘‘% &#
ShowErrorMessageAlert
‘‘& ;
(
‘‘; <

Properties
‘‘< F
.
‘‘F G
	Resources
‘‘G P
.
‘‘P Q'
dialogNotRetrievedProfile
‘‘Q j
)
‘‘j k
;
‘‘k l
}
’’ 
}
÷÷ 
catch
÷÷ 
(
÷÷ 
	Exception
÷÷ "
	exception
÷÷# ,
)
÷÷, -
{
÷÷. /
HandleException
◊◊ #
(
◊◊# $
	exception
◊◊$ -
,
◊◊- .
nameof
◊◊/ 5
(
◊◊5 6#
BtnRemoveFriend_Click
◊◊6 K
)
◊◊K L
)
◊◊L M
;
◊◊M N
}
ÿÿ 
}
ŸŸ 
else
ŸŸ 
{
ŸŸ 
DialogManager
⁄⁄ 
.
⁄⁄ %
ShowWarningMessageAlert
⁄⁄ 5
(
⁄⁄5 6

Properties
⁄⁄6 @
.
⁄⁄@ A
	Resources
⁄⁄A J
.
⁄⁄J K(
dialogSelectFriendToDelete
⁄⁄K e
)
⁄⁄e f
;
⁄⁄f g
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ  
BtnStartGame_Click
ﬁﬁ '
(
ﬁﬁ' (
object
ﬁﬁ( .
sender
ﬁﬁ/ 5
,
ﬁﬁ5 6
RoutedEventArgs
ﬁﬁ7 F
e
ﬁﬁG H
)
ﬁﬁH I
{
ﬁﬁJ K!
GoToCreateLobbyView
ﬂﬂ 
(
ﬂﬂ  
)
ﬂﬂ  !
;
ﬂﬂ! "
}
‡‡ 	
private
‚‚ 
void
‚‚ 
BtnProfile_Click
‚‚ %
(
‚‚% &
object
‚‚& ,
sender
‚‚- 3
,
‚‚3 4
RoutedEventArgs
‚‚5 D
e
‚‚E F
)
‚‚F G
{
‚‚H I
GoToPerfilView
„„ 
(
„„ 
)
„„ 
;
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ !
BtnLaderboard_Click
ÊÊ (
(
ÊÊ( )
object
ÊÊ) /
sender
ÊÊ0 6
,
ÊÊ6 7
RoutedEventArgs
ÊÊ8 G
e
ÊÊH I
)
ÊÊI J
{
ÊÊK L 
GoToLaderboardView
ÁÁ 
(
ÁÁ 
)
ÁÁ  
;
ÁÁ  !
}
ËË 	
private
ÍÍ 
void
ÍÍ 
BtnJoinGame_Click
ÍÍ &
(
ÍÍ& '
object
ÍÍ' -
sender
ÍÍ. 4
,
ÍÍ4 5
RoutedEventArgs
ÍÍ6 E
e
ÍÍF G
)
ÍÍG H
{
ÍÍI J!
GoToSelectLobbyView
ÎÎ 
(
ÎÎ  
)
ÎÎ  !
;
ÎÎ! "
}
ÏÏ 	
private
ÓÓ 
void
ÓÓ !
GoToCreateLobbyView
ÓÓ (
(
ÓÓ( )
)
ÓÓ) *
{
ÓÓ+ ,
CreateLobbyView
ÔÔ 
lobbyConfig
ÔÔ '
=
ÔÔ( )
new
ÔÔ* -
CreateLobbyView
ÔÔ. =
(
ÔÔ= >
)
ÔÔ> ?
;
ÔÔ? @
if
 
(
 
this
 
.
 
NavigationService
 &
!=
' )
null
* .
)
. /
{
0 1
this
ÒÒ 
.
ÒÒ 
NavigationService
ÒÒ &
.
ÒÒ& '
Navigate
ÒÒ' /
(
ÒÒ/ 0
lobbyConfig
ÒÒ0 ;
)
ÒÒ; <
;
ÒÒ< =
}
ÚÚ 
else
ÚÚ 
{
ÚÚ 
DialogManager
ÛÛ 
.
ÛÛ #
ShowErrorMessageAlert
ÛÛ 3
(
ÛÛ3 4

Properties
ÛÛ4 >
.
ÛÛ> ?
	Resources
ÛÛ? H
.
ÛÛH I#
dialogNavigationError
ÛÛI ^
)
ÛÛ^ _
;
ÛÛ_ `
}
ÙÙ 
}
ıı 	
private
˜˜ 
void
˜˜ 
GoToPerfilView
˜˜ #
(
˜˜# $
)
˜˜$ %
{
˜˜& '
ProfileView
¯¯ 
profileView
¯¯ #
=
¯¯$ %
new
¯¯& )
ProfileView
¯¯* 5
(
¯¯5 6
)
¯¯6 7
;
¯¯7 8
if
˘˘ 
(
˘˘ 
this
˘˘ 
.
˘˘ 
NavigationService
˘˘ &
!=
˘˘' )
null
˘˘* .
)
˘˘. /
{
˘˘0 1
this
˙˙ 
.
˙˙ 
NavigationService
˙˙ &
.
˙˙& '
Navigate
˙˙' /
(
˙˙/ 0
profileView
˙˙0 ;
)
˙˙; <
;
˙˙< =
}
˚˚ 
else
˚˚ 
{
˚˚ 
DialogManager
¸¸ 
.
¸¸ #
ShowErrorMessageAlert
¸¸ 3
(
¸¸3 4

Properties
¸¸4 >
.
¸¸> ?
	Resources
¸¸? H
.
¸¸H I#
dialogNavigationError
¸¸I ^
)
¸¸^ _
;
¸¸_ `
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ  
GoToLaderboardView
ÄÄ '
(
ÄÄ' (
)
ÄÄ( )
{
ÄÄ* +

Laderboard
ÅÅ 
laderboardView
ÅÅ %
=
ÅÅ& '
new
ÅÅ( +

Laderboard
ÅÅ, 6
(
ÅÅ6 7
)
ÅÅ7 8
;
ÅÅ8 9
if
ÇÇ 
(
ÇÇ 
this
ÇÇ 
.
ÇÇ 
NavigationService
ÇÇ &
!=
ÇÇ' )
null
ÇÇ* .
)
ÇÇ. /
{
ÇÇ0 1
this
ÉÉ 
.
ÉÉ 
NavigationService
ÉÉ &
.
ÉÉ& '
Navigate
ÉÉ' /
(
ÉÉ/ 0
laderboardView
ÉÉ0 >
)
ÉÉ> ?
;
ÉÉ? @
}
ÑÑ 
else
ÑÑ 
{
ÑÑ 
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I#
dialogNavigationError
ÖÖI ^
)
ÖÖ^ _
;
ÖÖ_ `
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ !
GoToSelectLobbyView
ââ (
(
ââ( )
)
ââ) *
{
ââ+ ,
SelectLobbyView
ää 
selectLobbyView
ää +
=
ää, -
new
ää. 1
SelectLobbyView
ää2 A
(
ääA B
)
ääB C
;
ääC D
if
ãã 
(
ãã 
this
ãã 
.
ãã 
NavigationService
ãã &
!=
ãã' )
null
ãã* .
)
ãã. /
{
ãã0 1
this
åå 
.
åå 
NavigationService
åå &
.
åå& '
Navigate
åå' /
(
åå/ 0
selectLobbyView
åå0 ?
)
åå? @
;
åå@ A
}
çç 
else
çç 
{
çç 
DialogManager
éé 
.
éé #
ShowErrorMessageAlert
éé 3
(
éé3 4

Properties
éé4 >
.
éé> ?
	Resources
éé? H
.
ééH I#
dialogNavigationError
ééI ^
)
éé^ _
;
éé_ `
}
èè 
}
êê 	
}
ëë 
}íí ∫÷
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
;- .
private 
const 
string 

PLAYER_ONE '
=( )
$str* 5
;5 6
private   
const   
string   

PLAYER_TWO   '
=  ( )
$str  * 5
;  5 6
public"" 
	LobbyView"" 
("" 
string"" 
	lobbyCode""  )
)"") *
{""+ ,
InitializeComponent## 
(##  
)##  !
;##! "
this$$ 
.$$ 

_lobbyCode$$ 
=$$ 
	lobbyCode$$ '
;$$' (
lbCode%% 
.%% 
Content%% 
=%% 
	lobbyCode%% &
;%%& '
_lobbyBrowser&& 
=&& 
new&& 
LobbyBrowserClient&&  2
(&&2 3
)&&3 4
;&&4 5
InitializeLobby'' 
('' 
)'' 
;'' 
InstanceContext(( 
context(( #
=(($ %
new((& )
InstanceContext((* 9
(((9 :
this((: >
)((> ?
;((? @
_lobbyManager)) 
=)) 
new)) 
LobbyManagerClient))  2
())2 3
context))3 :
))): ;
;)); <
_chatManager** 
=** 
new** 
ChatManagerClient** 0
(**0 1
context**1 8
)**8 9
;**9 :
ConnectionManager++ 
.++ 
Instance++ &
.++& '"
InitializeLobbyManager++' =
(++= >
context++> E
)++E F
;++F G
ConnectionManager,, 
.,, 
Instance,, &
.,,& '!
InitializeChatManager,,' <
(,,< =
context,,= D
),,D E
;,,E F
_userManager-- 
=-- 
new-- 
UserManagerClient-- 0
(--0 1
)--1 2
;--2 3
_friendsManager.. 
=.. 
new.. ! 
FriendsManagerClient.." 6
(..6 7
)..7 8
;..8 9
_statusManager// 
=// 
new//  
StatusManagerClient//! 4
(//4 5
)//5 6
;//6 7#
_emailInvitationManager00 #
=00$ %
new00& )(
EmailInvitationManagerClient00* F
(00F G
)00G H
;00H I&
InitializeConnectionsAsync11 &
(11& '
)11' (
;11( )
if22 
(22 
!22 
string22 
.22 
IsNullOrEmpty22 %
(22% & 
UserProfileSingleton22& :
.22: ;
PicPath22; B
)22B C
)22C D
{22E F
imageProfile133 
.33 
Source33 $
=33% &
new33' *
BitmapImage33+ 6
(336 7
new337 :
Uri33; >
(33> ? 
UserProfileSingleton33? S
.33S T
PicPath33T [
,33[ \
UriKind33] d
.33d e
RelativeOrAbsolute33e w
)33w x
)33x y
;33y z
}44 
}55 	
private77 
void77 
HandleException77 $
(77$ %
	Exception77% .
	exception77/ 8
,778 9
string77: @

methodName77A K
)77K L
{77M N
LoggerManager88 
logger88  
=88! "
new88# &
LoggerManager88' 4
(884 5
this885 9
.889 :
GetType88: A
(88A B
)88B C
)88C D
;88D E
if99 
(99 
	exception99 
is99 %
EndpointNotFoundException99 6
)996 7
{998 9
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
.;;H I#
dialogEndPointException;;I `
);;` a
;;;a b
}<< 
else<< 
if<< 
(<< 
	exception<<  
is<<! #
TimeoutException<<$ 4
)<<4 5
{<<6 7
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
.>>H I"
dialogTimeOutException>>I _
)>>_ `
;>>` a
}?? 
else?? 
if?? 
(?? 
	exception??  
is??! #"
CommunicationException??$ :
)??: ;
{??< =
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
(AA3 4

PropertiesAA4 >
.AA> ?
	ResourcesAA? H
.AAH I'
dialogComunicationExceptionAAI d
)AAd e
;AAe f
}BB 
elseBB 
{BB 
loggerCC 
.CC 
LogErrorCC 
(CC  

methodNameCC  *
,CC* +
	exceptionCC, 5
)CC5 6
;CC6 7
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
}FF 
}GG 	
privateII 
asyncII 
voidII &
InitializeConnectionsAsyncII 5
(II5 6
)II6 7
{II8 9
tryJJ 
{JJ 
awaitKK 
InitializeChatAsyncKK )
(KK) *
)KK* +
;KK+ ,
awaitLL 
ConnectToLobbyAsyncLL )
(LL) *
)LL* +
;LL+ ,
}MM 
catchMM 
(MM 
	ExceptionMM 
	exceptionMM (
)MM( )
{MM* +
HandleExceptionNN 
(NN  
	exceptionNN  )
,NN) *
nameofNN+ 1
(NN1 2&
InitializeConnectionsAsyncNN2 L
)NNL M
)NNM N
;NNN O
ExitUseSinglentonOO !
(OO! "
)OO" #
;OO# $
}PP 
}QQ 	
privateSS 
asyncSS 
TaskSS 
InitializeChatAsyncSS .
(SS. /
)SS/ 0
{SS1 2
tryTT 
{TT 
awaitUU 
_chatManagerUU "
.UU" #
ConnectToChatAsyncUU# 5
(UU5 6 
UserProfileSingletonUU6 J
.UUJ K
UserNameUUK S
,UUS T

_lobbyCodeUUU _
)UU_ `
;UU` a
}VV 
catchVV 
(VV 
	ExceptionVV 
	exceptionVV (
)VV( )
{VV* +
HandleExceptionWW 
(WW  
	exceptionWW  )
,WW) *
nameofWW+ 1
(WW1 2
InitializeChatAsyncWW2 E
)WWE F
)WWF G
;WWG H
}XX 
}YY 	
private[[ 
async[[ 
Task[[ 
ConnectToLobbyAsync[[ .
([[. /
)[[/ 0
{[[1 2
try\\ 
{\\ 
bool]] 
	connected]] 
=]]  
await]]! &
Task]]' +
.]]+ ,
Run]], /
(]]/ 0
(]]0 1
)]]1 2
=>]]3 5
_lobbyManager]]6 C
.]]C D 
ConnectPlayerToLobby]]D X
(]]X Y

_lobbyCode]]Y c
,]]c d 
UserProfileSingleton]]e y
.]]y z
	IdProfile	]]z É
)
]]É Ñ
)
]]Ñ Ö
;
]]Ö Ü
if^^ 
(^^ 
!^^ 
	connected^^ 
)^^ 
{^^  !
DialogManager__ !
.__! "!
ShowErrorMessageAlert__" 7
(__7 8

Properties__8 B
.__B C
	Resources__C L
.__L M!
dialogConnectionError__M b
)__b c
;__c d
ExitUseSinglenton`` %
(``% &
)``& '
;``' (
}aa 
elseaa 
{aa 
_isConnectedbb  
=bb! "
truebb# '
;bb' (
}cc 
}dd 
catchdd 
(dd 
	Exceptiondd 
	exceptiondd (
)dd( )
{dd* +
HandleExceptionee 
(ee  
	exceptionee  )
,ee) *
nameofee+ 1
(ee1 2
ConnectToLobbyAsyncee2 E
)eeE F
)eeF G
;eeG H
}ff 
}gg 	
privateii 
asyncii 
voidii  
BtnSendMessage_Clickii /
(ii/ 0
objectii0 6
senderii7 =
,ii= >
RoutedEventArgsii? N
eiiO P
)iiP Q
{iiR S
stringjj 
messageTextjj 
=jj  
txtMessageInputjj! 0
.jj0 1
Textjj1 5
.jj5 6
Trimjj6 :
(jj: ;
)jj; <
;jj< =
ifkk 
(kk 
!kk 
stringkk 
.kk 
IsNullOrEmptykk %
(kk% &
messageTextkk& 1
)kk1 2
)kk2 3
{kk4 5
varll 
messagell 
=ll 
newll !
Messagell" )
{ll* +
userNamemm 
=mm  
UserProfileSingletonmm 3
.mm3 4
UserNamemm4 <
,mm< =
chatMessagenn 
=nn  !
messageTextnn" -
}oo 
;oo 
trypp 
{pp 
awaitqq 
_chatManagerqq &
.qq& '
SendMessageAsyncqq' 7
(qq7 8 
UserProfileSingletonqq8 L
.qqL M
UserNameqqM U
,qqU V
messageqqW ^
,qq^ _

_lobbyCodeqq` j
)qqj k
;qqk l
txtMessageInputrr #
.rr# $
Clearrr$ )
(rr) *
)rr* +
;rr+ ,
}ss 
catchss 
(ss 
	Exceptionss "
	exceptionss# ,
)ss, -
{ss. /
HandleExceptiontt #
(tt# $
	exceptiontt$ -
,tt- .
nameoftt/ 5
(tt5 6 
BtnSendMessage_Clicktt6 J
)ttJ K
)ttK L
;ttL M
}uu 
}vv 
}ww 	
publicyy 
asyncyy 
voidyy 
InitializeLobbyyy )
(yy) *
)yy* +
{yy, -
tryzz 
{zz 
Lobby{{ 
lobby{{ 
={{ 
await{{ #
_lobbyBrowser{{$ 1
.{{1 2
GetLobbyByCodeAsync{{2 E
({{E F

_lobbyCode{{F P
){{P Q
;{{Q R 
UserProfileSingleton|| $
.||$ %
UpdateLobbyCode||% 4
(||4 5

_lobbyCode||5 ?
)||? @
;||@ A 
UserProfileSingleton}} $
.}}$ %
UpdateChatCode}}% 3
(}}3 4

_lobbyCode}}4 >
)}}> ?
;}}? @
if~~ 
(~~ 

IsUserHost~~ 
(~~ 
lobby~~ $
)~~$ %
)~~% &
{~~' (
	lbPlayer1 
. 
Content %
=& '
lobby( -
.- .
Players. 5
.5 6
ContainsKey6 A
(A B

PLAYER_ONEB L
)L M
?N O
lobbyP U
.U V
PlayersV ]
[] ^

PLAYER_ONE^ h
]h i
.i j
Usernamej r
:s t

Propertiesu 
.	 Ä
	Resources
Ä â
.
â ä 
lbWaitingForPlayer
ä ú
;
ú ù
	lbPlayer2
ÄÄ 
.
ÄÄ 
Content
ÄÄ %
=
ÄÄ& '
lobby
ÄÄ( -
.
ÄÄ- .
Players
ÄÄ. 5
.
ÄÄ5 6
ContainsKey
ÄÄ6 A
(
ÄÄA B

PLAYER_TWO
ÄÄB L
)
ÄÄL M
?
ÄÄN O
lobby
ÄÄP U
.
ÄÄU V
Players
ÄÄV ]
[
ÄÄ] ^

PLAYER_TWO
ÄÄ^ h
]
ÄÄh i
.
ÄÄi j
Username
ÄÄj r
:
ÄÄs t

Properties
ÄÄu 
.ÄÄ Ä
	ResourcesÄÄÄ â
.ÄÄâ ä"
lbWaitingForPlayerÄÄä ú
;ÄÄú ù
imageProfile1
ÅÅ !
.
ÅÅ! "
Source
ÅÅ" (
=
ÅÅ) *
new
ÅÅ+ .
BitmapImage
ÅÅ/ :
(
ÅÅ: ;
new
ÅÅ; >
Uri
ÅÅ? B
(
ÅÅB C"
UserProfileSingleton
ÅÅC W
.
ÅÅW X
PicPath
ÅÅX _
,
ÅÅ_ `
UriKind
ÅÅa h
.
ÅÅh i 
RelativeOrAbsolute
ÅÅi {
)
ÅÅ{ |
)
ÅÅ| }
;
ÅÅ} ~
imageProfile2
ÇÇ !
.
ÇÇ! "
Source
ÇÇ" (
=
ÇÇ) *
null
ÇÇ+ /
;
ÇÇ/ 0
}
ÉÉ 
else
ÉÉ 
{
ÉÉ 
	lbPlayer1
ÑÑ 
.
ÑÑ 
Content
ÑÑ %
=
ÑÑ& '
lobby
ÑÑ( -
.
ÑÑ- .
Players
ÑÑ. 5
.
ÑÑ5 6
ContainsKey
ÑÑ6 A
(
ÑÑA B

PLAYER_TWO
ÑÑB L
)
ÑÑL M
?
ÑÑN O
lobby
ÑÑP U
.
ÑÑU V
Players
ÑÑV ]
[
ÑÑ] ^

PLAYER_TWO
ÑÑ^ h
]
ÑÑh i
.
ÑÑi j
Username
ÑÑj r
:
ÑÑs t

Properties
ÑÑu 
.ÑÑ Ä
	ResourcesÑÑÄ â
.ÑÑâ ä"
lbWaitingForPlayerÑÑä ú
;ÑÑú ù
	lbPlayer2
ÖÖ 
.
ÖÖ 
Content
ÖÖ %
=
ÖÖ& '
lobby
ÖÖ( -
.
ÖÖ- .
Players
ÖÖ. 5
.
ÖÖ5 6
ContainsKey
ÖÖ6 A
(
ÖÖA B

PLAYER_ONE
ÖÖB L
)
ÖÖL M
?
ÖÖN O
lobby
ÖÖP U
.
ÖÖU V
Players
ÖÖV ]
[
ÖÖ] ^

PLAYER_ONE
ÖÖ^ h
]
ÖÖh i
.
ÖÖi j
Username
ÖÖj r
:
ÖÖs t

Properties
ÖÖu 
.ÖÖ Ä
	ResourcesÖÖÄ â
.ÖÖâ ä"
lbWaitingForPlayerÖÖä ú
;ÖÖú ù
imageProfile1
ÜÜ !
.
ÜÜ! "
Source
ÜÜ" (
=
ÜÜ) *
new
ÜÜ+ .
BitmapImage
ÜÜ/ :
(
ÜÜ: ;
new
ÜÜ; >
Uri
ÜÜ? B
(
ÜÜB C"
UserProfileSingleton
ÜÜC W
.
ÜÜW X
PicPath
ÜÜX _
,
ÜÜ_ `
UriKind
ÜÜa h
.
ÜÜh i 
RelativeOrAbsolute
ÜÜi {
)
ÜÜ{ |
)
ÜÜ| }
;
ÜÜ} ~
string
áá 
ruta
áá 
=
áá  !
await
áá" '
_userManager
áá( 4
.
áá4 5
GetPicPathAsync
áá5 D
(
ááD E
lobby
ááE J
.
ááJ K
Players
ááK R
[
ááR S

PLAYER_ONE
ááS ]
]
áá] ^
.
áá^ _
Username
áá_ g
)
áág h
;
ááh i
imageProfile2
àà !
.
àà! "
Source
àà" (
=
àà) *
new
àà+ .
BitmapImage
àà/ :
(
àà: ;
new
àà; >
Uri
àà? B
(
ààB C
ruta
ààC G
,
ààG H
UriKind
ààI P
.
ààP Q 
RelativeOrAbsolute
ààQ c
)
ààc d
)
ààd e
;
ààe f
btnKickPlayer
ââ !
.
ââ! "

Visibility
ââ" ,
=
ââ- .

Visibility
ââ/ 9
.
ââ9 :
	Collapsed
ââ: C
;
ââC D
btnInvitedFriend
ää $
.
ää$ %

Visibility
ää% /
=
ää0 1

Visibility
ää2 <
.
ää< =
	Collapsed
ää= F
;
ääF G
btnStartGame
ãã  
.
ãã  !

Visibility
ãã! +
=
ãã, -

Visibility
ãã. 8
.
ãã8 9
	Collapsed
ãã9 B
;
ããB C
}
åå 
}
çç 
catch
çç 
(
çç 
	Exception
çç 
	exception
çç (
)
çç( )
{
çç* +
HandleException
éé 
(
éé  
	exception
éé  )
,
éé) *
nameof
éé+ 1
(
éé1 2
InitializeLobby
éé2 A
)
ééA B
)
ééB C
;
ééC D
}
èè 
}
êê 	
private
íí 
static
íí 
bool
íí 

IsUserHost
íí &
(
íí& '
Lobby
íí' ,
lobby
íí- 2
)
íí2 3
{
íí4 5
return
ìì 
lobby
ìì 
.
ìì 
Players
ìì  
.
ìì  !
TryGetValue
ìì! ,
(
ìì, -

PLAYER_ONE
ìì- 7
,
ìì7 8
out
ìì9 <
var
ìì= @
host
ììA E
)
ììE F
&&
ììG I
host
ììJ N
.
ììN O
Username
ììO W
==
ììX Z"
UserProfileSingleton
ìì[ o
.
ììo p
UserName
ììp x
;
ììx y
}
îî 	
private
ññ 
async
ññ 
void
ññ 
BtnBack_Click
ññ (
(
ññ( )
object
ññ) /
sender
ññ0 6
,
ññ6 7
RoutedEventArgs
ññ8 G
e
ññH I
)
ññI J
{
ññK L
try
óó 
{
óó 
await
òò 
_lobbyManager
òò #
.
òò# $
LeaveLobbyAsync
òò$ 3
(
òò3 4

_lobbyCode
òò4 >
,
òò> ?"
UserProfileSingleton
òò@ T
.
òòT U
	IdProfile
òòU ^
)
òò^ _
;
òò_ `
await
ôô 
_chatManager
ôô "
.
ôô" #
LeaveChatAsync
ôô# 1
(
ôô1 2"
UserProfileSingleton
ôô2 F
.
ôôF G
UserName
ôôG O
,
ôôO P

_lobbyCode
ôôQ [
)
ôô[ \
;
ôô\ ]
ExitUseSinglenton
öö !
(
öö! "
)
öö" #
;
öö# $
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
õõ* +
HandleException
úú 
(
úú  
	exception
úú  )
,
úú) *
nameof
úú+ 1
(
úú1 2
BtnBack_Click
úú2 ?
)
úú? @
)
úú@ A
;
úúA B
ExitUseSinglenton
ùù !
(
ùù! "
)
ùù" #
;
ùù# $
}
ûû 
}
üü 	
private
°° 
void
°° 
ExitUseSinglenton
°° &
(
°°& '
)
°°' (
{
°°) *"
UserProfileSingleton
¢¢  
.
¢¢  !
ResetLobbyCode
¢¢! /
(
¢¢/ 0
)
¢¢0 1
;
¢¢1 2"
UserProfileSingleton
££  
.
££  !
ResetChatCode
££! .
(
££. /
)
££/ 0
;
££0 1
if
§§ 
(
§§ "
UserProfileSingleton
§§ $
.
§§$ %
	IdProfile
§§% .
<
§§/ 0
$num
§§1 7
)
§§7 8
{
§§9 :
GoToMenuView
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 
else
¶¶ 
{
¶¶ 
GoToLoginView
ßß 
(
ßß 
)
ßß 
;
ßß  
}
®® 
}
©© 	
private
´´ 
async
´´ 
void
´´ 
	OnClosing
´´ $
(
´´$ %
object
´´% +
sender
´´, 2
,
´´2 3
CancelEventArgs
´´4 C
e
´´D E
)
´´E F
{
´´G H
if
¨¨ 
(
¨¨ 
_isConnected
¨¨ 
)
¨¨ 
{
¨¨ 
try
≠≠ 
{
≠≠ 
await
ÆÆ 
Task
ÆÆ 
.
ÆÆ 
Run
ÆÆ "
(
ÆÆ" #
(
ÆÆ# $
)
ÆÆ$ %
=>
ÆÆ& (
_lobbyManager
ØØ !
.
ØØ! "

LeaveLobby
ØØ" ,
(
ØØ, -

_lobbyCode
ØØ- 7
,
ØØ7 8"
UserProfileSingleton
ØØ9 M
.
ØØM N
	IdProfile
ØØN W
)
ØØW X
)
ØØX Y
;
ØØY Z
}
∞∞ 
catch
∞∞ 
(
∞∞ 
	Exception
∞∞ "
	exception
∞∞# ,
)
∞∞, -
{
∞∞. /
HandleException
±± #
(
±±# $
	exception
±±$ -
,
±±- .
nameof
±±/ 5
(
±±5 6
	OnClosing
±±6 ?
)
±±? @
)
±±@ A
;
±±A B
}
≤≤ 
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
ScrollToBottom
∂∂ #
(
∂∂# $
)
∂∂$ %
{
∂∂& '
var
∑∑ 
scrollViewer
∑∑ 
=
∑∑ 
VisualTreeHelper
∑∑ /
.
∑∑/ 0
	GetParent
∑∑0 9
(
∑∑9 :
ChatMessagesPanel
∑∑: K
)
∑∑K L
as
∑∑M O
ScrollViewer
∑∑P \
;
∑∑\ ]
scrollViewer
∏∏ 
?
∏∏ 
.
∏∏ 
ScrollToEnd
∏∏ %
(
∏∏% &
)
∏∏& '
;
∏∏' (
}
ππ 	
private
ªª 
void
ªª 
GoToMenuView
ªª !
(
ªª! "
)
ªª" #
{
ªª$ %
MenuView
ºº 
menuView
ºº 
=
ºº 
new
ºº  #
MenuView
ºº$ ,
(
ºº, -
)
ºº- .
;
ºº. /
if
ΩΩ 
(
ΩΩ 
this
ΩΩ 
.
ΩΩ 
NavigationService
ΩΩ &
!=
ΩΩ' )
null
ΩΩ* .
)
ΩΩ. /
{
ΩΩ0 1
this
ææ 
.
ææ 
NavigationService
ææ &
.
ææ& '
Navigate
ææ' /
(
ææ/ 0
menuView
ææ0 8
)
ææ8 9
;
ææ9 :
}
øø 
else
øø 
{
øø 
DialogManager
¿¿ 
.
¿¿ #
ShowErrorMessageAlert
¿¿ 3
(
¿¿3 4

Properties
¿¿4 >
.
¿¿> ?
	Resources
¿¿? H
.
¿¿H I#
dialogNavigationError
¿¿I ^
)
¿¿^ _
;
¿¿_ `
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
GoToLoginView
ƒƒ "
(
ƒƒ" #
)
ƒƒ# $
{
ƒƒ% &
	LoginView
≈≈ 
	loginView
≈≈ 
=
≈≈  !
new
≈≈" %
	LoginView
≈≈& /
(
≈≈/ 0
)
≈≈0 1
;
≈≈1 2
if
∆∆ 
(
∆∆ 
this
∆∆ 
.
∆∆ 
NavigationService
∆∆ &
!=
∆∆' )
null
∆∆* .
)
∆∆. /
{
∆∆0 1
this
«« 
.
«« 
NavigationService
«« &
.
««& '
Navigate
««' /
(
««/ 0
	loginView
««0 9
)
««9 :
;
««: ;
}
»» 
else
»» 
{
»» 
DialogManager
…… 
.
…… #
ShowErrorMessageAlert
…… 3
(
……3 4

Properties
……4 >
.
……> ?
	Resources
……? H
.
……H I#
dialogNavigationError
……I ^
)
……^ _
;
……_ `
}
   
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ 
RemoveFromLobby
ÕÕ #
(
ÕÕ# $
)
ÕÕ$ %
{
ÕÕ& '

Dispatcher
ŒŒ 
.
ŒŒ 
Invoke
ŒŒ 
(
ŒŒ 
(
ŒŒ 
)
ŒŒ  
=>
ŒŒ! #
{
ŒŒ$ %
DialogManager
œœ 
.
œœ %
ShowWarningMessageAlert
œœ 5
(
œœ5 6

Properties
œœ6 @
.
œœ@ A
	Resources
œœA J
.
œœJ K
dialogLobbyExit
œœK Z
)
œœZ [
;
œœ[ \
ExitUseSinglenton
–– !
(
––! "
)
––" #
;
––# $
}
—— 
)
—— 
;
—— 
}
““ 	
public
‘‘ 
void
‘‘ 
HostLeftCallback
‘‘ $
(
‘‘$ %
)
‘‘% &
{
‘‘' (

Dispatcher
’’ 
.
’’ 
Invoke
’’ 
(
’’ 
async
’’ #
(
’’$ %
)
’’% &
=>
’’' )
{
’’* +
await
÷÷ 
Task
÷÷ 
.
÷÷ 
Run
÷÷ 
(
÷÷ 
(
÷÷  
)
÷÷  !
=>
÷÷" $
DialogManager
◊◊ 
.
◊◊ %
ShowWarningMessageAlert
◊◊ 1
(
◊◊1 2

Properties
◊◊2 <
.
◊◊< =
	Resources
◊◊= F
.
◊◊F G!
dialogHostLeftLobby
◊◊G Z
)
◊◊Z [
)
ÿÿ 
;
ÿÿ 
ExitUseSinglenton
ŸŸ !
(
ŸŸ! "
)
ŸŸ" #
;
ŸŸ# $
}
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 	
public
›› 
void
›› 
GuestLeftCallback
›› %
(
››% &
)
››& '
{
››( )

Dispatcher
ﬁﬁ 
.
ﬁﬁ 
Invoke
ﬁﬁ 
(
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ  
=>
ﬁﬁ! #
{
ﬁﬁ$ %
string
ﬂﬂ 
waitingMessage
ﬂﬂ %
=
ﬂﬂ& '

Properties
ﬂﬂ( 2
.
ﬂﬂ2 3
	Resources
ﬂﬂ3 <
.
ﬂﬂ< =$
dialogWaitingForPlayer
ﬂﬂ= S
;
ﬂﬂS T
	lbPlayer2
‡‡ 
.
‡‡ 
Content
‡‡ !
=
‡‡" #
waitingMessage
‡‡$ 2
;
‡‡2 3
imageProfile2
·· 
.
·· 
Source
·· $
=
··% &
null
··' +
;
··+ ,
}
‚‚ 
)
‚‚ 
;
‚‚ 
}
„„ 	
public
ÂÂ 
void
ÂÂ !
GuestJoinedCallback
ÂÂ '
(
ÂÂ' (
string
ÂÂ( .
	guestName
ÂÂ/ 8
,
ÂÂ8 9
string
ÂÂ: @
picturePath
ÂÂA L
,
ÂÂL M
int
ÂÂN Q
	idProfile
ÂÂR [
)
ÂÂ[ \
{
ÂÂ] ^

Dispatcher
ÊÊ 
.
ÊÊ 
Invoke
ÊÊ 
(
ÊÊ 
(
ÊÊ 
)
ÊÊ  
=>
ÊÊ! #
{
ÊÊ$ %
	lbPlayer2
ÁÁ 
.
ÁÁ 
Content
ÁÁ !
=
ÁÁ" #
	guestName
ÁÁ$ -
;
ÁÁ- .
if
ËË 
(
ËË 
	idProfile
ËË 
<
ËË 
$num
ËË  &
)
ËË& '
{
ËË( )
string
ÈÈ 
ruta
ÈÈ 
=
ÈÈ  !
_userManager
ÈÈ" .
.
ÈÈ. /

GetPicPath
ÈÈ/ 9
(
ÈÈ9 :
	guestName
ÈÈ: C
)
ÈÈC D
;
ÈÈD E
imageProfile2
ÍÍ !
.
ÍÍ! "
Source
ÍÍ" (
=
ÍÍ) *
new
ÍÍ+ .
BitmapImage
ÍÍ/ :
(
ÍÍ: ;
new
ÍÍ; >
Uri
ÍÍ? B
(
ÍÍB C
ruta
ÍÍC G
,
ÍÍG H
UriKind
ÍÍI P
.
ÍÍP Q 
RelativeOrAbsolute
ÍÍQ c
)
ÍÍc d
)
ÍÍd e
;
ÍÍe f
}
ÎÎ 
else
ÎÎ 
{
ÎÎ 
string
ÏÏ 
ruta
ÏÏ 
=
ÏÏ  !
picturePath
ÏÏ" -
;
ÏÏ- .
imageProfile2
ÌÌ !
.
ÌÌ! "
Source
ÌÌ" (
=
ÌÌ) *
new
ÌÌ+ .
BitmapImage
ÌÌ/ :
(
ÌÌ: ;
new
ÌÌ; >
Uri
ÌÌ? B
(
ÌÌB C
ruta
ÌÌC G
,
ÌÌG H
UriKind
ÌÌI P
.
ÌÌP Q 
RelativeOrAbsolute
ÌÌQ c
)
ÌÌc d
)
ÌÌd e
;
ÌÌe f
}
ÓÓ 
}
ÔÔ 
)
ÔÔ 
;
ÔÔ 
}
 	
private
ÚÚ 
void
ÚÚ  
BtnStartGame_Click
ÚÚ '
(
ÚÚ' (
object
ÚÚ( .
sender
ÚÚ/ 5
,
ÚÚ5 6
RoutedEventArgs
ÚÚ7 F
e
ÚÚG H
)
ÚÚH I
{
ÚÚJ K
_lobbyManager
ÛÛ 
.
ÛÛ 

StartMatch
ÛÛ $
(
ÛÛ$ %

_lobbyCode
ÛÛ% /
)
ÛÛ/ 0
;
ÛÛ0 1
}
ÙÙ 	
public
ˆˆ 
void
ˆˆ 
BroadcastMessage
ˆˆ $
(
ˆˆ$ %
Message
ˆˆ% ,
message
ˆˆ- 4
)
ˆˆ4 5
{
ˆˆ6 7
Application
˜˜ 
.
˜˜ 
Current
˜˜ 
.
˜˜  

Dispatcher
˜˜  *
.
˜˜* +
Invoke
˜˜+ 1
(
˜˜1 2
(
˜˜2 3
)
˜˜3 4
=>
˜˜5 7
{
˜˜8 9
Border
¯¯ 
messageContainer
¯¯ '
=
¯¯( )
new
¯¯* -
Border
¯¯. 4
{
¯¯5 6

Background
˘˘ 
=
˘˘  
new
˘˘! $
SolidColorBrush
˘˘% 4
(
˘˘4 5
Colors
˘˘5 ;
.
˘˘; <
White
˘˘< A
)
˘˘A B
,
˘˘B C
BorderThickness
˙˙ #
=
˙˙$ %
new
˙˙& )
	Thickness
˙˙* 3
(
˙˙3 4
$num
˙˙4 5
)
˙˙5 6
,
˙˙6 7
Padding
˚˚ 
=
˚˚ 
new
˚˚ !
	Thickness
˚˚" +
(
˚˚+ ,
$num
˚˚, .
)
˚˚. /
,
˚˚/ 0
Margin
¸¸ 
=
¸¸ 
new
¸¸  
	Thickness
¸¸! *
(
¸¸* +
$num
¸¸+ -
,
¸¸- .
$num
¸¸/ 0
,
¸¸0 1
$num
¸¸2 4
,
¸¸4 5
$num
¸¸6 7
)
¸¸7 8
,
¸¸8 9!
HorizontalAlignment
˝˝ '
=
˝˝( )
message
˝˝* 1
.
˝˝1 2
userName
˝˝2 :
==
˝˝; ="
UserProfileSingleton
˝˝> R
.
˝˝R S
UserName
˝˝S [
?
˝˝\ ]!
HorizontalAlignment
˝˝^ q
.
˝˝q r
Right
˝˝r w
:
˝˝x y"
HorizontalAlignment˝˝z ç
.˝˝ç é
Left˝˝é í
}
˛˛ 
;
˛˛ 
	TextBlock
ˇˇ 
messageBlock
ˇˇ &
=
ˇˇ' (
new
ˇˇ) ,
	TextBlock
ˇˇ- 6
{
ˇˇ7 8
Text
ÄÄ 
=
ÄÄ 
$"
ÄÄ 
{
ÄÄ 
message
ÄÄ %
.
ÄÄ% &
chatMessage
ÄÄ& 1
}
ÄÄ1 2
$str
ÄÄ2 3
{
ÄÄ3 4
DateTime
ÄÄ4 <
.
ÄÄ< =
Now
ÄÄ= @
:
ÄÄ@ A
$str
ÄÄA F
}
ÄÄF G
"
ÄÄG H
,
ÄÄH I

Foreground
ÅÅ 
=
ÅÅ  
new
ÅÅ! $
SolidColorBrush
ÅÅ% 4
(
ÅÅ4 5
Colors
ÅÅ5 ;
.
ÅÅ; <
Black
ÅÅ< A
)
ÅÅA B
,
ÅÅB C
FontSize
ÇÇ 
=
ÇÇ 
$num
ÇÇ !
,
ÇÇ! "

FontWeight
ÉÉ 
=
ÉÉ  
FontWeights
ÉÉ! ,
.
ÉÉ, -
Bold
ÉÉ- 1
,
ÉÉ1 2
TextWrapping
ÑÑ  
=
ÑÑ! "
TextWrapping
ÑÑ# /
.
ÑÑ/ 0
Wrap
ÑÑ0 4
,
ÑÑ4 5
MaxWidth
ÖÖ 
=
ÖÖ 
$num
ÖÖ "
}
ÜÜ 
;
ÜÜ 
messageContainer
áá  
.
áá  !
Child
áá! &
=
áá' (
messageBlock
áá) 5
;
áá5 6
ChatMessagesPanel
àà !
.
àà! "
Children
àà" *
.
àà* +
Add
àà+ .
(
àà. /
messageContainer
àà/ ?
)
àà? @
;
àà@ A
ScrollToBottom
ââ 
(
ââ 
)
ââ  
;
ââ  !
}
ää 
)
ää 
;
ää 
}
ãã 	
public
çç 
void
çç 
GameStarted
çç 
(
çç  
)
çç  !
{
çç" #
GoToGameMatch
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
private
ëë 
void
ëë 
GoToGameMatch
ëë "
(
ëë" #
)
ëë# $
{
ëë% &
Application
íí 
.
íí 
Current
íí 
.
íí  

Dispatcher
íí  *
.
íí* +
Invoke
íí+ 1
(
íí1 2
(
íí2 3
)
íí3 4
=>
íí5 7
{
íí8 9
var
ìì 
	gameMatch
ìì 
=
ìì 
new
ìì  #
	GameMatch
ìì$ -
(
ìì- .

_lobbyCode
ìì. 8
)
ìì8 9
;
ìì9 :
NavigationService
îî !
?
îî! "
.
îî" #
Navigate
îî# +
(
îî+ ,
	gameMatch
îî, 5
)
îî5 6
;
îî6 7
}
ïï 
)
ïï 
;
ïï 
}
ññ 	
private
òò 
async
òò 
Task
òò "
LoadFriendsListAsync
òò /
(
òò/ 0
)
òò0 1
{
òò2 3
try
ôô 
{
ôô 
int
öö 
userProfileId
öö !
=
öö" #"
UserProfileSingleton
öö$ 8
.
öö8 9
	IdProfile
öö9 B
;
ööB C
var
õõ 
friendsList
õõ 
=
õõ  !
await
õõ" '
_friendsManager
õõ( 7
.
õõ7 8
GetFriendsAsync
õõ8 G
(
õõG H
userProfileId
õõH U
)
õõU V
;
õõV W
var
úú 
friendsWithStatus
úú %
=
úú& '
new
úú( +
List
úú, 0
<
úú0 1
string
úú1 7
>
úú7 8
(
úú8 9
)
úú9 :
;
úú: ;
foreach
ùù 
(
ùù 
var
ùù 
friend
ùù #
in
ùù$ &
friendsList
ùù' 2
)
ùù2 3
{
ùù4 5
var
ûû 
status
ûû 
=
ûû  
await
ûû! &
_statusManager
ûû' 5
.
ûû5 6"
GetPlayerStatusAsync
ûû6 J
(
ûûJ K
friend
ûûK Q
.
ûûQ R
	IdProfile
ûûR [
)
ûû[ \
;
ûû\ ]
friendsWithStatus
üü %
.
üü% &
Add
üü& )
(
üü) *
$"
üü* ,
{
üü, -
friend
üü- 3
.
üü3 4
Username
üü4 <
}
üü< =
$str
üü= @
{
üü@ A
status
üüA G
}
üüG H
"
üüH I
)
üüI J
;
üüJ K
}
†† 

lstFriends
°° 
.
°° 
ItemsSource
°° &
=
°°' (
friendsWithStatus
°°) :
;
°°: ;
}
¢¢ 
catch
¢¢ 
(
¢¢ 
	Exception
¢¢ 
	exception
¢¢ (
)
¢¢( )
{
¢¢* +
HandleException
££ 
(
££  
	exception
££  )
,
££) *
nameof
££+ 1
(
££1 2"
LoadFriendsListAsync
££2 F
)
££F G
)
££G H
;
££H I
}
§§ 
}
•• 	
private
ßß 
async
ßß 
void
ßß $
BtnInvitedFriend_Click
ßß 1
(
ßß1 2
object
ßß2 8
sender
ßß9 ?
,
ßß? @
RoutedEventArgs
ßßA P
e
ßßQ R
)
ßßR S
{
ßßT U
try
®® 
{
®® 
_elementsVisible
©©  
=
©©! "
!
©©# $
_elementsVisible
©©$ 4
;
©©4 5
if
™™ 
(
™™ 
_elementsVisible
™™ $
)
™™$ %
{
™™& '
gridInvitedFriend
´´ %
.
´´% &

Visibility
´´& 0
=
´´1 2

Visibility
´´3 =
.
´´= >
Visible
´´> E
;
´´E F

lstFriends
¨¨ 
.
¨¨ 
	IsEnabled
¨¨ (
=
¨¨) *
true
¨¨+ /
;
¨¨/ 0

btnInvited
≠≠ 
.
≠≠ 
	IsEnabled
≠≠ (
=
≠≠) *
true
≠≠+ /
;
≠≠/ 0
await
ÆÆ "
LoadFriendsListAsync
ÆÆ .
(
ÆÆ. /
)
ÆÆ/ 0
;
ÆÆ0 1
btnInvitedFriend
ØØ $
.
ØØ$ %

Background
ØØ% /
=
ØØ0 1
new
ØØ2 5
SolidColorBrush
ØØ6 E
(
ØØE F
Colors
ØØF L
.
ØØL M
Green
ØØM R
)
ØØR S
;
ØØS T
}
∞∞ 
else
∞∞ 
{
∞∞ 
gridInvitedFriend
±± %
.
±±% &

Visibility
±±& 0
=
±±1 2

Visibility
±±3 =
.
±±= >
	Collapsed
±±> G
;
±±G H

lstFriends
≤≤ 
.
≤≤ 
	IsEnabled
≤≤ (
=
≤≤) *
false
≤≤+ 0
;
≤≤0 1

btnInvited
≥≥ 
.
≥≥ 
	IsEnabled
≥≥ (
=
≥≥) *
false
≥≥+ 0
;
≥≥0 1
btnInvitedFriend
¥¥ $
.
¥¥$ %

Background
¥¥% /
=
¥¥0 1
new
¥¥2 5
SolidColorBrush
¥¥6 E
(
¥¥E F
Color
¥¥F K
.
¥¥K L
FromArgb
¥¥L T
(
¥¥T U
$num
¥¥U X
,
¥¥X Y
$num
¥¥Z ]
,
¥¥] ^
$num
¥¥_ b
,
¥¥b c
$num
¥¥d g
)
¥¥g h
)
¥¥h i
;
¥¥i j
}
µµ 
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
∂∂* +
HandleException
∑∑ 
(
∑∑  
	exception
∑∑  )
,
∑∑) *
nameof
∑∑+ 1
(
∑∑1 2$
BtnInvitedFriend_Click
∑∑2 H
)
∑∑H I
)
∑∑I J
;
∑∑J K
}
∏∏ 
}
ππ 	
private
ªª 
async
ªª 
void
ªª 
BtnInvited_Click
ªª +
(
ªª+ ,
object
ªª, 2
sender
ªª3 9
,
ªª9 :
RoutedEventArgs
ªª; J
e
ªªK L
)
ªªL M
{
ªªN O
if
ºº 
(
ºº 

lstFriends
ºº 
.
ºº 
SelectedItem
ºº '
!=
ºº( *
null
ºº+ /
)
ºº/ 0
{
ºº1 2
string
ΩΩ  
selectedFriendName
ΩΩ )
=
ΩΩ* +

lstFriends
ΩΩ, 6
.
ΩΩ6 7
SelectedItem
ΩΩ7 C
.
ΩΩC D
ToString
ΩΩD L
(
ΩΩL M
)
ΩΩM N
;
ΩΩN O
string
ææ 

friendName
ææ !
=
ææ" # 
selectedFriendName
ææ$ 6
.
ææ6 7
Split
ææ7 <
(
ææ< =
$char
ææ= @
)
ææ@ A
[
ææA B
$num
ææB C
]
ææC D
.
ææD E
Trim
ææE I
(
ææI J
)
ææJ K
;
ææK L
try
øø 
{
øø 
int
¿¿ 
result
¿¿ 
=
¿¿  
await
¿¿! &%
_emailInvitationManager
¿¿' >
.
¿¿> ?!
SendInvitationAsync
¿¿? R
(
¿¿R S

friendName
¿¿S ]
,
¿¿] ^

_lobbyCode
¿¿_ i
)
¿¿i j
;
¿¿j k
if
¡¡ 
(
¡¡ 
result
¡¡ 
==
¡¡ !
	Constants
¡¡" +
.
¡¡+ ,
SUCCES_OPERATION
¡¡, <
)
¡¡< =
{
¡¡> ?
DialogManager
¬¬ %
.
¬¬% &%
ShowSuccessMessageAlert
¬¬& =
(
¬¬= >
string
¬¬> D
.
¬¬D E
Format
¬¬E K
(
¬¬K L

Properties
¬¬L V
.
¬¬V W
	Resources
¬¬W `
.
¬¬` a"
dialogInvitationSent
¬¬a u
,
¬¬u v

friendName¬¬w Å
)¬¬Å Ç
)¬¬Ç É
;¬¬É Ñ
}
√√ 
else
√√ 
{
√√ 
DialogManager
ƒƒ %
.
ƒƒ% &#
ShowErrorMessageAlert
ƒƒ& ;
(
ƒƒ; <

Properties
ƒƒ< F
.
ƒƒF G
	Resources
ƒƒG P
.
ƒƒP Q*
dialogErrorSendingInvitation
ƒƒQ m
)
ƒƒm n
;
ƒƒn o
}
≈≈ 
}
∆∆ 
catch
∆∆ 
(
∆∆ 
	Exception
∆∆ "
	exception
∆∆# ,
)
∆∆, -
{
∆∆. /
HandleException
«« #
(
««# $
	exception
««$ -
,
««- .
nameof
««/ 5
(
««5 6
BtnInvited_Click
««6 F
)
««F G
)
««G H
;
««H I
}
»» 
}
…… 
else
…… 
{
…… 
DialogManager
   
.
   %
ShowWarningMessageAlert
   5
(
  5 6

Properties
  6 @
.
  @ A
	Resources
  A J
.
  J K(
dialogSelectFriendToInvite
  K e
)
  e f
;
  f g
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
async
ŒŒ 
void
ŒŒ !
BtnKickPlayer_Click
ŒŒ .
(
ŒŒ. /
object
ŒŒ/ 5
sender
ŒŒ6 <
,
ŒŒ< =
RoutedEventArgs
ŒŒ> M
e
ŒŒN O
)
ŒŒO P
{
ŒŒQ R
MessageBoxResult
œœ 
result
œœ #
=
œœ$ %)
ShowConfirmKickPlayerDialog
œœ& A
(
œœA B
)
œœB C
;
œœC D
if
–– 
(
–– 
result
–– 
==
–– 
MessageBoxResult
–– *
.
––* +
Yes
––+ .
)
––. /
{
––0 1
try
—— 
{
—— 
await
““ 
Task
““ 
.
““ 
Run
““ "
(
““" #
(
““# $
)
““$ %
=>
““& (
_lobbyManager
““) 6
.
““6 7

KickPlayer
““7 A
(
““A B

_lobbyCode
““B L
)
““L M
)
““M N
;
““N O
}
”” 
catch
”” 
(
”” 
	Exception
”” "
	exception
””# ,
)
””, -
{
””. /
HandleException
‘‘ #
(
‘‘# $
	exception
‘‘$ -
,
‘‘- .
nameof
‘‘/ 5
(
‘‘5 6!
BtnKickPlayer_Click
‘‘6 I
)
‘‘I J
)
‘‘J K
;
‘‘K L
}
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
static
ŸŸ 
MessageBoxResult
ŸŸ ')
ShowConfirmKickPlayerDialog
ŸŸ( C
(
ŸŸC D
)
ŸŸD E
{
ŸŸF G
return
⁄⁄ 

MessageBox
⁄⁄ 
.
⁄⁄ 
Show
⁄⁄ "
(
⁄⁄" #

Properties
€€ 
.
€€ 
	Resources
€€ $
.
€€$ %%
dialogConfirmKickPlayer
€€% <
,
€€< =

Properties
‹‹ 
.
‹‹ 
	Resources
‹‹ $
.
‹‹$ %
titleConfirmKick
‹‹% 5
,
‹‹5 6
MessageBoxButton
››  
.
››  !
YesNo
››! &
,
››& '
MessageBoxImage
ﬁﬁ 
.
ﬁﬁ  
Question
ﬁﬁ  (
)
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚ 
KickedFromLobby
‚‚ #
(
‚‚# $
)
‚‚$ %
{
‚‚& '

Dispatcher
„„ 
.
„„ 
Invoke
„„ 
(
„„ 
(
„„ 
)
„„  
=>
„„! #
{
„„$ %
DialogManager
‰‰ 
.
‰‰ %
ShowWarningMessageAlert
‰‰ 5
(
‰‰5 6

Properties
‰‰6 @
.
‰‰@ A
	Resources
‰‰A J
.
‰‰J K#
dialogKickedFromLobby
‰‰K `
)
‰‰` a
;
‰‰a b
ExitUseSinglenton
ÂÂ !
(
ÂÂ! "
)
ÂÂ" #
;
ÂÂ# $
}
ÊÊ 
)
ÊÊ 
;
ÊÊ 
}
ÁÁ 	
}
ËË 
}ÈÈ ëò
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
;&&& '
InstanceContext'' 
context'' #
=''$ %
new''& )
InstanceContext''* 9
(''9 :
this'': >
)''> ?
;''? @
_matchManagerClient(( 
=((  !
new((" %
MatchManagerClient((& 8
(((8 9
context((9 @
)((@ A
;((A B
ConnectionManager)) 
.)) 
Instance)) &
.))& '"
InitializeMatchManager))' =
())= >
context))> E
)))E F
;))F G
InitializeMatch** 
(** 
)** 
;** 

_allTraces++ 
=++ 
new++ 
List++ !
<++! "
Polyline++" *
>++* +
(+++ ,
)++, -
;++- .
drawingCanvas,, 
.,, 
	MouseDown,, #
+=,,$ &
Canvas_MouseDown,,' 7
;,,7 8
drawingCanvas-- 
.-- 
	MouseMove-- #
+=--$ &
Canvas_MouseMove--' 7
;--7 8
drawingCanvas.. 
... 
MouseUp.. !
+=.." $
Canvas_MouseUp..% 3
;..3 4

StartTimer// 
(// 
)// 
;// 
}00 	
private22 
void22 
HandleException22 $
(22$ %
	Exception22% .
	exception22/ 8
,228 9
string22: @

methodName22A K
)22K L
{22M N
LoggerManager33 
logger33  
=33! "
new33# &
LoggerManager33' 4
(334 5
this335 9
.339 :
GetType33: A
(33A B
)33B C
)33C D
;33D E
if44 
(44 
	exception44 
is44 %
EndpointNotFoundException44 6
)446 7
{448 9
logger55 
.55 
LogError55 
(55  

methodName55  *
,55* +
	exception55, 5
)555 6
;556 7
DialogManager66 
.66 !
ShowErrorMessageAlert66 3
(663 4

Properties664 >
.66> ?
	Resources66? H
.66H I#
dialogEndPointException66I `
)66` a
;66a b
}77 
else77 
if77 
(77 
	exception77  
is77! #
TimeoutException77$ 4
)774 5
{776 7
logger88 
.88 
LogError88 
(88  

methodName88  *
,88* +
	exception88, 5
)885 6
;886 7
DialogManager99 
.99 !
ShowErrorMessageAlert99 3
(993 4

Properties994 >
.99> ?
	Resources99? H
.99H I"
dialogTimeOutException99I _
)99_ `
;99` a
}:: 
else:: 
if:: 
(:: 
	exception::  
is::! #"
CommunicationException::$ :
)::: ;
{::< =
logger;; 
.;; 
LogError;; 
(;;  

methodName;;  *
,;;* +
	exception;;, 5
);;5 6
;;;6 7
DialogManager<< 
.<< !
ShowErrorMessageAlert<< 3
(<<3 4

Properties<<4 >
.<<> ?
	Resources<<? H
.<<H I'
dialogComunicationException<<I d
)<<d e
;<<e f
}== 
else== 
{== 
logger>> 
.>> 
LogError>> 
(>>  

methodName>>  *
,>>* +
	exception>>, 5
)>>5 6
;>>6 7
DialogManager?? 
.?? !
ShowErrorMessageAlert?? 3
(??3 4
string??4 :
.??: ;
Format??; A
(??A B

Properties??B L
.??L M
	Resources??M V
.??V W!
dialogUnexpectedError??W l
,??l m
	exception??n w
.??w x
Message??x 
)	?? Ä
)
??Ä Å
;
??Å Ç
}AA 
}BB 	
privateDD 
asyncDD 
TaskDD 
CheckCurrentTurnDD +
(DD+ ,
)DD, -
{DD. /
tryEE 
{EE 
stringFF 
currentTurnFF "
=FF# $
awaitFF% *
TaskFF+ /
.FF/ 0
RunFF0 3
(FF3 4
(FF4 5
)FF5 6
=>FF7 9
_matchManagerClientFF: M
.FFM N
GetCurrentTurnFFN \
(FF\ ]

_matchCodeFF] g
)FFg h
)FFh i
;FFi j
ifGG 
(GG 
currentTurnGG 
==GG  " 
UserProfileSingletonGG# 7
.GG7 8
UserNameGG8 @
)GG@ A
{GGB C
NotifyYourTurnHH "
(HH" #
)HH# $
;HH$ %
}II 
elseII 
{II 
NotifyNotYourTurnJJ %
(JJ% &
)JJ& '
;JJ' (
}KK 
}LL 
catchLL 
(LL 
	ExceptionLL 
	exceptionLL (
)LL( )
{LL* +
HandleExceptionMM 
(MM  
	exceptionMM  )
,MM) *
nameofMM+ 1
(MM1 2
CheckCurrentTurnMM2 B
)MMB C
)MMC D
;MMD E
}NN 
}OO 	
privateQQ 
asyncQQ 
voidQQ 
InitializeMatchQQ *
(QQ* +
)QQ+ ,
{QQ- .
tryRR 
{RR 
boolSS 
	connectedSS 
=SS  
awaitSS! &
_matchManagerClientSS' :
.SS: ;'
RegisterPlayerCallbackAsyncSS; V
(SSV W

_matchCodeSSW a
,SSa b 
UserProfileSingletonSSc w
.SSw x
UserName	SSx Ä
)
SSÄ Å
;
SSÅ Ç
ifTT 
(TT 
!TT 
	connectedTT 
)TT 
{TT  !
DialogManagerUU !
.UU! "!
ShowErrorMessageAlertUU" 7
(UU7 8

PropertiesUU8 B
.UUB C
	ResourcesUUC L
.UUL M"
dialogConnectionFailedUUM c
)UUc d
;UUd e
}VV 
elseVV 
{VV 
_isConnectedWW  
=WW! "
trueWW# '
;WW' ( 
UserProfileSingletonXX (
.XX( )
UpdateMatchCodeXX) 8
(XX8 9

_matchCodeXX9 C
)XXC D
;XXD E
nodesYY 
=YY 
awaitYY !
TaskYY" &
.YY& '
RunYY' *
(YY* +
(YY+ ,
)YY, -
=>YY. 0
_matchManagerClientYY1 D
.YYD E
GetNodesYYE M
(YYM N

_matchCodeYYN X
)YYX Y
)YYY Z
;YYZ [

_nodePairsZZ 
=ZZ  
awaitZZ! &
TaskZZ' +
.ZZ+ ,
RunZZ, /
(ZZ/ 0
(ZZ0 1
)ZZ1 2
=>ZZ3 5
_matchManagerClientZZ6 I
.ZZI J
GetNodePairsZZJ V
(ZZV W

_matchCodeZZW a
)ZZa b
)ZZb c
;ZZc d
if[[ 
([[ 
nodes[[ 
!=[[  
null[[! %
&&[[& (
nodes[[) .
.[[. /
Count[[/ 4
>[[5 6
$num[[7 8
)[[8 9
{[[: ;
	DrawNodes\\ !
(\\! "
)\\" #
;\\# $
await]] 
CheckCurrentTurn]] .
(]]. /
)]]/ 0
;]]0 1
}^^ 
else^^ 
{^^ 
DialogManager__ %
.__% &!
ShowErrorMessageAlert__& ;
(__; <

Properties__< F
.__F G
	Resources__G P
.__P Q
dialogNodesNotFound__Q d
)__d e
;__e f
}`` 
}aa 
}bb 
catchbb 
(bb 
	Exceptionbb 
	exceptionbb (
)bb( )
{bb* +
HandleExceptioncc 
(cc  
	exceptioncc  )
,cc) *
nameofcc+ 1
(cc1 2
InitializeMatchcc2 A
)ccA B
)ccB C
;ccC D
}dd 
}ee 	
privategg 
voidgg 

StartTimergg 
(gg  
)gg  !
{gg" #
_remainingTimehh 
=hh 

_totalTimehh '
;hh' (
progressBarTimerii 
.ii 
Valueii "
=ii# $
$numii% (
;ii( )
_timerjj 
=jj 
newjj 
DispatcherTimerjj (
(jj( )
)jj) *
;jj* +
_timerkk 
.kk 
Intervalkk 
=kk 
TimeSpankk &
.kk& '
FromMillisecondskk' 7
(kk7 8
$numkk8 ;
)kk; <
;kk< =
_timerll 
.ll 
Tickll 
+=ll 

Timer_Tickll %
;ll% &
ifmm 
(mm 
_isPlayerTurnmm 
)mm 
{mm  
_timernn 
.nn 
Startnn 
(nn 
)nn 
;nn 
}oo 
}pp 	
privaterr 
voidrr 

Timer_Tickrr 
(rr  
objectrr  &
senderrr' -
,rr- .
	EventArgsrr/ 8
err9 :
)rr: ;
{rr< =
ifss 
(ss 
_remainingTimess 
>ss  
$numss! "
)ss" #
{ss$ %
_remainingTimett 
-=tt !
$numtt" %
;tt% &
progressBarTimeruu  
.uu  !
Valueuu! &
=uu' (
(uu) *
_remainingTimeuu* 8
/uu9 :

_totalTimeuu; E
)uuE F
*uuG H
$numuuI L
;uuL M
ifvv 
(vv 
_remainingTimevv "
>vv# $

_totalTimevv% /
*vv0 1
$numvv2 5
)vv5 6
{vv7 8
progressBarTimerww $
.ww$ %

Foregroundww% /
=ww0 1
Brushesww2 9
.ww9 :
Greenww: ?
;ww? @
}xx 
elsexx 
ifxx 
(xx 
_remainingTimexx )
>xx* +

_totalTimexx, 6
*xx7 8
$numxx9 <
)xx< =
{xx> ?
progressBarTimeryy $
.yy$ %

Foregroundyy% /
=yy0 1
Brushesyy2 9
.yy9 :
Orangeyy: @
;yy@ A
}zz 
elsezz 
{zz 
progressBarTimer{{ $
.{{$ %

Foreground{{% /
={{0 1
Brushes{{2 9
.{{9 :
Red{{: =
;{{= >
}|| 
}}} 
else}} 
{}} 
_timer~~ 
.~~ 
Stop~~ 
(~~ 
)~~ 
;~~ 
drawingCanvas 
. 
Children &
.& '
Remove' -
(- .
_currentLine. :
): ;
;; <!
_matchManagerClient
ÄÄ #
.
ÄÄ# $
EndTurnAsync
ÄÄ$ 0
(
ÄÄ0 1

_matchCode
ÄÄ1 ;
,
ÄÄ; <"
UserProfileSingleton
ÄÄ= Q
.
ÄÄQ R
UserName
ÄÄR Z
)
ÄÄZ [
;
ÄÄ[ \
progressBarTimer
ÅÅ  
.
ÅÅ  !

Foreground
ÅÅ! +
=
ÅÅ, -
Brushes
ÅÅ. 5
.
ÅÅ5 6
Gray
ÅÅ6 :
;
ÅÅ: ;
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ 
Canvas_MouseDown
ÖÖ %
(
ÖÖ% &
object
ÖÖ& ,
sender
ÖÖ- 3
,
ÖÖ3 4"
MouseButtonEventArgs
ÖÖ5 I
e
ÖÖJ K
)
ÖÖK L
{
ÖÖM N
Point
ÜÜ 
mousePosition
ÜÜ 
=
ÜÜ  !
e
ÜÜ" #
.
ÜÜ# $
GetPosition
ÜÜ$ /
(
ÜÜ/ 0
drawingCanvas
ÜÜ0 =
)
ÜÜ= >
;
ÜÜ> ?

_startNode
áá 
=
áá 
FindNodeNearPoint
áá *
(
áá* +
mousePosition
áá+ 8
)
áá8 9
;
áá9 :
if
àà 
(
àà 

_startNode
àà 
==
àà 
null
àà "
)
àà" #
{
àà$ %
DialogManager
ââ 
.
ââ #
ShowErrorMessageAlert
ââ 3
(
ââ3 4

Properties
ââ4 >
.
ââ> ?
	Resources
ââ? H
.
ââH I$
dialogInvalidStartNode
ââI _
)
ââ_ `
;
ââ` a
return
ää 
;
ää 
}
ãã 

_isDrawing
åå 
=
åå 
true
åå 
;
åå !
_currentTracePoints
çç 
.
çç  
Clear
çç  %
(
çç% &
)
çç& '
;
çç' (!
_currentTracePoints
éé 
.
éé  
Add
éé  #
(
éé# $
new
éé$ '"
TripasDeGatoServicio
éé( <
.
éé< =

TracePoint
éé= G
{
ééH I
X
ééJ K
=
ééL M
mousePosition
ééN [
.
éé[ \
X
éé\ ]
,
éé] ^
Y
éé_ `
=
ééa b
mousePosition
ééc p
.
éép q
Y
ééq r
}
éés t
)
éét u
;
ééu v
_currentLine
èè 
=
èè 
new
èè 
Polyline
èè '
{
èè( )
Stroke
êê 
=
êê 
Brushes
êê  
.
êê  !
Blue
êê! %
,
êê% &
StrokeThickness
ëë 
=
ëë  !
$num
ëë" #
}
íí 
;
íí 
drawingCanvas
ìì 
.
ìì 
Children
ìì "
.
ìì" #
Add
ìì# &
(
ìì& '
_currentLine
ìì' 3
)
ìì3 4
;
ìì4 5
_currentLine
îî 
.
îî 
Points
îî 
.
îî  
Add
îî  #
(
îî# $
mousePosition
îî$ 1
)
îî1 2
;
îî2 3
}
ïï 	
public
óó 
void
óó 
NotifyYourTurn
óó "
(
óó" #
)
óó# $
{
óó% &
if
òò 
(
òò 
_timer
òò 
!=
òò 
null
òò 
)
òò 
{
òò  !
_timer
ôô 
.
ôô 
Stop
ôô 
(
ôô 
)
ôô 
;
ôô 
_timer
öö 
.
öö 
Tick
öö 
-=
öö 

Timer_Tick
öö )
;
öö) *
}
õõ 
_remainingTime
úú 
=
úú 

_totalTime
úú '
;
úú' (
progressBarTimer
ùù 
.
ùù 
Value
ùù "
=
ùù# $
$num
ùù% (
;
ùù( )
progressBarTimer
ûû 
.
ûû 

Foreground
ûû '
=
ûû( )
Brushes
ûû* 1
.
ûû1 2
Green
ûû2 7
;
ûû7 8
drawingCanvas
üü 
.
üü 
	IsEnabled
üü #
=
üü$ %
true
üü& *
;
üü* +
_isPlayerTurn
†† 
=
†† 
true
††  
;
††  !
lbMatchStatus
°° 
.
°° 
Content
°° !
=
°°" #

Properties
°°$ .
.
°°. /
	Resources
°°/ 8
.
°°8 9#
lbMatchStatusYourTurn
°°9 N
;
°°N O
lbMatchStatus
¢¢ 
.
¢¢ 

Foreground
¢¢ $
=
¢¢% &
Brushes
¢¢' .
.
¢¢. /
Green
¢¢/ 4
;
¢¢4 5

StartTimer
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
public
¶¶ 
void
¶¶ 
NotifyNotYourTurn
¶¶ %
(
¶¶% &
)
¶¶& '
{
¶¶( )
Application
ßß 
.
ßß 
Current
ßß 
.
ßß  

Dispatcher
ßß  *
.
ßß* +
Invoke
ßß+ 1
(
ßß1 2
(
ßß2 3
)
ßß3 4
=>
ßß5 7
{
ßß8 9
if
®® 
(
®® 
_timer
®® 
!=
®® 
null
®® "
)
®®" #
{
®®$ %
_timer
©© 
.
©© 
Stop
©© 
(
©©  
)
©©  !
;
©©! "
_timer
™™ 
.
™™ 
Tick
™™ 
-=
™™  "

Timer_Tick
™™# -
;
™™- .
}
´´ 
drawingCanvas
¨¨ 
.
¨¨ 
	IsEnabled
¨¨ '
=
¨¨( )
false
¨¨* /
;
¨¨/ 0
_isPlayerTurn
≠≠ 
=
≠≠ 
false
≠≠  %
;
≠≠% &
lbMatchStatus
ÆÆ 
.
ÆÆ 
Content
ÆÆ %
=
ÆÆ& '

Properties
ÆÆ( 2
.
ÆÆ2 3
	Resources
ÆÆ3 <
.
ÆÆ< =&
lbMatchStatusNotYourTurn
ÆÆ= U
;
ÆÆU V
lbMatchStatus
ØØ 
.
ØØ 

Foreground
ØØ (
=
ØØ) *
Brushes
ØØ+ 2
.
ØØ2 3
Red
ØØ3 6
;
ØØ6 7
}
∞∞ 
)
∞∞ 
;
∞∞ 
}
±± 	
private
≥≥ 
void
≥≥ 
Canvas_MouseMove
≥≥ %
(
≥≥% &
object
≥≥& ,
sender
≥≥- 3
,
≥≥3 4
MouseEventArgs
≥≥5 C
e
≥≥D E
)
≥≥E F
{
≥≥G H
if
¥¥ 
(
¥¥ 
!
¥¥ 

_isDrawing
¥¥ 
)
¥¥ 
return
¥¥ #
;
¥¥# $
Point
µµ 
mousePosition
µµ 
=
µµ  !
e
µµ" #
.
µµ# $
GetPosition
µµ$ /
(
µµ/ 0
drawingCanvas
µµ0 =
)
µµ= >
;
µµ> ?
var
∂∂ 
newPoint
∂∂ 
=
∂∂ 
new
∂∂ "
TripasDeGatoServicio
∂∂ 3
.
∂∂3 4

TracePoint
∂∂4 >
{
∂∂? @
X
∂∂A B
=
∂∂C D
mousePosition
∂∂E R
.
∂∂R S
X
∂∂S T
,
∂∂T U
Y
∂∂V W
=
∂∂X Y
mousePosition
∂∂Z g
.
∂∂g h
Y
∂∂h i
}
∂∂j k
;
∂∂k l
DrawingValidation
∑∑ 
drawingValidation
∑∑ /
=
∑∑0 1
new
∑∑2 5
DrawingValidation
∑∑6 G
(
∑∑G H
)
∑∑H I
;
∑∑I J
if
∏∏ 
(
∏∏ 
drawingValidation
∏∏ !
.
∏∏! "$
IsPointInForbiddenArea
∏∏" 8
(
∏∏8 9
mousePosition
∏∏9 F
)
∏∏F G
)
∏∏G H
{
∏∏I J
HandleInfraction
ππ  
(
ππ  !

Properties
ππ! +
.
ππ+ ,
	Resources
ππ, 5
.
ππ5 6(
dialogForbiddenAreaWarning
ππ6 P
)
ππP Q
;
ππQ R
return
∫∫ 
;
∫∫ 
}
ªª 
if
ºº 
(
ºº !
IsCollisionDetected
ºº #
(
ºº# $
newPoint
ºº$ ,
)
ºº, -
)
ºº- .
{
ºº/ 0
HandleInfraction
ΩΩ  
(
ΩΩ  !

Properties
ΩΩ! +
.
ΩΩ+ ,
	Resources
ΩΩ, 5
.
ΩΩ5 6'
dialogInfractionCollision
ΩΩ6 O
)
ΩΩO P
;
ΩΩP Q
try
ææ 
{
ææ !
_matchManagerClient
øø '
.
øø' (
EndMatchAsync
øø( 5
(
øø5 6

_matchCode
øø6 @
)
øø@ A
;
øøA B
}
¿¿ 
catch
¿¿ 
(
¿¿ 
	Exception
¿¿ "
	exception
¿¿# ,
)
¿¿, -
{
¿¿. /
HandleException
¡¡ #
(
¡¡# $
	exception
¡¡$ -
,
¡¡- .
nameof
¡¡/ 5
(
¡¡5 6
Canvas_MouseMove
¡¡6 F
)
¡¡F G
)
¡¡G H
;
¡¡H I
}
¬¬ 
return
√√ 
;
√√ 
}
ƒƒ 
Node
≈≈ 
currentNode
≈≈ 
=
≈≈ 
FindNodeNearPoint
≈≈ 0
(
≈≈0 1
mousePosition
≈≈1 >
)
≈≈> ?
;
≈≈? @
if
∆∆ 
(
∆∆ 
currentNode
∆∆ 
!=
∆∆ 
null
∆∆ #
&&
∆∆$ &
currentNode
∆∆' 2
!=
∆∆3 5

_startNode
∆∆6 @
&&
∆∆A C
!
∆∆D E
IsPair
∆∆E K
(
∆∆K L

_startNode
∆∆L V
,
∆∆V W
currentNode
∆∆X c
)
∆∆c d
)
∆∆d e
{
∆∆f g
HandleInfraction
««  
(
««  !

Properties
««! +
.
««+ ,
	Resources
««, 5
.
««5 6)
dialogInfractionInvalidNode
««6 Q
)
««Q R
;
««R S
return
»» 
;
»» 
}
…… !
_currentTracePoints
   
.
    
Add
    #
(
  # $
newPoint
  $ ,
)
  , -
;
  - .
_currentLine
ÀÀ 
.
ÀÀ 
Points
ÀÀ 
.
ÀÀ  
Add
ÀÀ  #
(
ÀÀ# $
mousePosition
ÀÀ$ 1
)
ÀÀ1 2
;
ÀÀ2 3
}
ÃÃ 	
private
ŒŒ 
static
ŒŒ 
bool
ŒŒ  
IsPointNearSegment
ŒŒ .
(
ŒŒ. /"
TripasDeGatoServicio
ŒŒ/ C
.
ŒŒC D

TracePoint
ŒŒD N
point
ŒŒO T
,
ŒŒT U
Point
ŒŒV [
start
ŒŒ\ a
,
ŒŒa b
Point
ŒŒc h
end
ŒŒi l
)
ŒŒl m
{
ŒŒn o
double
œœ 
distance
œœ 
=
œœ (
DistanceFromPointToSegment
œœ 8
(
œœ8 9
point
œœ9 >
,
œœ> ?
start
œœ@ E
,
œœE F
end
œœG J
)
œœJ K
;
œœK L
return
–– 
distance
–– 
<
–– 
$num
–– 
;
––  
}
—— 	
private
”” 
bool
”” !
IsCollisionDetected
”” (
(
””( )"
TripasDeGatoServicio
””) =
.
””= >

TracePoint
””> H
newPoint
””I Q
)
””Q R
{
””S T
return
‘‘ 

_allTraces
‘‘ 
.
’’ 

SelectMany
’’ 
(
’’ 
polyline
’’ $
=>
’’% '
polyline
’’( 0
.
’’0 1
Points
’’1 7
.
’’7 8
Zip
’’8 ;
(
’’; <
polyline
’’< D
.
’’D E
Points
’’E K
.
’’K L
Skip
’’L P
(
’’P Q
$num
’’Q R
)
’’R S
,
’’S T
(
’’U V
start
’’V [
,
’’[ \
end
’’] `
)
’’` a
=>
’’b d
new
’’e h
{
’’i j
start
’’k p
,
’’p q
end
’’r u
}
’’v w
)
’’w x
)
’’x y
.
÷÷ 
Any
÷÷ 
(
÷÷ 
pair
÷÷ 
=>
÷÷  
IsPointNearSegment
÷÷ /
(
÷÷/ 0
newPoint
÷÷0 8
,
÷÷8 9
pair
÷÷: >
.
÷÷> ?
start
÷÷? D
,
÷÷D E
pair
÷÷F J
.
÷÷J K
end
÷÷K N
)
÷÷N O
)
÷÷O P
;
÷÷P Q
}
◊◊ 	
private
ŸŸ 
static
ŸŸ 
double
ŸŸ (
DistanceFromPointToSegment
ŸŸ 8
(
ŸŸ8 9"
TripasDeGatoServicio
ŸŸ9 M
.
ŸŸM N

TracePoint
ŸŸN X
point
ŸŸY ^
,
ŸŸ^ _
Point
ŸŸ` e
start
ŸŸf k
,
ŸŸk l
Point
ŸŸm r
end
ŸŸs v
)
ŸŸv w
{
ŸŸx y
double
⁄⁄ 
px
⁄⁄ 
=
⁄⁄ 
point
⁄⁄ 
.
⁄⁄ 
X
⁄⁄ 
;
⁄⁄  
double
€€ 
py
€€ 
=
€€ 
point
€€ 
.
€€ 
Y
€€ 
;
€€  
double
‹‹ 
sx
‹‹ 
=
‹‹ 
start
‹‹ 
.
‹‹ 
X
‹‹ 
;
‹‹  
double
›› 
sy
›› 
=
›› 
start
›› 
.
›› 
Y
›› 
;
››  
double
ﬁﬁ 
ex
ﬁﬁ 
=
ﬁﬁ 
end
ﬁﬁ 
.
ﬁﬁ 
X
ﬁﬁ 
;
ﬁﬁ 
double
ﬂﬂ 
ey
ﬂﬂ 
=
ﬂﬂ 
end
ﬂﬂ 
.
ﬂﬂ 
Y
ﬂﬂ 
;
ﬂﬂ 
double
‡‡ 
dx
‡‡ 
=
‡‡ 
ex
‡‡ 
-
‡‡ 
sx
‡‡ 
;
‡‡  
double
·· 
dy
·· 
=
·· 
ey
·· 
-
·· 
sy
·· 
;
··  
double
‚‚ 
lengthSquared
‚‚  
=
‚‚! "
dx
‚‚# %
*
‚‚& '
dx
‚‚( *
+
‚‚+ ,
dy
‚‚- /
*
‚‚0 1
dy
‚‚2 4
;
‚‚4 5
double
„„ 
	tolerance
„„ 
=
„„ 
$num
„„ #
;
„„# $
if
‰‰ 
(
‰‰ 
Math
‰‰ 
.
‰‰ 
Abs
‰‰ 
(
‰‰ 
lengthSquared
‰‰ &
)
‰‰& '
<
‰‰( )
	tolerance
‰‰* 3
)
‰‰3 4
{
‰‰5 6
return
ÂÂ 
Math
ÂÂ 
.
ÂÂ 
Sqrt
ÂÂ  
(
ÂÂ  !
(
ÂÂ! "
px
ÂÂ" $
-
ÂÂ% &
sx
ÂÂ' )
)
ÂÂ) *
*
ÂÂ+ ,
(
ÂÂ- .
px
ÂÂ. 0
-
ÂÂ1 2
sx
ÂÂ3 5
)
ÂÂ5 6
+
ÂÂ7 8
(
ÂÂ9 :
py
ÂÂ: <
-
ÂÂ= >
sy
ÂÂ? A
)
ÂÂA B
*
ÂÂC D
(
ÂÂE F
py
ÂÂF H
-
ÂÂI J
sy
ÂÂK M
)
ÂÂM N
)
ÂÂN O
;
ÂÂO P
}
ÊÊ 
double
ÁÁ 
t
ÁÁ 
=
ÁÁ 
(
ÁÁ 
(
ÁÁ 
px
ÁÁ 
-
ÁÁ 
sx
ÁÁ  
)
ÁÁ  !
*
ÁÁ" #
dx
ÁÁ$ &
+
ÁÁ' (
(
ÁÁ) *
py
ÁÁ* ,
-
ÁÁ- .
sy
ÁÁ/ 1
)
ÁÁ1 2
*
ÁÁ3 4
dy
ÁÁ5 7
)
ÁÁ7 8
/
ÁÁ9 :
lengthSquared
ÁÁ; H
;
ÁÁH I
t
ËË 
=
ËË 
Math
ËË 
.
ËË 
Max
ËË 
(
ËË 
$num
ËË 
,
ËË 
Math
ËË  
.
ËË  !
Min
ËË! $
(
ËË$ %
$num
ËË% &
,
ËË& '
t
ËË( )
)
ËË) *
)
ËË* +
;
ËË+ ,
double
ÈÈ 
projX
ÈÈ 
=
ÈÈ 
sx
ÈÈ 
+
ÈÈ 
t
ÈÈ  !
*
ÈÈ" #
dx
ÈÈ$ &
;
ÈÈ& '
double
ÍÍ 
projY
ÍÍ 
=
ÍÍ 
sy
ÍÍ 
+
ÍÍ 
t
ÍÍ  !
*
ÍÍ" #
dy
ÍÍ$ &
;
ÍÍ& '
return
ÎÎ 
Math
ÎÎ 
.
ÎÎ 
Sqrt
ÎÎ 
(
ÎÎ 
(
ÎÎ 
px
ÎÎ  
-
ÎÎ! "
projX
ÎÎ# (
)
ÎÎ( )
*
ÎÎ* +
(
ÎÎ, -
px
ÎÎ- /
-
ÎÎ0 1
projX
ÎÎ2 7
)
ÎÎ7 8
+
ÎÎ9 :
(
ÎÎ; <
py
ÎÎ< >
-
ÎÎ? @
projY
ÎÎA F
)
ÎÎF G
*
ÎÎH I
(
ÎÎJ K
py
ÎÎK M
-
ÎÎN O
projY
ÎÎP U
)
ÎÎU V
)
ÎÎV W
;
ÎÎW X
}
ÏÏ 	
private
ÔÔ 
void
ÔÔ 
Canvas_MouseUp
ÔÔ #
(
ÔÔ# $
object
ÔÔ$ *
sender
ÔÔ+ 1
,
ÔÔ1 2"
MouseButtonEventArgs
ÔÔ3 G
e
ÔÔH I
)
ÔÔI J
{
ÔÔK L
if
 
(
 
!
 

_isDrawing
 
)
 
return
 #
;
# $

_isDrawing
ÒÒ 
=
ÒÒ 
false
ÒÒ 
;
ÒÒ 
Point
ÚÚ 
mousePosition
ÚÚ 
=
ÚÚ  !
e
ÚÚ" #
.
ÚÚ# $
GetPosition
ÚÚ$ /
(
ÚÚ/ 0
drawingCanvas
ÚÚ0 =
)
ÚÚ= >
;
ÚÚ> ?
Node
ÛÛ 
endNode
ÛÛ 
=
ÛÛ 
FindNodeNearPoint
ÛÛ ,
(
ÛÛ, -
mousePosition
ÛÛ- :
)
ÛÛ: ;
;
ÛÛ; <
if
ÙÙ 
(
ÙÙ 
endNode
ÙÙ 
==
ÙÙ 
null
ÙÙ 
||
ÙÙ  "
!
ÙÙ# $
IsPair
ÙÙ$ *
(
ÙÙ* +

_startNode
ÙÙ+ 5
,
ÙÙ5 6
endNode
ÙÙ7 >
)
ÙÙ> ?
)
ÙÙ? @
{
ÙÙA B
drawingCanvas
ıı 
.
ıı 
Children
ıı &
.
ıı& '
Remove
ıı' -
(
ıı- .
_currentLine
ıı. :
)
ıı: ;
;
ıı; <
DialogManager
ˆˆ 
.
ˆˆ #
ShowErrorMessageAlert
ˆˆ 3
(
ˆˆ3 4

Properties
ˆˆ4 >
.
ˆˆ> ?
	Resources
ˆˆ? H
.
ˆˆH I)
dialogTraceMustConnectNodes
ˆˆI d
)
ˆˆd e
;
ˆˆe f
return
˜˜ 
;
˜˜ 
}
¯¯ 
if
˘˘ 
(
˘˘ !
_currentTracePoints
˘˘ #
.
˘˘# $
Count
˘˘$ )
>
˘˘* +
$num
˘˘, -
)
˘˘- .
{
˘˘/ 0

_allTraces
˙˙ 
.
˙˙ 
Add
˙˙ 
(
˙˙ 
_currentLine
˙˙ +
)
˙˙+ ,
;
˙˙, -
	SendTrace
˚˚ 
(
˚˚ !
_currentTracePoints
˚˚ -
)
˚˚- .
;
˚˚. /
Task
¸¸ 
.
¸¸ 
Run
¸¸ 
(
¸¸ 
(
¸¸ 
)
¸¸ 
=>
¸¸ !
_matchManagerClient
¸¸ 2
.
¸¸2 3
EndTurnAsync
¸¸3 ?
(
¸¸? @

_matchCode
¸¸@ J
,
¸¸J K"
UserProfileSingleton
¸¸L `
.
¸¸` a
UserName
¸¸a i
)
¸¸i j
)
¸¸j k
;
¸¸k l
if
˝˝ 
(
˝˝ "
AreAllNodesConnected
˝˝ (
(
˝˝( )
)
˝˝) *
)
˝˝* +
{
˝˝, -!
_matchManagerClient
˛˛ '
.
˛˛' (
EndMatchAsync
˛˛( 5
(
˛˛5 6

_matchCode
˛˛6 @
)
˛˛@ A
;
˛˛A B
}
ˇˇ 
}
ÄÄ 
else
ÄÄ 
{
ÄÄ 
drawingCanvas
ÅÅ 
.
ÅÅ 
Children
ÅÅ &
.
ÅÅ& '
Remove
ÅÅ' -
(
ÅÅ- .
_currentLine
ÅÅ. :
)
ÅÅ: ;
;
ÅÅ; <
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ "
AreAllNodesConnected
ÖÖ )
(
ÖÖ) *
)
ÖÖ* +
{
ÖÖ, -
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
pair
ÜÜ 
in
ÜÜ  

_nodePairs
ÜÜ! +
)
ÜÜ+ ,
{
ÜÜ- .
bool
áá 
isConnected
áá  
=
áá! "

_allTraces
áá# -
.
áá- .
Any
áá. 1
(
áá1 2
trace
áá2 7
=>
áá8 :
trace
àà 
.
àà 
Points
àà  
.
àà  !
Any
àà! $
(
àà$ %
point
àà% *
=>
àà+ -
FindNodeNearPoint
àà. ?
(
àà? @
point
àà@ E
)
ààE F
is
ààG I
Node
ààJ N
start
ààO T
&&
ààU W
start
ààX ]
.
àà] ^
Id
àà^ `
==
ààa c
pair
ààd h
.
ààh i
Key
àài l
)
ààl m
&&
ààn p
trace
ââ 
.
ââ 
Points
ââ  
.
ââ  !
Any
ââ! $
(
ââ$ %
point
ââ% *
=>
ââ+ -
FindNodeNearPoint
ââ. ?
(
ââ? @
point
ââ@ E
)
ââE F
is
ââG I
Node
ââJ N
end
ââO R
&&
ââS U
end
ââV Y
.
ââY Z
Id
ââZ \
==
ââ] _
pair
ââ` d
.
ââd e
Value
ââe j
)
ââj k
)
ää 
;
ää 
if
ãã 
(
ãã 
!
ãã 
isConnected
ãã  
)
ãã  !
{
ãã" #
return
åå 
false
åå  
;
åå  !
}
çç 
}
éé 
return
èè 
true
èè 
;
èè 
}
êê 	
private
íí 
bool
íí 
IsPair
íí 
(
íí 
Node
íí  
start
íí! &
,
íí& '
Node
íí( ,
end
íí- 0
)
íí0 1
{
íí2 3
return
ìì 

_nodePairs
ìì 
.
ìì 
ContainsKey
ìì )
(
ìì) *
start
ìì* /
.
ìì/ 0
Id
ìì0 2
)
ìì2 3
&&
ìì4 6

_nodePairs
ìì7 A
[
ììA B
start
ììB G
.
ììG H
Id
ììH J
]
ììJ K
==
ììL N
end
ììO R
.
ììR S
Id
ììS U
;
ììU V
}
îî 	
private
ññ 
Node
ññ 
FindNodeNearPoint
ññ &
(
ññ& '
Point
ññ' ,
point
ññ- 2
)
ññ2 3
{
ññ4 5
const
óó 
double
óó 
detectionRadius
óó (
=
óó) *
$num
óó+ -
;
óó- .
return
òò 
nodes
òò 
.
òò 
Find
òò 
(
òò 
node
òò "
=>
òò# %
Math
ôô 
.
ôô 
Sqrt
ôô 
(
ôô 
Math
ôô 
.
ôô 
Pow
ôô "
(
ôô" #
node
ôô# '
.
ôô' (
X
ôô( )
-
ôô* +
point
ôô, 1
.
ôô1 2
X
ôô2 3
,
ôô3 4
$num
ôô5 6
)
ôô6 7
+
ôô8 9
Math
ôô: >
.
ôô> ?
Pow
ôô? B
(
ôôB C
node
ôôC G
.
ôôG H
Y
ôôH I
-
ôôJ K
point
ôôL Q
.
ôôQ R
Y
ôôR S
,
ôôS T
$num
ôôU V
)
ôôV W
)
ôôW X
<=
ôôY [
detectionRadius
ôô\ k
)
ôôk l
;
ôôl m
}
öö 	
private
úú 
void
úú 
	SendTrace
úú 
(
úú 
List
úú #
<
úú# $

TracePoint
úú$ .
>
úú. /
points
úú0 6
)
úú6 7
{
úú8 9
if
ùù 
(
ùù 
!
ùù 
_isConnected
ùù 
)
ùù 
return
ùù %
;
ùù% &
var
ûû 
trace
ûû 
=
ûû 
new
ûû "
TripasDeGatoServicio
ûû 0
.
ûû0 1
Trace
ûû1 6
{
ûû7 8
Player
üü 
=
üü "
UserProfileSingleton
üü -
.
üü- .
UserName
üü. 6
,
üü6 7
TracePoints
†† 
=
†† 
points
†† $
,
††$ %
	Timestamp
°° 
=
°° 
DateTime
°° $
.
°°$ %
Now
°°% (
,
°°( )
Color
¢¢ 
=
¢¢ 
$str
¢¢ 
}
££ 
;
££ 
try
•• 
{
•• !
_matchManagerClient
¶¶ #
.
¶¶# $
RegisterTrace
¶¶$ 1
(
¶¶1 2

_matchCode
¶¶2 <
,
¶¶< =
trace
¶¶> C
)
¶¶C D
;
¶¶D E
}
ßß 
catch
ßß 
(
ßß 
	Exception
ßß 
	exception
ßß (
)
ßß( )
{
ßß* +
HandleException
®® 
(
®®  
	exception
®®  )
,
®®) *
nameof
®®+ 1
(
®®1 2
	SendTrace
®®2 ;
)
®®; <
)
®®< =
;
®®= >
}
©© 
}
™™ 	
private
¨¨ 
void
¨¨ 
HandleInfraction
¨¨ %
(
¨¨% &
string
¨¨& ,
message
¨¨- 4
)
¨¨4 5
{
¨¨6 7

_isDrawing
≠≠ 
=
≠≠ 
false
≠≠ 
;
≠≠ 
drawingCanvas
ÆÆ 
.
ÆÆ 
Children
ÆÆ "
.
ÆÆ" #
Remove
ÆÆ# )
(
ÆÆ) *
_currentLine
ÆÆ* 6
)
ÆÆ6 7
;
ÆÆ7 8
DialogManager
ØØ 
.
ØØ #
ShowErrorMessageAlert
ØØ /
(
ØØ/ 0
message
ØØ0 7
)
ØØ7 8
;
ØØ8 9
}
∞∞ 	
public
≤≤ 
void
≤≤ 
TraceReceived
≤≤ !
(
≤≤! "
Trace
≤≤" '
trace
≤≤( -
)
≤≤- .
{
≤≤/ 0
var
≥≥ 
receivedLine
≥≥ 
=
≥≥ 
new
≥≥ "
Polyline
≥≥# +
{
≥≥, -
Stroke
¥¥ 
=
¥¥ 
Brushes
¥¥  
.
¥¥  !
Red
¥¥! $
,
¥¥$ %
StrokeThickness
µµ 
=
µµ  !
$num
µµ" #
}
∂∂ 
;
∂∂ 
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
point
∑∑ 
in
∑∑ !
trace
∑∑" '
.
∑∑' (
TracePoints
∑∑( 3
)
∑∑3 4
{
∑∑5 6
receivedLine
∏∏ 
.
∏∏ 
Points
∏∏ #
.
∏∏# $
Add
∏∏$ '
(
∏∏' (
new
∏∏( +
Point
∏∏, 1
(
∏∏1 2
point
∏∏2 7
.
∏∏7 8
X
∏∏8 9
,
∏∏9 :
point
∏∏; @
.
∏∏@ A
Y
∏∏A B
)
∏∏B C
)
∏∏C D
;
∏∏D E
}
ππ 
Application
∫∫ 
.
∫∫ 
Current
∫∫ 
.
∫∫  

Dispatcher
∫∫  *
.
∫∫* +
Invoke
∫∫+ 1
(
∫∫1 2
(
∫∫2 3
)
∫∫3 4
=>
∫∫5 7
{
∫∫8 9
drawingCanvas
ªª 
.
ªª 
Children
ªª &
.
ªª& '
Add
ªª' *
(
ªª* +
receivedLine
ªª+ 7
)
ªª7 8
;
ªª8 9
}
ºº 
)
ºº 
;
ºº 

_allTraces
ΩΩ 
.
ΩΩ 
Add
ΩΩ 
(
ΩΩ 
receivedLine
ΩΩ '
)
ΩΩ' (
;
ΩΩ( )
}
ææ 	
private
¿¿ 
void
¿¿ 
	DrawNodes
¿¿ 
(
¿¿ 
)
¿¿  
{
¿¿! "
if
¡¡ 
(
¡¡ 
nodes
¡¡ 
==
¡¡ 
null
¡¡ 
)
¡¡ 
return
¡¡ %
;
¡¡% &
Application
¬¬ 
.
¬¬ 
Current
¬¬ 
.
¬¬  

Dispatcher
¬¬  *
.
¬¬* +
Invoke
¬¬+ 1
(
¬¬1 2
(
¬¬2 3
)
¬¬3 4
=>
¬¬5 7
drawingCanvas
¬¬8 E
.
¬¬E F
Children
¬¬F N
.
¬¬N O
Clear
¬¬O T
(
¬¬T U
)
¬¬U V
)
¬¬V W
;
¬¬W X
foreach
√√ 
(
√√ 
var
√√ 
node
√√ 
in
√√  
nodes
√√! &
)
√√& '
{
√√( )
var
ƒƒ 
ellipse
ƒƒ 
=
ƒƒ 
new
ƒƒ !
Ellipse
ƒƒ" )
{
ƒƒ* +
Width
≈≈ 
=
≈≈ 
$num
≈≈ 
,
≈≈ 
Height
∆∆ 
=
∆∆ 
$num
∆∆ 
,
∆∆  
Fill
«« 
=
«« 
new
«« 
SolidColorBrush
«« .
(
««. /
(
««/ 0
Color
««0 5
)
««5 6
ColorConverter
««6 D
.
««D E
ConvertFromString
««E V
(
««V W
node
««W [
.
««[ \
Color
««\ a
)
««a b
)
««b c
,
««c d
Stroke
»» 
=
»» 
Brushes
»» $
.
»»$ %
Black
»»% *
,
»»* +
StrokeThickness
…… #
=
……$ %
$num
……& '
}
   
;
   
Canvas
ÀÀ 
.
ÀÀ 
SetLeft
ÀÀ 
(
ÀÀ 
ellipse
ÀÀ &
,
ÀÀ& '
node
ÀÀ( ,
.
ÀÀ, -
X
ÀÀ- .
-
ÀÀ/ 0
ellipse
ÀÀ1 8
.
ÀÀ8 9
Width
ÀÀ9 >
/
ÀÀ? @
$num
ÀÀA B
)
ÀÀB C
;
ÀÀC D
Canvas
ÃÃ 
.
ÃÃ 
SetTop
ÃÃ 
(
ÃÃ 
ellipse
ÃÃ %
,
ÃÃ% &
node
ÃÃ' +
.
ÃÃ+ ,
Y
ÃÃ, -
-
ÃÃ. /
ellipse
ÃÃ0 7
.
ÃÃ7 8
Height
ÃÃ8 >
/
ÃÃ? @
$num
ÃÃA B
)
ÃÃB C
;
ÃÃC D
Application
ÕÕ 
.
ÕÕ 
Current
ÕÕ #
.
ÕÕ# $

Dispatcher
ÕÕ$ .
.
ÕÕ. /
Invoke
ÕÕ/ 5
(
ÕÕ5 6
(
ÕÕ6 7
)
ÕÕ7 8
=>
ÕÕ9 ;
drawingCanvas
ÕÕ< I
.
ÕÕI J
Children
ÕÕJ R
.
ÕÕR S
Add
ÕÕS V
(
ÕÕV W
ellipse
ÕÕW ^
)
ÕÕ^ _
)
ÕÕ_ `
;
ÕÕ` a
}
ŒŒ 
}
œœ 	
private
—— 
async
—— 
void
—— 
BtnBack_Click
—— (
(
——( )
object
——) /
sender
——0 6
,
——6 7
RoutedEventArgs
——8 G
e
——H I
)
——I J
{
——K L
try
““ 
{
““ 
if
”” 
(
”” 
_isConnected
””  
)
””  !
{
””" #
await
‘‘ !
_matchManagerClient
‘‘ -
.
‘‘- .
LeaveMatchAsync
‘‘. =
(
‘‘= >

_matchCode
‘‘> H
,
‘‘H I"
UserProfileSingleton
‘‘J ^
.
‘‘^ _
UserName
‘‘_ g
)
‘‘g h
;
‘‘h i
ExitUseSinglenton
’’ %
(
’’% &
)
’’& '
;
’’' (
}
÷÷ 
}
◊◊ 
catch
◊◊ 
(
◊◊ 
	Exception
◊◊ 
	exception
◊◊ (
)
◊◊( )
{
◊◊* +
HandleException
ÿÿ 
(
ÿÿ  
	exception
ÿÿ  )
,
ÿÿ) *
nameof
ÿÿ+ 1
(
ÿÿ1 2
BtnBack_Click
ÿÿ2 ?
)
ÿÿ? @
)
ÿÿ@ A
;
ÿÿA B
}
ŸŸ 
ExitUseSinglenton
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄  
}
€€ 	
private
›› 
void
›› 
ExitUseSinglenton
›› &
(
››& '
)
››' (
{
››) *"
UserProfileSingleton
ﬁﬁ  
.
ﬁﬁ  !
ResetMatchCode
ﬁﬁ! /
(
ﬁﬁ/ 0
)
ﬁﬁ0 1
;
ﬁﬁ1 2
if
ﬂﬂ 
(
ﬂﬂ "
UserProfileSingleton
ﬂﬂ $
.
ﬂﬂ$ %
	IdProfile
ﬂﬂ% .
<
ﬂﬂ/ 0
$num
ﬂﬂ1 7
)
ﬂﬂ7 8
{
ﬂﬂ9 :
GoToMenuView
‡‡ 
(
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 
else
·· 
{
·· 
GoToLoginView
‚‚ 
(
‚‚ 
)
‚‚ 
;
‚‚  
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ 
GoToMenuView
ÊÊ !
(
ÊÊ! "
)
ÊÊ" #
{
ÊÊ$ %
MenuView
ÁÁ 
menuView
ÁÁ 
=
ÁÁ 
new
ÁÁ  #
MenuView
ÁÁ$ ,
(
ÁÁ, -
)
ÁÁ- .
;
ÁÁ. /
if
ËË 
(
ËË 
this
ËË 
.
ËË 
NavigationService
ËË &
!=
ËË' )
null
ËË* .
)
ËË. /
{
ËË0 1
this
ÈÈ 
.
ÈÈ 
NavigationService
ÈÈ &
.
ÈÈ& '
Navigate
ÈÈ' /
(
ÈÈ/ 0
menuView
ÈÈ0 8
)
ÈÈ8 9
;
ÈÈ9 :
}
ÍÍ 
else
ÍÍ 
{
ÍÍ 
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
ÎÎH I#
dialogNavigationError
ÎÎI ^
)
ÎÎ^ _
;
ÎÎ_ `
}
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
void
ÔÔ 
GoToLoginView
ÔÔ "
(
ÔÔ" #
)
ÔÔ# $
{
ÔÔ% &
	LoginView
 
	loginView
 
=
  !
new
" %
	LoginView
& /
(
/ 0
)
0 1
;
1 2
if
ÒÒ 
(
ÒÒ 
this
ÒÒ 
.
ÒÒ 
NavigationService
ÒÒ &
!=
ÒÒ' )
null
ÒÒ* .
)
ÒÒ. /
{
ÒÒ0 1
this
ÚÚ 
.
ÚÚ 
NavigationService
ÚÚ &
.
ÚÚ& '
Navigate
ÚÚ' /
(
ÚÚ/ 0
	loginView
ÚÚ0 9
)
ÚÚ9 :
;
ÚÚ: ;
}
ÛÛ 
else
ÛÛ 
{
ÛÛ 
DialogManager
ÙÙ 
.
ÙÙ #
ShowErrorMessageAlert
ÙÙ 3
(
ÙÙ3 4

Properties
ÙÙ4 >
.
ÙÙ> ?
	Resources
ÙÙ? H
.
ÙÙH I#
dialogNavigationError
ÙÙI ^
)
ÙÙ^ _
;
ÙÙ_ `
}
ıı 
}
ˆˆ 	
public
¯¯ 
void
¯¯ 
NotifyYouLost
¯¯ !
(
¯¯! "
)
¯¯" #
{
¯¯$ %!
DisableGameControls
˘˘ 
(
˘˘  
)
˘˘  !
;
˘˘! "
Application
˙˙ 
.
˙˙ 
Current
˙˙ 
.
˙˙  

Dispatcher
˙˙  *
.
˙˙* +
Invoke
˙˙+ 1
(
˙˙1 2
(
˙˙2 3
)
˙˙3 4
=>
˙˙5 7
{
˙˙8 9
lbMatchStatus
˚˚ 
.
˚˚ 
Content
˚˚ %
=
˚˚& '

Properties
˚˚( 2
.
˚˚2 3
	Resources
˚˚3 <
.
˚˚< ="
lbMatchStatusYouLost
˚˚= Q
;
˚˚Q R
lbMatchStatus
¸¸ 
.
¸¸ 

Foreground
¸¸ (
=
¸¸) *
Brushes
¸¸+ 2
.
¸¸2 3
Red
¸¸3 6
;
¸¸6 7
drawingCanvas
˝˝ 
.
˝˝ 
	IsEnabled
˝˝ '
=
˝˝( )
false
˝˝* /
;
˝˝/ 0
_timer
˛˛ 
?
˛˛ 
.
˛˛ 
Stop
˛˛ 
(
˛˛ 
)
˛˛ 
;
˛˛ 
DialogManager
ˇˇ 
.
ˇˇ %
ShowSuccessMessageAlert
ˇˇ 5
(
ˇˇ5 6

Properties
ˇˇ6 @
.
ˇˇ@ A
	Resources
ˇˇA J
.
ˇˇJ K"
lbMatchStatusYouLost
ˇˇK _
)
ˇˇ_ `
;
ˇˇ` a
ExitUseSinglenton
ÄÄ !
(
ÄÄ! "
)
ÄÄ" #
;
ÄÄ# $
}
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ 
NotifyYouWon
ÑÑ  
(
ÑÑ  !
)
ÑÑ! "
{
ÑÑ# $!
DisableGameControls
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
Application
ÜÜ 
.
ÜÜ 
Current
ÜÜ 
.
ÜÜ  

Dispatcher
ÜÜ  *
.
ÜÜ* +
Invoke
ÜÜ+ 1
(
ÜÜ1 2
(
ÜÜ2 3
)
ÜÜ3 4
=>
ÜÜ5 7
{
ÜÜ8 9
lbMatchStatus
áá 
.
áá 
Content
áá %
=
áá& '

Properties
áá( 2
.
áá2 3
	Resources
áá3 <
.
áá< =!
lbMatchStatusYouWon
áá= P
;
ááP Q
lbMatchStatus
àà 
.
àà 

Foreground
àà (
=
àà) *
Brushes
àà+ 2
.
àà2 3
Green
àà3 8
;
àà8 9
drawingCanvas
ââ 
.
ââ 
	IsEnabled
ââ '
=
ââ( )
false
ââ* /
;
ââ/ 0
_timer
ää 
?
ää 
.
ää 
Stop
ää 
(
ää 
)
ää 
;
ää 
DialogManager
ãã 
.
ãã %
ShowSuccessMessageAlert
ãã 5
(
ãã5 6

Properties
ãã6 @
.
ãã@ A
	Resources
ããA J
.
ããJ K!
lbMatchStatusYouWon
ããK ^
)
ãã^ _
;
ãã_ `
ExitUseSinglenton
åå !
(
åå! "
)
åå" #
;
åå# $
}
çç 
)
çç 
;
çç 
}
éé 	
public
êê 
void
êê 

NotifyDraw
êê 
(
êê 
)
êê  
{
êê! "!
DisableGameControls
ëë 
(
ëë  
)
ëë  !
;
ëë! "
Application
íí 
.
íí 
Current
íí 
.
íí  

Dispatcher
íí  *
.
íí* +
Invoke
íí+ 1
(
íí1 2
(
íí2 3
)
íí3 4
=>
íí5 7
{
íí8 9
lbMatchStatus
ìì 
.
ìì 
Content
ìì %
=
ìì& '

Properties
ìì( 2
.
ìì2 3
	Resources
ìì3 <
.
ìì< =
lbMatchStatusDraw
ìì= N
;
ììN O
lbMatchStatus
îî 
.
îî 

Foreground
îî (
=
îî) *
Brushes
îî+ 2
.
îî2 3
Orange
îî3 9
;
îî9 :
drawingCanvas
ïï 
.
ïï 
	IsEnabled
ïï '
=
ïï( )
false
ïï* /
;
ïï/ 0
_timer
ññ 
?
ññ 
.
ññ 
Stop
ññ 
(
ññ 
)
ññ 
;
ññ 
DialogManager
óó 
.
óó %
ShowSuccessMessageAlert
óó 5
(
óó5 6

Properties
óó6 @
.
óó@ A
	Resources
óóA J
.
óóJ K
lbMatchStatusDraw
óóK \
)
óó\ ]
;
óó] ^
ExitUseSinglenton
òò !
(
òò! "
)
òò" #
;
òò# $
}
ôô 
)
ôô 
;
ôô 
}
öö 	
public
úú 
void
úú !
DisableGameControls
úú '
(
úú' (
)
úú( )
{
úú* +
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
drawingCanvas
ûû 
.
ûû 
	IsEnabled
ûû '
=
ûû( )
false
ûû* /
;
ûû/ 0
_timer
üü 
?
üü 
.
üü 
Stop
üü 
(
üü 
)
üü 
;
üü 
}
†† 
)
†† 
;
†† 
}
°° 	
public
££ 
void
££ 
NotifyPlayerLeft
££ $
(
££$ %
)
££% &
{
££' (!
DisableGameControls
§§ 
(
§§  
)
§§  !
;
§§! "

Dispatcher
•• 
.
•• 
Invoke
•• 
(
•• 
async
•• #
(
••$ %
)
••% &
=>
••' )
{
••* +
await
¶¶ 
Task
¶¶ 
.
¶¶ 
Run
¶¶ 
(
¶¶ 
(
¶¶  
)
¶¶  !
=>
¶¶" $
DialogManager
ßß 
.
ßß %
ShowWarningMessageAlert
ßß 5
(
ßß5 6

Properties
ßß6 @
.
ßß@ A
	Resources
ßßA J
.
ßßJ K%
dialogPlayerLeftWarning
ßßK b
)
ßßb c
)
®® 
;
®® 
ExitUseSinglenton
©© !
(
©©! "
)
©©" #
;
©©# $
}
™™ 
)
™™ 
;
™™ 
}
´´ 	
}
¨¨ 
}≠≠ -
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
;F G
LoadLeaderboardData 
(  
)  !
;! "
} 	
private 
async 
Task 
LoadLeaderboardData .
(. /
)/ 0
{1 2
await $
LoadLeaderboardDataAsync *
(* +
)+ ,
;, -
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
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
.H I#
dialogEndPointExceptionI `
)` a
;a b
}   
else   
if   
(   
	exception    
is  ! #
TimeoutException  $ 4
)  4 5
{  6 7
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
(""3 4

Properties""4 >
.""> ?
	Resources""? H
.""H I"
dialogTimeOutException""I _
)""_ `
;""` a
}## 
else## 
if## 
(## 
	exception##  
is##! #"
CommunicationException##$ :
)##: ;
{##< =
logger$$ 
.$$ 
LogError$$ 
($$  

methodName$$  *
,$$* +
	exception$$, 5
)$$5 6
;$$6 7
DialogManager%% 
.%% !
ShowErrorMessageAlert%% 3
(%%3 4

Properties%%4 >
.%%> ?
	Resources%%? H
.%%H I'
dialogComunicationException%%I d
)%%d e
;%%e f
}&& 
else&& 
{&& 
logger'' 
.'' 
LogError'' 
(''  

methodName''  *
,''* +
	exception'', 5
)''5 6
;''6 7
DialogManager(( 
.(( !
ShowErrorMessageAlert(( 3
(((3 4
string((4 :
.((: ;
Format((; A
(((A B

Properties((B L
.((L M
	Resources((M V
.((V W!
dialogUnexpectedError((W l
,((l m
	exception((n w
.((w x
Message((x 
)	(( Ä
)
((Ä Å
;
((Å Ç
}** 
}++ 	
private-- 
async-- 
Task-- $
LoadLeaderboardDataAsync-- 3
(--3 4
)--4 5
{--6 7
try.. 
{.. 
List// 
<// 
Profile// 
>// 
highestScores// +
=//, -
(//. /
await/// 4%
_leaderboardManagerClient//5 N
.//N O!
GetHighestScoresAsync//O d
(//d e
)//e f
)//f g
.//g h
ToList//h n
(//n o
)//o p
;//p q
lstViewLeaderboard00 "
.00" #
ItemsSource00# .
=00/ 0
highestScores001 >
;00> ?
}11 
catch11 
(11 
	Exception11 
	exception11 (
)11( )
{11* +
HandleException22 
(22  
	exception22  )
,22) *
nameof22+ 1
(221 2$
LoadLeaderboardDataAsync222 J
)22J K
)22K L
;22L M
}33 
}44 	
private66 
void66 
BtnBack_Click66 "
(66" #
object66# )
sender66* 0
,660 1
RoutedEventArgs662 A
e66B C
)66C D
{66E F
MenuView77 
menuView77 
=77 
new77  #
MenuView77$ ,
(77, -
)77- .
;77. /
if88 
(88 
this88 
.88 
NavigationService88 &
!=88' )
null88* .
)88. /
{880 1
this99 
.99 
NavigationService99 &
.99& '
Navigate99' /
(99/ 0
menuView990 8
)998 9
;999 :
}:: 
else:: 
{:: 
DialogManager;; 
.;; !
ShowErrorMessageAlert;; 3
(;;3 4

Properties;;4 >
.;;> ?
	Resources;;? H
.;;H I!
dialogNavigationError;;I ^
);;^ _
;;;_ `
}<< 
}== 	
}>> 
}?? ´U
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
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
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
.!!H I#
dialogEndPointException!!I `
)!!` a
;!!a b
}"" 
else"" 
if"" 
("" 
	exception""  
is""! #
TimeoutException""$ 4
)""4 5
{""6 7
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
.$$H I"
dialogTimeOutException$$I _
)$$_ `
;$$` a
}%% 
else%% 
if%% 
(%% 
	exception%%  
is%%! #"
CommunicationException%%$ :
)%%: ;
{%%< =
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
(''3 4

Properties''4 >
.''> ?
	Resources''? H
.''H I'
dialogComunicationException''I d
)''d e
;''e f
}(( 
else(( 
{(( 
logger)) 
.)) 
LogError)) 
())  

methodName))  *
,))* +
	exception)), 5
)))5 6
;))6 7
DialogManager** 
.** !
ShowErrorMessageAlert** 3
(**3 4
string**4 :
.**: ;
Format**; A
(**A B

Properties**B L
.**L M
	Resources**M V
.**V W!
dialogUnexpectedError**W l
,**l m
	exception**n w
.**w x
Message**x 
)	** Ä
)
**Ä Å
;
**Å Ç
},, 
}-- 	
private// 
void//  
InitializeFormValues// )
(//) *
)//* +
{//, -
cboxNode00 
.00 
ItemsSource00  
=00! "
new00# &
List00' +
<00+ ,
int00, /
>00/ 0
{001 2
$num003 4
,004 5
$num006 8
,008 9
$num00: <
,00< =
$num00> @
,00@ A
$num00B D
,00D E
$num00F H
,00H I
$num00J L
}00M N
;00N O
cboxNode11 
.11 
SelectedIndex11 "
=11# $
$num11% &
;11& '
}22 	
private44 
async44 
void44  
BtnCreateLobby_Click44 /
(44/ 0
object440 6
sender447 =
,44= >
RoutedEventArgs44? N
e44O P
)44P Q
{44R S
string55 
gameName55 
=55 
txtNameLobby55 *
.55* +
Text55+ /
.55/ 0
Trim550 4
(554 5
)555 6
;556 7
if66 
(66 
!66 
ValidationGameName66 #
(66# $
gameName66$ ,
)66, -
)66- .
{66/ 0
return77 
;77 
}88 
if99 
(99 
cboxNode99 
.99 
SelectedItem99 %
==99& (
null99) -
)99- .
{99/ 0
DialogManager:: 
.:: #
ShowWarningMessageAlert:: 5
(::5 6

Properties::6 @
.::@ A
	Resources::A J
.::J K"
dialogSelectNodesError::K a
)::a b
;::b c
return;; 
;;; 
}<< 
int== 
	nodeCount== 
=== 
(== 
int==  
)==  !
cboxNode==! )
.==) *
SelectedItem==* 6
;==6 7
TimeSpan>> 
duration>> 
=>> 
TimeSpan>>  (
.>>( )
FromMinutes>>) 4
(>>4 5
$num>>5 6
)>>6 7
;>>7 8
try?? 
{?? 
var@@ 
owner@@ 
=@@ 
new@@ 
Profile@@  '
{@@( )
	IdProfileAA 
=AA  
UserProfileSingletonAA  4
.AA4 5
	IdProfileAA5 >
,AA> ?
UsernameBB 
=BB  
UserProfileSingletonBB 3
.BB3 4
UserNameBB4 <
}CC 
;CC 
stringDD 
	lobbyCodeDD  
=DD! "
awaitDD# (
_lobbyBrowserDD) 6
.DD6 7
CreateLobbyAsyncDD7 G
(DDG H
gameNameDDH P
,DDP Q
	nodeCountDDR [
,DD[ \
ownerDD] b
,DDb c
durationDDd l
)DDl m
;DDm n
ifEE 
(EE 
!EE 
stringEE 
.EE 
IsNullOrEmptyEE )
(EE) *
	lobbyCodeEE* 3
)EE3 4
)EE4 5
{EE6 7
GoToLobbyViewFF !
(FF! "
	lobbyCodeFF" +
)FF+ ,
;FF, -
}GG 
elseGG 
{GG 
DialogManagerHH !
.HH! "#
ShowWarningMessageAlertHH" 9
(HH9 :

PropertiesHH: D
.HHD E
	ResourcesHHE N
.HHN O$
dialogLobbyCreationErrorHHO g
)HHg h
;HHh i
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
BtnCreateLobby_ClickKK2 F
)KKF G
)KKG H
;KKH I
}LL 
}MM 	
publicOO 
boolOO 
ValidationGameNameOO &
(OO& '
stringOO' -
gameNameOO. 6
)OO6 7
{OO8 9
boolPP 
resultPP 
=PP 
falsePP 
;PP  
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrWhiteSpaceQQ )
(QQ) *
txtNameLobbyQQ* 6
.QQ6 7
TextQQ7 ;
)QQ; <
)QQ< =
{QQ> ?
DialogManagerRR 
.RR #
ShowWarningMessageAlertRR 5
(RR5 6

PropertiesRR6 @
.RR@ A
	ResourcesRRA J
.RRJ K$
dialogEnterGameNameErrorRRK c
)RRc d
;RRd e
returnSS 
resultSS 
;SS 
}TT 
ifUU 
(UU 
!UU 
	ValidadorUU 
.UU 
ValidateGameNameUU +
(UU+ ,
gameNameUU, 4
)UU4 5
)UU5 6
{UU7 8
DialogManagerVV 
.VV #
ShowWarningMessageAlertVV 5
(VV5 6

PropertiesVV6 @
.VV@ A
	ResourcesVVA J
.VVJ K&
dialogInvalidGameNameErrorVVK e
)VVe f
;VVf g
returnWW 
resultWW 
;WW 
}XX 
resultYY 
=YY 
trueYY 
;YY 
returnZZ 
resultZZ 
;ZZ 
}[[ 	
private]] 
void]] 
BtnBack_Click]] "
(]]" #
object]]# )
sender]]* 0
,]]0 1
	EventArgs]]2 ;
e]]< =
)]]= >
{]]? @
GoToMenuView^^ 
(^^ 
)^^ 
;^^ 
}__ 	
privateaa 
voidaa 
GoToLobbyViewaa "
(aa" #
stringaa# )
	lobbyCodeaa* 3
)aa3 4
{aa5 6
	LobbyViewbb 
	lobbyViewbb 
=bb  !
newbb" %
	LobbyViewbb& /
(bb/ 0
	lobbyCodebb0 9
)bb9 :
;bb: ;
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
(dd/ 0
	lobbyViewdd0 9
)dd9 :
;dd: ;
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
}hh 	
privatejj 
voidjj 
GoToMenuViewjj !
(jj! "
)jj" #
{jj$ %
MenuViewkk 
menuViewkk 
=kk 
newkk  #
MenuViewkk$ ,
(kk, -
)kk- .
;kk. /
ifll 
(ll 
thisll 
.ll 
NavigationServicell &
!=ll' )
nullll* .
)ll. /
{ll0 1
thismm 
.mm 
NavigationServicemm &
.mm& '
Navigatemm' /
(mm/ 0
menuViewmm0 8
)mm8 9
;mm9 :
}nn 
elsenn 
{nn 
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I!
dialogNavigationErrorooI ^
)oo^ _
;oo_ `
}pp 
}qq 	
}rr 
}ss º;
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
public 
CodeGameMatch 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
_lobbyBrowser 
= 
new 
LobbyBrowserClient  2
(2 3
)3 4
;4 5
} 	
private 
void 
HandleException $
($ %
	Exception% .
	exception/ 8
,8 9
string: @

methodNameA K
)K L
{M N
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
if 
( 
	exception 
is %
EndpointNotFoundException 6
)6 7
{8 9
logger 
. 
LogError 
(  

methodName  *
,* +
	exception, 5
)5 6
;6 7
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I#
dialogEndPointExceptionI `
)` a
;a b
} 
else 
if 
( 
	exception  
is! #
TimeoutException$ 4
)4 5
{6 7
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
.H I"
dialogTimeOutExceptionI _
)_ `
;` a
} 
else 
if 
( 
	exception  
is! #"
CommunicationException$ :
): ;
{< =
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
.H I'
dialogComunicationExceptionI d
)d e
;e f
} 
else 
{ 
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
(3 4
string4 :
.: ;
Format; A
(A B

PropertiesB L
.L M
	ResourcesM V
.V W!
dialogUnexpectedErrorW l
,l m
	exceptionn w
.w x
Messagex 
)	 Ä
)
Ä Å
;
Å Ç
}!! 
}"" 	
public$$ 
void$$  
GenerateGuestProfile$$ (
($$( )
)$$) *
{$$+ ,
try%% 
{%%  
UserProfileSingleton&& $
.&&$ %
CreateGuestInstance&&% 8
(&&8 9
)&&9 :
;&&: ;
}'' 
catch'' 
('' 
	Exception'' 
	exception'' (
)''( )
{''* +
HandleException(( 
(((  
	exception((  )
,(() *
nameof((+ 1
(((1 2 
GenerateGuestProfile((2 F
)((F G
)((G H
;((H I
})) 
}** 	
private,, 
void,, 
BtnBack_Click,, "
(,," #
object,,# )
sender,,* 0
,,,0 1
RoutedEventArgs,,2 A
e,,B C
),,C D
{,,E F
	LoginView-- 
	loginView-- 
=--  !
new--" %
	LoginView--& /
(--/ 0
)--0 1
;--1 2
this.. 
... 
NavigationService.. "
..." #
Navigate..# +
(..+ ,
	loginView.., 5
)..5 6
;..6 7
}// 	
public11 
async11 
void11 
BtnLogin_Click11 (
(11( )
object11) /
sender110 6
,116 7
RoutedEventArgs118 G
e11H I
)11I J
{11K L 
GenerateGuestProfile22  
(22  !
)22! "
;22" #
try33 
{33 
if44 
(44 
!44 
string44 
.44 
IsNullOrEmpty44 )
(44) *
txtCodeLobby44* 6
.446 7
Text447 ;
)44; <
)44< =
{44> ?
string55 
	lobbyCode55 $
=55% &
txtCodeLobby55' 3
.553 4
Text554 8
;558 9
var66 
guestProfile66 $
=66% &
new66' *
Profile66+ 2
{663 4
	IdProfile77 !
=77" # 
UserProfileSingleton77$ 8
.778 9
	IdProfile779 B
,77B C
Username88  
=88! " 
UserProfileSingleton88# 7
.887 8
UserName888 @
,88@ A
PicturePath99 #
=99$ % 
UserProfileSingleton99& :
.99: ;
PicPath99; B
,99B C
Score:: 
=::  
UserProfileSingleton::  4
.::4 5
Score::5 :
};; 
;;; 
bool<< 
joined<< 
=<<  !
await<<" '
_lobbyBrowser<<( 5
.<<5 6
JoinLobbyAsync<<6 D
(<<D E
	lobbyCode<<E N
,<<N O
guestProfile<<P \
)<<\ ]
;<<] ^
if== 
(== 
joined== 
)== 
{==  !
	LobbyView>> !
	lobbyView>>" +
=>>, -
new>>. 1
	LobbyView>>2 ;
(>>; <
	lobbyCode>>< E
)>>E F
;>>F G
this?? 
.?? 
NavigationService?? .
.??. /
Navigate??/ 7
(??7 8
	lobbyView??8 A
)??A B
;??B C
}@@ 
else@@ 
{@@ 
DialogManagerAA %
.AA% &#
ShowWarningMessageAlertAA& =
(AA= >

PropertiesAA> H
.AAH I
	ResourcesAAI R
.AAR S 
dialogLobbyJoinErrorAAS g
)AAg h
;AAh i
}BB 
}CC 
elseCC 
{CC 
DialogManagerDD !
.DD! "!
ShowErrorMessageAlertDD" 7
(DD7 8

PropertiesDD8 B
.DDB C
	ResourcesDDC L
.DDL M0
$dialogInvalidGuestProfileOrLobbyCodeDDM q
)DDq r
;DDr s
}EE 
}FF 
catchFF 
(FF 
	ExceptionFF 
	exceptionFF (
)FF( )
{FF* +
HandleExceptionGG 
(GG  
	exceptionGG  )
,GG) *
nameofGG+ 1
(GG1 2
BtnLogin_ClickGG2 @
)GG@ A
)GGA B
;GGB C
}HH 
}II 	
}JJ 
}KK ´Q
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
ö ù
)
ù û
)
û ü
;
ü †
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
({ |
$num| 
)	 Ä
)
Ä Å
;
Å Ç
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
		Ä É
)
		É Ñ
)
		Ñ Ö
;
		Ö Ü
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
 Ç
)


Ç É
)


É Ñ
;


Ñ Ö
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
$num{ ~
)~ 
)	 Ä
;
Ä Å
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
$num	} Ä
)
Ä Å
)
Å Ç
;
Ç É
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
$num$$S V
&&$$W Y

emailRegex$$Z d
.$$d e
IsMatch$$e l
($$l m
cleanedEmail$$m y
)$$y z
)$$z {
{$$| }
try%% 
{%% 
return&& 
true&& 
;&&  
}'' 
catch'' 
('' 
FormatException'' (
)''( )
{''* +
return(( 
false((  
;((  !
})) 
}** 
return++ 
false++ 
;++ 
},, 	
public.. 
static.. 
bool.. 
ValidateGameName.. +
(..+ ,
string.., 2
gameName..3 ;
)..; <
{..= >
string// 
cleanedGameName// "
=//# $
gameName//% -
?//- .
.//. /
Trim/// 3
(//3 4
)//4 5
;//5 6
return00 
!00 
string00 
.00 
IsNullOrWhiteSpace00 -
(00- .
cleanedGameName00. =
)00= >
&&00? A 
ValidateRegexPattern00B V
(00V W
cleanedGameName00W f
,00f g
gameNameRegex00h u
)00u v
;00v w
}11 	
public33 
static33 
bool33 
ValidateCode33 '
(33' (
string33( .
	codeLobby33/ 8
)338 9
{33: ;
string44 
codeCleaned44 
=44  
Regex44! &
.44& '
Replace44' .
(44. /
	codeLobby44/ 8
.448 9
Trim449 =
(44= >
)44> ?
,44? @
$str44A G
,44G H
$str44I K
)44K L
;44L M
return55 
!55 
string55 
.55 
IsNullOrWhiteSpace55 -
(55- .
codeCleaned55. 9
)559 :
&&55; = 
ValidateRegexPattern55> R
(55R S
codeCleaned55S ^
,55^ _
codeLobbyMatchRegex55` s
)55s t
;55t u
}66 	
public88 
static88 
bool88 
ValidateState88 (
(88( )
string88) /
state880 5
)885 6
{887 8
string99 
stateCleaned99 
=99  !
Regex99" '
.99' (
Replace99( /
(99/ 0
state990 5
.995 6
Trim996 :
(99: ;
)99; <
,99< =
$str99> D
,99D E
$str99F H
)99H I
;99I J
return:: 
!:: 
string:: 
.:: 
IsNullOrWhiteSpace:: -
(::- .
stateCleaned::. :
)::: ;
&&::< > 
ValidateRegexPattern::? S
(::S T
stateCleaned::T `
,::` a

stateRegex::b l
)::l m
;::m n
};; 	
public== 
static== 
void== 
RegexPattern== '
(==' (
string==( .
input==/ 4
)==4 5
{==6 7
bool>> 
isEmailValid>> 
=>>  
ValidateRegexPattern>>  4
(>>4 5
input>>5 :
,>>: ;

emailRegex>>< F
)>>F G
;>>G H
bool?? 
isNumber?? 
=??  
ValidateRegexPattern?? 0
(??0 1
input??1 6
,??6 7
new??8 ;
Regex??< A
(??A B
$str??B J
,??J K
RegexOptions??L X
.??X Y
None??Y ]
,??] ^
TimeSpan??_ g
.??g h
FromMilliseconds??h x
(??x y
$num??y |
)??| }
)??} ~
)??~ 
;	?? Ä
var@@ 
	isLetterA@@ 
=@@ 
Regex@@ !
.@@! "
IsMatch@@" )
(@@) *
input@@* /
,@@/ 0
$str@@1 8
,@@8 9
RegexOptions@@: F
.@@F G
None@@G K
)@@K L
;@@L M
	AppDomainAA 
.AA 
CurrentDomainAA #
.AA# $
SetDataAA$ +
(AA+ ,
$strAA, I
,AAI J
TimeSpanAAK S
.AAS T
FromMillisecondsAAT d
(AAd e
$numAAe h
)AAh i
)AAi j
;AAj k
ConsoleBB 
.BB 
	WriteLineBB 
(BB 
$"BB  
$strBB  .
{BB. /
isEmailValidBB/ ;
}BB; <
$strBB< O
{BBO P
isNumberBBP X
}BBX Y
$strBBY o
{BBo p
	isLetterABBp y
}BBy z
"BBz {
)BB{ |
;BB| }
}CC 	
}DD 
}EE ™4
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
public 
static 
void 
CreateInstance )
() *
Profile* 1
profile2 9
)9 :
{; <
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
public$$ 
static$$ 
void$$ 
CreateGuestInstance$$ .
($$. /
)$$/ 0
{$$1 2
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
public,, 
static,, 
void,, 
ResetInstance,, (
(,,( )
),,) *
{,,+ ,
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
}WW „
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
public

 
LoggerManager

 
(

 
Type

 !
type

" &
)

& '
{

( )
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
static 
ILog 
	GetLogger $
($ %
Type% )
type* .
). /
{0 1
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{, -
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
ex7 9
)9 :
{; <
Logger 
. 
Error 
( 
message  
,  !
ex" $
)$ %
;% &
} 	
public 
void 
LogError 
( 
	Exception &
ex' )
)) *
{+ ,
Logger 
. 
Error 
( 
ex 
) 
; 
} 	
public 
void 
LogFatal 
( 
	Exception &
ex' )
)) *
{+ ,
Logger 
. 
Fatal 
( 
ex 
) 
; 
}   	
public"" 
void"" 
LogWarn"" 
("" 
	Exception"" %
ex""& (
)""( )
{""* +
Logger## 
.## 
Warn## 
(## 
ex## 
)## 
;## 
}$$ 	
public&& 
void&& 
LogDebug&& 
(&& 
	Exception&& &
ex&&' )
)&&) *
{&&+ ,
Logger'' 
.'' 
Debug'' 
('' 
ex'' 
)'' 
;'' 
}(( 	
})) 
}** Ÿ
&C:\TripasDeGatoCliente\Logic\Hasher.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
static 
class 
Hasher  
{! "
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
} ˆ
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
public 
static 
void 
CreateInstance )
() *
string* 0
code1 5
)5 6
{7 8
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
public 
static 
void 
ResetSingleton )
() *
)* +
{, -
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
}&& ºd
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
private		 
readonly		 
List		 
<		 
Point		 #
>		# $
permittedArea		% 2
;		2 3
public 
DrawingValidation  
(  !
)! "
{# $
permittedArea 
= 
new 
List  $
<$ %
Point% *
>* +
{, -
new 
Point 
( 
$num 
, 
$num  
)  !
,! "
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
$num !
)! "
," #
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
$num "
)" #
,# $
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
$numDD 
,DD 
$numDD !
)DD! "
,DD" #
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
$numHH 
,HH 
$numHH  
)HH  !
,HH! "
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
$numKK 
,KK 
$numKK !
)KK! "
,KK" #
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
$numOO  
)OO  !
,OO! "
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
$numRR 
,RR 
$numRR  
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
,TT! "
}UU 
;UU 
}VV 	
publicXX 
boolXX "
IsPointInForbiddenAreaXX *
(XX* +
PointXX+ 0
pointXX1 6
)XX6 7
{XX8 9
returnYY 
!YY  
IsPointInDrawingAreaYY (
(YY( )
pointYY) .
)YY. /
;YY/ 0
}ZZ 	
public\\ 
bool\\  
IsPointInDrawingArea\\ (
(\\( )
Point\\) .
point\\/ 4
)\\4 5
{\\6 7
int]] 
intersections]] 
=]] 
$num]]  !
;]]! "
int^^ 
count^^ 
=^^ 
permittedArea^^ %
.^^% &
Count^^& +
;^^+ ,
for__ 
(__ 
int__ 
i__ 
=__ 
$num__ 
;__ 
i__ 
<__ 
count__  %
;__% &
i__' (
++__( *
)__* +
{__, -
Point`` 
p1`` 
=`` 
permittedArea`` (
[``( )
i``) *
]``* +
;``+ ,
Pointaa 
p2aa 
=aa 
permittedAreaaa (
[aa( )
(aa) *
iaa* +
+aa, -
$numaa. /
)aa/ 0
%aa1 2
countaa3 8
]aa8 9
;aa9 :
ifbb 
(bb 
(bb 
pointbb 
.bb 
Ybb 
>bb 
p1bb !
.bb! "
Ybb" #
)bb# $
!=bb% '
(bb( )
pointbb) .
.bb. /
Ybb/ 0
>bb1 2
p2bb3 5
.bb5 6
Ybb6 7
)bb7 8
)bb8 9
{bb: ;
doublecc 
xIntersectioncc (
=cc) *
(cc+ ,
pointcc, 1
.cc1 2
Ycc2 3
-cc4 5
p1cc6 8
.cc8 9
Ycc9 :
)cc: ;
*cc< =
(cc> ?
p2cc? A
.ccA B
XccB C
-ccD E
p1ccF H
.ccH I
XccI J
)ccJ K
/ccL M
(ccN O
p2ccO Q
.ccQ R
YccR S
-ccT U
p1ccV X
.ccX Y
YccY Z
)ccZ [
+cc\ ]
p1cc^ `
.cc` a
Xcca b
;ccb c
ifdd 
(dd 
pointdd 
.dd 
Xdd 
<dd  !
xIntersectiondd" /
)dd/ 0
{dd1 2
intersectionsee %
++ee% '
;ee' (
}ff 
}gg 
}hh 
returnii 
(ii 
intersectionsii !
%ii" #
$numii$ %
)ii% &
!=ii' )
$numii* +
;ii+ ,
}jj 	
}kk 
}ll ó
-C:\TripasDeGatoCliente\Logic\DialogManager.cs
	namespace		 	
TripasDeGatoCliente		
 
.		 
Logic		 #
{		$ %
public

 

static

 
class

 
DialogManager

 %
{

& '
public 
static 
void !
ShowErrorMessageAlert 0
(0 1
string1 7
errorMessage8 D
)D E
{F G

MessageBox 
. 
Show 
( 
errorMessage (
,( )
TripasDeGatoCliente* =
.= >

Properties> H
.H I
	ResourcesI R
.R S
dialogTitleErrorS c
,c d
MessageBoxButtone u
.u v
OKv x
,x y
MessageBoxImage	z â
.
â ä
Error
ä è
)
è ê
;
ê ë
} 	
public 
static 
void #
ShowWarningMessageAlert 2
(2 3
string3 9
warningMessage: H
)H I
{J K

MessageBox 
. 
Show 
( 
warningMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleWarningU g
,g h
MessageBoxButtoni y
.y z
OKz |
,| }
MessageBoxImage	~ ç
.
ç é
Warning
é ï
)
ï ñ
;
ñ ó
} 	
public 
static 
void #
ShowSuccessMessageAlert 2
(2 3
string3 9
successMessage: H
)H I
{J K

MessageBox 
. 
Show 
( 
successMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleSuccesU f
,f g
MessageBoxButtonh x
.x y
OKy {
,{ |
MessageBoxImage	} å
.
å ç
Information
ç ò
)
ò ô
;
ô ö
} 	
public 
static 
void (
ShowConfirmationMessageAlert 7
(7 8
string8 >
confirmMessage? M
)M N
{O P

MessageBox 
. 
Show 
( 
confirmMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U#
dialogTitleConfirmationU l
,l m
MessageBoxButtonn ~
.~ 
OK	 Å
,
Å Ç
MessageBoxImage
É í
.
í ì
Question
ì õ
)
õ ú
;
ú ù
} 	
} 
} ‡
0C:\TripasDeGatoCliente\Logic\ConstantsManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
static 
class 
ConstantsManager *
{+ ,
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
private 
ConnectionManager !
(! "
)" #
{$ %
}& '
public 
void "
InitializeLobbyManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
LobbyManager 
= 
new 
LobbyManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public 
void !
InitializeChatManager )
() *
InstanceContext* 9
context: A
)A B
{C D
ChatManager 
= 
new 
ChatManagerClient /
(/ 0
context0 7
)7 8
;8 9
} 	
public 
void "
InitializeMatchManager *
(* +
InstanceContext+ :
context; B
)B C
{D E
MatchManager 
= 
new 
MatchManagerClient 1
(1 2
context2 9
)9 :
;: ;
} 	
public 
async 
Task 
DisconnectAllAsync ,
(, -
)- .
{/ 0
if 
( 
LobbyManager 
!= 
null  $
&&% ' 
UserProfileSingleton( <
.< =
	LobbyCode= F
!=G I
$strJ R
)R S
{T U
await 
LobbyManager "
." #
LeaveLobbyAsync# 2
(2 3 
UserProfileSingleton3 G
.G H
	LobbyCodeH Q
,Q R 
UserProfileSingletonS g
.g h
	IdProfileh q
)q r
;r s 
UserProfileSingleton   $
.  $ %
ResetLobbyCode  % 3
(  3 4
)  4 5
;  5 6
}!! 
if## 
(## 
ChatManager## 
!=## 
null## #
&&##$ & 
UserProfileSingleton##' ;
.##; <
ChatCode##< D
!=##E G
$str##H P
)##P Q
{##R S
await$$ 
ChatManager$$ !
.$$! "
LeaveChatAsync$$" 0
($$0 1 
UserProfileSingleton$$1 E
.$$E F
UserName$$F N
,$$N O 
UserProfileSingleton$$P d
.$$d e
ChatCode$$e m
)$$m n
;$$n o 
UserProfileSingleton%% $
.%%$ %
ResetChatCode%%% 2
(%%2 3
)%%3 4
;%%4 5
}&& 
if(( 
((( 
MatchManager(( 
!=(( 
null((  $
&&((% ' 
UserProfileSingleton((( <
.((< =
	MatchCode((= F
!=((G I
$str((J R
)((R S
{((T U
await)) 
MatchManager)) "
.))" #
LeaveMatchAsync))# 2
())2 3 
UserProfileSingleton))3 G
.))G H
	MatchCode))H Q
,))Q R 
UserProfileSingleton))S g
.))g h
UserName))h p
)))p q
;))q r 
UserProfileSingleton** $
.**$ %
ResetMatchCode**% 3
(**3 4
)**4 5
;**5 6
}++ 
},, 	
public.. 
void.. 
ReleaseLobbyManager.. '
(..' (
)..( )
{..* +
LobbyManager// 
=// 
null// 
;//  
}00 	
public22 
void22 
ReleaseChatManager22 &
(22& '
)22' (
{22) *
ChatManager33 
=33 
null33 
;33 
}44 	
public66 
void66 
ReleaseMatchManager66 '
(66' (
)66( )
{66* +
MatchManager77 
=77 
null77 
;77  
}88 	
}99 
}:: 