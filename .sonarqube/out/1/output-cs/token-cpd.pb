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
}'' �O
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
}cc ��
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
)	## �
)
##� �
;
##� �
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

Properties	)) �
.
))� �
	Resources
))� �
.
))� �
lbUnknownUser
))� �
;
))� �
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
}�� ��
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
)	SS �
)
SS� �
;
SS� �
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
BtnSavePassword_Click
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
}�� ��
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
)	 �
)
� �
;
� �
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
txtValidationCode4	xxs �
.
xx� �
Text
xx� �
}
xx� �
{
xx� � 
txtValidationCode5
xx� �
.
xx� �
Text
xx� �
}
xx� �
{
xx� � 
txtValidationCode6
xx� �
.
xx� �
Text
xx� �
}
xx� �
"
xx� �
;
xx� �
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
��M N
verificationGrid
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
	Collapsed
��5 >
;
��> ?
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
�� 
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
}�� ��
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
)	++ �
)
++� �
;
++� �
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
�� 
void
�� 
GoToPerfilView
�� #
(
��# $
)
��$ %
{
��& '
ProfileView
�� 
profileView
�� #
=
��$ %
new
��& )
ProfileView
��* 5
(
��5 6
)
��6 7
;
��7 8
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
profileView
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
)	DD �
)
DD� �
;
DD� �
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
	IdProfile	]]z �
)
]]� �
)
]]� �
;
]]� �
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
.	 �
	Resources
� �
.
� � 
lbWaitingForPlayer
� �
;
� �
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
��9 <
var
��= @
host
��A E
)
��E F
&&
��G I
host
��J N
.
��N O
Username
��O W
==
��X Z"
UserProfileSingleton
��[ o
.
��o p
UserName
��p x
;
��x y
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
��A B
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
��J K
_lobbyManager
�� 
.
�� 

StartMatch
�� $
(
��$ %

_lobbyCode
��% /
)
��/ 0
;
��0 1
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
userName
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
}�� ��
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
)	?? �
)
??� �
;
??� �
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
UserName	SSx �
)
SS� �
;
SS� �
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
��k l
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
}�� �-
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
)	(( �
)
((� �
;
((� �
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
}?? �U
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
)	** �
)
**� �
;
**� �
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
}ss �;
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
)	 �
)
� �
;
� �
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
}KK �Q
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
({ |
$num| 
)	 �
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
$num{ ~
)~ 
)	 �
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
;	?? �
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
}EE �4
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
}** �
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
}&& �d
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
}ll �
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
MessageBoxImage	z �
.
� �
Error
� �
)
� �
;
� �
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
MessageBoxImage	~ �
.
� �
Warning
� �
)
� �
;
� �
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
MessageBoxImage	} �
.
� �
Information
� �
)
� �
;
� �
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
OK	 �
,
� �
MessageBoxImage
� �
.
� �
Question
� �
)
� �
;
� �
} 	
} 
} �
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