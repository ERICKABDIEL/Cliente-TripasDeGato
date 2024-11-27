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
]77) *õ9
)C:\TripasDeGatoCliente\MainWindow.xaml.cs
	namespace 	
TripasDeGatoCliente
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{- .
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
private 
ChatManagerClient !
chatManager" -
;- .
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
;- .
lobbyManager 
= 
new 
LobbyManagerClient 1
(1 2
new2 5
InstanceContext6 E
(E F
thisF J
)J K
)K L
;L M
chatManager 
= 
new 
ChatManagerClient /
(/ 0
new0 3
InstanceContext4 C
(C D
thisD H
)H I
)I J
;J K
} 	
private 
async 
void 
MainWindowClosing ,
(, -
object- 3
sender4 :
,: ;
System< B
.B C
ComponentModelC Q
.Q R
CancelEventArgsR a
eb c
)c d
{e f
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
;D E
try 
{ 
if 
(  
UserProfileSingleton (
.( )
Instance) 1
!=2 4
null5 9
&&: < 
UserProfileSingleton= Q
.Q R
	IdProfileR [
!=\ ^
$num_ `
)` a
{b c
SignOut 
( 
) 
; 
} 
else 
{ 
	OnClosing   
(   
)   
;    
}!! 
}"" 
catch"" 
("" %
EndpointNotFoundException"" .%
endpointNotFoundException""/ H
)""H I
{""J K
logger## 
.## 
LogError## 
(##  %
endpointNotFoundException##  9
)##9 :
;##: ;
DialogManager$$ 
.$$ !
ShowErrorMessageAlert$$ 3
($$3 4

Properties$$4 >
.$$> ?
	Resources$$? H
.$$H I#
dialogEndPointException$$I `
)$$` a
;$$a b
}%% 
catch%% 
(%% 
TimeoutException%% %
timeoutException%%& 6
)%%6 7
{%%8 9
logger&& 
.&& 
LogError&& 
(&&  
timeoutException&&  0
)&&0 1
;&&1 2
DialogManager'' 
.'' !
ShowErrorMessageAlert'' 3
(''3 4

Properties''4 >
.''> ?
	Resources''? H
.''H I"
dialogTimeOutException''I _
)''_ `
;''` a
}(( 
catch(( 
((( "
CommunicationException(( +"
communicationException((, B
)((B C
{((D E
logger)) 
.)) 
LogError)) 
())  "
communicationException))  6
)))6 7
;))7 8
DialogManager** 
.** !
ShowErrorMessageAlert** 3
(**3 4

Properties**4 >
.**> ?
	Resources**? H
.**H I'
dialogComunicationException**I d
)**d e
;**e f
}++ 
},, 	
private.. 
void.. 
SignOut.. 
(.. 
).. 
{..  
int// 
playerId// 
=//  
UserProfileSingleton// /
./// 0
	IdProfile//0 9
;//9 :"
SetPlayerOfflineStatus00 "
(00" #
playerId00# +
)00+ ,
;00, - 
UserProfileSingleton11  
.11  !
Instance11! )
.11) *
ResetInstance11* 7
(117 8
)118 9
;119 :
}22 	
private44 
void44 "
SetPlayerOfflineStatus44 +
(44+ ,
int44, /
playerId440 8
)448 9
{44: ;
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
;55D E
try77 
{77 
IStatusManager88 
statusManager88 ,
=88- .
new88/ 2
StatusManagerClient883 F
(88F G
)88G H
;88H I
statusManager99 
.99 
SetPlayerStatus99 -
(99- .
playerId99. 6
,996 7!
GameEnumsPlayerStatus998 M
.99M N
Offline99N U
)99U V
;99V W
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
}== 
catch== 
(== 
TimeoutException== %
timeoutException==& 6
)==6 7
{==8 9
logger>> 
.>> 
LogError>> 
(>>  
timeoutException>>  0
)>>0 1
;>>1 2
DialogManager?? 
.?? !
ShowErrorMessageAlert?? 3
(??3 4

Properties??4 >
.??> ?
	Resources??? H
.??H I"
dialogTimeOutException??I _
)??_ `
;??` a
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
}CC 
}DD 	
privateFF 
voidFF 
	OnClosingFF 
(FF 
)FF  
{FF! "
}GG 	
}HH 
}II á
"C:\TripasDeGatoCliente\App.xaml.cs
	namespace		 	
TripasDeGatoCliente		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
} 
} ·[
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
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
public 
SelectLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! "
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
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
try 
{ 
var 
lobbies 
= 
lobbyBrowser *
.* +
GetAvailableLobbies+ >
(> ?
)? @
;@ A
LobbyDataGrid 
. 
ItemsSource )
=* +
lobbies, 3
;3 4
} 
catch 
( %
EndpointNotFoundException .%
endpointNotFoundException/ H
)H I
{J K
logger 
. 
LogError 
(  %
endpointNotFoundException  9
)9 :
;: ;
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
}   
catch   
(   
TimeoutException   %
timeoutException  & 6
)  6 7
{  8 9
logger!! 
.!! 
LogError!! 
(!!  
timeoutException!!  0
)!!0 1
;!!1 2
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
}## 
catch## 
(## "
CommunicationException## +"
communicationException##, B
)##B C
{##D E
logger$$ 
.$$ 
LogError$$ 
($$  "
communicationException$$  6
)$$6 7
;$$7 8
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
}&& 
return'' 
Task'' 
.'' 
CompletedTask'' %
;''% &
}(( 	
private** 
async** 
void** 
BtnJoinGame_Click** ,
(**, -
object**- 3
sender**4 :
,**: ;
RoutedEventArgs**< K
e**L M
)**M N
{**O P
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
;++D E
if,, 
(,, 
LobbyDataGrid,, 
.,, 
SelectedItem,, *
is,,+ -
Lobby,,. 3
selectedLobby,,4 A
),,A B
{,,C D
string-- 
	lobbyCode--  
=--! "
selectedLobby--# 0
.--0 1
Code--1 5
;--5 6
Profile.. 
guest.. 
=.. 
new..  #
Profile..$ +
{.., -
	IdProfile// 
=//  
UserProfileSingleton//  4
.//4 5
	IdProfile//5 >
,//> ?
Username00 
=00  
UserProfileSingleton00 3
.003 4
UserName004 <
}11 
;11 
try22 
{22 
bool33 
joined33 
=33  !
await33" '
lobbyBrowser33( 4
.334 5
JoinLobbyAsync335 C
(33C D
	lobbyCode33D M
,33M N
guest33O T
)33T U
;33U V
if55 
(55 
joined55 
)55 
{55  !
	LobbyView66 !
	lobbyView66" +
=66, -
new66. 1
	LobbyView662 ;
(66; <
	lobbyCode66< E
)66E F
;66F G
this77 
.77 
NavigationService77 .
.77. /
Navigate77/ 7
(777 8
	lobbyView778 A
)77A B
;77B C
}88 
else88 
{88 
DialogManager99 %
.99% &#
ShowWarningMessageAlert99& =
(99= >

Properties99> H
.99H I
	Resources99I R
.99R S 
dialogLobbyJoinError99S g
)99g h
;99h i
}:: 
};; 
catch;; 
(;; %
EndpointNotFoundException;; 1%
endpointNotFoundException;;2 K
);;K L
{;;M N
logger<< 
.<< 
LogError<< #
(<<# $%
endpointNotFoundException<<$ =
)<<= >
;<<> ?
DialogManager== !
.==! "!
ShowErrorMessageAlert==" 7
(==7 8

Properties==8 B
.==B C
	Resources==C L
.==L M#
dialogEndPointException==M d
)==d e
;==e f
}>> 
catch>> 
(>> 
TimeoutException>> )
timeoutException>>* :
)>>: ;
{>>< =
logger?? 
.?? 
LogError?? #
(??# $
timeoutException??$ 4
)??4 5
;??5 6
DialogManager@@ !
.@@! "!
ShowErrorMessageAlert@@" 7
(@@7 8

Properties@@8 B
.@@B C
	Resources@@C L
.@@L M"
dialogTimeOutException@@M c
)@@c d
;@@d e
}AA 
catchAA 
(AA "
CommunicationExceptionAA /"
communicationExceptionAA0 F
)AAF G
{AAH I
loggerBB 
.BB 
LogErrorBB #
(BB# $"
communicationExceptionBB$ :
)BB: ;
;BB; <
DialogManagerCC !
.CC! "!
ShowErrorMessageAlertCC" 7
(CC7 8

PropertiesCC8 B
.CCB C
	ResourcesCCC L
.CCL M'
dialogComunicationExceptionCCM h
)CCh i
;CCi j
}DD 
}EE 
elseEE 
{EE 
DialogManagerFF 
.FF #
ShowWarningMessageAlertFF 5
(FF5 6

PropertiesFF6 @
.FF@ A
	ResourcesFFA J
.FFJ K#
dialogSelectLobbyToJoinFFK b
)FFb c
;FFc d
}GG 
}HH 	
privateJJ 
voidJJ 
BtnBack_ClickJJ "
(JJ" #
objectJJ# )
senderJJ* 0
,JJ0 1
RoutedEventArgsJJ2 A
eJJB C
)JJC D
{JJE F
MenuViewKK 
menuViewKK 
=KK 
newKK  #
MenuViewKK$ ,
(KK, -
)KK- .
;KK. /
ifLL 
(LL 
thisLL 
.LL 
NavigationServiceLL &
!=LL' )
nullLL* .
)LL. /
{LL0 1
thisMM 
.MM 
NavigationServiceMM &
.MM& '
NavigateMM' /
(MM/ 0
menuViewMM0 8
)MM8 9
;MM9 :
}NN 
elseNN 
{NN 
DialogManagerOO 
.OO !
ShowErrorMessageAlertOO 3
(OO3 4

PropertiesOO4 >
.OO> ?
	ResourcesOO? H
.OOH I!
dialogNavigationErrorOOI ^
)OO^ _
;OO_ `
}PP 
}QQ 	
privateSS 
asyncSS 
voidSS 
BtnSearch_ClickSS *
(SS* +
objectSS+ 1
senderSS2 8
,SS8 9
RoutedEventArgsSS: I
eSSJ K
)SSK L
{SSM N
LoggerManagerTT 
loggerTT  
=TT! "
newTT# &
LoggerManagerTT' 4
(TT4 5
thisTT5 9
.TT9 :
GetTypeTT: A
(TTA B
)TTB C
)TTC D
;TTD E
stringUU 

searchCodeUU 
=UU 
txtCodeLobbyUU  ,
.UU, -
TextUU- 1
.UU1 2
TrimUU2 6
(UU6 7
)UU7 8
;UU8 9
tryVV 
{VV 
varWW 
lobbiesWW 
=WW 
awaitWW #
lobbyBrowserWW$ 0
.WW0 1$
GetAvailableLobbiesAsyncWW1 I
(WWI J
)WWJ K
;WWK L
varXX 
filteredLobbiesXX #
=XX$ %
lobbiesXX& -
.XX- .
WhereXX. 3
(XX3 4
lobbyXX4 9
=>XX: <
lobbyXX= B
.XXB C
CodeXXC G
.XXG H
ContainsXXH P
(XXP Q

searchCodeXXQ [
)XX[ \
)XX\ ]
.XX] ^
ToListXX^ d
(XXd e
)XXe f
;XXf g
ifYY 
(YY 
filteredLobbiesYY #
.YY# $
CountYY$ )
==YY* ,
$numYY- .
)YY. /
{YY0 1
DialogManagerZZ !
.ZZ! "#
ShowWarningMessageAlertZZ" 9
(ZZ9 :

PropertiesZZ: D
.ZZD E
	ResourcesZZE N
.ZZN O
dialogLobbyNotFoundZZO b
)ZZb c
;ZZc d
}[[ 
LobbyDataGrid\\ 
.\\ 
ItemsSource\\ )
=\\* +
filteredLobbies\\, ;
;\\; <
}]] 
catch]] 
(]] %
EndpointNotFoundException]] .%
endpointNotFoundException]]/ H
)]]H I
{]]J K
logger^^ 
.^^ 
LogError^^ 
(^^  %
endpointNotFoundException^^  9
)^^9 :
;^^: ;
DialogManager__ 
.__ !
ShowErrorMessageAlert__ 3
(__3 4

Properties__4 >
.__> ?
	Resources__? H
.__H I#
dialogEndPointException__I `
)__` a
;__a b
}`` 
catch`` 
(`` 
TimeoutException`` %
timeoutException``& 6
)``6 7
{``8 9
loggeraa 
.aa 
LogErroraa 
(aa  
timeoutExceptionaa  0
)aa0 1
;aa1 2
DialogManagerbb 
.bb !
ShowErrorMessageAlertbb 3
(bb3 4

Propertiesbb4 >
.bb> ?
	Resourcesbb? H
.bbH I"
dialogTimeOutExceptionbbI _
)bb_ `
;bb` a
}cc 
catchcc 
(cc "
CommunicationExceptioncc +"
communicationExceptioncc, B
)ccB C
{ccD E
loggerdd 
.dd 
LogErrordd 
(dd  "
communicationExceptiondd  6
)dd6 7
;dd7 8
DialogManageree 
.ee !
ShowErrorMessageAlertee 3
(ee3 4

Propertiesee4 >
.ee> ?
	Resourcesee? H
.eeH I'
dialogComunicationExceptioneeI d
)eed e
;eee f
}ff 
}gg 	
}hh 
}ii Îä
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
UserManagerClient !
userManager" -
;- .
private  
FriendsManagerClient $
friendsManager% 3
;3 4
private 
StatusManagerClient #
statusManager$ 1
;1 2
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
MenuView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
userManager 
= 
new 
UserManagerClient /
(/ 0
)0 1
;1 2
friendsManager 
= 
new   
FriendsManagerClient! 5
(5 6
)6 7
;7 8
statusManager 
= 
new 
StatusManagerClient  3
(3 4
)4 5
;5 6
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4 
LoadUserProfileAsync  
(  !
)! "
;" #
} 	
private 
async 
void  
LoadUserProfileAsync /
(/ 0
)0 1
{2 3
if   
(   
!   
string   
.   
IsNullOrEmpty   %
(  % & 
UserProfileSingleton  & :
.  : ;
UserName  ; C
)  C D
)  D E
{  F G

lbUserName!! 
.!! 
Content!! "
=!!# $ 
UserProfileSingleton!!% 9
.!!9 :
UserName!!: B
;!!B C
}"" 
else"" 
{"" 

lbUserName## 
.## 
Content## "
=### $

Properties##% /
.##/ 0
	Resources##0 9
.##9 :
lbUnknownUser##: G
;##G H
}$$ 
}%% 	
private'' 
void'' 
BtnSignOut_Click'' %
(''% &
object''& ,
sender''- 3
,''3 4
RoutedEventArgs''5 D
e''E F
)''F G
{''H I
SignOut(( 
((( 
)(( 
;(( 
NavigateToLoginView)) 
())  
)))  !
;))! "
}** 	
private,, 
void,, 
SignOut,, 
(,, 
),, 
{,,  
int-- 
playerId-- 
=--  
UserProfileSingleton-- /
.--/ 0
	IdProfile--0 9
;--9 :"
SetPlayerOfflineStatus.. "
(.." #
playerId..# +
)..+ ,
;.., - 
UserProfileSingleton//  
.//  !
Instance//! )
.//) *
ResetInstance//* 7
(//7 8
)//8 9
;//9 :
}00 	
private22 
void22 "
SetPlayerOfflineStatus22 +
(22+ ,
int22, /
playerId220 8
)228 9
{22: ;
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
;33D E
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
}AA 
}BB 	
privateDD 
voidDD 
NavigateToLoginViewDD (
(DD( )
)DD) *
{DD+ ,
	LoginViewEE 
	loginViewEE 
=EE  !
newEE" %
	LoginViewEE& /
(EE/ 0
)EE0 1
;EE1 2
thisFF 
.FF 
NavigationServiceFF "
.FF" #
NavigateFF# +
(FF+ ,
	loginViewFF, 5
)FF5 6
;FF6 7
}GG 	
privateII 
boolII 
areElementsVisibleII '
=II( )
falseII* /
;II/ 0
privateKK 
asyncKK 
voidKK 
BtnFriends_ClickKK +
(KK+ ,
objectKK, 2
senderKK3 9
,KK9 :
RoutedEventArgsKK; J
eKKK L
)KKL M
{KKN O
areElementsVisibleLL 
=LL  
!LL! "
areElementsVisibleLL" 4
;LL4 5
ifNN 
(NN 
areElementsVisibleNN "
)NN" #
{NN$ %

lstFriendsOO 
.OO 

VisibilityOO %
=OO& '

VisibilityOO( 2
.OO2 3
VisibleOO3 :
;OO: ;
btnAddFriendPP 
.PP 

VisibilityPP '
=PP( )

VisibilityPP* 4
.PP4 5
VisiblePP5 <
;PP< =
btnRemoveFriendQQ 
.QQ  

VisibilityQQ  *
=QQ+ ,

VisibilityQQ- 7
.QQ7 8
VisibleQQ8 ?
;QQ? @
awaitRR  
LoadFriendsListAsyncRR *
(RR* +
)RR+ ,
;RR, -

lstFriendsTT 
.TT 
	IsEnabledTT $
=TT% &
trueTT' +
;TT+ ,
btnAddFriendUU 
.UU 
	IsEnabledUU &
=UU' (
trueUU) -
;UU- .
btnRemoveFriendVV 
.VV  
	IsEnabledVV  )
=VV* +
trueVV, 0
;VV0 1

btnFriendsXX 
.XX 

BackgroundXX %
=XX& '
newXX( +
SolidColorBrushXX, ;
(XX; <
ColorXX< A
.XXA B
FromArgbXXB J
(XXJ K
$numXXK M
,XXM N
$numXXO R
,XXR S
$numXXT W
,XXW X
$numXXY \
)XX\ ]
)XX] ^
;XX^ _
}YY 
elseYY 
{YY 

lstFriendsZZ 
.ZZ 

VisibilityZZ %
=ZZ& '

VisibilityZZ( 2
.ZZ2 3
	CollapsedZZ3 <
;ZZ< =
btnAddFriend[[ 
.[[ 

Visibility[[ '
=[[( )

Visibility[[* 4
.[[4 5
	Collapsed[[5 >
;[[> ?
btnRemoveFriend\\ 
.\\  

Visibility\\  *
=\\+ ,

Visibility\\- 7
.\\7 8
	Collapsed\\8 A
;\\A B
txtFriendName]] 
.]] 

Visibility]] (
=]]) *

Visibility]]+ 5
.]]5 6
	Collapsed]]6 ?
;]]? @
btnAdd^^ 
.^^ 

Visibility^^ !
=^^" #

Visibility^^$ .
.^^. /
	Collapsed^^/ 8
;^^8 9

lstFriends`` 
.`` 
	IsEnabled`` $
=``% &
false``' ,
;``, -
btnAddFriendaa 
.aa 
	IsEnabledaa &
=aa' (
falseaa) .
;aa. /
btnRemoveFriendbb 
.bb  
	IsEnabledbb  )
=bb* +
falsebb, 1
;bb1 2
txtFriendNamecc 
.cc 
	IsEnabledcc '
=cc( )
falsecc* /
;cc/ 0
btnAdddd 
.dd 
	IsEnableddd  
=dd! "
falsedd# (
;dd( )

btnFriendsff 
.ff 

Backgroundff %
=ff& '
newff( +
SolidColorBrushff, ;
(ff; <
Colorff< A
.ffA B
FromArgbffB J
(ffJ K
$numffK M
,ffM N
$numffO R
,ffR S
$numffT W
,ffW X
$numffY \
)ff\ ]
)ff] ^
;ff^ _
btnAddFriendgg 
.gg 

Backgroundgg '
=gg( )
newgg* -
SolidColorBrushgg. =
(gg= >
Colorgg> C
.ggC D
FromArgbggD L
(ggL M
$numggM P
,ggP Q
$numggR T
,ggT U
$numggV X
,ggX Y
$numggZ \
)gg\ ]
)gg] ^
;gg^ _
}hh 
}ii 	
privatekk 
voidkk 
BtnAddFriend_Clickkk '
(kk' (
objectkk( .
senderkk/ 5
,kk5 6
RoutedEventArgskk7 F
ekkG H
)kkH I
{kkJ K
areElementsVisiblell 
=ll  
!ll! "
areElementsVisiblell" 4
;ll4 5
ifnn 
(nn 
areElementsVisiblenn "
)nn" #
{nn$ %
txtFriendNameoo 
.oo 

Visibilityoo (
=oo) *

Visibilityoo+ 5
.oo5 6
Visibleoo6 =
;oo= >
btnAddpp 
.pp 

Visibilitypp !
=pp" #

Visibilitypp$ .
.pp. /
Visiblepp/ 6
;pp6 7
txtFriendNameqq 
.qq 
	IsEnabledqq '
=qq( )
trueqq* .
;qq. /
btnAddrr 
.rr 
	IsEnabledrr  
=rr! "
truerr# '
;rr' (
btnAddFriendtt 
.tt 

Backgroundtt '
=tt( )
newtt* -
SolidColorBrushtt. =
(tt= >
Colortt> C
.ttC D
FromArgbttD L
(ttL M
$numttM O
,ttO P
$numttQ S
,ttS T
$numttU W
,ttW X
$numttY [
)tt[ \
)tt\ ]
;tt] ^
}uu 
elseuu 
{uu 
txtFriendNamevv 
.vv 

Visibilityvv (
=vv) *

Visibilityvv+ 5
.vv5 6
	Collapsedvv6 ?
;vv? @
btnAddww 
.ww 

Visibilityww !
=ww" #

Visibilityww$ .
.ww. /
	Collapsedww/ 8
;ww8 9
txtFriendNameyy 
.yy 
	IsEnabledyy '
=yy( )
falseyy* /
;yy/ 0
btnAddzz 
.zz 
	IsEnabledzz  
=zz! "
falsezz# (
;zz( )
btnAddFriend|| 
.|| 

Background|| '
=||( )
new||* -
SolidColorBrush||. =
(||= >
Color||> C
.||C D
FromArgb||D L
(||L M
$num||M P
,||P Q
$num||R T
,||T U
$num||V X
,||X Y
$num||Z \
)||\ ]
)||] ^
;||^ _
}}} 
}~~ 	
private
ÅÅ 
async
ÅÅ 
void
ÅÅ 
BtnAdd_Click
ÅÅ '
(
ÅÅ' (
object
ÅÅ( .
sender
ÅÅ/ 5
,
ÅÅ5 6
RoutedEventArgs
ÅÅ7 F
e
ÅÅG H
)
ÅÅH I
{
ÅÅJ K
string
ÇÇ 

friendName
ÇÇ 
=
ÇÇ 
txtFriendName
ÇÇ  -
.
ÇÇ- .
Text
ÇÇ. 2
.
ÇÇ2 3
Trim
ÇÇ3 7
(
ÇÇ7 8
)
ÇÇ8 9
;
ÇÇ9 :
if
ÉÉ 
(
ÉÉ  
ValidateFriendName
ÉÉ "
(
ÉÉ" #

friendName
ÉÉ# -
)
ÉÉ- .
)
ÉÉ. /
{
ÉÉ0 1
await
ÑÑ 
	AddFriend
ÑÑ 
(
ÑÑ  

friendName
ÑÑ  *
)
ÑÑ* +
;
ÑÑ+ ,
}
ÖÖ 
txtFriendName
ÜÜ 
.
ÜÜ 
Clear
ÜÜ 
(
ÜÜ  
)
ÜÜ  !
;
ÜÜ! "
}
áá 	
private
ââ 
bool
ââ  
ValidateFriendName
ââ '
(
ââ' (
string
ââ( .

friendName
ââ/ 9
)
ââ9 :
{
ââ; <
if
ää 
(
ää 
string
ää 
.
ää 
IsNullOrEmpty
ää $
(
ää$ %

friendName
ää% /
)
ää/ 0
)
ää0 1
{
ää2 3
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
ããH I
dialogInvalidName
ããI Z
)
ããZ [
;
ãã[ \
return
åå 
false
åå 
;
åå 
}
çç 
return
éé 
true
éé 
;
éé 
}
èè 	
private
ëë 
async
ëë 
Task
ëë 
	AddFriend
ëë $
(
ëë$ %
string
ëë% +

friendName
ëë, 6
)
ëë6 7
{
ëë8 9
LoggerManager
íí 
logger
íí  
=
íí! "
new
íí# &
LoggerManager
íí' 4
(
íí4 5
this
íí5 9
.
íí9 :
GetType
íí: A
(
ííA B
)
ííB C
)
ííC D
;
ííD E
try
ìì 
{
ìì 
int
îî 
friendProfileId
îî #
=
îî$ %
await
îî& +
userManager
îî, 7
.
îî7 8
GetProfileIdAsync
îî8 I
(
îîI J

friendName
îîJ T
)
îîT U
;
îîU V
if
ïï 
(
ïï 
friendProfileId
ïï #
==
ïï$ &"
UserProfileSingleton
ïï' ;
.
ïï; <
	IdProfile
ïï< E
)
ïïE F
{
ïïG H
DialogManager
ññ !
.
ññ! "#
ShowErrorMessageAlert
ññ" 7
(
ññ7 8

Properties
ññ8 B
.
ññB C
	Resources
ññC L
.
ññL M)
dialogCannotAddSelfAsFriend
ññM h
)
ññh i
;
ññi j
}
óó 
else
óó 
if
óó 
(
óó 
friendProfileId
óó *
>
óó+ ,
$num
óó- .
)
óó. /
{
óó0 1
await
òò #
ExecuteFriendAddition
òò /
(
òò/ 0
friendProfileId
òò0 ?
,
òò? @

friendName
òòA K
)
òòK L
;
òòL M
}
ôô 
else
ôô 
{
ôô 
DialogManager
öö !
.
öö! "#
ShowErrorMessageAlert
öö" 7
(
öö7 8

Properties
öö8 B
.
ööB C
	Resources
ööC L
.
ööL M#
dialogProfileNotFound
ööM b
)
ööb c
;
ööc d
}
õõ 
}
úú 
catch
úú 
(
úú '
EndpointNotFoundException
úú -'
endpointNotFoundException
úú. G
)
úúG H
{
úúI J
logger
ùù 
.
ùù 
LogError
ùù 
(
ùù  '
endpointNotFoundException
ùù  9
)
ùù9 :
;
ùù: ;
DialogManager
ûû 
.
ûû #
ShowErrorMessageAlert
ûû 3
(
ûû3 4

Properties
ûû4 >
.
ûû> ?
	Resources
ûû? H
.
ûûH I%
dialogEndPointException
ûûI `
)
ûû` a
;
ûûa b
}
üü 
catch
üü 
(
üü 
TimeoutException
üü %
timeoutException
üü& 6
)
üü6 7
{
üü8 9
logger
†† 
.
†† 
LogError
†† 
(
††  
timeoutException
††  0
)
††0 1
;
††1 2
DialogManager
°° 
.
°° #
ShowErrorMessageAlert
°° 3
(
°°3 4

Properties
°°4 >
.
°°> ?
	Resources
°°? H
.
°°H I$
dialogTimeOutException
°°I _
)
°°_ `
;
°°` a
}
¢¢ 
catch
¢¢ 
(
¢¢ $
CommunicationException
¢¢ +$
communicationException
¢¢, B
)
¢¢B C
{
¢¢D E
logger
££ 
.
££ 
LogError
££ 
(
££  $
communicationException
££  6
)
££6 7
;
££7 8
DialogManager
§§ 
.
§§ #
ShowErrorMessageAlert
§§ 3
(
§§3 4

Properties
§§4 >
.
§§> ?
	Resources
§§? H
.
§§H I)
dialogComunicationException
§§I d
)
§§d e
;
§§e f
}
•• 
}
¶¶ 	
private
®® 
async
®® 
Task
®® #
ExecuteFriendAddition
®® 0
(
®®0 1
int
®®1 4
friendProfileId
®®5 D
,
®®D E
string
®®F L

friendName
®®M W
)
®®W X
{
®®Y Z
int
©© 
userProfileId
©© 
=
©© "
UserProfileSingleton
©©  4
.
©©4 5
	IdProfile
©©5 >
;
©©> ?
int
™™ 
result
™™ 
=
™™ 
await
™™ 
friendsManager
™™ -
.
™™- .
AddFriendAsync
™™. <
(
™™< =
userProfileId
™™= J
,
™™J K
friendProfileId
™™L [
)
™™[ \
;
™™\ ]
if
´´ 
(
´´ 
result
´´ 
==
´´ 
	Constants
´´ #
.
´´# $
SUCCES_OPERATION
´´$ 4
)
´´4 5
{
´´6 7
DialogManager
¨¨ 
.
¨¨ %
ShowSuccessMessageAlert
¨¨ 5
(
¨¨5 6
string
¨¨6 <
.
¨¨< =
Format
¨¨= C
(
¨¨C D

Properties
¨¨D N
.
¨¨N O
	Resources
¨¨O X
.
¨¨X Y)
dialogAddFriendSuccessfully
¨¨Y t
,
¨¨t u

friendName¨¨v Ä
)¨¨Ä Å
)¨¨Å Ç
;¨¨Ç É
await
≠≠ "
LoadFriendsListAsync
≠≠ *
(
≠≠* +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 
else
ÆÆ 
{
ÆÆ 
DialogManager
ØØ 
.
ØØ #
ShowErrorMessageAlert
ØØ 3
(
ØØ3 4

Properties
ØØ4 >
.
ØØ> ?
	Resources
ØØ? H
.
ØØH I%
dialogErrorAddingFriend
ØØI `
)
ØØ` a
;
ØØa b
}
∞∞ 
}
±± 	
private
¥¥ 
async
¥¥ 
Task
¥¥ "
LoadFriendsListAsync
¥¥ /
(
¥¥/ 0
)
¥¥0 1
{
¥¥2 3
LoggerManager
µµ 
logger
µµ  
=
µµ! "
new
µµ# &
LoggerManager
µµ' 4
(
µµ4 5
this
µµ5 9
.
µµ9 :
GetType
µµ: A
(
µµA B
)
µµB C
)
µµC D
;
µµD E
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
friendsManager
∏∏( 6
.
∏∏6 7
GetFriendsAsync
∏∏7 F
(
∏∏F G
userProfileId
∏∏G T
)
∏∏T U
;
∏∏U V
var
∫∫ 
friendsWithStatus
∫∫ %
=
∫∫& '
new
∫∫( +
List
∫∫, 0
<
∫∫0 1
string
∫∫1 7
>
∫∫7 8
(
∫∫8 9
)
∫∫9 :
;
∫∫: ;
foreach
ºº 
(
ºº 
var
ºº 
friend
ºº #
in
ºº$ &
friendsList
ºº' 2
)
ºº2 3
{
ºº4 5
var
ΩΩ 
status
ΩΩ 
=
ΩΩ  
await
ΩΩ! &
statusManager
ΩΩ' 4
.
ΩΩ4 5"
GetPlayerStatusAsync
ΩΩ5 I
(
ΩΩI J
friend
ΩΩJ P
.
ΩΩP Q
	IdProfile
ΩΩQ Z
)
ΩΩZ [
;
ΩΩ[ \
friendsWithStatus
ææ %
.
ææ% &
Add
ææ& )
(
ææ) *
$"
ææ* ,
{
ææ, -
friend
ææ- 3
.
ææ3 4
Username
ææ4 <
}
ææ< =
$str
ææ= @
{
ææ@ A
status
ææA G
}
ææG H
"
ææH I
)
ææI J
;
ææJ K
}
øø 

lstFriends
¡¡ 
.
¡¡ 
ItemsSource
¡¡ &
=
¡¡' (
friendsWithStatus
¡¡) :
;
¡¡: ;
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
ƒƒa b
}
≈≈ 
catch
≈≈ 
(
≈≈ 
TimeoutException
≈≈ %
timeoutException
≈≈& 6
)
≈≈6 7
{
≈≈8 9
logger
∆∆ 
.
∆∆ 
LogError
∆∆ 
(
∆∆  
timeoutException
∆∆  0
)
∆∆0 1
;
∆∆1 2
DialogManager
«« 
.
«« #
ShowErrorMessageAlert
«« 3
(
««3 4

Properties
««4 >
.
««> ?
	Resources
««? H
.
««H I$
dialogTimeOutException
««I _
)
««_ `
;
««` a
}
»» 
catch
»» 
(
»» $
CommunicationException
»» +$
communicationException
»», B
)
»»B C
{
»»D E
logger
…… 
.
…… 
LogError
…… 
(
……  $
communicationException
……  6
)
……6 7
;
……7 8
DialogManager
   
.
   #
ShowErrorMessageAlert
   3
(
  3 4

Properties
  4 >
.
  > ?
	Resources
  ? H
.
  H I)
dialogComunicationException
  I d
)
  d e
;
  e f
}
ÀÀ 
}
ÃÃ 	
private
œœ 
async
œœ 
void
œœ #
BtnRemoveFriend_Click
œœ 0
(
œœ0 1
object
œœ1 7
sender
œœ8 >
,
œœ> ?
RoutedEventArgs
œœ@ O
e
œœP Q
)
œœQ R
{
œœS T
LoggerManager
–– 
logger
––  
=
––! "
new
––# &
LoggerManager
––' 4
(
––4 5
this
––5 9
.
––9 :
GetType
––: A
(
––A B
)
––B C
)
––C D
;
––D E
if
—— 
(
—— 

lstFriends
—— 
.
—— 
SelectedItem
—— '
!=
——( *
null
——+ /
)
——/ 0
{
——1 2
string
““  
selectedFriendName
““ )
=
““* +

lstFriends
““, 6
.
““6 7
SelectedItem
““7 C
.
““C D
ToString
““D L
(
““L M
)
““M N
;
““N O
string
”” 

friendName
”” !
=
””" # 
selectedFriendName
””$ 6
.
””6 7
Split
””7 <
(
””< =
$char
””= @
)
””@ A
[
””A B
$num
””B C
]
””C D
.
””D E
Trim
””E I
(
””I J
)
””J K
;
””K L
try
’’ 
{
’’ 
int
÷÷ 
friendProfileId
÷÷ '
=
÷÷( )
await
÷÷* /
userManager
÷÷0 ;
.
÷÷; <
GetProfileIdAsync
÷÷< M
(
÷÷M N

friendName
÷÷N X
)
÷÷X Y
;
÷÷Y Z
if
ÿÿ 
(
ÿÿ 
friendProfileId
ÿÿ '
>
ÿÿ( )
$num
ÿÿ* +
)
ÿÿ+ ,
{
ÿÿ- .
int
ŸŸ 
userProfileId
ŸŸ )
=
ŸŸ* +"
UserProfileSingleton
ŸŸ, @
.
ŸŸ@ A
	IdProfile
ŸŸA J
;
ŸŸJ K
int
⁄⁄ 
result
⁄⁄ "
=
⁄⁄# $
await
⁄⁄% *
friendsManager
⁄⁄+ 9
.
⁄⁄9 :
DeleteFriendAsync
⁄⁄: K
(
⁄⁄K L
userProfileId
⁄⁄L Y
,
⁄⁄Y Z
friendProfileId
⁄⁄[ j
)
⁄⁄j k
;
⁄⁄k l
if
‹‹ 
(
‹‹ 
result
‹‹ "
==
‹‹# %
	Constants
‹‹& /
.
‹‹/ 0
SUCCES_OPERATION
‹‹0 @
)
‹‹@ A
{
‹‹B C
DialogManager
›› )
.
››) *%
ShowSuccessMessageAlert
››* A
(
››A B
string
››B H
.
››H I
Format
››I O
(
››O P

Properties
››P Z
.
››Z [
	Resources
››[ d
.
››d e%
dialogFriendshipDeleted
››e |
,
››| }

friendName››~ à
)››à â
)››â ä
;››ä ã
await
ﬁﬁ !"
LoadFriendsListAsync
ﬁﬁ" 6
(
ﬁﬁ6 7
)
ﬁﬁ7 8
;
ﬁﬁ8 9
}
ﬂﬂ 
else
ﬂﬂ 
{
ﬂﬂ  
DialogManager
‡‡ )
.
‡‡) *#
ShowErrorMessageAlert
‡‡* ?
(
‡‡? @

Properties
‡‡@ J
.
‡‡J K
	Resources
‡‡K T
.
‡‡T U+
dialogErrorDeletingFriendship
‡‡U r
)
‡‡r s
;
‡‡s t
}
·· 
}
‚‚ 
else
‚‚ 
{
‚‚ 
DialogManager
„„ %
.
„„% &#
ShowErrorMessageAlert
„„& ;
(
„„; <

Properties
„„< F
.
„„F G
	Resources
„„G P
.
„„P Q'
dialogNotRetrievedProfile
„„Q j
)
„„j k
;
„„k l
}
‰‰ 
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
ÓÓ 
}
ÔÔ 
else
ÔÔ 
{
ÔÔ 
DialogManager
 
.
 %
ShowWarningMessageAlert
 5
(
5 6

Properties
6 @
.
@ A
	Resources
A J
.
J K(
dialogSelectFriendToDelete
K e
)
e f
;
f g
}
ÒÒ 
}
ÚÚ 	
private
ıı 
async
ıı 
void
ıı  
BtnStartGame_Click
ıı -
(
ıı- .
object
ıı. 4
sender
ıı5 ;
,
ıı; <
RoutedEventArgs
ıı= L
e
ııM N
)
ııN O
{
ııP Q!
GoToCreateLobbyView
ˆˆ 
(
ˆˆ  
)
ˆˆ  !
;
ˆˆ! "
}
˜˜ 	
private
˘˘ 
void
˘˘ 
BtnProfile_Click
˘˘ %
(
˘˘% &
object
˘˘& ,
sender
˘˘- 3
,
˘˘3 4
RoutedEventArgs
˘˘5 D
e
˘˘E F
)
˘˘F G
{
˘˘H I
GoToPerfilView
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ !
BtnLaderboard_Click
˝˝ (
(
˝˝( )
object
˝˝) /
sender
˝˝0 6
,
˝˝6 7
RoutedEventArgs
˝˝8 G
e
˝˝H I
)
˝˝I J
{
˝˝K L 
GoToLaderboardView
˛˛ 
(
˛˛ 
)
˛˛  
;
˛˛  !
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
BtnJoinGame_Click
ÅÅ &
(
ÅÅ& '
object
ÅÅ' -
sender
ÅÅ. 4
,
ÅÅ4 5
RoutedEventArgs
ÅÅ6 E
e
ÅÅF G
)
ÅÅG H
{
ÅÅI J!
GoToSelectLobbyView
ÇÇ 
(
ÇÇ  
)
ÇÇ  !
;
ÇÇ! "
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ !
GoToCreateLobbyView
ÖÖ (
(
ÖÖ( )
)
ÖÖ) *
{
ÖÖ+ ,
CreateLobbyView
ÜÜ 
lobbyConfig
ÜÜ '
=
ÜÜ( )
new
ÜÜ* -
CreateLobbyView
ÜÜ. =
(
ÜÜ= >
)
ÜÜ> ?
;
ÜÜ? @
if
áá 
(
áá 
this
áá 
.
áá 
NavigationService
áá &
!=
áá' )
null
áá* .
)
áá. /
{
áá0 1
this
àà 
.
àà 
NavigationService
àà &
.
àà& '
Navigate
àà' /
(
àà/ 0
lobbyConfig
àà0 ;
)
àà; <
;
àà< =
}
ââ 
else
ââ 
{
ââ 
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I#
dialogNavigationError
ääI ^
)
ää^ _
;
ää_ `
}
ãã 
}
åå 	
private
éé 
void
éé 
GoToPerfilView
éé #
(
éé# $
)
éé$ %
{
éé& '
ProfileView
èè 
profileView
èè #
=
èè$ %
new
èè& )
ProfileView
èè* 5
(
èè5 6
)
èè6 7
;
èè7 8
if
êê 
(
êê 
this
êê 
.
êê 
NavigationService
êê &
!=
êê' )
null
êê* .
)
êê. /
{
êê0 1
this
ëë 
.
ëë 
NavigationService
ëë &
.
ëë& '
Navigate
ëë' /
(
ëë/ 0
profileView
ëë0 ;
)
ëë; <
;
ëë< =
}
íí 
else
íí 
{
íí 
DialogManager
ìì 
.
ìì #
ShowErrorMessageAlert
ìì 3
(
ìì3 4

Properties
ìì4 >
.
ìì> ?
	Resources
ìì? H
.
ììH I#
dialogNavigationError
ììI ^
)
ìì^ _
;
ìì_ `
}
îî 
}
ïï 	
private
óó 
void
óó  
GoToLaderboardView
óó '
(
óó' (
)
óó( )
{
óó* +

Laderboard
òò 
laderboardView
òò %
=
òò& '
new
òò( +

Laderboard
òò, 6
(
òò6 7
)
òò7 8
;
òò8 9
if
ôô 
(
ôô 
this
ôô 
.
ôô 
NavigationService
ôô &
!=
ôô' )
null
ôô* .
)
ôô. /
{
ôô0 1
this
öö 
.
öö 
NavigationService
öö &
.
öö& '
Navigate
öö' /
(
öö/ 0
laderboardView
öö0 >
)
öö> ?
;
öö? @
}
õõ 
else
õõ 
{
õõ 
DialogManager
úú 
.
úú #
ShowErrorMessageAlert
úú 3
(
úú3 4

Properties
úú4 >
.
úú> ?
	Resources
úú? H
.
úúH I#
dialogNavigationError
úúI ^
)
úú^ _
;
úú_ `
}
ùù 
}
ûû 	
private
üü 
void
üü !
GoToSelectLobbyView
üü (
(
üü( )
)
üü) *
{
üü+ ,
SelectLobbyView
†† 
selectLobbyView
†† +
=
††, -
new
††. 1
SelectLobbyView
††2 A
(
††A B
)
††B C
;
††C D
if
°° 
(
°° 
this
°° 
.
°° 
NavigationService
°° &
!=
°°' )
null
°°* .
)
°°. /
{
°°0 1
this
¢¢ 
.
¢¢ 
NavigationService
¢¢ &
.
¢¢& '
Navigate
¢¢' /
(
¢¢/ 0
selectLobbyView
¢¢0 ?
)
¢¢? @
;
¢¢@ A
}
££ 
else
££ 
{
££ 
DialogManager
§§ 
.
§§ #
ShowErrorMessageAlert
§§ 3
(
§§3 4

Properties
§§4 >
.
§§> ?
	Resources
§§? H
.
§§H I#
dialogNavigationError
§§I ^
)
§§^ _
;
§§_ `
}
•• 
}
¶¶ 	
}
®® 
}©© ù¯
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
string 
	userEmail  
;  !
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
private 
void 
BtnLogin_Click #
(# $
object$ *
sender+ 1
,1 2
RoutedEventArgs3 B
eC D
)D E
{F G

ResetField 
( 
txtEmail 
)  
;  !

ResetField 
( 
txtPassword "
)" #
;# $

ResetField 
( 
txtPasswordVisible )
)) *
;* +
if 
( 
! 
VerifyFields 
( 
) 
)  
{! "
DialogManager 
. !
ShowErrorMessageAlert 3
(3 4

Properties4 >
.> ?
	Resources? H
.H I
dialogWrongDataI X
)X Y
;Y Z
return 
; 
} 
string 
email 
= 
txtEmail #
.# $
Text$ (
;( )
string   
password   
=   
Hasher   $
.  $ %
HashToSHA256  % 1
(  1 2
txtPassword  2 =
.  = >
Password  > F
)  F G
;  G H
if"" 
("" 
AuthenticateUser""  
(""  !
email""! &
,""& '
password""( 0
)""0 1
)""1 2
{""3 4!
SetPlayerOnlineStatus## %
(##% & 
UserProfileSingleton##& :
.##: ;
	IdProfile##; D
)##D E
;##E F
DisplayMainMenuView$$ #
($$# $
)$$$ %
;$$% &
}%% 
}&& 	
private(( 
bool(( 
VerifyFields(( !
(((! "
)((" #
{(($ %
bool)) 

emailValid)) 
=)) 
	Validador)) '
.))' (
ValidateEmail))( 5
())5 6
txtEmail))6 >
.))> ?
Text))? C
)))C D
;))D E
bool** 
passwordValid** 
=**  
	Validador**! *
.*** +
ValidatePassword**+ ;
(**; <
txtPassword**< G
.**G H
Password**H P
)**P Q
;**Q R
HighlightField,, 
(,, 
txtEmail,, #
,,,# $

emailValid,,% /
),,/ 0
;,,0 1
HighlightField-- 
(-- 
txtPassword-- &
,--& '
passwordValid--( 5
)--5 6
;--6 7
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
{22K L
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
;33D E
bool44 
isAuthenticated44  
=44! "
false44# (
;44( )
try66 
{66 
IUserManager77 
userManager77 (
=77) *
new77+ .
UserManagerClient77/ @
(77@ A
)77A B
;77B C
int88 
validationResult88 $
=88% &
userManager88' 2
.882 3
VerifyLogin883 >
(88> ?
email88? D
,88D E
hashedPassword88F T
)88T U
;88U V
if:: 
(:: 
validationResult:: $
==::% '
	Constants::( 1
.::1 2
DATA_MATCHES::2 >
)::> ?
{::@ A
Profile;; 
profile;; #
=;;$ %
userManager;;& 1
.;;1 2
GetProfileByMail;;2 B
(;;B C
email;;C H
);;H I
;;;I J
if== 
(== 
profile== 
!===  "
null==# '
)==' (
{==) *
if>> 
(>> 
IsPlayerOnline>> *
(>>* +
profile>>+ 2
.>>2 3
	IdProfile>>3 <
)>>< =
)>>= >
{>>? @
return?? "
false??# (
;??( )
}@@ 
ObtainSingletonDataBB +
(BB+ ,
profileBB, 3
)BB3 4
;BB4 5
isAuthenticatedCC '
=CC( )
trueCC* .
;CC. /
}DD 
elseDD 
{DD 
DialogManagerEE %
.EE% &!
ShowErrorMessageAlertEE& ;
(EE; <

PropertiesEE< F
.EEF G
	ResourcesEEG P
.EEP Q%
dialogNotRetrievedProfileEEQ j
)EEj k
;EEk l
}FF 
}GG 
elseGG 
{GG 
DialogManagerHH !
.HH! "!
ShowErrorMessageAlertHH" 7
(HH7 8

PropertiesHH8 B
.HHB C
	ResourcesHHC L
.HHL M(
dialogMissmatchesCredentialsHHM i
)HHi j
;HHj k
}II 
}JJ 
catchJJ 
(JJ %
EndpointNotFoundExceptionJJ .%
endpointNotFoundExceptionJJ/ H
)JJH I
{JJJ K
loggerKK 
.KK 
LogErrorKK 
(KK  %
endpointNotFoundExceptionKK  9
)KK9 :
;KK: ;
DialogManagerLL 
.LL !
ShowErrorMessageAlertLL 3
(LL3 4

PropertiesLL4 >
.LL> ?
	ResourcesLL? H
.LLH I#
dialogEndPointExceptionLLI `
)LL` a
;LLa b
}MM 
catchMM 
(MM 
TimeoutExceptionMM %
timeoutExceptionMM& 6
)MM6 7
{MM8 9
loggerNN 
.NN 
LogErrorNN 
(NN  
timeoutExceptionNN  0
)NN0 1
;NN1 2
DialogManagerOO 
.OO !
ShowErrorMessageAlertOO 3
(OO3 4

PropertiesOO4 >
.OO> ?
	ResourcesOO? H
.OOH I"
dialogTimeOutExceptionOOI _
)OO_ `
;OO` a
}PP 
catchPP 
(PP "
CommunicationExceptionPP +"
communicationExceptionPP, B
)PPB C
{PPD E
loggerQQ 
.QQ 
LogErrorQQ 
(QQ  "
communicationExceptionQQ  6
)QQ6 7
;QQ7 8
DialogManagerRR 
.RR !
ShowErrorMessageAlertRR 3
(RR3 4

PropertiesRR4 >
.RR> ?
	ResourcesRR? H
.RRH I'
dialogComunicationExceptionRRI d
)RRd e
;RRe f
}SS 
returnUU 
isAuthenticatedUU "
;UU" #
}VV 	
privateXX 
boolXX 
IsPlayerOnlineXX #
(XX# $
intXX$ '
	idProfileXX( 1
)XX1 2
{XX3 4
LoggerManagerYY 
loggerYY  
=YY! "
newYY# &
LoggerManagerYY' 4
(YY4 5
thisYY5 9
.YY9 :
GetTypeYY: A
(YYA B
)YYB C
)YYC D
;YYD E
tryZZ 
{ZZ 
IStatusManager[[ 
statusManager[[ ,
=[[- .
new[[/ 2
StatusManagerClient[[3 F
([[F G
)[[G H
;[[H I
var\\ 
playerStatus\\  
=\\! "
statusManager\\# 0
.\\0 1
GetPlayerStatus\\1 @
(\\@ A
	idProfile\\A J
)\\J K
;\\K L
if^^ 
(^^ 
playerStatus^^  
==^^! #!
GameEnumsPlayerStatus^^$ 9
.^^9 :
Online^^: @
)^^@ A
{^^B C
DialogManager__ !
.__! "#
ShowWarningMessageAlert__" 9
(__9 :

Properties__: D
.__D E
	Resources__E N
.__N O%
dialogPlayerAlreadyOnline__O h
)__h i
;__i j
return`` 
true`` 
;``  
}aa 
}bb 
catchbb 
(bb %
EndpointNotFoundExceptionbb .%
endpointNotFoundExceptionbb/ H
)bbH I
{bbJ K
loggercc 
.cc 
LogErrorcc 
(cc  %
endpointNotFoundExceptioncc  9
)cc9 :
;cc: ;
DialogManagerdd 
.dd !
ShowErrorMessageAlertdd 3
(dd3 4

Propertiesdd4 >
.dd> ?
	Resourcesdd? H
.ddH I#
dialogEndPointExceptionddI `
)dd` a
;dda b
}ee 
catchee 
(ee 
TimeoutExceptionee %
timeoutExceptionee& 6
)ee6 7
{ee8 9
loggerff 
.ff 
LogErrorff 
(ff  
timeoutExceptionff  0
)ff0 1
;ff1 2
DialogManagergg 
.gg !
ShowErrorMessageAlertgg 3
(gg3 4

Propertiesgg4 >
.gg> ?
	Resourcesgg? H
.ggH I"
dialogTimeOutExceptionggI _
)gg_ `
;gg` a
}hh 
catchhh 
(hh "
CommunicationExceptionhh +"
communicationExceptionhh, B
)hhB C
{hhD E
loggerii 
.ii 
LogErrorii 
(ii  "
communicationExceptionii  6
)ii6 7
;ii7 8
DialogManagerjj 
.jj !
ShowErrorMessageAlertjj 3
(jj3 4

Propertiesjj4 >
.jj> ?
	Resourcesjj? H
.jjH I'
dialogComunicationExceptionjjI d
)jjd e
;jje f
}kk 
returnmm 
falsemm 
;mm 
}nn 	
privateqq 
voidqq 
ObtainSingletonDataqq (
(qq( )
Profileqq) 0
profileqq1 8
)qq8 9
{qq: ; 
UserProfileSingletonrr  
.rr  !
Instancerr! )
.rr) *
CreateInstancerr* 8
(rr8 9
profilerr9 @
)rr@ A
;rrA B
}ss 	
privateuu 
voiduu !
SetPlayerOnlineStatusuu *
(uu* +
intuu+ .
playerIduu/ 7
)uu7 8
{uu9 :
LoggerManagervv 
loggervv  
=vv! "
newvv# &
LoggerManagervv' 4
(vv4 5
thisvv5 9
.vv9 :
GetTypevv: A
(vvA B
)vvB C
)vvC D
;vvD E
tryxx 
{xx 
IStatusManageryy 
statusManageryy ,
=yy- .
newyy/ 2
StatusManagerClientyy3 F
(yyF G
)yyG H
;yyH I
statusManagerzz 
.zz 
SetPlayerStatuszz -
(zz- .
playerIdzz. 6
,zz6 7!
GameEnumsPlayerStatuszz8 M
.zzM N
OnlinezzN T
)zzT U
;zzU V
}{{ 
catch{{ 
({{ %
EndpointNotFoundException{{ .%
endpointNotFoundException{{/ H
){{H I
{{{J K
logger|| 
.|| 
LogError|| 
(||  %
endpointNotFoundException||  9
)||9 :
;||: ;
DialogManager}} 
.}} !
ShowErrorMessageAlert}} 3
(}}3 4

Properties}}4 >
.}}> ?
	Resources}}? H
.}}H I#
dialogEndPointException}}I `
)}}` a
;}}a b
}~~ 
catch~~ 
(~~ 
TimeoutException~~ %
timeoutException~~& 6
)~~6 7
{~~8 9
logger 
. 
LogError 
(  
timeoutException  0
)0 1
;1 2
DialogManager
ÄÄ 
.
ÄÄ #
ShowErrorMessageAlert
ÄÄ 3
(
ÄÄ3 4

Properties
ÄÄ4 >
.
ÄÄ> ?
	Resources
ÄÄ? H
.
ÄÄH I$
dialogTimeOutException
ÄÄI _
)
ÄÄ_ `
;
ÄÄ` a
}
ÅÅ 
catch
ÅÅ 
(
ÅÅ $
CommunicationException
ÅÅ +$
communicationException
ÅÅ, B
)
ÅÅB C
{
ÅÅD E
logger
ÇÇ 
.
ÇÇ 
LogError
ÇÇ 
(
ÇÇ  $
communicationException
ÇÇ  6
)
ÇÇ6 7
;
ÇÇ7 8
DialogManager
ÉÉ 
.
ÉÉ #
ShowErrorMessageAlert
ÉÉ 3
(
ÉÉ3 4

Properties
ÉÉ4 >
.
ÉÉ> ?
	Resources
ÉÉ? H
.
ÉÉH I)
dialogComunicationException
ÉÉI d
)
ÉÉd e
;
ÉÉe f
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá 
BtnGuest_Click
áá #
(
áá# $
object
áá$ *
sender
áá+ 1
,
áá1 2
RoutedEventArgs
áá3 B
e
ááC D
)
ááD E
{
ááF G
CodeGameMatch
àà 
codeGameMatch
àà '
=
àà( )
new
àà* -
CodeGameMatch
àà. ;
(
àà; <
)
àà< =
;
àà= >
this
ââ 
.
ââ 
NavigationService
ââ "
.
ââ" #
Navigate
ââ# +
(
ââ+ ,
codeGameMatch
ââ, 9
)
ââ9 :
;
ââ: ;
}
ää 	
private
åå 
void
åå !
DisplayMainMenuView
åå (
(
åå( )
)
åå) *
{
åå+ ,
MenuView
çç 
menuView
çç 
=
çç 
new
çç  #
MenuView
çç$ ,
(
çç, -
)
çç- .
;
çç. /
this
éé 
.
éé 
NavigationService
éé "
.
éé" #
Navigate
éé# +
(
éé+ ,
menuView
éé, 4
)
éé4 5
;
éé5 6
}
èè 	
private
ëë 
void
ëë 
HighlightField
ëë #
(
ëë# $
Control
ëë$ +
control
ëë, 3
,
ëë3 4
bool
ëë5 9
isValid
ëë: A
)
ëëA B
{
ëëC D
control
íí 
.
íí 
BorderBrush
íí 
=
íí  !
isValid
íí" )
?
íí* +
Brushes
íí, 3
.
íí3 4
White
íí4 9
:
íí: ;
Brushes
íí< C
.
ííC D
Red
ííD G
;
ííG H
}
ìì 	
private
ïï 
void
ïï "
TxtEmail_TextChanged
ïï )
(
ïï) *
object
ïï* 0
sender
ïï1 7
,
ïï7 8"
TextChangedEventArgs
ïï9 M
e
ïïN O
)
ïïO P
{
ïïQ R
string
ññ 
email
ññ 
=
ññ 
txtEmail
ññ #
.
ññ# $
Text
ññ$ (
;
ññ( )
bool
óó 
isValid
óó 
=
óó 
	Validador
óó $
.
óó$ %
ValidateEmail
óó% 2
(
óó2 3
email
óó3 8
)
óó8 9
;
óó9 :
HighlightField
ôô 
(
ôô 
txtEmail
ôô #
,
ôô# $
isValid
ôô% ,
)
ôô, -
;
ôô- .
lbInvalidEmail
öö 
.
öö 

Visibility
öö %
=
öö& '
isValid
öö( /
?
öö0 1

Visibility
öö2 <
.
öö< =
	Collapsed
öö= F
:
ööG H

Visibility
ööI S
.
ööS T
Visible
ööT [
;
öö[ \
}
õõ 	
private
ùù 
void
ùù )
TxtPassword_PasswordChanged
ùù 0
(
ùù0 1
object
ùù1 7
sender
ùù8 >
,
ùù> ?
RoutedEventArgs
ùù@ O
e
ùùP Q
)
ùùQ R
{
ùùS T
string
ûû 
password
ûû 
=
ûû 
txtPassword
ûû )
.
ûû) *
Password
ûû* 2
;
ûû2 3
bool
üü 
isValid
üü 
=
üü 
	Validador
üü $
.
üü$ %
ValidatePassword
üü% 5
(
üü5 6
password
üü6 >
)
üü> ?
;
üü? @
HighlightField
°° 
(
°° 
txtPassword
°° &
,
°°& '
isValid
°°( /
)
°°/ 0
;
°°0 1
lbInvalidPassword
¢¢ 
.
¢¢ 

Visibility
¢¢ (
=
¢¢) *
isValid
¢¢+ 2
?
¢¢3 4

Visibility
¢¢5 ?
.
¢¢? @
	Collapsed
¢¢@ I
:
¢¢J K

Visibility
¢¢L V
.
¢¢V W
Visible
¢¢W ^
;
¢¢^ _*
UpdatePasswordVisibilityIcon
££ (
(
££( )
)
££) *
;
££* +
}
§§ 	
private
¶¶ 
void
¶¶ 

ResetField
¶¶ 
(
¶¶  
Control
¶¶  '
control
¶¶( /
)
¶¶/ 0
{
¶¶1 2
control
ßß 
.
ßß 
BorderBrush
ßß 
=
ßß  !
Brushes
ßß" )
.
ßß) *
White
ßß* /
;
ßß/ 0
}
®® 	
private
™™ 
void
™™ 
BtnSignIn_Click
™™ $
(
™™$ %
object
™™% +
sender
™™, 2
,
™™2 3
RoutedEventArgs
™™4 C
e
™™D E
)
™™E F
{
™™G H
RegisterView
´´ 
registerView
´´ %
=
´´& '
new
´´( +
RegisterView
´´, 8
(
´´8 9
)
´´9 :
;
´´: ;
this
¨¨ 
.
¨¨ 
NavigationService
¨¨ "
.
¨¨" #
Navigate
¨¨# +
(
¨¨+ ,
registerView
¨¨, 8
)
¨¨8 9
;
¨¨9 :
}
≠≠ 	
private
∞∞ 
void
∞∞ 
BtnContinue_Click
∞∞ &
(
∞∞& '
object
∞∞' -
sender
∞∞. 4
,
∞∞4 5
RoutedEventArgs
∞∞6 E
e
∞∞F G
)
∞∞G H
{
∞∞I J
LoggerManager
±± 
logger
±±  
=
±±! "
new
±±# &
LoggerManager
±±' 4
(
±±4 5
this
±±5 9
.
±±9 :
GetType
±±: A
(
±±A B
)
±±B C
)
±±C D
;
±±D E
string
≤≤ 
email
≤≤ 
=
≤≤ 
txtEmailRecovery
≤≤ +
.
≤≤+ ,
Text
≤≤, 0
.
≤≤0 1
Trim
≤≤1 5
(
≤≤5 6
)
≤≤6 7
;
≤≤7 8
if
¥¥ 
(
¥¥ 
string
¥¥ 
.
¥¥  
IsNullOrWhiteSpace
¥¥ )
(
¥¥) *
email
¥¥* /
)
¥¥/ 0
)
¥¥0 1
{
¥¥2 3
DialogManager
µµ 
.
µµ #
ShowErrorMessageAlert
µµ 3
(
µµ3 4

Properties
µµ4 >
.
µµ> ?
	Resources
µµ? H
.
µµH I
dialogNullEmail
µµI X
)
µµX Y
;
µµY Z
return
∂∂ 
;
∂∂ 
}
∑∑ 
if
ππ 
(
ππ 
!
ππ 
	Validador
ππ 
.
ππ 
ValidateEmail
ππ (
(
ππ( )
email
ππ) .
)
ππ. /
)
ππ/ 0
{
ππ1 2
DialogManager
∫∫ 
.
∫∫ #
ShowErrorMessageAlert
∫∫ 3
(
∫∫3 4

Properties
∫∫4 >
.
∫∫> ?
	Resources
∫∫? H
.
∫∫H I 
dialogInvalidEmail
∫∫I [
)
∫∫[ \
;
∫∫\ ]
return
ªª 
;
ªª 
}
ºº 
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
øø_ `
int
¿¿ 
result
¿¿ 
=
¿¿ 
passwordRecovery
¿¿ -
.
¿¿- .
SendRecoveryCode
¿¿. >
(
¿¿> ?
email
¿¿? D
)
¿¿D E
;
¿¿E F
if
¬¬ 
(
¬¬ 
result
¬¬ 
==
¬¬ 
	Constants
¬¬ '
.
¬¬' (
SUCCES_OPERATION
¬¬( 8
)
¬¬8 9
{
¬¬: ;
	userEmail
√√ 
=
√√ 
email
√√  %
;
√√% &
enterEmailGrid
ƒƒ "
.
ƒƒ" #

Visibility
ƒƒ# -
=
ƒƒ. /

Visibility
ƒƒ0 :
.
ƒƒ: ;
	Collapsed
ƒƒ; D
;
ƒƒD E
recoveryGrid
≈≈  
.
≈≈  !

Visibility
≈≈! +
=
≈≈, -

Visibility
≈≈. 8
.
≈≈8 9
Visible
≈≈9 @
;
≈≈@ A
DialogManager
∆∆ !
.
∆∆! "%
ShowSuccessMessageAlert
∆∆" 9
(
∆∆9 :

Properties
∆∆: D
.
∆∆D E
	Resources
∆∆E N
.
∆∆N O+
dialogRecoveryCodeHasBeenSent
∆∆O l
)
∆∆l m
;
∆∆m n
}
«« 
else
«« 
if
«« 
(
«« 
result
«« !
==
««" $
	Constants
««% .
.
««. /
NO_DATA_MATCHES
««/ >
)
««> ?
{
««@ A
DialogManager
»» !
.
»»! "#
ShowErrorMessageAlert
»»" 7
(
»»7 8

Properties
»»8 B
.
»»B C
	Resources
»»C L
.
»»L M 
dialogInvalidEmail
»»M _
)
»»_ `
;
»»` a
}
…… 
else
…… 
{
…… 
DialogManager
   !
.
  ! "#
ShowErrorMessageAlert
  " 7
(
  7 8

Properties
  8 B
.
  B C
	Resources
  C L
.
  L M,
dialogErrorSendingRecoveryCode
  M k
)
  k l
;
  l m
}
ÀÀ 
}
ÃÃ 
catch
ÃÃ 
(
ÃÃ '
EndpointNotFoundException
ÃÃ .
ex
ÃÃ/ 1
)
ÃÃ1 2
{
ÃÃ3 4
logger
ÕÕ 
.
ÕÕ 
LogError
ÕÕ 
(
ÕÕ  
ex
ÕÕ  "
)
ÕÕ" #
;
ÕÕ# $
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
ŒŒH I%
dialogEndPointException
ŒŒI `
)
ŒŒ` a
;
ŒŒa b
}
œœ 
catch
œœ 
(
œœ 
TimeoutException
œœ %
ex
œœ& (
)
œœ( )
{
œœ* +
logger
–– 
.
–– 
LogError
–– 
(
––  
ex
––  "
)
––" #
;
––# $
DialogManager
—— 
.
—— #
ShowErrorMessageAlert
—— 3
(
——3 4

Properties
——4 >
.
——> ?
	Resources
——? H
.
——H I$
dialogTimeOutException
——I _
)
——_ `
;
——` a
}
““ 
catch
““ 
(
““ $
CommunicationException
““ +
ex
““, .
)
““. /
{
““0 1
logger
”” 
.
”” 
LogError
”” 
(
””  
ex
””  "
)
””" #
;
””# $
DialogManager
‘‘ 
.
‘‘ #
ShowErrorMessageAlert
‘‘ 3
(
‘‘3 4

Properties
‘‘4 >
.
‘‘> ?
	Resources
‘‘? H
.
‘‘H I)
dialogComunicationException
‘‘I d
)
‘‘d e
;
‘‘e f
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ %
BtnBackEnterEmail_Click
ÿÿ ,
(
ÿÿ, -
object
ÿÿ- 3
sender
ÿÿ4 :
,
ÿÿ: ;
RoutedEventArgs
ÿÿ< K
e
ÿÿL M
)
ÿÿM N
{
ÿÿO P
enterEmailGrid
ŸŸ 
.
ŸŸ 

Visibility
ŸŸ %
=
ŸŸ& '

Visibility
ŸŸ( 2
.
ŸŸ2 3
	Collapsed
ŸŸ3 <
;
ŸŸ< =
txtEmail
⁄⁄ 
.
⁄⁄ 
Clear
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
txtPassword
€€ 
.
€€ 
Clear
€€ 
(
€€ 
)
€€ 
;
€€   
txtPasswordVisible
‹‹ 
.
‹‹ 
Clear
‹‹ $
(
‹‹$ %
)
‹‹% &
;
‹‹& '
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ 
BtnValidate_Click
ﬂﬂ &
(
ﬂﬂ& '
object
ﬂﬂ' -
sender
ﬂﬂ. 4
,
ﬂﬂ4 5
RoutedEventArgs
ﬂﬂ6 E
e
ﬂﬂF G
)
ﬂﬂG H
{
ﬂﬂI J
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
‡‡D E
string
·· 
enteredCode
·· 
=
··  
$"
··! #
{
··# $ 
txtValidationCode1
··$ 6
.
··6 7
Text
··7 ;
}
··; <
{
··< = 
txtValidationCode2
··= O
.
··O P
Text
··P T
}
··T U
{
··U V 
txtValidationCode3
··V h
.
··h i
Text
··i m
}
··m n
{
··n o!
txtValidationCode4··o Å
.··Å Ç
Text··Ç Ü
}··Ü á
{··á à"
txtValidationCode5··à ö
.··ö õ
Text··õ ü
}··ü †
{··† °"
txtValidationCode6··° ≥
.··≥ ¥
Text··¥ ∏
}··∏ π
"··π ∫
;··∫ ª
try
„„ 
{
„„ &
IPasswordRecoveryManager
‰‰ (
passwordRecovery
‰‰) 9
=
‰‰: ;
new
‰‰< ?+
PasswordRecoveryManagerClient
‰‰@ ]
(
‰‰] ^
)
‰‰^ _
;
‰‰_ `
bool
ÂÂ 
isCodeValid
ÂÂ  
=
ÂÂ! "
passwordRecovery
ÂÂ# 3
.
ÂÂ3 4 
VerifyRecoveryCode
ÂÂ4 F
(
ÂÂF G
	userEmail
ÂÂG P
,
ÂÂP Q
enteredCode
ÂÂR ]
)
ÂÂ] ^
;
ÂÂ^ _
if
ÁÁ 
(
ÁÁ 
isCodeValid
ÁÁ 
)
ÁÁ  
{
ÁÁ! "
recoveryGrid
ËË  
.
ËË  !

Visibility
ËË! +
=
ËË, -

Visibility
ËË. 8
.
ËË8 9
	Collapsed
ËË9 B
;
ËËB C"
recoveryPasswordGrid
ÈÈ (
.
ÈÈ( )

Visibility
ÈÈ) 3
=
ÈÈ4 5

Visibility
ÈÈ6 @
.
ÈÈ@ A
Visible
ÈÈA H
;
ÈÈH I
}
ÍÍ 
else
ÍÍ 
{
ÍÍ 
DialogManager
ÎÎ !
.
ÎÎ! "#
ShowErrorMessageAlert
ÎÎ" 7
(
ÎÎ7 8

Properties
ÎÎ8 B
.
ÎÎB C
	Resources
ÎÎC L
.
ÎÎL M'
dialogInvalidRecoveryCode
ÎÎM f
)
ÎÎf g
;
ÎÎg h
}
ÏÏ 
}
ÌÌ 
catch
ÌÌ 
(
ÌÌ '
EndpointNotFoundException
ÌÌ .'
endpointNotFoundException
ÌÌ/ H
)
ÌÌH I
{
ÌÌJ K
logger
ÓÓ 
.
ÓÓ 
LogError
ÓÓ 
(
ÓÓ  '
endpointNotFoundException
ÓÓ  9
)
ÓÓ9 :
;
ÓÓ: ;
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
ÔÔH I%
dialogEndPointException
ÔÔI `
)
ÔÔ` a
;
ÔÔa b
}
 
catch
 
(
 
TimeoutException
 %
timeoutException
& 6
)
6 7
{
8 9
logger
ÒÒ 
.
ÒÒ 
LogError
ÒÒ 
(
ÒÒ  
timeoutException
ÒÒ  0
)
ÒÒ0 1
;
ÒÒ1 2
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
ÚÚH I$
dialogTimeOutException
ÚÚI _
)
ÚÚ_ `
;
ÚÚ` a
}
ÛÛ 
catch
ÛÛ 
(
ÛÛ $
CommunicationException
ÛÛ +$
communicationException
ÛÛ, B
)
ÛÛB C
{
ÛÛD E
logger
ÙÙ 
.
ÙÙ 
LogError
ÙÙ 
(
ÙÙ  $
communicationException
ÙÙ  6
)
ÙÙ6 7
;
ÙÙ7 8
DialogManager
ıı 
.
ıı #
ShowErrorMessageAlert
ıı 3
(
ıı3 4

Properties
ıı4 >
.
ıı> ?
	Resources
ıı? H
.
ııH I)
dialogComunicationException
ııI d
)
ııd e
;
ııe f
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ !
BtnResendCode_Click
˘˘ (
(
˘˘( )
object
˘˘) /
sender
˘˘0 6
,
˘˘6 7
RoutedEventArgs
˘˘8 G
e
˘˘H I
)
˘˘I J
{
˘˘K L
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
¸¸ 
(
¸¸ 
string
¸¸ 
.
¸¸ 
IsNullOrEmpty
¸¸ $
(
¸¸$ %
	userEmail
¸¸% .
)
¸¸. /
)
¸¸/ 0
{
¸¸1 2
DialogManager
˝˝ 
.
˝˝ #
ShowErrorMessageAlert
˝˝ 3
(
˝˝3 4

Properties
˝˝4 >
.
˝˝> ?
	Resources
˝˝? H
.
˝˝H I
dialogNullEmail
˝˝I X
)
˝˝X Y
;
˝˝Y Z
return
˛˛ 
;
˛˛ 
}
ˇˇ 
try
ÅÅ 
{
ÅÅ 
var
ÇÇ $
emailVerificationProxy
ÇÇ *
=
ÇÇ+ ,
new
ÇÇ- 0"
TripasDeGatoServicio
ÇÇ1 E
.
ÇÇE F+
PasswordRecoveryManagerClient
ÇÇF c
(
ÇÇc d
)
ÇÇd e
;
ÇÇe f
int
ÉÉ 
result
ÉÉ 
=
ÉÉ $
emailVerificationProxy
ÉÉ 3
.
ÉÉ3 4
SendRecoveryCode
ÉÉ4 D
(
ÉÉD E
	userEmail
ÉÉE N
)
ÉÉN O
;
ÉÉO P
if
ÖÖ 
(
ÖÖ 
result
ÖÖ 
==
ÖÖ 
	Constants
ÖÖ '
.
ÖÖ' (
SUCCES_OPERATION
ÖÖ( 8
)
ÖÖ8 9
{
ÖÖ: ;
DialogManager
ÜÜ !
.
ÜÜ! "%
ShowSuccessMessageAlert
ÜÜ" 9
(
ÜÜ9 :

Properties
ÜÜ: D
.
ÜÜD E
	Resources
ÜÜE N
.
ÜÜN O&
dialogRecoveryCodeResent
ÜÜO g
)
ÜÜg h
;
ÜÜh i
}
áá 
else
áá 
{
áá 
DialogManager
àà !
.
àà! "#
ShowErrorMessageAlert
àà" 7
(
àà7 8

Properties
àà8 B
.
ààB C
	Resources
ààC L
.
ààL M.
 dialogErrorResendingRecoveryCode
ààM m
)
ààm n
;
ààn o
}
ââ 
}
ää 
catch
ää 
(
ää '
EndpointNotFoundException
ää .'
endpointNotFoundException
ää/ H
)
ääH I
{
ääJ K
logger
ãã 
.
ãã 
LogError
ãã 
(
ãã  '
endpointNotFoundException
ãã  9
)
ãã9 :
;
ãã: ;
DialogManager
åå 
.
åå #
ShowErrorMessageAlert
åå 3
(
åå3 4

Properties
åå4 >
.
åå> ?
	Resources
åå? H
.
ååH I%
dialogEndPointException
ååI `
)
åå` a
;
ååa b
}
çç 
catch
çç 
(
çç 
TimeoutException
çç %
timeoutException
çç& 6
)
çç6 7
{
çç8 9
logger
éé 
.
éé 
LogError
éé 
(
éé  
timeoutException
éé  0
)
éé0 1
;
éé1 2
DialogManager
èè 
.
èè #
ShowErrorMessageAlert
èè 3
(
èè3 4

Properties
èè4 >
.
èè> ?
	Resources
èè? H
.
èèH I$
dialogTimeOutException
èèI _
)
èè_ `
;
èè` a
}
êê 
catch
êê 
(
êê $
CommunicationException
êê +$
communicationException
êê, B
)
êêB C
{
êêD E
logger
ëë 
.
ëë 
LogError
ëë 
(
ëë  $
communicationException
ëë  6
)
ëë6 7
;
ëë7 8
DialogManager
íí 
.
íí #
ShowErrorMessageAlert
íí 3
(
íí3 4

Properties
íí4 >
.
íí> ?
	Resources
íí? H
.
ííH I)
dialogComunicationException
ííI d
)
ííd e
;
ííe f
}
ìì 
}
îî 	
private
ññ 
void
ññ #
BtnBackValidate_Click
ññ *
(
ññ* +
object
ññ+ 1
sender
ññ2 8
,
ññ8 9
RoutedEventArgs
ññ: I
e
ññJ K
)
ññK L
{
ññM N
recoveryGrid
óó 
.
óó 

Visibility
óó #
=
óó$ %

Visibility
óó& 0
.
óó0 1
	Collapsed
óó1 :
;
óó: ;
txtEmail
òò 
.
òò 
Clear
òò 
(
òò 
)
òò 
;
òò 
txtPassword
ôô 
.
ôô 
Clear
ôô 
(
ôô 
)
ôô 
;
ôô   
txtPasswordVisible
öö 
.
öö 
Clear
öö $
(
öö$ %
)
öö% &
;
öö& '
}
õõ 	
private
ùù 
void
ùù #
BtnSavePassword_Click
ùù *
(
ùù* +
object
ùù+ 1
sender
ùù2 8
,
ùù8 9
RoutedEventArgs
ùù: I
e
ùùJ K
)
ùùK L
{
ùùM N
LoggerManager
ûû 
logger
ûû  
=
ûû! "
new
ûû# &
LoggerManager
ûû' 4
(
ûû4 5
this
ûû5 9
.
ûû9 :
GetType
ûû: A
(
ûûA B
)
ûûB C
)
ûûC D
;
ûûD E
string
†† 
newPassword
†† 
=
††  
txtNewPassword
††! /
.
††/ 0
Password
††0 8
.
††8 9
Trim
††9 =
(
††= >
)
††> ?
;
††? @
string
°° 
confirmPassword
°° "
=
°°# $#
txtNewPasswordConfirm
°°% :
.
°°: ;
Password
°°; C
.
°°C D
Trim
°°D H
(
°°H I
)
°°I J
;
°°J K
string
¢¢ 
email
¢¢ 
=
¢¢ 
txtEmail
¢¢ #
.
¢¢# $
Text
¢¢$ (
.
¢¢( )
Trim
¢¢) -
(
¢¢- .
)
¢¢. /
;
¢¢/ 0
if
§§ 
(
§§ 
newPassword
§§ 
!=
§§ 
confirmPassword
§§ .
)
§§. /
{
§§0 1
DialogManager
•• 
.
•• #
ShowErrorMessageAlert
•• 3
(
••3 4

Properties
••4 >
.
••> ?
	Resources
••? H
.
••H I*
dialogMissmatchesCredentials
••I e
)
••e f
;
••f g
return
¶¶ 
;
¶¶ 
}
ßß 
if
©© 
(
©© 
!
©© 
IsValidPassword
©©  
(
©©  !
newPassword
©©! ,
)
©©, -
)
©©- .
{
©©/ 0
DialogManager
™™ 
.
™™ #
ShowErrorMessageAlert
™™ 3
(
™™3 4

Properties
™™4 >
.
™™> ?
	Resources
™™? H
.
™™H I#
dialogInvalidPassword
™™I ^
)
™™^ _
;
™™_ `
return
´´ 
;
´´ 
}
¨¨ 
try
ÆÆ 
{
ÆÆ &
IPasswordRecoveryManager
ØØ (
passwordRecovery
ØØ) 9
=
ØØ: ;
new
ØØ< ?+
PasswordRecoveryManagerClient
ØØ@ ]
(
ØØ] ^
)
ØØ^ _
;
ØØ_ `
int
∞∞ 
result
∞∞ 
=
∞∞ 
passwordRecovery
∞∞ -
.
∞∞- .
UpdatePassword
∞∞. <
(
∞∞< =
	userEmail
∞∞= F
,
∞∞F G
Hasher
∞∞H N
.
∞∞N O
HashToSHA256
∞∞O [
(
∞∞[ \
newPassword
∞∞\ g
)
∞∞g h
)
∞∞h i
;
∞∞i j
if
≤≤ 
(
≤≤ 
result
≤≤ 
==
≤≤ 
	Constants
≤≤ '
.
≤≤' (
SUCCES_OPERATION
≤≤( 8
)
≤≤8 9
{
≤≤: ;
DialogManager
≥≥ !
.
≥≥! "%
ShowSuccessMessageAlert
≥≥" 9
(
≥≥9 :

Properties
≥≥: D
.
≥≥D E
	Resources
≥≥E N
.
≥≥N O/
!dialogPasswordUpdatedSuccessfully
≥≥O p
)
≥≥p q
;
≥≥q r
txtNewPassword
¥¥ "
.
¥¥" #
Clear
¥¥# (
(
¥¥( )
)
¥¥) *
;
¥¥* +#
txtNewPasswordConfirm
µµ )
.
µµ) *
Clear
µµ* /
(
µµ/ 0
)
µµ0 1
;
µµ1 2"
recoveryPasswordGrid
∂∂ (
.
∂∂( )

Visibility
∂∂) 3
=
∂∂4 5

Visibility
∂∂6 @
.
∂∂@ A
	Collapsed
∂∂A J
;
∂∂J K
}
∑∑ 
else
∑∑ 
{
∑∑ 
DialogManager
∏∏ !
.
∏∏! "#
ShowErrorMessageAlert
∏∏" 7
(
∏∏7 8

Properties
∏∏8 B
.
∏∏B C
	Resources
∏∏C L
.
∏∏L M)
dialogErrorUpdatingPassowrd
∏∏M h
)
∏∏h i
;
∏∏i j
}
ππ 
}
∫∫ 
catch
∫∫ 
(
∫∫ '
EndpointNotFoundException
∫∫ .'
endpointNotFoundException
∫∫/ H
)
∫∫H I
{
∫∫J K
logger
ªª 
.
ªª 
LogError
ªª 
(
ªª  '
endpointNotFoundException
ªª  9
)
ªª9 :
;
ªª: ;
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
ººH I%
dialogEndPointException
ººI `
)
ºº` a
;
ººa b
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ %
timeoutException
ΩΩ& 6
)
ΩΩ6 7
{
ΩΩ8 9
logger
ææ 
.
ææ 
LogError
ææ 
(
ææ  
timeoutException
ææ  0
)
ææ0 1
;
ææ1 2
DialogManager
øø 
.
øø #
ShowErrorMessageAlert
øø 3
(
øø3 4

Properties
øø4 >
.
øø> ?
	Resources
øø? H
.
øøH I$
dialogTimeOutException
øøI _
)
øø_ `
;
øø` a
}
¿¿ 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ +$
communicationException
¿¿, B
)
¿¿B C
{
¿¿D E
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  $
communicationException
¡¡  6
)
¡¡6 7
;
¡¡7 8
DialogManager
¬¬ 
.
¬¬ #
ShowErrorMessageAlert
¬¬ 3
(
¬¬3 4

Properties
¬¬4 >
.
¬¬> ?
	Resources
¬¬? H
.
¬¬H I)
dialogComunicationException
¬¬I d
)
¬¬d e
;
¬¬e f
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ +
TxtValidationCode_TextChanged
∆∆ 2
(
∆∆2 3
object
∆∆3 9
sender
∆∆: @
,
∆∆@ A"
TextChangedEventArgs
∆∆B V
e
∆∆W X
)
∆∆X Y
{
∆∆Z [
TextBox
«« 
currentTextBox
«« "
=
««# $
sender
««% +
as
««, .
TextBox
««/ 6
;
««6 7
if
»» 
(
»» 
currentTextBox
»» 
.
»» 
Text
»» #
.
»»# $
Length
»»$ *
==
»»+ -
$num
»». /
)
»»/ 0
{
»»1 2
if
…… 
(
…… 
currentTextBox
…… "
==
……# % 
txtValidationCode1
……& 8
)
……8 9 
txtValidationCode2
   &
.
  & '
Focus
  ' ,
(
  , -
)
  - .
;
  . /
else
ÀÀ 
if
ÀÀ 
(
ÀÀ 
currentTextBox
ÀÀ '
==
ÀÀ( * 
txtValidationCode2
ÀÀ+ =
)
ÀÀ= > 
txtValidationCode3
ÃÃ &
.
ÃÃ& '
Focus
ÃÃ' ,
(
ÃÃ, -
)
ÃÃ- .
;
ÃÃ. /
else
ÕÕ 
if
ÕÕ 
(
ÕÕ 
currentTextBox
ÕÕ '
==
ÕÕ( * 
txtValidationCode3
ÕÕ+ =
)
ÕÕ= > 
txtValidationCode4
ŒŒ &
.
ŒŒ& '
Focus
ŒŒ' ,
(
ŒŒ, -
)
ŒŒ- .
;
ŒŒ. /
else
œœ 
if
œœ 
(
œœ 
currentTextBox
œœ '
==
œœ( * 
txtValidationCode4
œœ+ =
)
œœ= > 
txtValidationCode5
–– &
.
––& '
Focus
––' ,
(
––, -
)
––- .
;
––. /
else
—— 
if
—— 
(
—— 
currentTextBox
—— '
==
——( * 
txtValidationCode5
——+ =
)
——= > 
txtValidationCode6
““ &
.
““& '
Focus
““' ,
(
““, -
)
““- .
;
““. /
}
”” 
}
‘‘ 	
private
÷÷ 
bool
÷÷ 
IsValidPassword
÷÷ $
(
÷÷$ %
string
÷÷% +
password
÷÷, 4
)
÷÷4 5
{
÷÷6 7
bool
◊◊ 
isValid
◊◊ 
=
◊◊ 
true
◊◊ 
;
◊◊  
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
	Validador
ÿÿ 
.
ÿÿ 
ValidatePassword
ÿÿ +
(
ÿÿ+ ,
password
ÿÿ, 4
)
ÿÿ4 5
)
ÿÿ5 6
{
ÿÿ7 8
isValid
ŸŸ 
=
ŸŸ 
false
ŸŸ 
;
ŸŸ  
}
⁄⁄ 
return
€€ 
isValid
€€ 
;
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ *
BtnToggleNewPassword_Checked
ﬁﬁ 1
(
ﬁﬁ1 2
object
ﬁﬁ2 8
sender
ﬁﬁ9 ?
,
ﬁﬁ? @
RoutedEventArgs
ﬁﬁA P
e
ﬁﬁQ R
)
ﬁﬁR S
{
ﬁﬁT U#
txtNewPasswordVisible
ﬂﬂ !
.
ﬂﬂ! "
Text
ﬂﬂ" &
=
ﬂﬂ' (
txtNewPassword
ﬂﬂ) 7
.
ﬂﬂ7 8
Password
ﬂﬂ8 @
;
ﬂﬂ@ A#
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
‡‡9 :
Visible
‡‡: A
;
‡‡A B
txtNewPassword
·· 
.
·· 

Visibility
·· %
=
··& '

Visibility
··( 2
.
··2 3
	Collapsed
··3 <
;
··< =*
txtNewPasswordConfirmVisible
„„ (
.
„„( )
Text
„„) -
=
„„. /#
txtNewPasswordConfirm
„„0 E
.
„„E F
Password
„„F N
;
„„N O*
txtNewPasswordConfirmVisible
‰‰ (
.
‰‰( )

Visibility
‰‰) 3
=
‰‰4 5

Visibility
‰‰6 @
.
‰‰@ A
Visible
‰‰A H
;
‰‰H I#
txtNewPasswordConfirm
ÂÂ !
.
ÂÂ! "

Visibility
ÂÂ" ,
=
ÂÂ- .

Visibility
ÂÂ/ 9
.
ÂÂ9 :
	Collapsed
ÂÂ: C
;
ÂÂC D
}
ÊÊ 	
private
ËË 
void
ËË ,
BtnToggleNewPassword_Unchecked
ËË 3
(
ËË3 4
object
ËË4 :
sender
ËË; A
,
ËËA B
RoutedEventArgs
ËËC R
e
ËËS T
)
ËËT U
{
ËËV W
txtNewPassword
ÈÈ 
.
ÈÈ 
Password
ÈÈ #
=
ÈÈ$ %#
txtNewPasswordVisible
ÈÈ& ;
.
ÈÈ; <
Text
ÈÈ< @
;
ÈÈ@ A
txtNewPassword
ÍÍ 
.
ÍÍ 

Visibility
ÍÍ %
=
ÍÍ& '

Visibility
ÍÍ( 2
.
ÍÍ2 3
Visible
ÍÍ3 :
;
ÍÍ: ;#
txtNewPasswordVisible
ÎÎ !
.
ÎÎ! "

Visibility
ÎÎ" ,
=
ÎÎ- .

Visibility
ÎÎ/ 9
.
ÎÎ9 :
	Collapsed
ÎÎ: C
;
ÎÎC D#
txtNewPasswordConfirm
ÌÌ !
.
ÌÌ! "
Password
ÌÌ" *
=
ÌÌ+ ,*
txtNewPasswordConfirmVisible
ÌÌ- I
.
ÌÌI J
Text
ÌÌJ N
;
ÌÌN O#
txtNewPasswordConfirm
ÓÓ !
.
ÓÓ! "

Visibility
ÓÓ" ,
=
ÓÓ- .

Visibility
ÓÓ/ 9
.
ÓÓ9 :
Visible
ÓÓ: A
;
ÓÓA B*
txtNewPasswordConfirmVisible
ÔÔ (
.
ÔÔ( )

Visibility
ÔÔ) 3
=
ÔÔ4 5

Visibility
ÔÔ6 @
.
ÔÔ@ A
	Collapsed
ÔÔA J
;
ÔÔJ K
}
 	
private
ÚÚ 
void
ÚÚ #
BtnBackRecovery_Click
ÚÚ *
(
ÚÚ* +
object
ÚÚ+ 1
sender
ÚÚ2 8
,
ÚÚ8 9
RoutedEventArgs
ÚÚ: I
e
ÚÚJ K
)
ÚÚK L
{
ÚÚM N"
recoveryPasswordGrid
ÛÛ  
.
ÛÛ  !

Visibility
ÛÛ! +
=
ÛÛ, -

Visibility
ÛÛ. 8
.
ÛÛ8 9
	Collapsed
ÛÛ9 B
;
ÛÛB C
txtEmail
ÙÙ 
.
ÙÙ 
Clear
ÙÙ 
(
ÙÙ 
)
ÙÙ 
;
ÙÙ 
txtPassword
ıı 
.
ıı 
Clear
ıı 
(
ıı 
)
ıı 
;
ıı   
txtPasswordVisible
ˆˆ 
.
ˆˆ 
Clear
ˆˆ $
(
ˆˆ$ %
)
ˆˆ% &
;
ˆˆ& '
}
˜˜ 	
private
˘˘ 
void
˘˘ '
BtnTogglePassword_Checked
˘˘ .
(
˘˘. /
object
˘˘/ 5
sender
˘˘6 <
,
˘˘< =
RoutedEventArgs
˘˘> M
e
˘˘N O
)
˘˘O P
{
˘˘Q R 
txtPasswordVisible
˙˙ 
.
˙˙ 
Text
˙˙ #
=
˙˙$ %
txtPassword
˙˙& 1
.
˙˙1 2
Password
˙˙2 :
;
˙˙: ; 
txtPasswordVisible
˚˚ 
.
˚˚ 

Visibility
˚˚ )
=
˚˚* +

Visibility
˚˚, 6
.
˚˚6 7
Visible
˚˚7 >
;
˚˚> ?
txtPassword
¸¸ 
.
¸¸ 

Visibility
¸¸ "
=
¸¸# $

Visibility
¸¸% /
.
¸¸/ 0
	Collapsed
¸¸0 9
;
¸¸9 :
}
˝˝ 	
private
ˇˇ 
void
ˇˇ )
BtnTogglePassword_Unchecked
ˇˇ 0
(
ˇˇ0 1
object
ˇˇ1 7
sender
ˇˇ8 >
,
ˇˇ> ?
RoutedEventArgs
ˇˇ@ O
e
ˇˇP Q
)
ˇˇQ R
{
ˇˇS T
txtPassword
ÄÄ 
.
ÄÄ 
Password
ÄÄ  
=
ÄÄ! " 
txtPasswordVisible
ÄÄ# 5
.
ÄÄ5 6
Text
ÄÄ6 :
;
ÄÄ: ; 
txtPasswordVisible
ÅÅ 
.
ÅÅ 

Visibility
ÅÅ )
=
ÅÅ* +

Visibility
ÅÅ, 6
.
ÅÅ6 7
	Collapsed
ÅÅ7 @
;
ÅÅ@ A
txtPassword
ÇÇ 
.
ÇÇ 

Visibility
ÇÇ "
=
ÇÇ# $

Visibility
ÇÇ% /
.
ÇÇ/ 0
Visible
ÇÇ0 7
;
ÇÇ7 8
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ *
UpdatePasswordVisibilityIcon
ÖÖ 1
(
ÖÖ1 2
)
ÖÖ2 3
{
ÖÖ4 5
btnTogglePassword
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ (
=
ÜÜ) *
txtPassword
ÜÜ+ 6
.
ÜÜ6 7
Password
ÜÜ7 ?
.
ÜÜ? @
Length
ÜÜ@ F
>
ÜÜG H
$num
ÜÜI J
?
ÜÜK L

Visibility
ÜÜM W
.
ÜÜW X
Visible
ÜÜX _
:
ÜÜ` a

Visibility
ÜÜb l
.
ÜÜl m
	Collapsed
ÜÜm v
;
ÜÜv w
}
áá 	
private
ââ 
void
ââ &
BtnRecoverPassword_Click
ââ -
(
ââ- .
object
ââ. 4
sender
ââ5 ;
,
ââ; <
RoutedEventArgs
ââ= L
e
ââM N
)
ââN O
{
ââP Q
enterEmailGrid
ää 
.
ää 

Visibility
ää %
=
ää& '

Visibility
ää( 2
.
ää2 3
Visible
ää3 :
;
ää: ;
}
ãã 	
}
åå 
}çç ˘a
0C:\TripasDeGatoCliente\Views\ProfileView.xaml.cs
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
class 
ProfileView $
:% &
Page' +
{, -
private 
bool 
	isEditing 
=  
false! &
;& '
public 
ProfileView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
LoadProfile 
( 
) 
; 
DisableEditing 
( 
) 
; 
} 	
private 
void 
LoadProfile  
(  !
)! "
{# $
lbUserNameProfile 
. 
Content %
=& '
!( )
string) /
./ 0
IsNullOrEmpty0 =
(= > 
UserProfileSingleton> R
.R S
UserNameS [
)[ \
?] ^ 
UserProfileSingleton_ s
.s t
UserNamet |
:} ~
$str	 î
;
î ï
txtUserName 
. 
Text 
=  
UserProfileSingleton 3
.3 4
UserName4 <
;< =
cboxLanguage 
. 
ItemsSource $
=% &
new' *
List+ /
</ 0
string0 6
>6 7
{8 9
$str: C
,C D
$strE M
,M N
$strO X
}Y Z
;Z [
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% & 
UserProfileSingleton& :
.: ;
PicPath; B
)B C
)C D
{E F
imageProfile 
. 
Source #
=$ %
new& )
BitmapImage* 5
(5 6
new6 9
Uri: =
(= > 
UserProfileSingleton> R
.R S
PicPathS Z
,Z [
UriKind\ c
.c d
RelativeOrAbsoluted v
)v w
)w x
;x y
} 
lbScoreProfile 
. 
Content "
=# $
string% +
.+ ,
Format, 2
(2 3

Properties3 =
.= >
	Resources> G
.G H
lbScoreH O
,O P 
UserProfileSingletonQ e
.e f
Scoref k
)k l
;l m
} 	
private 
void 
EnableEditing "
(" #
)# $
{% &
txtUserName 
. 
	IsEnabled !
=" #
true$ (
;( )
cboxLanguage   
.   
	IsEnabled   "
=  # $
true  % )
;  ) *
btnSave!! 
.!! 
	IsEnabled!! 
=!! 
true!!  $
;!!$ %
	isEditing"" 
="" 
true"" 
;"" 
borderProfiles## 
.## 
	IsEnabled## $
=##% &
true##' +
;##+ ,
borderProfiles$$ 
.$$ 

Visibility$$ %
=$$& '

Visibility$$( 2
.$$2 3
Visible$$3 :
;$$: ;
btnSave%% 
.%% 

Visibility%% 
=%%  

Visibility%%! +
.%%+ ,
Visible%%, 3
;%%3 4
}&& 	
private(( 
void(( 
DisableEditing(( #
(((# $
)(($ %
{((& '
txtUserName)) 
.)) 
	IsEnabled)) !
=))" #
false))$ )
;))) *
cboxLanguage** 
.** 
	IsEnabled** "
=**# $
false**% *
;*** +
btnSave++ 
.++ 
	IsEnabled++ 
=++ 
false++  %
;++% &
	isEditing,, 
=,, 
false,, 
;,, 
borderProfiles-- 
.-- 
	IsEnabled-- $
=--% &
false--' ,
;--, -
borderProfiles.. 
... 

Visibility.. %
=..& '

Visibility..( 2
...2 3
	Collapsed..3 <
;..< =
btnSave// 
.// 

Visibility// 
=//  

Visibility//! +
.//+ ,
	Collapsed//, 5
;//5 6
}00 	
private22 
void22 
btnEdit_Click22 "
(22" #
object22# )
sender22* 0
,220 1
RoutedEventArgs222 A
e22B C
)22C D
{22E F
if33 
(33 
!33 
	isEditing33 
)33 
{33 
EnableEditing44 
(44 
)44 
;44  
}55 
}66 	
private88 
void88 
BtnSave_Click88 "
(88" #
object88# )
sender88* 0
,880 1
RoutedEventArgs882 A
e88B C
)88C D
{88E F
if99 
(99 
	isEditing99 
)99 
{99 
if:: 
(:: 
ValidateFields:: "
(::" #
)::# $
)::$ %
{::& '
string;; 
userName;; #
=;;$ %
txtUserName;;& 1
.;;1 2
Text;;2 6
;;;6 7
string<< 
selectedLanguage<< +
=<<, -
cboxLanguage<<. :
.<<: ;
SelectedItem<<; G
?<<G H
.<<H I
ToString<<I Q
(<<Q R
)<<R S
;<<S T
var?? 
selectedListBoxItem?? +
=??, -
lsb_ProfilePics??. =
.??= >
SelectedItem??> J
as??K M
ListBoxItem??N Y
;??Y Z
string@@ 
selectedProfile@@ *
=@@+ ,
selectedListBoxItem@@- @
?@@@ A
.@@A B
Tag@@B E
?@@E F
.@@F G
ToString@@G O
(@@O P
)@@P Q
;@@Q R
SaveProfileBB 
(BB  
userNameBB  (
,BB( )
selectedLanguageBB* :
,BB: ;
selectedProfileBB< K
)BBK L
;BBL M
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
.DDL M%
dialogCompleteFieldsErrorDDM f
)DDf g
;DDg h
}EE 
}FF 
}GG 	
privateII 
asyncII 
voidII 
SaveProfileII &
(II& '
stringII' -
userNameII. 6
,II6 7
stringII8 >
selectedLanguageII? O
,IIO P
stringIIQ W
selectedProfileIIX g
)IIg h
{IIi j
tryJJ 
{JJ 
varKK 
serviceKK 
=KK 
newKK ! 
TripasDeGatoServicioKK" 6
.KK6 7
UserManagerClientKK7 H
(KKH I
)KKI J
;KKJ K
intLL 
	idProfileLL 
=LL  
UserProfileSingletonLL  4
.LL4 5
	IdProfileLL5 >
;LL> ?
stringMM 
newPicMM 
=MM 
selectedProfileMM  /
??MM0 2 
UserProfileSingletonMM3 G
.MMG H
PicPathMMH O
;MMO P
intNN 
updateResultNN  
=NN! "
awaitNN# (
serviceNN) 0
.NN0 1
UpdateProfileAsyncNN1 C
(NNC D
	idProfileNND M
,NNM N
userNameNNO W
,NNW X
newPicNNY _
)NN_ `
;NN` a
ifPP 
(PP 
updateResultPP  
==PP! #
ConstantsManagerPP$ 4
.PP4 5
	ConstantsPP5 >
.PP> ?
SUCCES_OPERATIONPP? O
)PPO P
{PPQ R 
UserProfileSingletonQQ (
.QQ( )
UpdateNombreQQ) 5
(QQ5 6
userNameQQ6 >
)QQ> ?
;QQ? @ 
UserProfileSingletonRR (
.RR( )
UpdateFotoRutaRR) 7
(RR7 8
newPicRR8 >
)RR> ?
;RR? @
LoadProfileSS 
(SS  
)SS  !
;SS! "
DialogManagerTT !
.TT! "#
ShowSuccessMessageAlertTT" 9
(TT9 :

PropertiesTT: D
.TTD E
	ResourcesTTE N
.TTN O
dialogChangesSavedTTO a
)TTa b
;TTb c
DisableEditingUU "
(UU" #
)UU# $
;UU$ %
}VV 
elseVV 
{VV 
DialogManagerWW !
.WW! "!
ShowErrorMessageAlertWW" 7
(WW7 8

PropertiesWW8 B
.WWB C
	ResourcesWWC L
.WWL M(
dialogErrorSavingProfileDataWWM i
)WWi j
;WWj k
}XX 
}YY 
catchYY 
(YY %
EndpointNotFoundExceptionYY .
)YY. /
{YY0 1
DialogManagerZZ 
.ZZ !
ShowErrorMessageAlertZZ 3
(ZZ3 4

PropertiesZZ4 >
.ZZ> ?
	ResourcesZZ? H
.ZZH I+
dialogConnectionErrorWithServerZZI h
)ZZh i
;ZZi j
}[[ 
catch[[ 
([[ 
TimeoutException[[ %
)[[% &
{[[' (
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4

Properties\\4 >
.\\> ?
	Resources\\? H
.\\H I 
dialogRequestTimeout\\I ]
)\\] ^
;\\^ _
}]] 
catch]] 
(]] "
CommunicationException]] +
)]]+ ,
{]]- .
DialogManager^^ 
.^^ !
ShowErrorMessageAlert^^ 3
(^^3 4

Properties^^4 >
.^^> ?
	Resources^^? H
.^^H I$
dialogCommunicationError^^I a
)^^a b
;^^b c
}__ 
catch__ 
(__ 
	Exception__ 
ex__ !
)__! "
{__# $
DialogManager`` 
.`` !
ShowErrorMessageAlert`` 3
(``3 4
string``4 :
.``: ;
Format``; A
(``A B

Properties``B L
.``L M
	Resources``M V
.``V W$
dialogErrorSavingProfile``W o
,``o p
ex``q s
.``s t
Message``t {
)``{ |
)``| }
;``} ~
}aa 
}bb 	
privatedd 
booldd 
ValidateFieldsdd #
(dd# $
)dd$ %
{dd& '
boolee 
isValidee 
=ee 
trueee 
;ee  
ifgg 
(gg 
stringgg 
.gg 
IsNullOrWhiteSpacegg )
(gg) *
txtUserNamegg* 5
.gg5 6
Textgg6 :
)gg: ;
)gg; <
{gg= >
isValidhh 
=hh 
falsehh 
;hh  
txtUserNameii 
.ii 
BorderBrushii '
=ii( )
Systemii* 0
.ii0 1
Windowsii1 8
.ii8 9
Mediaii9 >
.ii> ?
Brushesii? F
.iiF G
RediiG J
;iiJ K
}jj 
elsejj 
{jj 
txtUserNamekk 
.kk 
BorderBrushkk '
=kk( )
Systemkk* 0
.kk0 1
Windowskk1 8
.kk8 9
Mediakk9 >
.kk> ?
Brusheskk? F
.kkF G
WhitekkG L
;kkL M
}ll 
returnmm 
isValidmm 
;mm 
}nn 	
privatepp 
voidpp 
GoToMenuViewpp !
(pp! "
)pp" #
{pp$ %
MenuViewqq 
menuViewqq 
=qq 
newqq  #
MenuViewqq$ ,
(qq, -
)qq- .
;qq. /
thisrr 
.rr 
NavigationServicerr "
?rr" #
.rr# $
Navigaterr$ ,
(rr, -
menuViewrr- 5
)rr5 6
;rr6 7
}ss 	
privateuu 
voiduu 
BtnBack_Clickuu "
(uu" #
objectuu# )
senderuu* 0
,uu0 1
RoutedEventArgsuu2 A
euuB C
)uuC D
{uuE F
GoToMenuViewvv 
(vv 
)vv 
;vv 
}ww 	
}xx 
}yy ÒÉ
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
if 
( 
! 
ValidateFields 
(  
email  %
,% &
username' /
,/ 0
password1 9
)9 :
): ;
return< B
;B C
try 
{ 
if 
( 
! #
VerifyEmailAvailability ,
(, -
email- 2
)2 3
)3 4
return5 ;
;; <
if 
( 
! &
VerifyUsernameAvailability /
(/ 0
username0 8
)8 9
)9 :
return; A
;A B 
SendVerificationCode $
($ %
email% *
)* +
;+ ,
} 
catch 
( %
EndpointNotFoundException .%
endpointNotFoundException/ H
)H I
{J K
logger 
. 
LogError 
(  %
endpointNotFoundException  9
)9 :
;: ;
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
}!! 
catch!! 
(!! 
TimeoutException!! %
timeoutException!!& 6
)!!6 7
{!!8 9
logger"" 
."" 
LogError"" 
(""  
timeoutException""  0
)""0 1
;""1 2
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
}$$ 
catch$$ 
($$ "
CommunicationException$$ +"
communicationException$$, B
)$$B C
{$$D E
logger%% 
.%% 
LogError%% 
(%%  "
communicationException%%  6
)%%6 7
;%%7 8
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
}'' 
}(( 	
private)) 
bool)) #
VerifyEmailAvailability)) ,
()), -
string))- 3
email))4 9
)))9 :
{)); <
var** 
	userProxy** 
=** 
new**  
TripasDeGatoServicio**  4
.**4 5
UserManagerClient**5 F
(**F G
)**G H
;**H I
int++ 
emailCheckResult++  
=++! "
	userProxy++# ,
.++, -
IsEmailRegistered++- >
(++> ?
email++? D
)++D E
;++E F
if-- 
(-- 
emailCheckResult--  
==--! #
	Constants--$ -
.--- .
DATA_MATCHES--. :
)--: ;
{--< =
DialogManager.. 
... !
ShowErrorMessageAlert.. 3
(..3 4

Properties..4 >
...> ?
	Resources..? H
...H I
dialogEmailInUse..I Y
)..Y Z
;..Z [
HighlightField// 
(// 
txtEmail// '
)//' (
;//( )
return00 
false00 
;00 
}11 
if33 
(33 
emailCheckResult33  
==33! #
	Constants33$ -
.33- .
ERROR_OPERATION33. =
)33= >
{33? @
DialogManager44 
.44 !
ShowErrorMessageAlert44 3
(443 4

Properties444 >
.44> ?
	Resources44? H
.44H I$
dialogErrorCheckingEmail44I a
)44a b
;44b c
return55 
false55 
;55 
}66 
return88 
true88 
;88 
}99 	
private;; 
bool;; &
VerifyUsernameAvailability;; /
(;;/ 0
string;;0 6
username;;7 ?
);;? @
{;;A B
var<< 
	userProxy<< 
=<< 
new<<  
TripasDeGatoServicio<<  4
.<<4 5
UserManagerClient<<5 F
(<<F G
)<<G H
;<<H I
int== 
usernameCheckResult== #
===$ %
	userProxy==& /
.==/ 0
IsNameRegistered==0 @
(==@ A
username==A I
)==I J
;==J K
if?? 
(?? 
usernameCheckResult?? #
==??$ &
	Constants??' 0
.??0 1
DATA_MATCHES??1 =
)??= >
{??? @
DialogManager@@ 
.@@ !
ShowErrorMessageAlert@@ 3
(@@3 4

Properties@@4 >
.@@> ?
	Resources@@? H
.@@H I
dialogUserNameInUse@@I \
)@@\ ]
;@@] ^
HighlightFieldAA 
(AA 
txtNameAA &
)AA& '
;AA' (
returnBB 
falseBB 
;BB 
}CC 
ifEE 
(EE 
usernameCheckResultEE #
==EE$ &
	ConstantsEE' 0
.EE0 1
ERROR_OPERATIONEE1 @
)EE@ A
{EEB C
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4

PropertiesFF4 >
.FF> ?
	ResourcesFF? H
.FFH I'
dialogErrorCheckingUserNameFFI d
)FFd e
;FFe f
returnGG 
falseGG 
;GG 
}HH 
returnJJ 
trueJJ 
;JJ 
}KK 	
privateMM 
voidMM  
SendVerificationCodeMM )
(MM) *
stringMM* 0
emailMM1 6
)MM6 7
{MM8 9
varNN "
emailVerificationProxyNN &
=NN' (
newNN) , 
TripasDeGatoServicioNN- A
.NNA B*
EmailVerificationManagerClientNNB `
(NN` a
)NNa b
;NNb c
intOO 
resultOO 
=OO "
emailVerificationProxyOO /
.OO/ 0(
SendVerificationCodeRegisterOO0 L
(OOL M
emailOOM R
)OOR S
;OOS T
ifQQ 
(QQ 
resultQQ 
==QQ 
	ConstantsQQ #
.QQ# $
SUCCES_OPERATIONQQ$ 4
)QQ4 5
{QQ6 7
verificationGridRR  
.RR  !

VisibilityRR! +
=RR, -

VisibilityRR. 8
.RR8 9
VisibleRR9 @
;RR@ A
DialogManagerSS 
.SS #
ShowSuccessMessageAlertSS 5
(SS5 6

PropertiesSS6 @
.SS@ A
	ResourcesSSA J
.SSJ K&
dialogVerificationCodeSentSSK e
)SSe f
;SSf g
}TT 
elseTT 
{TT 
DialogManagerUU 
.UU !
ShowErrorMessageAlertUU 3
(UU3 4

PropertiesUU4 >
.UU> ?
	ResourcesUU? H
.UUH I.
"dialogErrorSendingVerificationCodeUUI k
)UUk l
;UUl m
}VV 
}WW 	
privateYY 
voidYY 
BtnResendCode_ClickYY (
(YY( )
objectYY) /
senderYY0 6
,YY6 7
RoutedEventArgsYY8 G
eYYH I
)YYI J
{YYK L
LoggerManagerZZ 
loggerZZ  
=ZZ! "
newZZ# &
LoggerManagerZZ' 4
(ZZ4 5
thisZZ5 9
.ZZ9 :
GetTypeZZ: A
(ZZA B
)ZZB C
)ZZC D
;ZZD E
try[[ 
{[[ 
var\\ "
emailVerificationProxy\\ *
=\\+ ,
new\\- 0 
TripasDeGatoServicio\\1 E
.\\E F*
EmailVerificationManagerClient\\F d
(\\d e
)\\e f
;\\f g
int]] 
result]] 
=]] "
emailVerificationProxy]] 3
.]]3 4(
SendVerificationCodeRegister]]4 P
(]]P Q
txtEmail]]Q Y
.]]Y Z
Text]]Z ^
)]]^ _
;]]_ `
if__ 
(__ 
result__ 
==__ 
	Constants__ '
.__' (
SUCCES_OPERATION__( 8
)__8 9
{__: ;
DialogManager`` !
.``! "#
ShowSuccessMessageAlert``" 9
(``9 :

Properties``: D
.``D E
	Resources``E N
.``N O4
(dialogVerificationCodeResentSuccessfully``O w
)``w x
;``x y
}aa 
elseaa 
{aa 
DialogManagerbb !
.bb! "!
ShowErrorMessageAlertbb" 7
(bb7 8

Propertiesbb8 B
.bbB C
	ResourcesbbC L
.bbL M0
$dialogErrorResendingVerificationCodebbM q
)bbq r
;bbr s
}cc 
}dd 
catchdd 
(dd %
EndpointNotFoundExceptiondd .%
endpointNotFoundExceptiondd/ H
)ddH I
{ddJ K
loggeree 
.ee 
LogErroree 
(ee  %
endpointNotFoundExceptionee  9
)ee9 :
;ee: ;
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I#
dialogEndPointExceptionffI `
)ff` a
;ffa b
}gg 
catchgg 
(gg 
TimeoutExceptiongg %
timeoutExceptiongg& 6
)gg6 7
{gg8 9
loggerhh 
.hh 
LogErrorhh 
(hh  
timeoutExceptionhh  0
)hh0 1
;hh1 2
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I"
dialogTimeOutExceptioniiI _
)ii_ `
;ii` a
}jj 
catchjj 
(jj "
CommunicationExceptionjj +"
communicationExceptionjj, B
)jjB C
{jjD E
loggerkk 
.kk 
LogErrorkk 
(kk  "
communicationExceptionkk  6
)kk6 7
;kk7 8
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I'
dialogComunicationExceptionllI d
)lld e
;lle f
}mm 
}nn 	
privatepp 
voidpp 
BtnValidate_Clickpp &
(pp& '
objectpp' -
senderpp. 4
,pp4 5
RoutedEventArgspp6 E
eppF G
)ppG H
{ppI J
LoggerManagerqq 
loggerqq  
=qq! "
newqq# &
LoggerManagerqq' 4
(qq4 5
thisqq5 9
.qq9 :
GetTypeqq: A
(qqA B
)qqB C
)qqC D
;qqD E
stringrr 
enteredCoderr 
=rr  
$"rr! #
{rr# $
txtValidationCode1rr$ 6
.rr6 7
Textrr7 ;
}rr; <
{rr< =
txtValidationCode2rr= O
.rrO P
TextrrP T
}rrT U
{rrU V
txtValidationCode3rrV h
.rrh i
Textrri m
}rrm n
{rrn o
txtValidationCode4	rro Å
.
rrÅ Ç
Text
rrÇ Ü
}
rrÜ á
{
rrá à 
txtValidationCode5
rrà ö
.
rrö õ
Text
rrõ ü
}
rrü †
{
rr† ° 
txtValidationCode6
rr° ≥
.
rr≥ ¥
Text
rr¥ ∏
}
rr∏ π
"
rrπ ∫
;
rr∫ ª
trytt 
{tt 
varuu "
emailVerificationProxyuu *
=uu+ ,
newuu- 0 
TripasDeGatoServiciouu1 E
.uuE F*
EmailVerificationManagerClientuuF d
(uud e
)uue f
;uuf g
boolvv 
isCodeValidvv  
=vv! ""
emailVerificationProxyvv# 9
.vv9 :

VerifyCodevv: D
(vvD E
txtEmailvvE M
.vvM N
TextvvN R
,vvR S
enteredCodevvT _
)vv_ `
;vv` a
ifxx 
(xx 
isCodeValidxx 
)xx  
{xx! "
varyy 
	userProxyyy !
=yy" #
newyy$ ' 
TripasDeGatoServicioyy( <
.yy< =
UserManagerClientyy= N
(yyN O
)yyO P
;yyP Q
var{{ 
newUser{{ 
={{  !
new{{" % 
TripasDeGatoServicio{{& :
.{{: ;
	LoginUser{{; D
{{{E F
mail|| 
=|| 
txtEmail|| '
.||' (
Text||( ,
,||, -
password}}  
=}}! "
Hasher}}# )
.}}) *
HashToSHA256}}* 6
(}}6 7
txtPassword}}7 B
.}}B C
Password}}C K
)}}K L
}~~ 
;~~ 
var
ÄÄ 

newProfile
ÄÄ "
=
ÄÄ# $
new
ÄÄ% ("
TripasDeGatoServicio
ÄÄ) =
.
ÄÄ= >
Profile
ÄÄ> E
{
ÄÄF G
Username
ÅÅ  
=
ÅÅ! "
txtName
ÅÅ# *
.
ÅÅ* +
Text
ÅÅ+ /
,
ÅÅ/ 0
Score
ÇÇ 
=
ÇÇ 
	Constants
ÇÇ  )
.
ÇÇ) *
INITIAL_SCORE
ÇÇ* 7
,
ÇÇ7 8
PicturePath
ÉÉ #
=
ÉÉ$ %
$str
ÉÉ& J
}
ÑÑ 
;
ÑÑ 
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
àà 
(
àà 
accountResult
àà %
==
àà& (
	Constants
àà) 2
.
àà2 3
SUCCES_OPERATION
àà3 C
)
ààC D
{
ààE F
DialogManager
ââ %
.
ââ% &%
ShowSuccessMessageAlert
ââ& =
(
ââ= >

Properties
ââ> H
.
ââH I
	Resources
ââI R
.
ââR S-
dialogAccountCreatedSuccesfully
ââS r
)
ââr s
;
ââs t
verificationGrid
ää (
.
ää( )

Visibility
ää) 3
=
ää4 5

Visibility
ää6 @
.
ää@ A
	Collapsed
ääA J
;
ääJ K
GoToLoginView
ãã %
(
ãã% &
)
ãã& '
;
ãã' (
}
åå 
else
åå 
{
åå 
DialogManager
çç %
.
çç% &#
ShowErrorMessageAlert
çç& ;
(
çç; <

Properties
çç< F
.
ççF G
	Resources
ççG P
.
ççP Q(
dialogAccountCreatedErrror
ççQ k
)
ççk l
;
ççl m
}
éé 
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
êêL M+
dialogInvalidVerificationCode
êêM j
)
êêj k
;
êêk l
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
õõ 
}
úú 	
private
ûû 
bool
ûû 
ValidateFields
ûû #
(
ûû# $
string
ûû$ *
email
ûû+ 0
,
ûû0 1
string
ûû2 8
username
ûû9 A
,
ûûA B
string
ûûC I
password
ûûJ R
)
ûûR S
{
ûûT U
bool
üü 
isValid
üü 
=
üü 
true
üü 
;
üü  
if
°° 
(
°° 
!
°° 
	Validador
°° 
.
°° 
ValidateEmail
°° (
(
°°( )
email
°°) .
)
°°. /
)
°°/ 0
{
°°1 2
HighlightField
¢¢ 
(
¢¢ 
txtEmail
¢¢ '
)
¢¢' (
;
¢¢( )
lbInvalidEmail
££ 
.
££ 

Visibility
££ )
=
££* +

Visibility
££, 6
.
££6 7
Visible
££7 >
;
££> ?
isValid
§§ 
=
§§ 
false
§§ 
;
§§  
}
•• 
else
•• 
{
•• 

ResetField
¶¶ 
(
¶¶ 
txtEmail
¶¶ #
)
¶¶# $
;
¶¶$ %
lbInvalidEmail
ßß 
.
ßß 

Visibility
ßß )
=
ßß* +

Visibility
ßß, 6
.
ßß6 7
	Collapsed
ßß7 @
;
ßß@ A
}
®® 
if
™™ 
(
™™ 
!
™™ 
	Validador
™™ 
.
™™ 
ValidateUsername
™™ +
(
™™+ ,
username
™™, 4
)
™™4 5
)
™™5 6
{
™™7 8
HighlightField
´´ 
(
´´ 
txtName
´´ &
)
´´& '
;
´´' (
lbInvalidUser
¨¨ 
.
¨¨ 

Visibility
¨¨ (
=
¨¨) *

Visibility
¨¨+ 5
.
¨¨5 6
Visible
¨¨6 =
;
¨¨= >
isValid
≠≠ 
=
≠≠ 
false
≠≠ 
;
≠≠  
}
ÆÆ 
else
ÆÆ 
{
ÆÆ 

ResetField
ØØ 
(
ØØ 
txtName
ØØ "
)
ØØ" #
;
ØØ# $
lbInvalidUser
∞∞ 
.
∞∞ 

Visibility
∞∞ (
=
∞∞) *

Visibility
∞∞+ 5
.
∞∞5 6
	Collapsed
∞∞6 ?
;
∞∞? @
}
±± 
if
≥≥ 
(
≥≥ 
!
≥≥ 
	Validador
≥≥ 
.
≥≥ 
ValidatePassword
≥≥ +
(
≥≥+ ,
password
≥≥, 4
)
≥≥4 5
)
≥≥5 6
{
≥≥7 8
HighlightField
¥¥ 
(
¥¥ 
txtPassword
¥¥ *
)
¥¥* +
;
¥¥+ ,
lbInvalidPassword
µµ !
.
µµ! "

Visibility
µµ" ,
=
µµ- .

Visibility
µµ/ 9
.
µµ9 :
Visible
µµ: A
;
µµA B
isValid
∂∂ 
=
∂∂ 
false
∂∂ 
;
∂∂  
}
∑∑ 
else
∑∑ 
{
∑∑ 

ResetField
∏∏ 
(
∏∏ 
txtPassword
∏∏ &
)
∏∏& '
;
∏∏' (
lbInvalidPassword
ππ !
.
ππ! "

Visibility
ππ" ,
=
ππ- .

Visibility
ππ/ 9
.
ππ9 :
	Collapsed
ππ: C
;
ππC D
}
∫∫ 
return
ºº 
isValid
ºº 
;
ºº 
}
ΩΩ 	
private
øø 
void
øø 
HighlightField
øø #
(
øø# $
Control
øø$ +
control
øø, 3
)
øø3 4
{
øø5 6
control
¿¿ 
.
¿¿ 
BorderBrush
¿¿ 
=
¿¿  !
Brushes
¿¿" )
.
¿¿) *
Red
¿¿* -
;
¿¿- .
}
¡¡ 	
private
√√ 
void
√√ )
TxtPassword_PasswordChanged
√√ 0
(
√√0 1
object
√√1 7
sender
√√8 >
,
√√> ?
RoutedEventArgs
√√@ O
e
√√P Q
)
√√Q R
{
√√S T
if
ƒƒ 
(
ƒƒ 
txtPassword
ƒƒ 
.
ƒƒ 

Visibility
ƒƒ &
==
ƒƒ' )

Visibility
ƒƒ* 4
.
ƒƒ4 5
Visible
ƒƒ5 <
)
ƒƒ< =
{
ƒƒ> ?
ValidatePassword
≈≈  
(
≈≈  !
txtPassword
≈≈! ,
.
≈≈, -
Password
≈≈- 5
)
≈≈5 6
;
≈≈6 7
}
∆∆ 
}
«« 	
private
…… 
void
…… 0
"TxtPasswordVisible_PasswordChanged
…… 7
(
……7 8
object
……8 >
sender
……? E
,
……E F
RoutedEventArgs
……G V
e
……W X
)
……X Y
{
……Z [
if
   
(
    
txtPasswordVisible
   "
.
  " #

Visibility
  # -
==
  . 0

Visibility
  1 ;
.
  ; <
Visible
  < C
)
  C D
{
  E F
ValidatePassword
ÀÀ  
(
ÀÀ  ! 
txtPasswordVisible
ÀÀ! 3
.
ÀÀ3 4
Text
ÀÀ4 8
)
ÀÀ8 9
;
ÀÀ9 :
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ 
ValidatePassword
œœ %
(
œœ% &
string
œœ& ,
password
œœ- 5
)
œœ5 6
{
œœ7 8
if
–– 
(
–– 
!
–– 
	Validador
–– 
.
–– 
ValidatePassword
–– +
(
––+ ,
password
––, 4
)
––4 5
)
––5 6
{
––7 8
HighlightField
—— 
(
—— 
txtPassword
—— *
)
——* +
;
——+ ,
lbInvalidPassword
““ !
.
““! "

Visibility
““" ,
=
““- .

Visibility
““/ 9
.
““9 :
Visible
““: A
;
““A B
}
”” 
else
”” 
{
”” 

ResetField
‘‘ 
(
‘‘ 
txtPassword
‘‘ &
)
‘‘& '
;
‘‘' (
lbInvalidPassword
’’ !
.
’’! "

Visibility
’’" ,
=
’’- .

Visibility
’’/ 9
.
’’9 :
	Collapsed
’’: C
;
’’C D
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ '
BtnTogglePassword_Checked
ŸŸ .
(
ŸŸ. /
object
ŸŸ/ 5
sender
ŸŸ6 <
,
ŸŸ< =
RoutedEventArgs
ŸŸ> M
e
ŸŸN O
)
ŸŸO P
{
ŸŸQ R 
txtPasswordVisible
⁄⁄ 
.
⁄⁄ 
Text
⁄⁄ #
=
⁄⁄$ %
txtPassword
⁄⁄& 1
.
⁄⁄1 2
Password
⁄⁄2 :
;
⁄⁄: ; 
txtPasswordVisible
€€ 
.
€€ 

Visibility
€€ )
=
€€* +

Visibility
€€, 6
.
€€6 7
Visible
€€7 >
;
€€> ?
txtPassword
‹‹ 
.
‹‹ 

Visibility
‹‹ "
=
‹‹# $

Visibility
‹‹% /
.
‹‹/ 0
	Collapsed
‹‹0 9
;
‹‹9 :
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ )
BtnTogglePassword_Unchecked
ﬂﬂ 0
(
ﬂﬂ0 1
object
ﬂﬂ1 7
sender
ﬂﬂ8 >
,
ﬂﬂ> ?
RoutedEventArgs
ﬂﬂ@ O
e
ﬂﬂP Q
)
ﬂﬂQ R
{
ﬂﬂS T
txtPassword
‡‡ 
.
‡‡ 
Password
‡‡  
=
‡‡! " 
txtPasswordVisible
‡‡# 5
.
‡‡5 6
Text
‡‡6 :
;
‡‡: ; 
txtPasswordVisible
·· 
.
·· 

Visibility
·· )
=
··* +

Visibility
··, 6
.
··6 7
	Collapsed
··7 @
;
··@ A
txtPassword
‚‚ 
.
‚‚ 

Visibility
‚‚ "
=
‚‚# $

Visibility
‚‚% /
.
‚‚/ 0
Visible
‚‚0 7
;
‚‚7 8
}
„„ 	
private
ÂÂ 
void
ÂÂ *
UpdatePasswordVisibilityIcon
ÂÂ 1
(
ÂÂ1 2
)
ÂÂ2 3
{
ÂÂ4 5
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
string
ÊÊ 
.
ÊÊ 
IsNullOrEmpty
ÊÊ %
(
ÊÊ% &
txtPassword
ÊÊ& 1
.
ÊÊ1 2
Password
ÊÊ2 :
)
ÊÊ: ;
||
ÊÊ< >
!
ÊÊ? @
string
ÊÊ@ F
.
ÊÊF G
IsNullOrEmpty
ÊÊG T
(
ÊÊT U 
txtPasswordVisible
ÊÊU g
.
ÊÊg h
Text
ÊÊh l
)
ÊÊl m
)
ÊÊm n
{
ÊÊo p
btnTogglePassword
ÁÁ !
.
ÁÁ! "

Visibility
ÁÁ" ,
=
ÁÁ- .

Visibility
ÁÁ/ 9
.
ÁÁ9 :
Visible
ÁÁ: A
;
ÁÁA B
}
ËË 
else
ËË 
{
ËË 
btnTogglePassword
ÈÈ !
.
ÈÈ! "

Visibility
ÈÈ" ,
=
ÈÈ- .

Visibility
ÈÈ/ 9
.
ÈÈ9 :
	Collapsed
ÈÈ: C
;
ÈÈC D
}
ÍÍ 
}
ÎÎ 	
private
ÓÓ 
void
ÓÓ 

ResetField
ÓÓ 
(
ÓÓ  
Control
ÓÓ  '
control
ÓÓ( /
)
ÓÓ/ 0
{
ÓÓ1 2
control
ÔÔ 
.
ÔÔ 
BorderBrush
ÔÔ 
=
ÔÔ  !
Brushes
ÔÔ" )
.
ÔÔ) *
White
ÔÔ* /
;
ÔÔ/ 0
}
 	
private
ÚÚ 
void
ÚÚ !
TxtName_TextChanged
ÚÚ (
(
ÚÚ( )
object
ÚÚ) /
sender
ÚÚ0 6
,
ÚÚ6 7"
TextChangedEventArgs
ÚÚ8 L
e
ÚÚM N
)
ÚÚN O
{
ÚÚP Q
string
ÛÛ 
username
ÛÛ 
=
ÛÛ 
txtName
ÛÛ %
.
ÛÛ% &
Text
ÛÛ& *
;
ÛÛ* +
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
	Validador
ÙÙ 
.
ÙÙ 
ValidateUsername
ÙÙ +
(
ÙÙ+ ,
username
ÙÙ, 4
)
ÙÙ4 5
)
ÙÙ5 6
{
ÙÙ7 8
HighlightField
ıı 
(
ıı 
txtName
ıı &
)
ıı& '
;
ıı' (
lbInvalidUser
ˆˆ 
.
ˆˆ 

Visibility
ˆˆ (
=
ˆˆ) *

Visibility
ˆˆ+ 5
.
ˆˆ5 6
Visible
ˆˆ6 =
;
ˆˆ= >
}
˜˜ 
else
˜˜ 
{
˜˜ 

ResetField
¯¯ 
(
¯¯ 
txtName
¯¯ "
)
¯¯" #
;
¯¯# $
lbInvalidUser
˘˘ 
.
˘˘ 

Visibility
˘˘ (
=
˘˘) *

Visibility
˘˘+ 5
.
˘˘5 6
	Collapsed
˘˘6 ?
;
˘˘? @
}
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ "
TxtEmail_TextChanged
˝˝ )
(
˝˝) *
object
˝˝* 0
sender
˝˝1 7
,
˝˝7 8"
TextChangedEventArgs
˝˝9 M
e
˝˝N O
)
˝˝O P
{
˝˝Q R
string
˛˛ 
email
˛˛ 
=
˛˛ 
txtEmail
˛˛ #
.
˛˛# $
Text
˛˛$ (
;
˛˛( )
if
ˇˇ 
(
ˇˇ 
!
ˇˇ 
	Validador
ˇˇ 
.
ˇˇ 
ValidateEmail
ˇˇ (
(
ˇˇ( )
email
ˇˇ) .
)
ˇˇ. /
)
ˇˇ/ 0
{
ˇˇ1 2
HighlightField
ÄÄ 
(
ÄÄ 
txtEmail
ÄÄ '
)
ÄÄ' (
;
ÄÄ( )
lbInvalidEmail
ÅÅ 
.
ÅÅ 

Visibility
ÅÅ )
=
ÅÅ* +

Visibility
ÅÅ, 6
.
ÅÅ6 7
Visible
ÅÅ7 >
;
ÅÅ> ?
}
ÇÇ 
else
ÇÇ 
{
ÇÇ 

ResetField
ÉÉ 
(
ÉÉ 
txtEmail
ÉÉ #
)
ÉÉ# $
;
ÉÉ$ %
lbInvalidEmail
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ )
=
ÑÑ* +

Visibility
ÑÑ, 6
.
ÑÑ6 7
	Collapsed
ÑÑ7 @
;
ÑÑ@ A
}
ÖÖ 
}
ÜÜ 	
private
àà 
void
àà 
GoToLoginView
àà "
(
àà" #
)
àà# $
{
àà% &
if
ââ 
(
ââ 
this
ââ 
.
ââ 
NavigationService
ââ &
.
ââ& '
	CanGoBack
ââ' 0
)
ââ0 1
{
ââ2 3
this
ää 
.
ää 
NavigationService
ää &
.
ää& '
GoBack
ää' -
(
ää- .
)
ää. /
;
ää/ 0
}
ãã 
}
åå 	
private
éé 
void
éé 
BtnBack_Click
éé "
(
éé" #
object
éé# )
sender
éé* 0
,
éé0 1
RoutedEventArgs
éé2 A
e
ééB C
)
ééC D
{
ééE F
GoToLoginView
èè 
(
èè 
)
èè 
;
èè 
}
êê 	
private
íí 
void
íí #
BtnBackValidate_Click
íí *
(
íí* +
object
íí+ 1
sender
íí2 8
,
íí8 9
RoutedEventArgs
íí: I
e
ííJ K
)
ííK L
{
ííM N
verificationGrid
ìì 
.
ìì 

Visibility
ìì '
=
ìì( )

Visibility
ìì* 4
.
ìì4 5
	Collapsed
ìì5 >
;
ìì> ?
txtEmail
îî 
.
îî 
Clear
îî 
(
îî 
)
îî 
;
îî 
txtName
ïï 
.
ïï 
Clear
ïï 
(
ïï 
)
ïï 
;
ïï 
txtPassword
ññ 
.
ññ 
Clear
ññ 
(
ññ 
)
ññ 
;
ññ   
txtPasswordVisible
óó 
.
óó 
Clear
óó $
(
óó$ %
)
óó% &
;
óó& '
}
òò 	
private
öö 
void
öö +
TxtValidationCode_TextChanged
öö 2
(
öö2 3
object
öö3 9
sender
öö: @
,
öö@ A"
TextChangedEventArgs
ööB V
e
ööW X
)
ööX Y
{
ööZ [
TextBox
õõ 
currentTextBox
õõ "
=
õõ# $
sender
õõ% +
as
õõ, .
TextBox
õõ/ 6
;
õõ6 7
if
úú 
(
úú 
currentTextBox
úú 
.
úú 
Text
úú #
.
úú# $
Length
úú$ *
==
úú+ -
$num
úú. /
)
úú/ 0
{
úú1 2
if
ùù 
(
ùù 
currentTextBox
ùù "
==
ùù# % 
txtValidationCode1
ùù& 8
)
ùù8 9 
txtValidationCode2
ûû &
.
ûû& '
Focus
ûû' ,
(
ûû, -
)
ûû- .
;
ûû. /
else
üü 
if
üü 
(
üü 
currentTextBox
üü '
==
üü( * 
txtValidationCode2
üü+ =
)
üü= > 
txtValidationCode3
†† &
.
††& '
Focus
††' ,
(
††, -
)
††- .
;
††. /
else
°° 
if
°° 
(
°° 
currentTextBox
°° '
==
°°( * 
txtValidationCode3
°°+ =
)
°°= > 
txtValidationCode4
¢¢ &
.
¢¢& '
Focus
¢¢' ,
(
¢¢, -
)
¢¢- .
;
¢¢. /
else
££ 
if
££ 
(
££ 
currentTextBox
££ '
==
££( * 
txtValidationCode4
££+ =
)
££= > 
txtValidationCode5
§§ &
.
§§& '
Focus
§§' ,
(
§§, -
)
§§- .
;
§§. /
else
•• 
if
•• 
(
•• 
currentTextBox
•• '
==
••( * 
txtValidationCode5
••+ =
)
••= > 
txtValidationCode6
¶¶ &
.
¶¶& '
Focus
¶¶' ,
(
¶¶, -
)
¶¶- .
;
¶¶. /
}
ßß 
}
®® 	
}
™™ 
}´´ ÷Ú
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
ChatManagerClient !
chatManager" -
;- .
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
private 
UserManagerClient !
userManager" -
;- .
private 
bool 
isConnected  
=! "
false# (
;( )
private 
string 
	lobbyCode  
;  !
private  
FriendsManagerClient $
friendsManager% 3
;3 4
private 
StatusManagerClient #
statusManager$ 1
;1 2
private (
EmailInvitationManagerClient ,"
emailInvitationManager- C
;C D
private 
bool 
areElementsVisible '
=( )
false* /
;/ 0
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
."" 
	lobbyCode"" 
="" 
	lobbyCode"" &
;""& '
lbCode## 
.## 
Content## 
=## 
	lobbyCode## &
;##& '
lobbyBrowser$$ 
=$$ 
new$$ 
LobbyBrowserClient$$ 1
($$1 2
)$$2 3
;$$3 4
InitializeLobby%% 
(%% 
)%% 
;%% 
lobbyManager&& 
=&& 
new&& 
LobbyManagerClient&& 1
(&&1 2
new&&2 5
InstanceContext&&6 E
(&&E F
this&&F J
)&&J K
)&&K L
;&&L M
chatManager'' 
='' 
new'' 
ChatManagerClient'' /
(''/ 0
new''0 3
InstanceContext''4 C
(''C D
this''D H
)''H I
)''I J
;''J K
userManager(( 
=(( 
new(( 
UserManagerClient(( /
(((/ 0
)((0 1
;((1 2
friendsManager)) 
=)) 
new))   
FriendsManagerClient))! 5
())5 6
)))6 7
;))7 8
statusManager** 
=** 
new** 
StatusManagerClient**  3
(**3 4
)**4 5
;**5 6"
emailInvitationManager++ "
=++# $
new++% ((
EmailInvitationManagerClient++) E
(++E F
)++F G
;++G H&
InitializeConnectionsAsync,, &
(,,& '
),,' (
;,,( )
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
{--E F
imgProfile1.. 
... 
Source.. "
=..# $
new..% (
BitmapImage..) 4
(..4 5
new..5 8
Uri..9 <
(..< = 
UserProfileSingleton..= Q
...Q R
PicPath..R Y
,..Y Z
UriKind..[ b
...b c
RelativeOrAbsolute..c u
)..u v
)..v w
;..w x
}// 
}00 	
private22 
async22 
void22 &
InitializeConnectionsAsync22 5
(225 6
)226 7
{228 9
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
;33D E
try44 
{44 
await55 
InitializeChatAsync55 )
(55) *
)55* +
;55+ ,
await66 
ConnectToLobbyAsync66 )
(66) *
)66* +
;66+ ,
}77 
catch77 
(77 %
EndpointNotFoundException77 .%
endpointNotFoundException77/ H
)77H I
{77J K
logger88 
.88 
LogError88 
(88  %
endpointNotFoundException88  9
)889 :
;88: ;
DialogManager99 
.99 !
ShowErrorMessageAlert99 3
(993 4

Properties994 >
.99> ?
	Resources99? H
.99H I#
dialogEndPointException99I `
)99` a
;99a b
GoToMenuView:: 
(:: 
):: 
;:: 
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
;==` a
GoToMenuView>> 
(>> 
)>> 
;>> 
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
;AAe f
GoToMenuViewBB 
(BB 
)BB 
;BB 
}CC 
}DD 	
privateFF 
asyncFF 
TaskFF 
InitializeChatAsyncFF .
(FF. /
)FF/ 0
{FF1 2
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
;GGD E
tryHH 
{HH 
awaitII 
chatManagerII !
.II! "
ConnectToChatAsyncII" 4
(II4 5 
UserProfileSingletonII5 I
.III J
UserNameIIJ R
,IIR S
	lobbyCodeIIT ]
)II] ^
;II^ _
}JJ 
catchJJ 
(JJ %
EndpointNotFoundExceptionJJ .%
endpointNotFoundExceptionJJ/ H
)JJH I
{JJJ K
loggerKK 
.KK 
LogErrorKK 
(KK  %
endpointNotFoundExceptionKK  9
)KK9 :
;KK: ;
DialogManagerLL 
.LL !
ShowErrorMessageAlertLL 3
(LL3 4

PropertiesLL4 >
.LL> ?
	ResourcesLL? H
.LLH I#
dialogEndPointExceptionLLI `
)LL` a
;LLa b
}MM 
catchMM 
(MM 
TimeoutExceptionMM %
timeoutExceptionMM& 6
)MM6 7
{MM8 9
loggerNN 
.NN 
LogErrorNN 
(NN  
timeoutExceptionNN  0
)NN0 1
;NN1 2
DialogManagerOO 
.OO !
ShowErrorMessageAlertOO 3
(OO3 4

PropertiesOO4 >
.OO> ?
	ResourcesOO? H
.OOH I"
dialogTimeOutExceptionOOI _
)OO_ `
;OO` a
}PP 
catchPP 
(PP "
CommunicationExceptionPP +"
communicationExceptionPP, B
)PPB C
{PPD E
loggerQQ 
.QQ 
LogErrorQQ 
(QQ  "
communicationExceptionQQ  6
)QQ6 7
;QQ7 8
DialogManagerRR 
.RR !
ShowErrorMessageAlertRR 3
(RR3 4

PropertiesRR4 >
.RR> ?
	ResourcesRR? H
.RRH I'
dialogComunicationExceptionRRI d
)RRd e
;RRe f
}SS 
}TT 	
privateWW 
asyncWW 
TaskWW 
ConnectToLobbyAsyncWW .
(WW. /
)WW/ 0
{WW1 2
LoggerManagerXX 
loggerXX  
=XX! "
newXX# &
LoggerManagerXX' 4
(XX4 5
thisXX5 9
.XX9 :
GetTypeXX: A
(XXA B
)XXB C
)XXC D
;XXD E
tryYY 
{YY 
boolZZ 
	connectedZZ 
=ZZ  
awaitZZ! &
TaskZZ' +
.ZZ+ ,
RunZZ, /
(ZZ/ 0
(ZZ0 1
)ZZ1 2
=>ZZ3 5
lobbyManagerZZ6 B
.ZZB C 
ConnectPlayerToLobbyZZC W
(ZZW X
	lobbyCodeZZX a
,ZZa b 
UserProfileSingletonZZc w
.ZZw x
	IdProfile	ZZx Å
)
ZZÅ Ç
)
ZZÇ É
;
ZZÉ Ñ
if\\ 
(\\ 
!\\ 
	connected\\ 
)\\ 
{\\  !
DialogManager]] !
.]]! "!
ShowErrorMessageAlert]]" 7
(]]7 8

Properties]]8 B
.]]B C
	Resources]]C L
.]]L M!
dialogConnectionError]]M b
)]]b c
;]]c d
}^^ 
else^^ 
{^^ 
isConnected__ 
=__  !
true__" &
;__& '
}`` 
}aa 
catchaa 
(aa %
EndpointNotFoundExceptionaa .%
endpointNotFoundExceptionaa/ H
)aaH I
{aaJ K
loggerbb 
.bb 
LogErrorbb 
(bb  %
endpointNotFoundExceptionbb  9
)bb9 :
;bb: ;
DialogManagercc 
.cc !
ShowErrorMessageAlertcc 3
(cc3 4

Propertiescc4 >
.cc> ?
	Resourcescc? H
.ccH I#
dialogEndPointExceptionccI `
)cc` a
;cca b
}dd 
catchdd 
(dd 
TimeoutExceptiondd %
timeoutExceptiondd& 6
)dd6 7
{dd8 9
loggeree 
.ee 
LogErroree 
(ee  
timeoutExceptionee  0
)ee0 1
;ee1 2
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I"
dialogTimeOutExceptionffI _
)ff_ `
;ff` a
}gg 
catchgg 
(gg "
CommunicationExceptiongg +"
communicationExceptiongg, B
)ggB C
{ggD E
loggerhh 
.hh 
LogErrorhh 
(hh  "
communicationExceptionhh  6
)hh6 7
;hh7 8
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I'
dialogComunicationExceptioniiI d
)iid e
;iie f
}jj 
}kk 	
privatemm 
asyncmm 
voidmm  
BtnSendMessage_Clickmm /
(mm/ 0
objectmm0 6
sendermm7 =
,mm= >
RoutedEventArgsmm? N
emmO P
)mmP Q
{mmR S
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
;nnD E
stringoo 
messageTextoo 
=oo  
txtMessageInputoo! 0
.oo0 1
Textoo1 5
.oo5 6
Trimoo6 :
(oo: ;
)oo; <
;oo< =
ifpp 
(pp 
!pp 
stringpp 
.pp 
IsNullOrEmptypp %
(pp% &
messageTextpp& 1
)pp1 2
)pp2 3
{pp4 5
varqq 
messageqq 
=qq 
newqq !
Messageqq" )
{qq* +
userNamerr 
=rr  
UserProfileSingletonrr 3
.rr3 4
UserNamerr4 <
,rr< =
chatMessagess 
=ss  !
messageTextss" -
}tt 
;tt 
tryvv 
{vv 
awaitww 
chatManagerww %
.ww% &
SendMessageAsyncww& 6
(ww6 7 
UserProfileSingletonww7 K
.wwK L
UserNamewwL T
,wwT U
messagewwV ]
,ww] ^
	lobbyCodeww_ h
)wwh i
;wwi j
txtMessageInputxx #
.xx# $
Clearxx$ )
(xx) *
)xx* +
;xx+ ,
}yy 
catchyy 
(yy %
EndpointNotFoundExceptionyy 2%
endpointNotFoundExceptionyy3 L
)yyL M
{yyN O
loggerzz 
.zz 
LogErrorzz #
(zz# $%
endpointNotFoundExceptionzz$ =
)zz= >
;zz> ?
DialogManager{{ !
.{{! "!
ShowErrorMessageAlert{{" 7
({{7 8

Properties{{8 B
.{{B C
	Resources{{C L
.{{L M#
dialogEndPointException{{M d
){{d e
;{{e f
}|| 
catch|| 
(|| 
TimeoutException|| )
timeoutException||* :
)||: ;
{||< =
logger}} 
.}} 
LogError}} #
(}}# $
timeoutException}}$ 4
)}}4 5
;}}5 6
DialogManager~~ !
.~~! "!
ShowErrorMessageAlert~~" 7
(~~7 8

Properties~~8 B
.~~B C
	Resources~~C L
.~~L M"
dialogTimeOutException~~M c
)~~c d
;~~d e
} 
catch 
( "
CommunicationException /"
communicationException0 F
)F G
{H I
logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ #
(
ÄÄ# $$
communicationException
ÄÄ$ :
)
ÄÄ: ;
;
ÄÄ; <
DialogManager
ÅÅ !
.
ÅÅ! "#
ShowErrorMessageAlert
ÅÅ" 7
(
ÅÅ7 8

Properties
ÅÅ8 B
.
ÅÅB C
	Resources
ÅÅC L
.
ÅÅL M)
dialogComunicationException
ÅÅM h
)
ÅÅh i
;
ÅÅi j
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
public
ÜÜ 
async
ÜÜ 
void
ÜÜ 
InitializeLobby
ÜÜ )
(
ÜÜ) *
)
ÜÜ* +
{
ÜÜ, -
Lobby
áá 
lobby
áá 
=
áá 
await
áá 
lobbyBrowser
áá  ,
.
áá, -!
GetLobbyByCodeAsync
áá- @
(
áá@ A
	lobbyCode
ááA J
)
ááJ K
;
ááK L
if
àà 
(
àà 

IsUserHost
àà 
(
àà 
lobby
àà  
)
àà  !
)
àà! "
{
àà# $
	lbPlayer1
ââ 
.
ââ 
Content
ââ !
=
ââ" #
lobby
ââ$ )
.
ââ) *
Players
ââ* 1
.
ââ1 2
ContainsKey
ââ2 =
(
ââ= >
$str
ââ> I
)
ââI J
?
ââK L
lobby
ââM R
.
ââR S
Players
ââS Z
[
ââZ [
$str
ââ[ f
]
ââf g
.
ââg h
Username
ââh p
:
ââq r
$strââs â
;âââ ä
	lbPlayer2
ää 
.
ää 
Content
ää !
=
ää" #
lobby
ää$ )
.
ää) *
Players
ää* 1
.
ää1 2
ContainsKey
ää2 =
(
ää= >
$str
ää> I
)
ääI J
?
ääK L
lobby
ääM R
.
ääR S
Players
ääS Z
[
ääZ [
$str
ää[ f
]
ääf g
.
ääg h
Username
ääh p
:
ääq r
$strääs â
;ääâ ä
imgProfile1
ãã 
.
ãã 
Source
ãã "
=
ãã# $
new
ãã% (
BitmapImage
ãã) 4
(
ãã4 5
new
ãã5 8
Uri
ãã9 <
(
ãã< ="
UserProfileSingleton
ãã= Q
.
ããQ R
PicPath
ããR Y
,
ããY Z
UriKind
ãã[ b
.
ããb c 
RelativeOrAbsolute
ããc u
)
ããu v
)
ããv w
;
ããw x
}
èè 
else
èè 
{
èè 
	lbPlayer1
êê 
.
êê 
Content
êê !
=
êê" #
lobby
êê$ )
.
êê) *
Players
êê* 1
.
êê1 2
ContainsKey
êê2 =
(
êê= >
$str
êê> I
)
êêI J
?
êêK L
lobby
êêM R
.
êêR S
Players
êêS Z
[
êêZ [
$str
êê[ f
]
êêf g
.
êêg h
Username
êêh p
:
êêq r
$strêês â
;êêâ ä
	lbPlayer2
ëë 
.
ëë 
Content
ëë !
=
ëë" #
lobby
ëë$ )
.
ëë) *
Players
ëë* 1
.
ëë1 2
ContainsKey
ëë2 =
(
ëë= >
$str
ëë> I
)
ëëI J
?
ëëK L
lobby
ëëM R
.
ëëR S
Players
ëëS Z
[
ëëZ [
$str
ëë[ f
]
ëëf g
.
ëëg h
Username
ëëh p
:
ëëq r
$strëës â
;ëëâ ä
imgProfile1
íí 
.
íí 
Source
íí "
=
íí# $
new
íí% (
BitmapImage
íí) 4
(
íí4 5
new
íí5 8
Uri
íí9 <
(
íí< ="
UserProfileSingleton
íí= Q
.
ííQ R
PicPath
ííR Y
,
ííY Z
UriKind
íí[ b
.
ííb c 
RelativeOrAbsolute
ííc u
)
ííu v
)
íív w
;
ííw x
string
ìì 
ruta
ìì 
=
ìì 
userManager
ìì )
.
ìì) *

GetPicPath
ìì* 4
(
ìì4 5
lobby
ìì5 :
.
ìì: ;
Players
ìì; B
[
ììB C
$str
ììC N
]
ììN O
.
ììO P
Username
ììP X
)
ììX Y
;
ììY Z
imgProfile2
îî 
.
îî 
Source
îî "
=
îî# $
new
îî% (
BitmapImage
îî) 4
(
îî4 5
new
îî5 8
Uri
îî9 <
(
îî< =
ruta
îî= A
,
îîA B
UriKind
îîC J
.
îîJ K 
RelativeOrAbsolute
îîK ]
)
îî] ^
)
îî^ _
;
îî_ `
btnKickPlayer
ïï 
.
ïï 

Visibility
ïï (
=
ïï) *

Visibility
ïï+ 5
.
ïï5 6
	Collapsed
ïï6 ?
;
ïï? @
btnInvitedFriend
ññ  
.
ññ  !

Visibility
ññ! +
=
ññ, -

Visibility
ññ. 8
.
ññ8 9
	Collapsed
ññ9 B
;
ññB C
btnStartGame
óó 
.
óó 

Visibility
óó '
=
óó( )

Visibility
óó* 4
.
óó4 5
	Collapsed
óó5 >
;
óó> ?
}
òò 
}
ôô 	
private
õõ 
bool
õõ 

IsUserHost
õõ 
(
õõ  
Lobby
õõ  %
lobby
õõ& +
)
õõ+ ,
{
õõ- .
return
úú 
lobby
úú 
.
úú 
Players
úú  
.
úú  !
TryGetValue
úú! ,
(
úú, -
$str
úú- 8
,
úú8 9
out
úú: =
var
úú> A
host
úúB F
)
úúF G
&&
úúH J
host
úúK O
.
úúO P
Username
úúP X
==
úúY ["
UserProfileSingleton
úú\ p
.
úúp q
UserName
úúq y
;
úúy z
}
ùù 	
private
üü 
async
üü 
void
üü 
BtnBack_Click
üü (
(
üü( )
object
üü) /
sender
üü0 6
,
üü6 7
RoutedEventArgs
üü8 G
e
üüH I
)
üüI J
{
üüK L
LoggerManager
†† 
logger
††  
=
††! "
new
††# &
LoggerManager
††' 4
(
††4 5
this
††5 9
.
††9 :
GetType
††: A
(
††A B
)
††B C
)
††C D
;
††D E
try
°° 
{
°° 
await
¢¢ 
lobbyManager
¢¢ "
.
¢¢" #
LeaveLobbyAsync
¢¢# 2
(
¢¢2 3
	lobbyCode
¢¢3 <
,
¢¢< ="
UserProfileSingleton
¢¢> R
.
¢¢R S
	IdProfile
¢¢S \
)
¢¢\ ]
;
¢¢] ^
await
££ 
chatManager
££ !
.
££! "
LeaveChatAsync
££" 0
(
££0 1"
UserProfileSingleton
££1 E
.
££E F
UserName
££F N
,
££N O
	lobbyCode
££P Y
)
££Y Z
;
££Z [
ExitUseSinglenton
§§ !
(
§§! "
)
§§" #
;
§§# $
}
•• 
catch
•• 
(
•• '
EndpointNotFoundException
•• .'
endpointNotFoundException
••/ H
)
••H I
{
••J K
logger
¶¶ 
.
¶¶ 
LogError
¶¶ 
(
¶¶  '
endpointNotFoundException
¶¶  9
)
¶¶9 :
;
¶¶: ;
DialogManager
ßß 
.
ßß #
ShowErrorMessageAlert
ßß 3
(
ßß3 4

Properties
ßß4 >
.
ßß> ?
	Resources
ßß? H
.
ßßH I%
dialogEndPointException
ßßI `
)
ßß` a
;
ßßa b
ExitUseSinglenton
®® !
(
®®! "
)
®®" #
;
®®# $
}
©© 
catch
©© 
(
©© 
TimeoutException
©© %
timeoutException
©©& 6
)
©©6 7
{
©©8 9
logger
™™ 
.
™™ 
LogError
™™ 
(
™™  
timeoutException
™™  0
)
™™0 1
;
™™1 2
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
´´H I$
dialogTimeOutException
´´I _
)
´´_ `
;
´´` a
ExitUseSinglenton
¨¨ !
(
¨¨! "
)
¨¨" #
;
¨¨# $
}
≠≠ 
catch
≠≠ 
(
≠≠ $
CommunicationException
≠≠ +$
communicationException
≠≠, B
)
≠≠B C
{
≠≠D E
logger
ÆÆ 
.
ÆÆ 
LogError
ÆÆ 
(
ÆÆ  $
communicationException
ÆÆ  6
)
ÆÆ6 7
;
ÆÆ7 8
DialogManager
ØØ 
.
ØØ #
ShowErrorMessageAlert
ØØ 3
(
ØØ3 4

Properties
ØØ4 >
.
ØØ> ?
	Resources
ØØ? H
.
ØØH I)
dialogComunicationException
ØØI d
)
ØØd e
;
ØØe f
ExitUseSinglenton
∞∞ !
(
∞∞! "
)
∞∞" #
;
∞∞# $
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ 
ExitUseSinglenton
¥¥ &
(
¥¥& '
)
¥¥' (
{
¥¥) *
if
µµ 
(
µµ "
UserProfileSingleton
µµ $
.
µµ$ %
	IdProfile
µµ% .
<
µµ/ 0
$num
µµ1 7
)
µµ7 8
{
µµ9 :
GoToMenuView
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 
else
∑∑ 
{
∑∑ 
GoToLoginView
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏  
}
ππ 
}
∫∫ 	
private
ºº 
async
ºº 
void
ºº 
	OnClosing
ºº $
(
ºº$ %
object
ºº% +
sender
ºº, 2
,
ºº2 3
CancelEventArgs
ºº4 C
e
ººD E
)
ººE F
{
ººG H
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
ΩΩD E
if
ææ 
(
ææ 
isConnected
ææ 
)
ææ 
{
ææ 
try
øø 
{
øø 
await
¿¿ 
Task
¿¿ 
.
¿¿ 
Run
¿¿ "
(
¿¿" #
(
¿¿# $
)
¿¿$ %
=>
¿¿& (
lobbyManager
¡¡  
.
¡¡  !

LeaveLobby
¡¡! +
(
¡¡+ ,
	lobbyCode
¡¡, 5
,
¡¡5 6"
UserProfileSingleton
¡¡7 K
.
¡¡K L
	IdProfile
¡¡L U
)
¡¡U V
)
¡¡V W
;
¡¡W X
}
¬¬ 
catch
¬¬ 
(
¬¬ '
EndpointNotFoundException
¬¬ 2'
endpointNotFoundException
¬¬3 L
)
¬¬L M
{
¬¬N O
logger
√√ 
.
√√ 
LogError
√√ #
(
√√# $'
endpointNotFoundException
√√$ =
)
√√= >
;
√√> ?
DialogManager
ƒƒ !
.
ƒƒ! "#
ShowErrorMessageAlert
ƒƒ" 7
(
ƒƒ7 8

Properties
ƒƒ8 B
.
ƒƒB C
	Resources
ƒƒC L
.
ƒƒL M%
dialogEndPointException
ƒƒM d
)
ƒƒd e
;
ƒƒe f
}
≈≈ 
catch
≈≈ 
(
≈≈ 
TimeoutException
≈≈ )
timeoutException
≈≈* :
)
≈≈: ;
{
≈≈< =
logger
∆∆ 
.
∆∆ 
LogError
∆∆ #
(
∆∆# $
timeoutException
∆∆$ 4
)
∆∆4 5
;
∆∆5 6
DialogManager
«« !
.
««! "#
ShowErrorMessageAlert
««" 7
(
««7 8

Properties
««8 B
.
««B C
	Resources
««C L
.
««L M$
dialogTimeOutException
««M c
)
««c d
;
««d e
}
»» 
catch
»» 
(
»» $
CommunicationException
»» /$
communicationException
»»0 F
)
»»F G
{
»»H I
logger
…… 
.
…… 
LogError
…… #
(
……# $$
communicationException
……$ :
)
……: ;
;
……; <
DialogManager
   !
.
  ! "#
ShowErrorMessageAlert
  " 7
(
  7 8

Properties
  8 B
.
  B C
	Resources
  C L
.
  L M)
dialogComunicationException
  M h
)
  h i
;
  i j
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ 
ScrollToBottom
œœ #
(
œœ# $
)
œœ$ %
{
œœ& '
var
–– 
scrollViewer
–– 
=
–– 
VisualTreeHelper
–– /
.
––/ 0
	GetParent
––0 9
(
––9 :
ChatMessagesPanel
––: K
)
––K L
as
––M O
ScrollViewer
––P \
;
––\ ]
scrollViewer
—— 
?
—— 
.
—— 
ScrollToEnd
—— %
(
——% &
)
——& '
;
——' (
}
““ 	
private
‘‘ 
void
‘‘ 
GoToMenuView
‘‘ !
(
‘‘! "
)
‘‘" #
{
‘‘$ %
MenuView
’’ 
menuView
’’ 
=
’’ 
new
’’  #
MenuView
’’$ ,
(
’’, -
)
’’- .
;
’’. /
if
÷÷ 
(
÷÷ 
this
÷÷ 
.
÷÷ 
NavigationService
÷÷ &
!=
÷÷' )
null
÷÷* .
)
÷÷. /
{
÷÷0 1
this
◊◊ 
.
◊◊ 
NavigationService
◊◊ &
.
◊◊& '
Navigate
◊◊' /
(
◊◊/ 0
menuView
◊◊0 8
)
◊◊8 9
;
◊◊9 :
}
ÿÿ 
else
ÿÿ 
{
ÿÿ 
DialogManager
ŸŸ 
.
ŸŸ #
ShowErrorMessageAlert
ŸŸ 3
(
ŸŸ3 4

Properties
ŸŸ4 >
.
ŸŸ> ?
	Resources
ŸŸ? H
.
ŸŸH I#
dialogNavigationError
ŸŸI ^
)
ŸŸ^ _
;
ŸŸ_ `
}
⁄⁄ 
}
€€ 	
private
›› 
void
›› 
GoToLoginView
›› "
(
››" #
)
››# $
{
››% &
	LoginView
ﬁﬁ 
	loginView
ﬁﬁ 
=
ﬁﬁ  !
new
ﬁﬁ" %
	LoginView
ﬁﬁ& /
(
ﬁﬁ/ 0
)
ﬁﬁ0 1
;
ﬁﬁ1 2
if
ﬂﬂ 
(
ﬂﬂ 
this
ﬂﬂ 
.
ﬂﬂ 
NavigationService
ﬂﬂ &
!=
ﬂﬂ' )
null
ﬂﬂ* .
)
ﬂﬂ. /
{
ﬂﬂ0 1
this
‡‡ 
.
‡‡ 
NavigationService
‡‡ &
.
‡‡& '
Navigate
‡‡' /
(
‡‡/ 0
	loginView
‡‡0 9
)
‡‡9 :
;
‡‡: ;
}
·· 
else
·· 
{
·· 
DialogManager
‚‚ 
.
‚‚ #
ShowErrorMessageAlert
‚‚ 3
(
‚‚3 4

Properties
‚‚4 >
.
‚‚> ?
	Resources
‚‚? H
.
‚‚H I#
dialogNavigationError
‚‚I ^
)
‚‚^ _
;
‚‚_ `
}
„„ 
}
‰‰ 	
public
ÁÁ 
void
ÁÁ 
RemoveFromLobby
ÁÁ #
(
ÁÁ# $
)
ÁÁ$ %
{
ÁÁ& '

Dispatcher
ËË 
.
ËË 
Invoke
ËË 
(
ËË 
(
ËË 
)
ËË  
=>
ËË! #
{
ËË$ %
DialogManager
ÈÈ 
.
ÈÈ %
ShowWarningMessageAlert
ÈÈ 5
(
ÈÈ5 6

Properties
ÈÈ6 @
.
ÈÈ@ A
	Resources
ÈÈA J
.
ÈÈJ K
dialogLobbyExit
ÈÈK Z
)
ÈÈZ [
;
ÈÈ[ \
GoToMenuView
ÍÍ 
(
ÍÍ 
)
ÍÍ 
;
ÍÍ 
}
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 	
public
ÓÓ 
void
ÓÓ 
HostLeftCallback
ÓÓ $
(
ÓÓ$ %
)
ÓÓ% &
{
ÓÓ' (

Dispatcher
ÔÔ 
.
ÔÔ 
Invoke
ÔÔ 
(
ÔÔ 
async
ÔÔ #
(
ÔÔ$ %
)
ÔÔ% &
=>
ÔÔ' )
{
ÔÔ* +
await
 
Task
 
.
 
Run
 
(
 
(
  
)
  !
=>
" $
DialogManager
ÒÒ 
.
ÒÒ %
ShowWarningMessageAlert
ÒÒ 1
(
ÒÒ1 2

Properties
ÒÒ2 <
.
ÒÒ< =
	Resources
ÒÒ= F
.
ÒÒF G!
dialogHostLeftLobby
ÒÒG Z
)
ÒÒZ [
)
ÚÚ 
;
ÚÚ 
GoToMenuView
ÛÛ 
(
ÛÛ 
)
ÛÛ 
;
ÛÛ 
}
ÙÙ 
)
ÙÙ 
;
ÙÙ 
}
ıı 	
public
ˆˆ 
void
ˆˆ 
GuestLeftCallback
ˆˆ %
(
ˆˆ% &
)
ˆˆ& '
{
ˆˆ( )

Dispatcher
˜˜ 
.
˜˜ 
Invoke
˜˜ 
(
˜˜ 
(
˜˜ 
)
˜˜  
=>
˜˜! #
{
˜˜$ %
string
¯¯ 
waitingMessage
¯¯ %
=
¯¯& '

Properties
¯¯( 2
.
¯¯2 3
	Resources
¯¯3 <
.
¯¯< =$
dialogWaitingForPlayer
¯¯= S
;
¯¯S T
	lbPlayer2
˘˘ 
.
˘˘ 
Content
˘˘ !
=
˘˘" #
waitingMessage
˘˘$ 2
;
˘˘2 3
}
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 	
public
˝˝ 
void
˝˝ !
GuestJoinedCallback
˝˝ '
(
˝˝' (
string
˝˝( .
	guestName
˝˝/ 8
)
˝˝8 9
{
˝˝: ;

Dispatcher
˛˛ 
.
˛˛ 
Invoke
˛˛ 
(
˛˛ 
(
˛˛ 
)
˛˛  
=>
˛˛! #
{
˛˛$ %
	lbPlayer2
ˇˇ 
.
ˇˇ 
Content
ˇˇ !
=
ˇˇ" #
	guestName
ˇˇ$ -
;
ˇˇ- .
string
ÄÄ 
ruta
ÄÄ 
=
ÄÄ 
userManager
ÄÄ )
.
ÄÄ) *

GetPicPath
ÄÄ* 4
(
ÄÄ4 5
	guestName
ÄÄ5 >
)
ÄÄ> ?
;
ÄÄ? @
imgProfile2
ÅÅ 
.
ÅÅ 
Source
ÅÅ "
=
ÅÅ# $
new
ÅÅ% (
BitmapImage
ÅÅ) 4
(
ÅÅ4 5
new
ÅÅ5 8
Uri
ÅÅ9 <
(
ÅÅ< =
ruta
ÅÅ= A
,
ÅÅA B
UriKind
ÅÅC J
.
ÅÅJ K 
RelativeOrAbsolute
ÅÅK ]
)
ÅÅ] ^
)
ÅÅ^ _
;
ÅÅ_ `
}
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ  
BtnStartGame_Click
ÖÖ '
(
ÖÖ' (
object
ÖÖ( .
sender
ÖÖ/ 5
,
ÖÖ5 6
RoutedEventArgs
ÖÖ7 F
e
ÖÖG H
)
ÖÖH I
{
ÖÖJ K
lobbyManager
ÜÜ 
.
ÜÜ 

StartMatch
ÜÜ #
(
ÜÜ# $
	lobbyCode
ÜÜ$ -
)
ÜÜ- .
;
ÜÜ. /
}
áá 	
public
ââ 
void
ââ 
BroadcastMessage
ââ $
(
ââ$ %
Message
ââ% ,
message
ââ- 4
)
ââ4 5
{
ââ6 7
Application
ää 
.
ää 
Current
ää 
.
ää  

Dispatcher
ää  *
.
ää* +
Invoke
ää+ 1
(
ää1 2
(
ää2 3
)
ää3 4
=>
ää5 7
{
ää8 9
Border
ãã 
messageContainer
ãã '
=
ãã( )
new
ãã* -
Border
ãã. 4
{
ãã5 6

Background
åå 
=
åå  
new
åå! $
SolidColorBrush
åå% 4
(
åå4 5
Colors
åå5 ;
.
åå; <
White
åå< A
)
ååA B
,
ååB C
BorderThickness
çç #
=
çç$ %
new
çç& )
	Thickness
çç* 3
(
çç3 4
$num
çç4 5
)
çç5 6
,
çç6 7
Padding
éé 
=
éé 
new
éé !
	Thickness
éé" +
(
éé+ ,
$num
éé, .
)
éé. /
,
éé/ 0
Margin
èè 
=
èè 
new
èè  
	Thickness
èè! *
(
èè* +
$num
èè+ -
,
èè- .
$num
èè/ 0
,
èè0 1
$num
èè2 4
,
èè4 5
$num
èè6 7
)
èè7 8
,
èè8 9!
HorizontalAlignment
êê '
=
êê( )
message
êê* 1
.
êê1 2
userName
êê2 :
==
êê; ="
UserProfileSingleton
êê> R
.
êêR S
UserName
êêS [
?
êê\ ]!
HorizontalAlignment
êê^ q
.
êêq r
Right
êêr w
:
êêx y"
HorizontalAlignmentêêz ç
.êêç é
Leftêêé í
}
ëë 
;
ëë 
	TextBlock
ìì 
messageBlock
ìì &
=
ìì' (
new
ìì) ,
	TextBlock
ìì- 6
{
ìì7 8
Text
îî 
=
îî 
$"
îî 
{
îî 
message
îî %
.
îî% &
chatMessage
îî& 1
}
îî1 2
$str
îî2 3
{
îî3 4
DateTime
îî4 <
.
îî< =
Now
îî= @
:
îî@ A
$str
îîA F
}
îîF G
"
îîG H
,
îîH I

Foreground
ïï 
=
ïï  
new
ïï! $
SolidColorBrush
ïï% 4
(
ïï4 5
Colors
ïï5 ;
.
ïï; <
Black
ïï< A
)
ïïA B
,
ïïB C
FontSize
ññ 
=
ññ 
$num
ññ !
,
ññ! "

FontWeight
óó 
=
óó  
FontWeights
óó! ,
.
óó, -
Bold
óó- 1
,
óó1 2
TextWrapping
òò  
=
òò! "
TextWrapping
òò# /
.
òò/ 0
Wrap
òò0 4
,
òò4 5
MaxWidth
ôô 
=
ôô 
$num
ôô "
}
öö 
;
öö 
messageContainer
úú  
.
úú  !
Child
úú! &
=
úú' (
messageBlock
úú) 5
;
úú5 6
ChatMessagesPanel
ùù !
.
ùù! "
Children
ùù" *
.
ùù* +
Add
ùù+ .
(
ùù. /
messageContainer
ùù/ ?
)
ùù? @
;
ùù@ A
ScrollToBottom
ûû 
(
ûû 
)
ûû  
;
ûû  !
}
üü 
)
üü 
;
üü 
}
†† 	
public
¢¢ 
void
¢¢ 
GameStarted
¢¢ 
(
¢¢  
)
¢¢  !
{
¢¢" #
GoToGameMatch
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
private
¶¶ 
void
¶¶ 
GoToGameMatch
¶¶ "
(
¶¶" #
)
¶¶# $
{
¶¶% &
Application
ßß 
.
ßß 
Current
ßß 
.
ßß  

Dispatcher
ßß  *
.
ßß* +
Invoke
ßß+ 1
(
ßß1 2
(
ßß2 3
)
ßß3 4
=>
ßß5 7
{
ßß8 9
var
®® 
	gameMatch
®® 
=
®® 
new
®®  #
	GameMatch
®®$ -
(
®®- .
	lobbyCode
®®. 7
)
®®7 8
;
®®8 9
NavigationService
©© !
?
©©! "
.
©©" #
Navigate
©©# +
(
©©+ ,
	gameMatch
©©, 5
)
©©5 6
;
©©6 7
}
™™ 
)
™™ 
;
™™ 
}
´´ 	
private
≠≠ 
async
≠≠ 
Task
≠≠ "
LoadFriendsListAsync
≠≠ /
(
≠≠/ 0
)
≠≠0 1
{
≠≠2 3
LoggerManager
ÆÆ 
logger
ÆÆ  
=
ÆÆ! "
new
ÆÆ# &
LoggerManager
ÆÆ' 4
(
ÆÆ4 5
this
ÆÆ5 9
.
ÆÆ9 :
GetType
ÆÆ: A
(
ÆÆA B
)
ÆÆB C
)
ÆÆC D
;
ÆÆD E
try
ØØ 
{
ØØ 
int
∞∞ 
userProfileId
∞∞ !
=
∞∞" #"
UserProfileSingleton
∞∞$ 8
.
∞∞8 9
	IdProfile
∞∞9 B
;
∞∞B C
var
±± 
friendsList
±± 
=
±±  !
await
±±" '
friendsManager
±±( 6
.
±±6 7
GetFriendsAsync
±±7 F
(
±±F G
userProfileId
±±G T
)
±±T U
;
±±U V
var
≥≥ 
friendsWithStatus
≥≥ %
=
≥≥& '
new
≥≥( +
List
≥≥, 0
<
≥≥0 1
string
≥≥1 7
>
≥≥7 8
(
≥≥8 9
)
≥≥9 :
;
≥≥: ;
foreach
µµ 
(
µµ 
var
µµ 
friend
µµ #
in
µµ$ &
friendsList
µµ' 2
)
µµ2 3
{
µµ4 5
var
∂∂ 
status
∂∂ 
=
∂∂  
await
∂∂! &
statusManager
∂∂' 4
.
∂∂4 5"
GetPlayerStatusAsync
∂∂5 I
(
∂∂I J
friend
∂∂J P
.
∂∂P Q
	IdProfile
∂∂Q Z
)
∂∂Z [
;
∂∂[ \
friendsWithStatus
∑∑ %
.
∑∑% &
Add
∑∑& )
(
∑∑) *
$"
∑∑* ,
{
∑∑, -
friend
∑∑- 3
.
∑∑3 4
Username
∑∑4 <
}
∑∑< =
$str
∑∑= @
{
∑∑@ A
status
∑∑A G
}
∑∑G H
"
∑∑H I
)
∑∑I J
;
∑∑J K
}
∏∏ 

lstFriends
ππ 
.
ππ 
ItemsSource
ππ &
=
ππ' (
friendsWithStatus
ππ) :
;
ππ: ;
}
∫∫ 
catch
∫∫ 
(
∫∫ '
EndpointNotFoundException
∫∫ .'
endpointNotFoundException
∫∫/ H
)
∫∫H I
{
∫∫J K
logger
ªª 
.
ªª 
LogError
ªª 
(
ªª  '
endpointNotFoundException
ªª  9
)
ªª9 :
;
ªª: ;
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
ººH I%
dialogEndPointException
ººI `
)
ºº` a
;
ººa b
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ %
timeoutException
ΩΩ& 6
)
ΩΩ6 7
{
ΩΩ8 9
logger
ææ 
.
ææ 
LogError
ææ 
(
ææ  
timeoutException
ææ  0
)
ææ0 1
;
ææ1 2
DialogManager
øø 
.
øø #
ShowErrorMessageAlert
øø 3
(
øø3 4

Properties
øø4 >
.
øø> ?
	Resources
øø? H
.
øøH I$
dialogTimeOutException
øøI _
)
øø_ `
;
øø` a
}
¿¿ 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ +$
communicationException
¿¿, B
)
¿¿B C
{
¿¿D E
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  $
communicationException
¡¡  6
)
¡¡6 7
;
¡¡7 8
DialogManager
¬¬ 
.
¬¬ #
ShowErrorMessageAlert
¬¬ 3
(
¬¬3 4

Properties
¬¬4 >
.
¬¬> ?
	Resources
¬¬? H
.
¬¬H I)
dialogComunicationException
¬¬I d
)
¬¬d e
;
¬¬e f
}
√√ 
}
ƒƒ 	
private
«« 
async
«« 
void
«« $
BtnInvitedFriend_Click
«« 1
(
««1 2
object
««2 8
sender
««9 ?
,
««? @
RoutedEventArgs
««A P
e
««Q R
)
««R S
{
««T U 
areElementsVisible
»» 
=
»»  
!
»»! " 
areElementsVisible
»»" 4
;
»»4 5
if
…… 
(
……  
areElementsVisible
…… "
)
……" #
{
……$ %
invitedFriendGrid
   !
.
  ! "

Visibility
  " ,
=
  - .

Visibility
  / 9
.
  9 :
Visible
  : A
;
  A B

lstFriends
ÀÀ 
.
ÀÀ 
	IsEnabled
ÀÀ $
=
ÀÀ% &
true
ÀÀ' +
;
ÀÀ+ ,

btnInvited
ÃÃ 
.
ÃÃ 
	IsEnabled
ÃÃ $
=
ÃÃ% &
true
ÃÃ' +
;
ÃÃ+ ,
await
ÕÕ "
LoadFriendsListAsync
ÕÕ *
(
ÕÕ* +
)
ÕÕ+ ,
;
ÕÕ, -
btnInvitedFriend
ŒŒ  
.
ŒŒ  !

Background
ŒŒ! +
=
ŒŒ, -
new
ŒŒ. 1
SolidColorBrush
ŒŒ2 A
(
ŒŒA B
Colors
ŒŒB H
.
ŒŒH I
Green
ŒŒI N
)
ŒŒN O
;
ŒŒO P
}
œœ 
else
œœ 
{
œœ 
invitedFriendGrid
–– !
.
––! "

Visibility
––" ,
=
––- .

Visibility
––/ 9
.
––9 :
	Collapsed
––: C
;
––C D

lstFriends
—— 
.
—— 
	IsEnabled
—— $
=
——% &
false
——' ,
;
——, -

btnInvited
““ 
.
““ 
	IsEnabled
““ $
=
““% &
false
““' ,
;
““, -
btnInvitedFriend
””  
.
””  !

Background
””! +
=
””, -
new
””. 1
SolidColorBrush
””2 A
(
””A B
Color
””B G
.
””G H
FromArgb
””H P
(
””P Q
$num
””Q T
,
””T U
$num
””V Y
,
””Y Z
$num
””[ ^
,
””^ _
$num
””` c
)
””c d
)
””d e
;
””e f
}
‘‘ 
}
’’ 	
private
÷÷ 
async
÷÷ 
void
÷÷ 
BtnInvited_Click
÷÷ +
(
÷÷+ ,
object
÷÷, 2
sender
÷÷3 9
,
÷÷9 :
RoutedEventArgs
÷÷; J
e
÷÷K L
)
÷÷L M
{
÷÷N O
LoggerManager
◊◊ 
logger
◊◊  
=
◊◊! "
new
◊◊# &
LoggerManager
◊◊' 4
(
◊◊4 5
this
◊◊5 9
.
◊◊9 :
GetType
◊◊: A
(
◊◊A B
)
◊◊B C
)
◊◊C D
;
◊◊D E
if
ÿÿ 
(
ÿÿ 

lstFriends
ÿÿ 
.
ÿÿ 
SelectedItem
ÿÿ '
!=
ÿÿ( *
null
ÿÿ+ /
)
ÿÿ/ 0
{
ÿÿ1 2
string
ŸŸ  
selectedFriendName
ŸŸ )
=
ŸŸ* +

lstFriends
ŸŸ, 6
.
ŸŸ6 7
SelectedItem
ŸŸ7 C
.
ŸŸC D
ToString
ŸŸD L
(
ŸŸL M
)
ŸŸM N
;
ŸŸN O
string
⁄⁄ 

friendName
⁄⁄ !
=
⁄⁄" # 
selectedFriendName
⁄⁄$ 6
.
⁄⁄6 7
Split
⁄⁄7 <
(
⁄⁄< =
$char
⁄⁄= @
)
⁄⁄@ A
[
⁄⁄A B
$num
⁄⁄B C
]
⁄⁄C D
.
⁄⁄D E
Trim
⁄⁄E I
(
⁄⁄I J
)
⁄⁄J K
;
⁄⁄K L
try
‹‹ 
{
‹‹ 
int
›› 
result
›› 
=
››  
await
››! &$
emailInvitationManager
››' =
.
››= >!
SendInvitationAsync
››> Q
(
››Q R

friendName
››R \
,
››\ ]
	lobbyCode
››^ g
)
››g h
;
››h i
if
ﬂﬂ 
(
ﬂﬂ 
result
ﬂﬂ 
==
ﬂﬂ !
	Constants
ﬂﬂ" +
.
ﬂﬂ+ ,
SUCCES_OPERATION
ﬂﬂ, <
)
ﬂﬂ< =
{
ﬂﬂ> ?
DialogManager
‡‡ %
.
‡‡% &%
ShowSuccessMessageAlert
‡‡& =
(
‡‡= >
string
‡‡> D
.
‡‡D E
Format
‡‡E K
(
‡‡K L

Properties
‡‡L V
.
‡‡V W
	Resources
‡‡W `
.
‡‡` a"
dialogInvitationSent
‡‡a u
,
‡‡u v

friendName‡‡w Å
)‡‡Å Ç
)‡‡Ç É
;‡‡É Ñ
}
·· 
else
·· 
{
·· 
DialogManager
‚‚ %
.
‚‚% &#
ShowErrorMessageAlert
‚‚& ;
(
‚‚; <

Properties
‚‚< F
.
‚‚F G
	Resources
‚‚G P
.
‚‚P Q*
dialogErrorSendingInvitation
‚‚Q m
)
‚‚m n
;
‚‚n o
}
‰‰ 
}
ÂÂ 
catch
ÂÂ 
(
ÂÂ '
EndpointNotFoundException
ÂÂ 2'
endpointNotFoundException
ÂÂ3 L
)
ÂÂL M
{
ÂÂN O
logger
ÊÊ 
.
ÊÊ 
LogError
ÊÊ #
(
ÊÊ# $'
endpointNotFoundException
ÊÊ$ =
)
ÊÊ= >
;
ÊÊ> ?
DialogManager
ÁÁ !
.
ÁÁ! "#
ShowErrorMessageAlert
ÁÁ" 7
(
ÁÁ7 8

Properties
ÁÁ8 B
.
ÁÁB C
	Resources
ÁÁC L
.
ÁÁL M%
dialogEndPointException
ÁÁM d
)
ÁÁd e
;
ÁÁe f
}
ËË 
catch
ËË 
(
ËË 
TimeoutException
ËË )
timeoutException
ËË* :
)
ËË: ;
{
ËË< =
logger
ÈÈ 
.
ÈÈ 
LogError
ÈÈ #
(
ÈÈ# $
timeoutException
ÈÈ$ 4
)
ÈÈ4 5
;
ÈÈ5 6
DialogManager
ÍÍ !
.
ÍÍ! "#
ShowErrorMessageAlert
ÍÍ" 7
(
ÍÍ7 8

Properties
ÍÍ8 B
.
ÍÍB C
	Resources
ÍÍC L
.
ÍÍL M$
dialogTimeOutException
ÍÍM c
)
ÍÍc d
;
ÍÍd e
}
ÎÎ 
catch
ÎÎ 
(
ÎÎ $
CommunicationException
ÎÎ /$
communicationException
ÎÎ0 F
)
ÎÎF G
{
ÎÎH I
logger
ÏÏ 
.
ÏÏ 
LogError
ÏÏ #
(
ÏÏ# $$
communicationException
ÏÏ$ :
)
ÏÏ: ;
;
ÏÏ; <
DialogManager
ÌÌ !
.
ÌÌ! "#
ShowErrorMessageAlert
ÌÌ" 7
(
ÌÌ7 8

Properties
ÌÌ8 B
.
ÌÌB C
	Resources
ÌÌC L
.
ÌÌL M)
dialogComunicationException
ÌÌM h
)
ÌÌh i
;
ÌÌi j
}
ÓÓ 
}
ÔÔ 
else
ÔÔ 
{
ÔÔ 
DialogManager
 
.
 %
ShowWarningMessageAlert
 5
(
5 6

Properties
6 @
.
@ A
	Resources
A J
.
J K(
dialogSelectFriendToInvite
K e
)
e f
;
f g
}
ÒÒ 
}
ÚÚ 	
}
ıı 
}ˆˆ Ì!
3C:\TripasDeGatoCliente\Views\LaderboardView.xaml.cs
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
LeaderboardManagerClient ($
leaderboardManagerClient) A
;A B
public 

Laderboard 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "$
leaderboardManagerClient $
=% &
new' *$
LeaderboardManagerClient+ C
(C D
)D E
;E F$
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
await/ 4$
leaderboardManagerClient5 M
.M N!
GetHighestScoresAsyncN c
(c d
)d e
)e f
.f g
ToListg m
(m n
)n o
;o p
LeaderboardListView #
.# $
ItemsSource$ /
=0 1
highestScores2 ?
;? @
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
}%% 
}&& 	
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
{''E F
MenuView(( 
menuView(( 
=(( 
new((  #
MenuView(($ ,
(((, -
)((- .
;((. /
if)) 
()) 
this)) 
.)) 
NavigationService)) &
!=))' )
null))* .
))). /
{))0 1
this** 
.** 
NavigationService** &
.**& '
Navigate**' /
(**/ 0
menuView**0 8
)**8 9
;**9 :
}++ 
else++ 
{++ 
DialogManager,, 
.,, !
ShowErrorMessageAlert,, 3
(,,3 4

Properties,,4 >
.,,> ?
	Resources,,? H
.,,H I!
dialogNavigationError,,I ^
),,^ _
;,,_ `
}-- 
}.. 	
}// 
}00 úÚ
2C:\TripasDeGatoCliente\Views\GameMatchView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	GameMatch "
:# $
Page% )
,) *!
IMatchManagerCallback+ @
{A B
private 
List 
< 
Polyline 
> 
	allTraces (
;( )
private 
DispatcherTimer 
timer  %
;% &
private 
int 
	totalTime 
= 
$num  "
;" #
private 
double 
remainingTime $
;$ %
private 
string 
	matchCode  
;  !
private 
bool 
isConnected  
;  !
private 
MatchManagerClient "
matchManagerClient# 5
;5 6
private 
bool 
	isDrawing 
=  
false! &
;& '
private 
List 
<  
TripasDeGatoServicio )
.) *

TracePoint* 4
>4 5
currentTracePoints6 H
=I J
newK N
ListO S
<S T 
TripasDeGatoServicioT h
.h i

TracePointi s
>s t
(t u
)u v
;v w
private 
Polyline 
currentLine $
;$ %
private 
List 
< 
Node 
> 
nodes  
;  !
private 

Dictionary 
< 
string !
,! "
string# )
>) *
	nodePairs+ 4
;4 5
private   
Node   
	startNode   
;   
private!! 
bool!! 
isPlayerTurn!! !
=!!" #
false!!$ )
;!!) *
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
.&& 
	matchCode&& 
=&& 
gameCode&& %
;&&% &
matchManagerClient'' 
=''  
new''! $
MatchManagerClient''% 7
(''7 8
new''8 ;
InstanceContext''< K
(''K L
this''L P
)''P Q
)''Q R
;''R S
InitializeMatch(( 
((( 
)(( 
;(( 
	allTraces)) 
=)) 
new)) 
List))  
<))  !
Polyline))! )
>))) *
())* +
)))+ ,
;)), -
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
;,,3 4
labelPlayer1-- 
.-- 
Content--  
=--! " 
UserProfileSingleton--# 7
.--7 8
UserName--8 @
;--@ A

StartTimer.. 
(.. 
).. 
;.. 
}// 	
private00 
async00 
Task00 
CheckCurrentTurn00 +
(00+ ,
)00, -
{00. /
try11 
{11 
string22 
currentTurn22 "
=22# $
await22% *
Task22+ /
.22/ 0
Run220 3
(223 4
(224 5
)225 6
=>227 9
matchManagerClient22: L
.22L M
GetCurrentTurn22M [
(22[ \
	matchCode22\ e
)22e f
)22f g
;22g h
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
NotifyNotYouTurn77 $
(77$ %
)77% &
;77& '
}88 
}99 
catch99 
(99 
	Exception99 
ex99 !
)99! "
{99# $
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4
$"::4 6
$str::6 Q
{::Q R
ex::R T
.::T U
Message::U \
}::\ ]
"::] ^
)::^ _
;::_ `
};; 
}<< 	
private>> 
async>> 
void>> 
InitializeMatch>> *
(>>* +
)>>+ ,
{>>- .
try?? 
{?? 
bool@@ 
	connected@@ 
=@@  
matchManagerClient@@! 3
.@@3 4"
RegisterPlayerCallback@@4 J
(@@J K
	matchCode@@K T
,@@T U 
UserProfileSingleton@@V j
.@@j k
UserName@@k s
)@@s t
;@@t u
ifAA 
(AA 
!AA 
	connectedAA 
)AA 
{AA  !
DialogManagerBB !
.BB! "!
ShowErrorMessageAlertBB" 7
(BB7 8
$strBB8 [
)BB[ \
;BB\ ]
}CC 
elseCC 
{CC 
isConnectedDD 
=DD  !
trueDD" &
;DD& '
nodesEE 
=EE 
awaitEE !
TaskEE" &
.EE& '
RunEE' *
(EE* +
(EE+ ,
)EE, -
=>EE. 0
matchManagerClientEE1 C
.EEC D
GetNodesEED L
(EEL M
	matchCodeEEM V
)EEV W
)EEW X
;EEX Y
	nodePairsFF 
=FF 
awaitFF  %
TaskFF& *
.FF* +
RunFF+ .
(FF. /
(FF/ 0
)FF0 1
=>FF2 4
matchManagerClientFF5 G
.FFG H
GetNodePairsFFH T
(FFT U
	matchCodeFFU ^
)FF^ _
)FF_ `
;FF` a
ifGG 
(GG 
nodesGG 
!=GG  
nullGG! %
&&GG& (
nodesGG) .
.GG. /
CountGG/ 4
>GG5 6
$numGG7 8
)GG8 9
{GG: ;
	DrawNodesHH !
(HH! "
)HH" #
;HH# $
awaitII 
CheckCurrentTurnII .
(II. /
)II/ 0
;II0 1
}JJ 
elseJJ 
{JJ 
DialogManagerKK %
.KK% &!
ShowErrorMessageAlertKK& ;
(KK; <
$strKK< h
)KKh i
;KKi j
}LL 
}MM 
}NN 
catchNN 
(NN 
	ExceptionNN 
exNN !
)NN! "
{NN# $
DialogManagerOO 
.OO !
ShowErrorMessageAlertOO 3
(OO3 4
$"OO4 6
$strOO6 W
{OOW X
exOOX Z
.OOZ [
MessageOO[ b
}OOb c
"OOc d
)OOd e
;OOe f
}PP 
}QQ 	
privateSS 
voidSS 

StartTimerSS 
(SS  
)SS  !
{SS" #
remainingTimeTT 
=TT 
	totalTimeTT %
;TT% &
timeProgressBarUU 
.UU 
ValueUU !
=UU" #
$numUU$ '
;UU' (
timerVV 
=VV 
newVV 
DispatcherTimerVV '
(VV' (
)VV( )
;VV) *
timerWW 
.WW 
IntervalWW 
=WW 
TimeSpanWW %
.WW% &
FromMillisecondsWW& 6
(WW6 7
$numWW7 :
)WW: ;
;WW; <
timerXX 
.XX 
TickXX 
+=XX 

Timer_TickXX $
;XX$ %
ifYY 
(YY 
isPlayerTurnYY 
)YY 
{YY 
timerZZ 
.ZZ 
StartZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
}\\ 	
private^^ 
void^^ 

Timer_Tick^^ 
(^^  
object^^  &
sender^^' -
,^^- .
	EventArgs^^/ 8
e^^9 :
)^^: ;
{^^< =
if__ 
(__ 
remainingTime__ 
>__ 
$num__  !
)__! "
{__# $
remainingTime`` 
-=``  
$num``! $
;``$ %
timeProgressBaraa 
.aa  
Valueaa  %
=aa& '
(aa( )
remainingTimeaa) 6
/aa7 8
	totalTimeaa9 B
)aaB C
*aaD E
$numaaF I
;aaI J
ifbb 
(bb 
remainingTimebb !
>bb" #
	totalTimebb$ -
*bb. /
$numbb0 3
)bb3 4
{bb5 6
timeProgressBarcc #
.cc# $

Foregroundcc$ .
=cc/ 0
Brushescc1 8
.cc8 9
Greencc9 >
;cc> ?
}dd 
elsedd 
ifdd 
(dd 
remainingTimedd (
>dd) *
	totalTimedd+ 4
*dd5 6
$numdd7 :
)dd: ;
{dd< =
timeProgressBaree #
.ee# $

Foregroundee$ .
=ee/ 0
Brushesee1 8
.ee8 9
Orangeee9 ?
;ee? @
}ff 
elseff 
{ff 
timeProgressBargg #
.gg# $

Foregroundgg$ .
=gg/ 0
Brushesgg1 8
.gg8 9
Redgg9 <
;gg< =
}hh 
}ii 
elseii 
{ii 
timerjj 
.jj 
Stopjj 
(jj 
)jj 
;jj 
drawingCanvaskk 
.kk 
Childrenkk &
.kk& '
Removekk' -
(kk- .
currentLinekk. 9
)kk9 :
;kk: ;
matchManagerClientll "
.ll" #
EndTurnAsyncll# /
(ll/ 0
	matchCodell0 9
,ll9 : 
UserProfileSingletonll; O
.llO P
UserNamellP X
)llX Y
;llY Z
timeProgressBarmm 
.mm  

Foregroundmm  *
=mm+ ,
Brushesmm- 4
.mm4 5
Graymm5 9
;mm9 :
}nn 
}oo 	
privateqq 
voidqq 
Canvas_MouseDownqq %
(qq% &
objectqq& ,
senderqq- 3
,qq3 4 
MouseButtonEventArgsqq5 I
eqqJ K
)qqK L
{qqM N
Pointrr 
mousePositionrr 
=rr  !
err" #
.rr# $
GetPositionrr$ /
(rr/ 0
drawingCanvasrr0 =
)rr= >
;rr> ?
	startNodess 
=ss 
FindNodeNearPointss )
(ss) *
mousePositionss* 7
)ss7 8
;ss8 9
iftt 
(tt 
	startNodett 
==tt 
nulltt !
)tt! "
{tt# $
DialogManageruu 
.uu !
ShowErrorMessageAlertuu 3
(uu3 4
$struu4 b
)uub c
;uuc d
returnvv 
;vv 
}ww 
	isDrawingxx 
=xx 
truexx 
;xx 
currentTracePointsyy 
.yy 
Clearyy $
(yy$ %
)yy% &
;yy& '
currentTracePointszz 
.zz 
Addzz "
(zz" #
newzz# & 
TripasDeGatoServiciozz' ;
.zz; <

TracePointzz< F
{zzG H
XzzI J
=zzK L
mousePositionzzM Z
.zzZ [
Xzz[ \
,zz\ ]
Yzz^ _
=zz` a
mousePositionzzb o
.zzo p
Yzzp q
}zzr s
)zzs t
;zzt u
currentLine{{ 
={{ 
new{{ 
Polyline{{ &
{{{' (
Stroke|| 
=|| 
Brushes||  
.||  !
Blue||! %
,||% &
StrokeThickness}} 
=}}  !
$num}}" #
}~~ 
;~~ 
drawingCanvas 
. 
Children "
." #
Add# &
(& '
currentLine' 2
)2 3
;3 4
currentLine
ÄÄ 
.
ÄÄ 
Points
ÄÄ 
.
ÄÄ 
Add
ÄÄ "
(
ÄÄ" #
mousePosition
ÄÄ# 0
)
ÄÄ0 1
;
ÄÄ1 2
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 
NotifyYourTurn
ÉÉ "
(
ÉÉ" #
)
ÉÉ# $
{
ÉÉ% &
if
ÑÑ 
(
ÑÑ 
timer
ÑÑ 
!=
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÑÑ  
timer
ÖÖ 
.
ÖÖ 
Stop
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
timer
ÜÜ 
.
ÜÜ 
Tick
ÜÜ 
-=
ÜÜ 

Timer_Tick
ÜÜ (
;
ÜÜ( )
}
áá 
remainingTime
ââ 
=
ââ 
	totalTime
ââ %
;
ââ% &
timeProgressBar
ää 
.
ää 
Value
ää !
=
ää" #
$num
ää$ '
;
ää' (
timeProgressBar
ãã 
.
ãã 

Foreground
ãã &
=
ãã' (
Brushes
ãã) 0
.
ãã0 1
Green
ãã1 6
;
ãã6 7
drawingCanvas
çç 
.
çç 
	IsEnabled
çç #
=
çç$ %
true
çç& *
;
çç* +
isPlayerTurn
éé 
=
éé 
true
éé 
;
éé  
	labelTurn
èè 
.
èè 
Content
èè 
=
èè 
$str
èè  /
;
èè/ 0
	labelTurn
êê 
.
êê 

Foreground
êê  
=
êê! "
Brushes
êê# *
.
êê* +
Green
êê+ 0
;
êê0 1

StartTimer
íí 
(
íí 
)
íí 
;
íí 
}
ìì 	
public
ïï 
void
ïï 
NotifyNotYouTurn
ïï $
(
ïï$ %
)
ïï% &
{
ïï' (
Application
ññ 
.
ññ 
Current
ññ 
.
ññ  

Dispatcher
ññ  *
.
ññ* +
Invoke
ññ+ 1
(
ññ1 2
(
ññ2 3
)
ññ3 4
=>
ññ5 7
{
ññ8 9
if
óó 
(
óó 
timer
óó 
!=
óó 
null
óó !
)
óó! "
{
óó# $
timer
òò 
.
òò 
Stop
òò 
(
òò 
)
òò  
;
òò  !
timer
ôô 
.
ôô 
Tick
ôô 
-=
ôô !

Timer_Tick
ôô" ,
;
ôô, -
}
öö 
drawingCanvas
úú 
.
úú 
	IsEnabled
úú '
=
úú( )
false
úú* /
;
úú/ 0
isPlayerTurn
ùù 
=
ùù 
false
ùù $
;
ùù$ %
	labelTurn
ûû 
.
ûû 
Content
ûû !
=
ûû" #
$str
ûû$ 8
;
ûû8 9
	labelTurn
üü 
.
üü 

Foreground
üü $
=
üü% &
Brushes
üü' .
.
üü. /
Red
üü/ 2
;
üü2 3
}
†† 
)
†† 
;
†† 
}
°° 	
private
££ 
void
££ 
Canvas_MouseMove
££ %
(
££% &
object
££& ,
sender
££- 3
,
££3 4
MouseEventArgs
££5 C
e
££D E
)
££E F
{
££G H
if
§§ 
(
§§ 
!
§§ 
	isDrawing
§§ 
)
§§ 
return
§§ "
;
§§" #
Point
¶¶ 
mousePosition
¶¶ 
=
¶¶  !
e
¶¶" #
.
¶¶# $
GetPosition
¶¶$ /
(
¶¶/ 0
drawingCanvas
¶¶0 =
)
¶¶= >
;
¶¶> ?
var
ßß 
newPoint
ßß 
=
ßß 
new
ßß "
TripasDeGatoServicio
ßß 3
.
ßß3 4

TracePoint
ßß4 >
{
ßß? @
X
ßßA B
=
ßßC D
mousePosition
ßßE R
.
ßßR S
X
ßßS T
,
ßßT U
Y
ßßV W
=
ßßX Y
mousePosition
ßßZ g
.
ßßg h
Y
ßßh i
}
ßßj k
;
ßßk l
if
©© 
(
©© !
IsCollisionDetected
©© #
(
©©# $
newPoint
©©$ ,
)
©©, -
)
©©- .
{
©©/ 0
HandleInfraction
™™  
(
™™  !
$str
™™! K
)
™™K L
;
™™L M
return
´´ 
;
´´ 
}
¨¨ 
Node
ÆÆ 
currentNode
ÆÆ 
=
ÆÆ 
FindNodeNearPoint
ÆÆ 0
(
ÆÆ0 1
mousePosition
ÆÆ1 >
)
ÆÆ> ?
;
ÆÆ? @
if
ØØ 
(
ØØ 
currentNode
ØØ 
!=
ØØ 
null
ØØ #
&&
ØØ$ &
currentNode
ØØ' 2
!=
ØØ3 5
	startNode
ØØ6 ?
)
ØØ? @
{
ØØA B
if
∞∞ 
(
∞∞ 
!
∞∞ 
IsPair
∞∞ 
(
∞∞ 
	startNode
∞∞ %
,
∞∞% &
currentNode
∞∞' 2
)
∞∞2 3
)
∞∞3 4
{
∞∞5 6
HandleInfraction
±± $
(
±±$ %
$str
±±% W
)
±±W X
;
±±X Y
return
≤≤ 
;
≤≤ 
}
≥≥ 
}
¥¥  
currentTracePoints
∂∂ 
.
∂∂ 
Add
∂∂ "
(
∂∂" #
newPoint
∂∂# +
)
∂∂+ ,
;
∂∂, -
currentLine
∑∑ 
.
∑∑ 
Points
∑∑ 
.
∑∑ 
Add
∑∑ "
(
∑∑" #
mousePosition
∑∑# 0
)
∑∑0 1
;
∑∑1 2
}
∏∏ 	
private
∫∫ 
bool
∫∫  
IsPointNearSegment
∫∫ '
(
∫∫' ("
TripasDeGatoServicio
∫∫( <
.
∫∫< =

TracePoint
∫∫= G
point
∫∫H M
,
∫∫M N
Point
∫∫O T
start
∫∫U Z
,
∫∫Z [
Point
∫∫\ a
end
∫∫b e
)
∫∫e f
{
∫∫g h
double
ªª 
distance
ªª 
=
ªª (
DistanceFromPointToSegment
ªª 8
(
ªª8 9
point
ªª9 >
,
ªª> ?
start
ªª@ E
,
ªªE F
end
ªªG J
)
ªªJ K
;
ªªK L
return
ºº 
distance
ºº 
<
ºº 
$num
ºº 
;
ºº  
}
ΩΩ 	
private
øø 
bool
øø !
IsCollisionDetected
øø (
(
øø( )"
TripasDeGatoServicio
øø) =
.
øø= >

TracePoint
øø> H
newPoint
øøI Q
)
øøQ R
{
øøS T
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
polyline
¿¿ !
in
¿¿" $
	allTraces
¿¿% .
)
¿¿. /
{
¿¿0 1
for
¡¡ 
(
¡¡ 
int
¡¡ 
i
¡¡ 
=
¡¡ 
$num
¡¡ 
;
¡¡ 
i
¡¡  !
<
¡¡" #
polyline
¡¡$ ,
.
¡¡, -
Points
¡¡- 3
.
¡¡3 4
Count
¡¡4 9
;
¡¡9 :
i
¡¡; <
++
¡¡< >
)
¡¡> ?
{
¡¡@ A
Point
¬¬ 
start
¬¬ 
=
¬¬  !
polyline
¬¬" *
.
¬¬* +
Points
¬¬+ 1
[
¬¬1 2
i
¬¬2 3
-
¬¬4 5
$num
¬¬6 7
]
¬¬7 8
;
¬¬8 9
Point
√√ 
end
√√ 
=
√√ 
polyline
√√  (
.
√√( )
Points
√√) /
[
√√/ 0
i
√√0 1
]
√√1 2
;
√√2 3
if
ƒƒ 
(
ƒƒ  
IsPointNearSegment
ƒƒ *
(
ƒƒ* +
newPoint
ƒƒ+ 3
,
ƒƒ3 4
start
ƒƒ5 :
,
ƒƒ: ;
end
ƒƒ< ?
)
ƒƒ? @
)
ƒƒ@ A
{
ƒƒB C
return
≈≈ 
true
≈≈ #
;
≈≈# $
}
∆∆ 
}
«« 
}
»» 
return
…… 
false
…… 
;
…… 
}
   	
private
ÃÃ 
double
ÃÃ (
DistanceFromPointToSegment
ÃÃ 1
(
ÃÃ1 2"
TripasDeGatoServicio
ÃÃ2 F
.
ÃÃF G

TracePoint
ÃÃG Q
point
ÃÃR W
,
ÃÃW X
Point
ÃÃY ^
start
ÃÃ_ d
,
ÃÃd e
Point
ÃÃf k
end
ÃÃl o
)
ÃÃo p
{
ÃÃq r
double
ÕÕ 
px
ÕÕ 
=
ÕÕ 
point
ÕÕ 
.
ÕÕ 
X
ÕÕ 
;
ÕÕ  
double
ŒŒ 
py
ŒŒ 
=
ŒŒ 
point
ŒŒ 
.
ŒŒ 
Y
ŒŒ 
;
ŒŒ  
double
œœ 
sx
œœ 
=
œœ 
start
œœ 
.
œœ 
X
œœ 
;
œœ  
double
–– 
sy
–– 
=
–– 
start
–– 
.
–– 
Y
–– 
;
––  
double
—— 
ex
—— 
=
—— 
end
—— 
.
—— 
X
—— 
;
—— 
double
““ 
ey
““ 
=
““ 
end
““ 
.
““ 
Y
““ 
;
““ 
double
”” 
dx
”” 
=
”” 
ex
”” 
-
”” 
sx
”” 
;
””  
double
‘‘ 
dy
‘‘ 
=
‘‘ 
ey
‘‘ 
-
‘‘ 
sy
‘‘ 
;
‘‘  
double
’’ 
lengthSquared
’’  
=
’’! "
dx
’’# %
*
’’& '
dx
’’( *
+
’’+ ,
dy
’’- /
*
’’0 1
dy
’’2 4
;
’’4 5
if
÷÷ 
(
÷÷ 
lengthSquared
÷÷ 
==
÷÷  
$num
÷÷! "
)
÷÷" #
return
÷÷$ *
Math
÷÷+ /
.
÷÷/ 0
Sqrt
÷÷0 4
(
÷÷4 5
(
÷÷5 6
px
÷÷6 8
-
÷÷9 :
sx
÷÷; =
)
÷÷= >
*
÷÷? @
(
÷÷A B
px
÷÷B D
-
÷÷E F
sx
÷÷G I
)
÷÷I J
+
÷÷K L
(
÷÷M N
py
÷÷N P
-
÷÷Q R
sy
÷÷S U
)
÷÷U V
*
÷÷W X
(
÷÷Y Z
py
÷÷Z \
-
÷÷] ^
sy
÷÷_ a
)
÷÷a b
)
÷÷b c
;
÷÷c d
double
◊◊ 
t
◊◊ 
=
◊◊ 
(
◊◊ 
(
◊◊ 
px
◊◊ 
-
◊◊ 
sx
◊◊  
)
◊◊  !
*
◊◊" #
dx
◊◊$ &
+
◊◊' (
(
◊◊) *
py
◊◊* ,
-
◊◊- .
sy
◊◊/ 1
)
◊◊1 2
*
◊◊3 4
dy
◊◊5 7
)
◊◊7 8
/
◊◊9 :
lengthSquared
◊◊; H
;
◊◊H I
t
ÿÿ 
=
ÿÿ 
Math
ÿÿ 
.
ÿÿ 
Max
ÿÿ 
(
ÿÿ 
$num
ÿÿ 
,
ÿÿ 
Math
ÿÿ  
.
ÿÿ  !
Min
ÿÿ! $
(
ÿÿ$ %
$num
ÿÿ% &
,
ÿÿ& '
t
ÿÿ( )
)
ÿÿ) *
)
ÿÿ* +
;
ÿÿ+ ,
double
ŸŸ 
projX
ŸŸ 
=
ŸŸ 
sx
ŸŸ 
+
ŸŸ 
t
ŸŸ  !
*
ŸŸ" #
dx
ŸŸ$ &
;
ŸŸ& '
double
⁄⁄ 
projY
⁄⁄ 
=
⁄⁄ 
sy
⁄⁄ 
+
⁄⁄ 
t
⁄⁄  !
*
⁄⁄" #
dy
⁄⁄$ &
;
⁄⁄& '
return
€€ 
Math
€€ 
.
€€ 
Sqrt
€€ 
(
€€ 
(
€€ 
px
€€  
-
€€! "
projX
€€# (
)
€€( )
*
€€* +
(
€€, -
px
€€- /
-
€€0 1
projX
€€2 7
)
€€7 8
+
€€9 :
(
€€; <
py
€€< >
-
€€? @
projY
€€A F
)
€€F G
*
€€H I
(
€€J K
py
€€K M
-
€€N O
projY
€€P U
)
€€U V
)
€€V W
;
€€W X
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 
Canvas_MouseUp
ﬁﬁ #
(
ﬁﬁ# $
object
ﬁﬁ$ *
sender
ﬁﬁ+ 1
,
ﬁﬁ1 2"
MouseButtonEventArgs
ﬁﬁ3 G
e
ﬁﬁH I
)
ﬁﬁI J
{
ﬁﬁK L
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
	isDrawing
ﬂﬂ 
)
ﬂﬂ 
return
ﬂﬂ "
;
ﬂﬂ" #
	isDrawing
‡‡ 
=
‡‡ 
false
‡‡ 
;
‡‡ 
Point
·· 
mousePosition
·· 
=
··  !
e
··" #
.
··# $
GetPosition
··$ /
(
··/ 0
drawingCanvas
··0 =
)
··= >
;
··> ?
Node
‚‚ 
endNode
‚‚ 
=
‚‚ 
FindNodeNearPoint
‚‚ ,
(
‚‚, -
mousePosition
‚‚- :
)
‚‚: ;
;
‚‚; <
if
‰‰ 
(
‰‰ 
endNode
‰‰ 
==
‰‰ 
null
‰‰ 
||
‰‰  "
!
‰‰# $
IsPair
‰‰$ *
(
‰‰* +
	startNode
‰‰+ 4
,
‰‰4 5
endNode
‰‰6 =
)
‰‰= >
)
‰‰> ?
{
‰‰@ A
drawingCanvas
ÂÂ 
.
ÂÂ 
Children
ÂÂ &
.
ÂÂ& '
Remove
ÂÂ' -
(
ÂÂ- .
currentLine
ÂÂ. 9
)
ÂÂ9 :
;
ÂÂ: ;
DialogManager
ÊÊ 
.
ÊÊ #
ShowErrorMessageAlert
ÊÊ 3
(
ÊÊ3 4
$str
ÊÊ4 h
)
ÊÊh i
;
ÊÊi j
return
ÁÁ 
;
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ  
currentTracePoints
ÍÍ "
.
ÍÍ" #
Count
ÍÍ# (
>
ÍÍ) *
$num
ÍÍ+ ,
)
ÍÍ, -
{
ÍÍ. /
	allTraces
ÎÎ 
.
ÎÎ 
Add
ÎÎ 
(
ÎÎ 
currentLine
ÎÎ )
)
ÎÎ) *
;
ÎÎ* +
	SendTrace
ÏÏ 
(
ÏÏ  
currentTracePoints
ÏÏ ,
)
ÏÏ, -
;
ÏÏ- .
Task
ÌÌ 
.
ÌÌ 
Run
ÌÌ 
(
ÌÌ 
(
ÌÌ 
)
ÌÌ 
=>
ÌÌ  
matchManagerClient
ÌÌ 1
.
ÌÌ1 2
EndTurnAsync
ÌÌ2 >
(
ÌÌ> ?
	matchCode
ÌÌ? H
,
ÌÌH I"
UserProfileSingleton
ÌÌJ ^
.
ÌÌ^ _
UserName
ÌÌ_ g
)
ÌÌg h
)
ÌÌh i
;
ÌÌi j
if
ÔÔ 
(
ÔÔ "
AreAllNodesConnected
ÔÔ (
(
ÔÔ( )
)
ÔÔ) *
)
ÔÔ* +
{
ÔÔ, - 
matchManagerClient
 &
.
& '
EndMatch
' /
(
/ 0
	matchCode
0 9
)
9 :
;
: ;
}
ÒÒ 
}
ÚÚ 
else
ÚÚ 
{
ÚÚ 
drawingCanvas
ÛÛ 
.
ÛÛ 
Children
ÛÛ &
.
ÛÛ& '
Remove
ÛÛ' -
(
ÛÛ- .
currentLine
ÛÛ. 9
)
ÛÛ9 :
;
ÛÛ: ;
}
ÙÙ 
}
ıı 	
public
˜˜ 
void
˜˜ 
NotifyMatchEnded
˜˜ $
(
˜˜$ %
)
˜˜% &
{
˜˜' (
LoggerManager
¯¯ 
logger
¯¯  
=
¯¯! "
new
¯¯# &
LoggerManager
¯¯' 4
(
¯¯4 5
this
¯¯5 9
.
¯¯9 :
GetType
¯¯: A
(
¯¯A B
)
¯¯B C
)
¯¯C D
;
¯¯D E
Application
˙˙ 
.
˙˙ 
Current
˙˙ 
.
˙˙  

Dispatcher
˙˙  *
.
˙˙* +
Invoke
˙˙+ 1
(
˙˙1 2
async
˙˙2 7
(
˙˙8 9
)
˙˙9 :
=>
˙˙; =
{
˙˙> ?
try
˚˚ 
{
˚˚ 
	labelTurn
¸¸ 
.
¸¸ 

Visibility
¸¸ (
=
¸¸) *

Visibility
¸¸+ 5
.
¸¸5 6
	Collapsed
¸¸6 ?
;
¸¸? @
timer
˝˝ 
.
˝˝ 
Stop
˝˝ 
(
˝˝ 
)
˝˝  
;
˝˝  !
var
˛˛ 
result
˛˛ 
=
˛˛  
await
˛˛! &
Task
˛˛' +
.
˛˛+ ,
Run
˛˛, /
(
˛˛/ 0
(
˛˛0 1
)
˛˛1 2
=>
˛˛3 5 
matchManagerClient
˛˛6 H
.
˛˛H I
GetGameResult
˛˛I V
(
˛˛V W
	matchCode
˛˛W `
,
˛˛` a"
UserProfileSingleton
˛˛b v
.
˛˛v w
UserName
˛˛w 
)˛˛ Ä
)˛˛Ä Å
;˛˛Å Ç
if
ˇˇ 
(
ˇˇ 
result
ˇˇ 
!=
ˇˇ !
null
ˇˇ" &
)
ˇˇ& '
{
ˇˇ( )
string
ÄÄ 
message
ÄÄ &
=
ÄÄ' (
result
ÄÄ) /
.
ÄÄ/ 0
IsWinner
ÄÄ0 8
?
ÅÅ 
$str
ÅÅ >
:
ÇÇ 
result
ÇÇ $
.
ÇÇ$ %
IsDraw
ÇÇ% +
?
ÉÉ  !
$str
ÉÉ" 1
:
ÑÑ  !
$str
ÑÑ" Q
;
ÑÑQ R
labelMatchResult
ÖÖ (
.
ÖÖ( )
Content
ÖÖ) 0
=
ÖÖ1 2
message
ÖÖ3 :
;
ÖÖ: ;

labelScore
ÜÜ "
.
ÜÜ" #
Content
ÜÜ# *
=
ÜÜ+ ,
result
ÜÜ- 3
.
ÜÜ3 4
Score
ÜÜ4 9
;
ÜÜ9 :
}
áá 
else
áá 
{
áá 
DialogManager
àà %
.
àà% &#
ShowErrorMessageAlert
àà& ;
(
àà; <
$str
àà< n
)
ààn o
;
àào p
}
ââ 
}
ää 
catch
ää 
(
ää '
EndpointNotFoundException
ää 2'
endpointNotFoundException
ää3 L
)
ääL M
{
ääN O
logger
ãã 
.
ãã 
LogError
ãã #
(
ãã# $'
endpointNotFoundException
ãã$ =
)
ãã= >
;
ãã> ?
DialogManager
åå !
.
åå! "#
ShowErrorMessageAlert
åå" 7
(
åå7 8

Properties
åå8 B
.
ååB C
	Resources
ååC L
.
ååL M%
dialogEndPointException
ååM d
)
ååd e
;
ååe f
}
çç 
catch
çç 
(
çç 
TimeoutException
çç )
timeoutException
çç* :
)
çç: ;
{
çç< =
logger
éé 
.
éé 
LogError
éé #
(
éé# $
timeoutException
éé$ 4
)
éé4 5
;
éé5 6
DialogManager
èè !
.
èè! "#
ShowErrorMessageAlert
èè" 7
(
èè7 8

Properties
èè8 B
.
èèB C
	Resources
èèC L
.
èèL M$
dialogTimeOutException
èèM c
)
èèc d
;
èèd e
}
êê 
catch
êê 
(
êê $
CommunicationException
êê /$
communicationException
êê0 F
)
êêF G
{
êêH I
logger
ëë 
.
ëë 
LogError
ëë #
(
ëë# $$
communicationException
ëë$ :
)
ëë: ;
;
ëë; <
DialogManager
íí !
.
íí! "#
ShowErrorMessageAlert
íí" 7
(
íí7 8

Properties
íí8 B
.
ííB C
	Resources
ííC L
.
ííL M)
dialogComunicationException
ííM h
)
ííh i
;
ííi j
}
îî 
finally
îî 
{
îî 
ExitUseSinglenton
ïï %
(
ïï% &
)
ïï& '
;
ïï' (
}
ññ 
}
óó 
)
óó 
;
óó 
}
òò 	
private
öö 
bool
öö "
AreAllNodesConnected
öö )
(
öö) *
)
öö* +
{
öö, -
foreach
õõ 
(
õõ 
var
õõ 
pair
õõ 
in
õõ  
	nodePairs
õõ! *
)
õõ* +
{
õõ, -
bool
úú 
isConnected
úú  
=
úú! "
	allTraces
úú# ,
.
úú, -
Any
úú- 0
(
úú0 1
trace
úú1 6
=>
úú7 9
trace
ùù 
.
ùù 
Points
ùù  
.
ùù  !
Any
ùù! $
(
ùù$ %
point
ùù% *
=>
ùù+ -
FindNodeNearPoint
ùù. ?
(
ùù? @
point
ùù@ E
)
ùùE F
is
ùùG I
Node
ùùJ N
start
ùùO T
&&
ùùU W
start
ùùX ]
.
ùù] ^
Id
ùù^ `
==
ùùa c
pair
ùùd h
.
ùùh i
Key
ùùi l
)
ùùl m
&&
ùùn p
trace
ûû 
.
ûû 
Points
ûû  
.
ûû  !
Any
ûû! $
(
ûû$ %
point
ûû% *
=>
ûû+ -
FindNodeNearPoint
ûû. ?
(
ûû? @
point
ûû@ E
)
ûûE F
is
ûûG I
Node
ûûJ N
end
ûûO R
&&
ûûS U
end
ûûV Y
.
ûûY Z
Id
ûûZ \
==
ûû] _
pair
ûû` d
.
ûûd e
Value
ûûe j
)
ûûj k
)
üü 
;
üü 
if
†† 
(
†† 
!
†† 
isConnected
††  
)
††  !
{
††" #
return
°° 
false
°°  
;
°°  !
}
¢¢ 
}
££ 
return
§§ 
true
§§ 
;
§§ 
}
•• 	
private
ßß 
bool
ßß 
IsPair
ßß 
(
ßß 
Node
ßß  
start
ßß! &
,
ßß& '
Node
ßß( ,
end
ßß- 0
)
ßß0 1
{
ßß2 3
return
®® 
	nodePairs
®® 
.
®® 
ContainsKey
®® (
(
®®( )
start
®®) .
.
®®. /
Id
®®/ 1
)
®®1 2
&&
®®3 5
	nodePairs
®®6 ?
[
®®? @
start
®®@ E
.
®®E F
Id
®®F H
]
®®H I
==
®®J L
end
®®M P
.
®®P Q
Id
®®Q S
;
®®S T
}
©© 	
private
´´ 
Node
´´ 
FindNodeNearPoint
´´ &
(
´´& '
Point
´´' ,
point
´´- 2
)
´´2 3
{
´´4 5
const
¨¨ 
double
¨¨ 
detectionRadius
¨¨ (
=
¨¨) *
$num
¨¨+ -
;
¨¨- .
return
≠≠ 
nodes
≠≠ 
.
≠≠ 
FirstOrDefault
≠≠ '
(
≠≠' (
node
≠≠( ,
=>
≠≠- /
Math
ÆÆ 
.
ÆÆ 
Sqrt
ÆÆ 
(
ÆÆ 
Math
ÆÆ 
.
ÆÆ 
Pow
ÆÆ "
(
ÆÆ" #
node
ÆÆ# '
.
ÆÆ' (
X
ÆÆ( )
-
ÆÆ* +
point
ÆÆ, 1
.
ÆÆ1 2
X
ÆÆ2 3
,
ÆÆ3 4
$num
ÆÆ5 6
)
ÆÆ6 7
+
ÆÆ8 9
Math
ÆÆ: >
.
ÆÆ> ?
Pow
ÆÆ? B
(
ÆÆB C
node
ÆÆC G
.
ÆÆG H
Y
ÆÆH I
-
ÆÆJ K
point
ÆÆL Q
.
ÆÆQ R
Y
ÆÆR S
,
ÆÆS T
$num
ÆÆU V
)
ÆÆV W
)
ÆÆW X
<=
ÆÆY [
detectionRadius
ÆÆ\ k
)
ÆÆk l
;
ÆÆl m
}
ØØ 	
private
±± 
void
±± 
	SendTrace
±± 
(
±± 
List
±± #
<
±±# $

TracePoint
±±$ .
>
±±. /
points
±±0 6
)
±±6 7
{
±±8 9
if
≤≤ 
(
≤≤ 
!
≤≤ 
isConnected
≤≤ 
)
≤≤ 
return
≤≤ $
;
≤≤$ %
var
≥≥ 
trace
≥≥ 
=
≥≥ 
new
≥≥ "
TripasDeGatoServicio
≥≥ 0
.
≥≥0 1
Trace
≥≥1 6
{
≥≥7 8
Player
¥¥ 
=
¥¥ "
UserProfileSingleton
¥¥ -
.
¥¥- .
UserName
¥¥. 6
,
¥¥6 7
TracePoints
µµ 
=
µµ 
points
µµ $
,
µµ$ %
	Timestamp
∂∂ 
=
∂∂ 
DateTime
∂∂ $
.
∂∂$ %
Now
∂∂% (
,
∂∂( )
Color
∑∑ 
=
∑∑ 
$str
∑∑ 
}
∏∏ 
;
∏∏ 
try
ππ 
{
ππ  
matchManagerClient
∫∫ "
.
∫∫" #
RegisterTrace
∫∫# 0
(
∫∫0 1
	matchCode
∫∫1 :
,
∫∫: ;
trace
∫∫< A
)
∫∫A B
;
∫∫B C
}
ªª 
catch
ªª 
(
ªª $
CommunicationException
ªª +
)
ªª+ ,
{
ªª- .
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4
$str
ºº4 o
)
ººo p
;
ººp q
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ %
)
ΩΩ% &
{
ΩΩ' (
DialogManager
ææ 
.
ææ #
ShowErrorMessageAlert
ææ 3
(
ææ3 4
$str
ææ4 _
)
ææ_ `
;
ææ` a
}
øø 
catch
øø 
(
øø 
	Exception
øø 
ex
øø !
)
øø! "
{
øø# $
DialogManager
¿¿ 
.
¿¿ #
ShowErrorMessageAlert
¿¿ 3
(
¿¿3 4
$"
¿¿4 6
$str
¿¿6 P
{
¿¿P Q
ex
¿¿Q S
.
¿¿S T
Message
¿¿T [
}
¿¿[ \
"
¿¿\ ]
)
¿¿] ^
;
¿¿^ _
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
HandleInfraction
ƒƒ %
(
ƒƒ% &
string
ƒƒ& ,
message
ƒƒ- 4
)
ƒƒ4 5
{
ƒƒ6 7
	isDrawing
≈≈ 
=
≈≈ 
false
≈≈ 
;
≈≈ 
drawingCanvas
∆∆ 
.
∆∆ 
Children
∆∆ "
.
∆∆" #
Remove
∆∆# )
(
∆∆) *
currentLine
∆∆* 5
)
∆∆5 6
;
∆∆6 7
DialogManager
«« 
.
«« #
ShowErrorMessageAlert
«« /
(
««/ 0
message
««0 7
)
««7 8
;
««8 9
}
»» 	
public
   
void
   

MatchEnded
   
(
   
string
   %
	matchCode
  & /
)
  / 0
{
  1 2
throw
ÀÀ 
new
ÀÀ %
NotImplementedException
ÀÀ -
(
ÀÀ- .
)
ÀÀ. /
;
ÀÀ/ 0
}
ÃÃ 	
public
ŒŒ 
void
ŒŒ 
TraceReceived
ŒŒ !
(
ŒŒ! "
Trace
ŒŒ" '
trace
ŒŒ( -
)
ŒŒ- .
{
ŒŒ/ 0
var
œœ 
receivedLine
œœ 
=
œœ 
new
œœ "
Polyline
œœ# +
{
œœ, -
Stroke
–– 
=
–– 
Brushes
––  
.
––  !
Red
––! $
,
––$ %
StrokeThickness
—— 
=
——  !
$num
——" #
}
““ 
;
““ 
foreach
”” 
(
”” 
var
”” 
point
”” 
in
”” !
trace
””" '
.
””' (
TracePoints
””( 3
)
””3 4
{
””5 6
receivedLine
‘‘ 
.
‘‘ 
Points
‘‘ #
.
‘‘# $
Add
‘‘$ '
(
‘‘' (
new
‘‘( +
Point
‘‘, 1
(
‘‘1 2
point
‘‘2 7
.
‘‘7 8
X
‘‘8 9
,
‘‘9 :
point
‘‘; @
.
‘‘@ A
Y
‘‘A B
)
‘‘B C
)
‘‘C D
;
‘‘D E
}
’’ 
Application
÷÷ 
.
÷÷ 
Current
÷÷ 
.
÷÷  

Dispatcher
÷÷  *
.
÷÷* +
Invoke
÷÷+ 1
(
÷÷1 2
(
÷÷2 3
)
÷÷3 4
=>
÷÷5 7
{
÷÷8 9
drawingCanvas
◊◊ 
.
◊◊ 
Children
◊◊ &
.
◊◊& '
Add
◊◊' *
(
◊◊* +
receivedLine
◊◊+ 7
)
◊◊7 8
;
◊◊8 9
}
ÿÿ 
)
ÿÿ 
;
ÿÿ 
	allTraces
ŸŸ 
.
ŸŸ 
Add
ŸŸ 
(
ŸŸ 
receivedLine
ŸŸ &
)
ŸŸ& '
;
ŸŸ' (
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 
	DrawNodes
‹‹ 
(
‹‹ 
)
‹‹  
{
‹‹! "
if
›› 
(
›› 
nodes
›› 
==
›› 
null
›› 
)
›› 
return
›› %
;
››% &
Application
ﬁﬁ 
.
ﬁﬁ 
Current
ﬁﬁ 
.
ﬁﬁ  

Dispatcher
ﬁﬁ  *
.
ﬁﬁ* +
Invoke
ﬁﬁ+ 1
(
ﬁﬁ1 2
(
ﬁﬁ2 3
)
ﬁﬁ3 4
=>
ﬁﬁ5 7
drawingCanvas
ﬁﬁ8 E
.
ﬁﬁE F
Children
ﬁﬁF N
.
ﬁﬁN O
Clear
ﬁﬁO T
(
ﬁﬁT U
)
ﬁﬁU V
)
ﬁﬁV W
;
ﬁﬁW X
foreach
ﬂﬂ 
(
ﬂﬂ 
var
ﬂﬂ 
node
ﬂﬂ 
in
ﬂﬂ  
nodes
ﬂﬂ! &
)
ﬂﬂ& '
{
ﬂﬂ( )
var
‡‡ 
ellipse
‡‡ 
=
‡‡ 
new
‡‡ !
Ellipse
‡‡" )
{
‡‡* +
Width
·· 
=
·· 
$num
·· 
,
·· 
Height
‚‚ 
=
‚‚ 
$num
‚‚ 
,
‚‚  
Fill
„„ 
=
„„ 
new
„„ 
SolidColorBrush
„„ .
(
„„. /
(
„„/ 0
Color
„„0 5
)
„„5 6
ColorConverter
„„6 D
.
„„D E
ConvertFromString
„„E V
(
„„V W
node
„„W [
.
„„[ \
Color
„„\ a
)
„„a b
)
„„b c
,
„„c d
Stroke
‰‰ 
=
‰‰ 
Brushes
‰‰ $
.
‰‰$ %
Black
‰‰% *
,
‰‰* +
StrokeThickness
ÂÂ #
=
ÂÂ$ %
$num
ÂÂ& '
}
ÊÊ 
;
ÊÊ 
Canvas
ÁÁ 
.
ÁÁ 
SetLeft
ÁÁ 
(
ÁÁ 
ellipse
ÁÁ &
,
ÁÁ& '
node
ÁÁ( ,
.
ÁÁ, -
X
ÁÁ- .
-
ÁÁ/ 0
ellipse
ÁÁ1 8
.
ÁÁ8 9
Width
ÁÁ9 >
/
ÁÁ? @
$num
ÁÁA B
)
ÁÁB C
;
ÁÁC D
Canvas
ËË 
.
ËË 
SetTop
ËË 
(
ËË 
ellipse
ËË %
,
ËË% &
node
ËË' +
.
ËË+ ,
Y
ËË, -
-
ËË. /
ellipse
ËË0 7
.
ËË7 8
Height
ËË8 >
/
ËË? @
$num
ËËA B
)
ËËB C
;
ËËC D
Application
ÈÈ 
.
ÈÈ 
Current
ÈÈ #
.
ÈÈ# $

Dispatcher
ÈÈ$ .
.
ÈÈ. /
Invoke
ÈÈ/ 5
(
ÈÈ5 6
(
ÈÈ6 7
)
ÈÈ7 8
=>
ÈÈ9 ;
drawingCanvas
ÈÈ< I
.
ÈÈI J
Children
ÈÈJ R
.
ÈÈR S
Add
ÈÈS V
(
ÈÈV W
ellipse
ÈÈW ^
)
ÈÈ^ _
)
ÈÈ_ `
;
ÈÈ` a
}
ÍÍ 
}
ÎÎ 	
private
ÔÔ 
async
ÔÔ 
void
ÔÔ 
BtnBack_Click
ÔÔ (
(
ÔÔ( )
object
ÔÔ) /
sender
ÔÔ0 6
,
ÔÔ6 7
RoutedEventArgs
ÔÔ8 G
e
ÔÔH I
)
ÔÔI J
{
ÔÔK L
LoggerManager
 
logger
  
=
! "
new
# &
LoggerManager
' 4
(
4 5
this
5 9
.
9 :
GetType
: A
(
A B
)
B C
)
C D
;
D E
try
ÒÒ 
{
ÒÒ 
ExitUseSinglenton
ÛÛ !
(
ÛÛ! "
)
ÛÛ" #
;
ÛÛ# $
}
ÙÙ 
catch
ÙÙ 
(
ÙÙ '
EndpointNotFoundException
ÙÙ .'
endpointNotFoundException
ÙÙ/ H
)
ÙÙH I
{
ÙÙJ K
logger
ıı 
.
ıı 
LogError
ıı 
(
ıı  '
endpointNotFoundException
ıı  9
)
ıı9 :
;
ıı: ;
DialogManager
ˆˆ 
.
ˆˆ #
ShowErrorMessageAlert
ˆˆ 3
(
ˆˆ3 4

Properties
ˆˆ4 >
.
ˆˆ> ?
	Resources
ˆˆ? H
.
ˆˆH I%
dialogEndPointException
ˆˆI `
)
ˆˆ` a
;
ˆˆa b
ExitUseSinglenton
˜˜ !
(
˜˜! "
)
˜˜" #
;
˜˜# $
}
¯¯ 
catch
¯¯ 
(
¯¯ 
TimeoutException
¯¯ %
timeoutException
¯¯& 6
)
¯¯6 7
{
¯¯8 9
logger
˘˘ 
.
˘˘ 
LogError
˘˘ 
(
˘˘  
timeoutException
˘˘  0
)
˘˘0 1
;
˘˘1 2
DialogManager
˙˙ 
.
˙˙ #
ShowErrorMessageAlert
˙˙ 3
(
˙˙3 4

Properties
˙˙4 >
.
˙˙> ?
	Resources
˙˙? H
.
˙˙H I$
dialogTimeOutException
˙˙I _
)
˙˙_ `
;
˙˙` a
ExitUseSinglenton
˚˚ !
(
˚˚! "
)
˚˚" #
;
˚˚# $
}
¸¸ 
catch
¸¸ 
(
¸¸ $
CommunicationException
¸¸ +$
communicationException
¸¸, B
)
¸¸B C
{
¸¸D E
logger
˝˝ 
.
˝˝ 
LogError
˝˝ 
(
˝˝  $
communicationException
˝˝  6
)
˝˝6 7
;
˝˝7 8
DialogManager
˛˛ 
.
˛˛ #
ShowErrorMessageAlert
˛˛ 3
(
˛˛3 4

Properties
˛˛4 >
.
˛˛> ?
	Resources
˛˛? H
.
˛˛H I)
dialogComunicationException
˛˛I d
)
˛˛d e
;
˛˛e f
ExitUseSinglenton
ˇˇ !
(
ˇˇ! "
)
ˇˇ" #
;
ˇˇ# $
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
ExitUseSinglenton
ÉÉ &
(
ÉÉ& '
)
ÉÉ' (
{
ÉÉ) *
if
ÑÑ 
(
ÑÑ "
UserProfileSingleton
ÑÑ $
.
ÑÑ$ %
	IdProfile
ÑÑ% .
<
ÑÑ/ 0
$num
ÑÑ1 7
)
ÑÑ7 8
{
ÑÑ9 :
GoToMenuView
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
else
ÜÜ 
{
ÜÜ 
GoToLoginView
áá 
(
áá 
)
áá 
;
áá  
}
àà 
}
ââ 	
private
ää 
void
ää 
GoToMenuView
ää !
(
ää! "
)
ää" #
{
ää$ %
MenuView
ãã 
menuView
ãã 
=
ãã 
new
ãã  #
MenuView
ãã$ ,
(
ãã, -
)
ãã- .
;
ãã. /
if
åå 
(
åå 
this
åå 
.
åå 
NavigationService
åå &
!=
åå' )
null
åå* .
)
åå. /
{
åå0 1
this
çç 
.
çç 
NavigationService
çç &
.
çç& '
Navigate
çç' /
(
çç/ 0
menuView
çç0 8
)
çç8 9
;
çç9 :
}
éé 
else
éé 
{
éé 
DialogManager
èè 
.
èè #
ShowErrorMessageAlert
èè 3
(
èè3 4

Properties
èè4 >
.
èè> ?
	Resources
èè? H
.
èèH I#
dialogNavigationError
èèI ^
)
èè^ _
;
èè_ `
}
êê 
}
ëë 	
private
ìì 
void
ìì 
GoToLoginView
ìì "
(
ìì" #
)
ìì# $
{
ìì% &
	LoginView
îî 
	loginView
îî 
=
îî  !
new
îî" %
	LoginView
îî& /
(
îî/ 0
)
îî0 1
;
îî1 2
if
ïï 
(
ïï 
this
ïï 
.
ïï 
NavigationService
ïï &
!=
ïï' )
null
ïï* .
)
ïï. /
{
ïï0 1
this
ññ 
.
ññ 
NavigationService
ññ &
.
ññ& '
Navigate
ññ' /
(
ññ/ 0
	loginView
ññ0 9
)
ññ9 :
;
ññ: ;
}
óó 
else
óó 
{
óó 
DialogManager
òò 
.
òò #
ShowErrorMessageAlert
òò 3
(
òò3 4

Properties
òò4 >
.
òò> ?
	Resources
òò? H
.
òòH I#
dialogNavigationError
òòI ^
)
òò^ _
;
òò_ `
}
ôô 
}
öö 	
}
õõ 
}úú ¶V
4C:\TripasDeGatoCliente\Views\CreateLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
CreateLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
CreateLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! " 
InitializeFormValues  
(  !
)! "
;" #
lobbyBrowser   
=   
new   
LobbyBrowserClient   1
(  1 2
)  2 3
;  3 4
}!! 	
private## 
void##  
InitializeFormValues## )
(##) *
)##* +
{##, -
cboxNode%% 
.%% 
ItemsSource%%  
=%%! "
new%%# &
List%%' +
<%%+ ,
int%%, /
>%%/ 0
{%%1 2
$num%%3 4
,%%4 5
$num%%6 8
,%%8 9
$num%%: <
,%%< =
$num%%> @
,%%@ A
$num%%B D
,%%D E
$num%%F H
,%%H I
$num%%J L
}%%M N
;%%N O
cboxNode&& 
.&& 
SelectedIndex&& "
=&&# $
$num&&% &
;&&& '
cboxMap(( 
.(( 
ItemsSource(( 
=((  !
new((" %
List((& *
<((* +
String((+ 1
>((1 2
{((3 4

Properties)) 
.)) 
	Resources)) $
.))$ %
mapOptionCat))% 1
,))1 2

Properties** 
.** 
	Resources** $
.**$ %
mapOptionDog**% 1
,**1 2

Properties++ 
.++ 
	Resources++ $
.++$ %
mapOptionBear++% 2
},, 
;,, 
cboxMap.. 
... 
SelectedIndex.. !
=.." #
$num..$ %
;..% &
cboxTime00 
.00 
ItemsSource00  
=00! "
new00# &
List00' +
<00+ ,
string00, 2
>002 3
{004 5
$str006 @
,00@ A
$str00B L
,00L M
$str00N Y
}00Z [
;00[ \
cboxTime11 
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
{44R S
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
if88 
(88 
string88 
.88 
IsNullOrWhiteSpace88 )
(88) *
txtNameLobby88* 6
.886 7
Text887 ;
)88; <
)88< =
{88> ?
DialogManager99 
.99 #
ShowWarningMessageAlert99 5
(995 6

Properties996 @
.99@ A
	Resources99A J
.99J K$
dialogEnterGameNameError99K c
)99c d
;99d e
return:: 
;:: 
};; 
if== 
(== 
cboxNode== 
.== 
SelectedItem== %
====& (
null==) -
||==. 0
cboxTime==1 9
.==9 :
SelectedItem==: F
====G I
null==J N
||==O Q
cboxMap==R Y
.==Y Z
SelectedItem==Z f
====g i
null==j n
)==n o
{==p q
DialogManager>> 
.>> #
ShowWarningMessageAlert>> 5
(>>5 6

Properties>>6 @
.>>@ A
	Resources>>A J
.>>J K)
dialogSelectNodesMapTimeError>>K h
)>>h i
;>>i j
return?? 
;?? 
}@@ 
stringBB 
gameNameBB 
=BB 
txtNameLobbyBB *
.BB* +
TextBB+ /
.BB/ 0
TrimBB0 4
(BB4 5
)BB5 6
;BB6 7
intCC 
	nodeCountCC 
=CC 
(CC 
intCC  
)CC  !
cboxNodeCC! )
.CC) *
SelectedItemCC* 6
;CC6 7
TimeSpanDD 
durationDD 
=DD 
TimeSpanDD  (
.DD( )
ZeroDD) -
;DD- .
switchFF 
(FF 
cboxTimeFF 
.FF 
SelectedItemFF )
.FF) *
ToStringFF* 2
(FF2 3
)FF3 4
)FF4 5
{FF6 7
caseGG 
$strGG 
:GG  
durationHH 
=HH 
TimeSpanHH '
.HH' (
FromMinutesHH( 3
(HH3 4
$numHH4 5
)HH5 6
;HH6 7
breakII 
;II 
caseJJ 
$strJJ 
:JJ  
durationKK 
=KK 
TimeSpanKK '
.KK' (
FromMinutesKK( 3
(KK3 4
$numKK4 5
)KK5 6
;KK6 7
breakLL 
;LL 
caseMM 
$strMM  
:MM  !
durationNN 
=NN 
TimeSpanNN '
.NN' (
FromMinutesNN( 3
(NN3 4
$numNN4 6
)NN6 7
;NN7 8
breakOO 
;OO 
defaultPP 
:PP 
DialogManagerQQ !
.QQ! "#
ShowWarningMessageAlertQQ" 9
(QQ9 :

PropertiesQQ: D
.QQD E
	ResourcesQQE N
.QQN O%
dialogInvalidTimeSelectedQQO h
)QQh i
;QQi j
returnRR 
;RR 
}SS 
tryUU 
{UU 
varVV 
ownerVV 
=VV 
newVV 
ProfileVV  '
{VV( )
	IdProfileWW 
=WW  
UserProfileSingletonWW  4
.WW4 5
	IdProfileWW5 >
,WW> ?
UsernameXX 
=XX  
UserProfileSingletonXX 3
.XX3 4
UserNameXX4 <
}YY 
;YY 
string\\ 
	lobbyCode\\  
=\\! "
await\\# (
lobbyBrowser\\) 5
.\\5 6
CreateLobbyAsync\\6 F
(\\F G
gameName\\G O
,\\O P
	nodeCount\\Q Z
,\\Z [
owner\\\ a
,\\a b
duration\\c k
)\\k l
;\\l m
if^^ 
(^^ 
!^^ 
string^^ 
.^^ 
IsNullOrEmpty^^ )
(^^) *
	lobbyCode^^* 3
)^^3 4
)^^4 5
{^^6 7
GoToLobbyView`` !
(``! "
	lobbyCode``" +
)``+ ,
;``, -
}aa 
elseaa 
{aa 
DialogManagerbb !
.bb! "#
ShowWarningMessageAlertbb" 9
(bb9 :

Propertiesbb: D
.bbD E
	ResourcesbbE N
.bbN O$
dialogLobbyCreationErrorbbO g
)bbg h
;bbh i
}cc 
}dd 
catchdd 
(dd %
EndpointNotFoundExceptiondd .%
endpointNotFoundExceptiondd/ H
)ddH I
{ddJ K
loggeree 
.ee 
LogErroree 
(ee  %
endpointNotFoundExceptionee  9
)ee9 :
;ee: ;
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I#
dialogEndPointExceptionffI `
)ff` a
;ffa b
}gg 
catchgg 
(gg 
TimeoutExceptiongg %
timeoutExceptiongg& 6
)gg6 7
{gg8 9
loggerhh 
.hh 
LogErrorhh 
(hh  
timeoutExceptionhh  0
)hh0 1
;hh1 2
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I"
dialogTimeOutExceptioniiI _
)ii_ `
;ii` a
}jj 
catchjj 
(jj "
CommunicationExceptionjj +"
communicationExceptionjj, B
)jjB C
{jjD E
loggerkk 
.kk 
LogErrorkk 
(kk  "
communicationExceptionkk  6
)kk6 7
;kk7 8
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I'
dialogComunicationExceptionllI d
)lld e
;lle f
}mm 
}nn 	
privateoo 
voidoo 
BtnBack_Clickoo "
(oo" #
objectoo# )
senderoo* 0
,oo0 1
	EventArgsoo2 ;
eoo< =
)oo= >
{oo? @
GoToMenuViewpp 
(pp 
)pp 
;pp 
}qq 	
privatess 
voidss 
GoToLobbyViewss "
(ss" #
stringss# )
	lobbyCodess* 3
)ss3 4
{ss5 6
	LobbyViewtt 
	lobbyViewtt 
=tt  !
newtt" %
	LobbyViewtt& /
(tt/ 0
	lobbyCodett0 9
)tt9 :
;tt: ;
ifuu 
(uu 
thisuu 
.uu 
NavigationServiceuu &
!=uu' )
nulluu* .
)uu. /
{uu0 1
thisvv 
.vv 
NavigationServicevv &
.vv& '
Navigatevv' /
(vv/ 0
	lobbyViewvv0 9
)vv9 :
;vv: ;
}ww 
elseww 
{ww 
DialogManagerxx 
.xx !
ShowErrorMessageAlertxx 3
(xx3 4

Propertiesxx4 >
.xx> ?
	Resourcesxx? H
.xxH I!
dialogNavigationErrorxxI ^
)xx^ _
;xx_ `
}yy 
}zz 	
private{{ 
void{{ 
GoToMenuView{{ !
({{! "
){{" #
{{{$ %
MenuView|| 
menuView|| 
=|| 
new||  #
MenuView||$ ,
(||, -
)||- .
;||. /
if}} 
(}} 
this}} 
.}} 
NavigationService}} &
!=}}' )
null}}* .
)}}. /
{}}0 1
this~~ 
.~~ 
NavigationService~~ &
.~~& '
Navigate~~' /
(~~/ 0
menuView~~0 8
)~~8 9
;~~9 :
} 
else 
{ 
DialogManager
ÄÄ 
.
ÄÄ #
ShowErrorMessageAlert
ÄÄ 3
(
ÄÄ3 4

Properties
ÄÄ4 >
.
ÄÄ> ?
	Resources
ÄÄ? H
.
ÄÄH I#
dialogNavigationError
ÄÄI ^
)
ÄÄ^ _
;
ÄÄ_ `
}
ÅÅ 
}
ÇÇ 	
}
ÑÑ 
}ÖÖ ü>
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
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
CodeGameMatch 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
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
try 
{ 
string 
	codeMatch  
=! "
txtCodeLobby# /
./ 0
Text0 4
;4 5 
UserProfileSingleton $
.$ %
Instance% -
.- .
CreateGuestInstance. A
(A B
)B C
;C D
} 
catch 
( %
EndpointNotFoundException .
endpointException/ @
)@ A
{B C
logger 
. 
LogError 
(  
endpointException  1
)1 2
;2 3
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
}%% 
}&& 	
private(( 
void(( 
BtnBack_Click(( "
(((" #
object((# )
sender((* 0
,((0 1
RoutedEventArgs((2 A
e((B C
)((C D
{((E F
	LoginView)) 
	loginView)) 
=))  !
new))" %
	LoginView))& /
())/ 0
)))0 1
;))1 2
this** 
.** 
NavigationService** "
.**" #
Navigate**# +
(**+ ,
	loginView**, 5
)**5 6
;**6 7
}++ 	
public-- 
async-- 
void-- 
BtnLogin_Click-- (
(--( )
object--) /
sender--0 6
,--6 7
RoutedEventArgs--8 G
e--H I
)--I J
{--K L
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
;..D E 
GenerateGuestProfile//  
(//  !
)//! "
;//" #
try11 
{11 
if22 
(22 
!22 
string22 
.22 
IsNullOrEmpty22 )
(22) *
txtCodeLobby22* 6
.226 7
Text227 ;
)22; <
)22< =
{22> ?
string33 
	lobbyCode33 $
=33% &
txtCodeLobby33' 3
.333 4
Text334 8
;338 9
var44 
guestProfile44 $
=44% &
new44' *
Profile44+ 2
{443 4
	IdProfile55 !
=55" # 
UserProfileSingleton55$ 8
.558 9
	IdProfile559 B
,55B C
Username66  
=66! " 
UserProfileSingleton66# 7
.667 8
UserName668 @
,66@ A
PicturePath77 #
=77$ % 
UserProfileSingleton77& :
.77: ;
PicPath77; B
,77B C
Score88 
=88  
UserProfileSingleton88  4
.884 5
Score885 :
}99 
;99 
bool;; 
joined;; 
=;;  !
await;;" '
lobbyBrowser;;( 4
.;;4 5
JoinLobbyAsync;;5 C
(;;C D
	lobbyCode;;D M
,;;M N
guestProfile;;O [
);;[ \
;;;\ ]
if<< 
(<< 
joined<< 
)<< 
{<<  !
	LobbyView== !
	lobbyView==" +
===, -
new==. 1
	LobbyView==2 ;
(==; <
	lobbyCode==< E
)==E F
;==F G
this>> 
.>> 
NavigationService>> .
.>>. /
Navigate>>/ 7
(>>7 8
	lobbyView>>8 A
)>>A B
;>>B C
}?? 
else?? 
{?? 
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
(FF %
EndpointNotFoundExceptionFF .%
endpointNotFoundExceptionFF/ H
)FFH I
{FFJ K
loggerGG 
.GG 
LogErrorGG 
(GG  %
endpointNotFoundExceptionGG  9
)GG9 :
;GG: ;
DialogManagerHH 
.HH !
ShowErrorMessageAlertHH 3
(HH3 4

PropertiesHH4 >
.HH> ?
	ResourcesHH? H
.HHH I#
dialogEndPointExceptionHHI `
)HH` a
;HHa b
}II 
catchII 
(II 
TimeoutExceptionII %
timeoutExceptionII& 6
)II6 7
{II8 9
loggerJJ 
.JJ 
LogErrorJJ 
(JJ  
timeoutExceptionJJ  0
)JJ0 1
;JJ1 2
DialogManagerKK 
.KK !
ShowErrorMessageAlertKK 3
(KK3 4

PropertiesKK4 >
.KK> ?
	ResourcesKK? H
.KKH I"
dialogTimeOutExceptionKKI _
)KK_ `
;KK` a
}LL 
catchLL 
(LL "
CommunicationExceptionLL +"
communicationExceptionLL, B
)LLB C
{LLD E
loggerMM 
.MM 
LogErrorMM 
(MM  "
communicationExceptionMM  6
)MM6 7
;MM7 8
DialogManagerNN 
.NN !
ShowErrorMessageAlertNN 3
(NN3 4

PropertiesNN4 >
.NN> ?
	ResourcesNN? H
.NNH I'
dialogComunicationExceptionNNI d
)NNd e
;NNe f
}OO 
}PP 	
}QQ 
}RR øJ
)C:\TripasDeGatoCliente\Logic\Validador.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{ 
public 

static 
class 
	Validador !
{ 
private		 
static		 
Regex		 
passwordRegex		 *
=		+ ,
new		- 0
Regex		1 6
(		6 7
$str		7 k
,		k l
RegexOptions		m y
.		y z
None		z ~
,		~ 
TimeSpan
		Ä à
.
		à â
FromMilliseconds
		â ô
(
		ô ö
$num
		ö û
)
		û ü
)
		ü †
;
		† °
private

 
static

 
Regex

 
usernameRegex

 *
=

+ ,
new

- 0
Regex

1 6
(

6 7
$str

7 M
,

M N
RegexOptions

O [
.

[ \
None

\ `
,

` a
TimeSpan

b j
.

j k
FromMilliseconds

k {
(

{ |
$num	

| Ä
)


Ä Å
)


Å Ç
;


Ç É
private 
static 
Regex 

emailRegex '
=( )
new* -
Regex. 3
(3 4
$str4 Q
,Q R
RegexOptionsS _
._ `
None` d
,d e
TimeSpanf n
.n o
FromMillisecondso 
(	 Ä
$num
Ä Ñ
)
Ñ Ö
)
Ö Ü
;
Ü á
private 
static 
Regex 
codeLobbyMatchRegex 0
=1 2
new3 6
Regex7 <
(< =
$str= P
,P Q
RegexOptionsR ^
.^ _
None_ c
,c d
TimeSpane m
.m n
FromMillisecondsn ~
(~ 
$num	 É
)
É Ñ
)
Ñ Ö
;
Ö Ü
private 
static 
Regex 

stateRegex '
=( )
new* -
Regex. 3
(3 4
$str4 L
,L M
RegexOptionsN Z
.Z [
None[ _
,_ `
TimeSpana i
.i j
FromMillisecondsj z
(z {
$num{ 
)	 Ä
)
Ä Å
;
Å Ç
public 
static 
bool  
validateRegexPattern /
(/ 0
string0 6
data7 ;
,; <
Regex= B
regexC H
)H I
{ 	
bool 
isValid 
= 
false  
;  !
try 
{ 
isValid 
= 
regex 
.  
IsMatch  '
(' (
data( ,
), -
;- .
} 
catch 
( &
RegexMatchTimeoutException -
)- .
{ 
isValid 
= 
false 
;  
} 
return 
isValid 
; 
} 	
public 
static 
bool 
ValidatePassword +
(+ ,
string, 2
password3 ;
); <
{ 	
string 
cleanedPassword "
=# $
Regex% *
.* +
Replace+ 2
(2 3
password3 ;
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
cleanedPassword  . =
)  = >
&&  ? A 
validateRegexPattern  B V
(  V W
cleanedPassword  W f
,  f g
passwordRegex  h u
)  u v
;  v w
}!! 	
public## 
static## 
bool## 
ValidateUsername## +
(##+ ,
string##, 2
username##3 ;
)##; <
{$$ 	
string%% 
cleanedUsername%% "
=%%# $
Regex%%% *
.%%* +
Replace%%+ 2
(%%2 3
username%%3 ;
.%%; <
Trim%%< @
(%%@ A
)%%A B
,%%B C
$str%%D J
,%%J K
$str%%L N
)%%N O
;%%O P
return&& 
!&& 
string&& 
.&& 
IsNullOrWhiteSpace&& -
(&&- .
cleanedUsername&&. =
)&&= >
&&&&? A 
validateRegexPattern&&B V
(&&V W
cleanedUsername&&W f
,&&f g
usernameRegex&&h u
)&&u v
;&&v w
}'' 	
public)) 
static)) 
bool)) 
ValidateEmail)) (
())( )
string))) /
email))0 5
)))5 6
{))7 8
string** 
cleanedEmail** 
=**  !
email**" '
?**' (
.**( )
Trim**) -
(**- .
)**. /
;**/ 0
if,, 
(,, 
!,, 
string,, 
.,, 
IsNullOrWhiteSpace,, *
(,,* +
cleanedEmail,,+ 7
),,7 8
&&,,9 ;
cleanedEmail,,< H
.,,H I
Length,,I O
<=,,P R
$num,,S V
),,V W
{,,X Y
if-- 
(-- 

emailRegex-- 
.-- 
IsMatch-- &
(--& '
cleanedEmail--' 3
)--3 4
)--4 5
{--6 7
try.. 
{.. 
var// 
mailAddress// '
=//( )
new//* -
MailAddress//. 9
(//9 :
cleanedEmail//: F
)//F G
;//G H
return00 
true00 #
;00# $
}11 
catch11 
(11 
FormatException11 ,
)11, -
{11. /
return22 
false22 $
;22$ %
}33 
}44 
}55 
return66 
false66 
;66 
}77 	
public:: 
static:: 
bool:: 
validateCode:: '
(::' (
string::( .
	codeLobby::/ 8
)::8 9
{;; 	
string<< 
codeCleaned<< 
=<<  
Regex<<! &
.<<& '
Replace<<' .
(<<. /
	codeLobby<</ 8
.<<8 9
Trim<<9 =
(<<= >
)<<> ?
,<<? @
$str<<A G
,<<G H
$str<<I K
)<<K L
;<<L M
return== 
!== 
string== 
.== 
IsNullOrWhiteSpace== -
(==- .
codeCleaned==. 9
)==9 :
&&==; = 
validateRegexPattern==> R
(==R S
codeCleaned==S ^
,==^ _
codeLobbyMatchRegex==` s
)==s t
;==t u
}>> 	
public@@ 
static@@ 
bool@@ 
validateState@@ (
(@@( )
string@@) /
state@@0 5
)@@5 6
{AA 	
stringBB 
stateCleanedBB 
=BB  !
RegexBB" '
.BB' (
ReplaceBB( /
(BB/ 0
stateBB0 5
.BB5 6
TrimBB6 :
(BB: ;
)BB; <
,BB< =
$strBB> D
,BBD E
$strBBF H
)BBH I
;BBI J
returnCC 
!CC 
stringCC 
.CC 
IsNullOrWhiteSpaceCC -
(CC- .
stateCleanedCC. :
)CC: ;
&&CC< > 
validateRegexPatternCC? S
(CCS T
stateCleanedCCT `
,CC` a

stateRegexCCb l
)CCl m
;CCm n
}DD 	
publicFF 
staticFF 
voidFF 
RegexPatternFF '
(FF' (
stringFF( .
inputFF/ 4
)FF4 5
{GG 	
boolHH 
isEmailValidHH 
=HH  
validateRegexPatternHH  4
(HH4 5
inputHH5 :
,HH: ;

emailRegexHH< F
)HHF G
;HHG H
boolII 
isNumberII 
=II  
validateRegexPatternII 0
(II0 1
inputII1 6
,II6 7
newII8 ;
RegexII< A
(IIA B
$strIIB J
,IIJ K
RegexOptionsIIL X
.IIX Y
NoneIIY ]
,II] ^
TimeSpanII_ g
.IIg h
FromMillisecondsIIh x
(IIx y
$numIIy |
)II| }
)II} ~
)II~ 
;	II Ä
varJJ 
	isLetterAJJ 
=JJ 
RegexJJ !
.JJ! "
IsMatchJJ" )
(JJ) *
inputJJ* /
,JJ/ 0
$strJJ1 8
,JJ8 9
RegexOptionsJJ: F
.JJF G
NoneJJG K
)JJK L
;JJL M
	AppDomainKK 
.KK 
CurrentDomainKK #
.KK# $
SetDataKK$ +
(KK+ ,
$strKK, I
,KKI J
TimeSpanKKK S
.KKS T
FromMillisecondsKKT d
(KKd e
$numKKe h
)KKh i
)KKi j
;KKj k
ConsoleLL 
.LL 
	WriteLineLL 
(LL 
$"LL  
$strLL  .
{LL. /
isEmailValidLL/ ;
}LL; <
$strLL< O
{LLO P
isNumberLLP X
}LLX Y
$strLLY o
{LLo p
	isLetterALLp y
}LLy z
"LLz {
)LL{ |
;LL| }
}MM 	
}NN 
}OO ı"
4C:\TripasDeGatoCliente\Logic\UserProfileSnglenton.cs
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
singlentonInstance5 G
=H I
newJ M 
UserProfileSingletonN b
(b c
)c d
;d e
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
public 
static 
string 
UserName %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public		 
static		 
int		 
Score		 
{		  !
get		" %
;		% &
private		' .
set		/ 2
;		2 3
}		4 5
public

 
static

 
string

 
PicPath

 $
{

% &
get

' *
;

* +
private

, 3
set

4 7
;

7 8
}

9 :
public 
static 
int 
IdUser  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
static 
string 
Password %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
static 
string 
Mail !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
static  
UserProfileSingleton *
Instance+ 3
=>4 6
singlentonInstance7 I
;I J
public 
void 
CreateInstance "
(" #
Profile# *
profile+ 2
)2 3
{4 5
	IdProfile 
= 
profile 
.  
	IdProfile  )
;) *
UserName 
= 
profile 
. 
Username '
;' (
Score 
= 
profile 
. 
Score !
;! "
PicPath 
= 
profile 
. 
PicturePath )
;) *
} 	
public 
void 
CreateGuestInstance '
(' (
)( )
{* +
GuestProfile 
guestProfile %
=& '
new( +
GuestProfile, 8
(8 9
)9 :
;: ;
	IdProfile 
= 
guestProfile $
.$ %
GuestId% ,
;, -
UserName 
= 
guestProfile #
.# $
Username$ ,
;, -
Score 
= 
$num 
; 
PicPath 
= 
guestProfile "
." #
Avatar# )
;) *
} 	
public   
void   
ResetInstance   !
(  ! "
)  " #
{  $ %
	IdProfile!! 
=!! 
$num!! 
;!! 
UserName"" 
="" 
null"" 
;"" 
Score## 
=## 
$num## 
;## 
PicPath$$ 
=$$ 
null$$ 
;$$ 
IdUser%% 
=%% 
$num%% 
;%% 
Password&& 
=&& 
null&& 
;&& 
Mail'' 
='' 
null'' 
;'' 
}(( 	
public** 
static** 
void** 
UpdateFotoRuta** )
(**) *
string*** 0
	nuevaRuta**1 :
)**: ;
{**< =
PicPath++ 
=++ 
	nuevaRuta++ 
;++  
},, 	
public.. 
static.. 
void.. 
UpdateNombre.. '
(..' (
string..( .
nuevoNombre../ :
)..: ;
{..< =
UserName// 
=// 
nuevoNombre// "
;//" #
}00 	
}11 
}22 Õ
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
{ 
public 

class 
LoggerManager 
{		 
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
public 
LoggerManager 
( 
Type !
type" &
)& '
{ 	
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
public 
ILog 
	GetLogger 
( 
Type "
type# '
)' (
{ 	
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
ex7 9
)9 :
{ 	
Logger 
. 
Error 
( 
message  
,  !
ex" $
)$ %
;% &
} 	
public 
void 
LogError 
( 
	Exception &
ex' )
)) *
{   	
Logger!! 
.!! 
Error!! 
(!! 
ex!! 
)!! 
;!! 
}"" 	
public$$ 
void$$ 
LogFatal$$ 
($$ 
	Exception$$ &
ex$$' )
)$$) *
{%% 	
Logger&& 
.&& 
Fatal&& 
(&& 
ex&& 
)&& 
;&& 
}'' 	
public)) 
void)) 
LogWarn)) 
()) 
	Exception)) %
ex))& (
)))( )
{** 	
Logger++ 
.++ 
Warn++ 
(++ 
ex++ 
)++ 
;++ 
},, 	
public.. 
void.. 
LogDebug.. 
(.. 
	Exception.. &
ex..' )
)..) *
{// 	
Logger00 
.00 
Debug00 
(00 
ex00 
)00 
;00 
}11 	
}22 
}33 Œ
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
public 
static 
string 
	CodeMatch &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
public

 
static

 !
GuestProfileSingleton

 +
Instance

, 4
=>

5 7
SingletonInstance

8 I
;

I J
public 
void 
CreateInstance "
(" #
string# )
code* .
). /
{0 1
PerfilInvitado 
=  
new! $
GuestProfile% 1
(1 2
)2 3
;3 4
PerfilInvitado 
. 
Username '
=( )
GuestProfile* 6
.6 7!
RandomChooserUsername7 L
(L M
)M N
;N O
PerfilInvitado 
. 
Avatar %
=& '
GuestProfile( 4
.4 5#
RandomChooserAvatarIcon5 L
(L M
)M N
;N O
	CodeMatch 
= 
code  
;  !
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
public 
string 
Avatar 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
GuestId		 
{		 
get		  
;		  !
private		" )
set		* -
;		- .
}		/ 0
public 
GuestProfile 
( 
) 
{ 
this 
. 
Username 
= !
RandomChooserUsername 1
(1 2
)2 3
;3 4
this 
. 
Avatar 
= #
RandomChooserAvatarIcon 1
(1 2
)2 3
;3 4
this 
. 
GuestId 
= 
GenerateRandomId +
(+ ,
), -
;- .
} 	
public 
static 
int 
GenerateRandomId *
(* +
)+ ,
{- .
return 
random 
. 
Next 
( 
$num %
,% &
$num' -
)- .
;. /
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{7 8
string 
[ 
] 
defaultAvatars #
=$ %
{& '
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
} 
; 
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultAvatars* 8
.8 9
Length9 ?
)? @
;@ A
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
} 	
public 
static 
string !
RandomChooserUsername 2
(2 3
)3 4
{5 6
int   
randomIndexNumber   !
=  " #
random  $ *
.  * +
Next  + /
(  / 0
$num  0 1
,  1 2
$num  3 :
)  : ;
;  ; <
return!! 
$str!! 
+!! 
randomIndexNumber!! .
;!!. /
}"" 	
}## 
}$$ √
&C:\TripasDeGatoCliente\Logic\Hasher.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{ 
internal 
class 
Hasher 
{ 
public		 
static		 
string		 
HashToSHA256		 )
(		) *
string		* 0

textToHash		1 ;
)		; <
{

 	
StringBuilder 
stringHashBuilder +
=, -
new. 1
StringBuilder2 ?
(? @
)@ A
;A B
byte 
[ 
] 

inputBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7

textToHash7 A
)A B
;B C
using 
( 
SHA256 
sha256  
=! "
SHA256# )
.) *
Create* 0
(0 1
)1 2
)2 3
{ 
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes #
=$ %
$num& '
;' (

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{ 
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
} 
} £
-C:\TripasDeGatoCliente\Logic\DialogManager.cs
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
{ 
public 
static 
void !
ShowErrorMessageAlert 0
(0 1
string1 7
errorMessage8 D
)D E
{ 	

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
MessageBoxImage	z â
.
â ä
Error
ä è
)
è ê
;
ê ë
} 	
public 
static 
void #
ShowWarningMessageAlert 2
(2 3
string3 9
warningMessage: H
)H I
{ 	

MessageBox 
. 
Show 
( 
warningMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleWarningU g
,g h
MessageBoxButtoni y
.y z
OKz |
,| }
MessageBoxImage	~ ç
.
ç é
Warning
é ï
)
ï ñ
;
ñ ó
} 	
public 
static 
void #
ShowSuccessMessageAlert 2
(2 3
string3 9
successMessage: H
)H I
{ 	

MessageBox 
. 
Show 
( 
successMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U
dialogTitleSuccesU f
,f g
MessageBoxButtonh x
.x y
OKy {
,{ |
MessageBoxImage	} å
.
å ç
Information
ç ò
)
ò ô
;
ô ö
} 	
public 
static 
void (
ShowConfirmationMessageAlert 7
(7 8
string8 >
confirmMessage? M
)M N
{ 	

MessageBox 
. 
Show 
( 
confirmMessage *
,* +
TripasDeGatoCliente, ?
.? @

Properties@ J
.J K
	ResourcesK T
.T U#
dialogTitleConfirmationU l
,l m
MessageBoxButtonn ~
.~ 
OK	 Å
,
Å Ç
MessageBoxImage
É í
.
í ì
Question
ì õ
)
õ ú
;
ú ù
} 	
}  
0C:\TripasDeGatoCliente\Logic\ConstantsManager.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{ 
internal		 
class		 
ConstantsManager		 #
{

 
public 
static 
class 
	Constants %
{ 	
public 
const 
int 
ERROR_OPERATION ,
=- .
-/ 0
$num0 1
;1 2
public 
const 
int 
SUCCES_OPERATION -
=. /
$num0 1
;1 2
public 
const 
int 
NO_DATA_MATCHES ,
=- .
-/ 0
$num0 1
;1 2
public 
const 
int 
DATA_MATCHES )
=* +
$num, -
;- .
public 
const 
int 
INITIAL_SCORE *
=+ ,
$num- .
;. /
public 
const 
string  
DEFAULT_IMAGE_PLAYER  4
=5 6
$str7 :
;: ;
public 
const 
string 
DEFAULT_IMAGE_GUEST  3
=4 5
$str6 9
;9 :
public 
const 
int 
HOW_MANY_SCORES ,
=- .
$num/ 1
;1 2
} 	
} 
}   