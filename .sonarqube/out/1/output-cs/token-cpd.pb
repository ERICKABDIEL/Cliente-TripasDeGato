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
]77) *�9
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
}II �
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
} �[
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
}ii �
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
��9 :
if
�� 
(
��  
ValidateFriendName
�� "
(
��" #

friendName
��# -
)
��- .
)
��. /
{
��0 1
await
�� 
	AddFriend
�� 
(
��  

friendName
��  *
)
��* +
;
��+ ,
}
�� 
txtFriendName
�� 
.
�� 
Clear
�� 
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
��& +
userManager
��, 7
.
��7 8
GetProfileIdAsync
��8 I
(
��I J

friendName
��J T
)
��T U
;
��U V
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
�� 
(
�� '
EndpointNotFoundException
�� -'
endpointNotFoundException
��. G
)
��G H
{
��I J
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
int
�� 
userProfileId
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	IdProfile
��5 >
;
��> ?
int
�� 
result
�� 
=
�� 
await
�� 
friendsManager
�� -
.
��- .
AddFriendAsync
��. <
(
��< =
userProfileId
��= J
,
��J K
friendProfileId
��L [
)
��[ \
;
��\ ]
if
�� 
(
�� 
result
�� 
==
�� 
	Constants
�� #
.
��# $
SUCCES_OPERATION
��$ 4
)
��4 5
{
��6 7
DialogManager
�� 
.
�� %
ShowSuccessMessageAlert
�� 5
(
��5 6
string
��6 <
.
��< =
Format
��= C
(
��C D

Properties
��D N
.
��N O
	Resources
��O X
.
��X Y)
dialogAddFriendSuccessfully
��Y t
,
��t u

friendName��v �
)��� �
)��� �
;��� �
await
�� "
LoadFriendsListAsync
�� *
(
��* +
)
��+ ,
;
��, -
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
��H I%
dialogErrorAddingFriend
��I `
)
��` a
;
��a b
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
friendsManager
��( 6
.
��6 7
GetFriendsAsync
��7 F
(
��F G
userProfileId
��G T
)
��T U
;
��U V
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
��! &
statusManager
��' 4
.
��4 5"
GetPlayerStatusAsync
��5 I
(
��I J
friend
��J P
.
��P Q
	IdProfile
��Q Z
)
��Z [
;
��[ \
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
��* /
userManager
��0 ;
.
��; <
GetProfileIdAsync
��< M
(
��M N

friendName
��N X
)
��X Y
;
��Y Z
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
friendsManager
��+ 9
.
��9 :
DeleteFriendAsync
��: K
(
��K L
userProfileId
��L Y
,
��Y Z
friendProfileId
��[ j
)
��j k
;
��k l
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
�� 
async
�� 
void
��  
BtnStartGame_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
��P Q!
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
}�� ��
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
�� 
}
�� 	
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
��: ;
	userEmail
�� 
=
�� 
email
��  %
;
��% &
enterEmailGrid
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
recoveryGrid
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
enterEmailGrid
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
��F G
	userEmail
��G P
,
��P Q
enteredCode
��R ]
)
��] ^
;
��^ _
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
recoveryGrid
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
recoveryPasswordGrid
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
��$ %
	userEmail
��% .
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
�� 
{
�� 
var
�� $
emailVerificationProxy
�� *
=
��+ ,
new
��- 0"
TripasDeGatoServicio
��1 E
.
��E F+
PasswordRecoveryManagerClient
��F c
(
��c d
)
��d e
;
��e f
int
�� 
result
�� 
=
�� $
emailVerificationProxy
�� 3
.
��3 4
SendRecoveryCode
��4 D
(
��D E
	userEmail
��E N
)
��N O
;
��O P
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
��N O&
dialogRecoveryCodeResent
��O g
)
��g h
;
��h i
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
��L M.
 dialogErrorResendingRecoveryCode
��M m
)
��m n
;
��n o
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
recoveryGrid
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
��< =
	userEmail
��= F
,
��F G
Hasher
��H N
.
��N O
HashToSHA256
��O [
(
��[ \
newPassword
��\ g
)
��g h
)
��h i
;
��i j
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
recoveryPasswordGrid
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
recoveryPasswordGrid
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
�� 
.
�� 
Password
��  
=
��! " 
txtPasswordVisible
��# 5
.
��5 6
Text
��6 :
;
��: ; 
txtPasswordVisible
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
txtPassword
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
Visible
��0 7
;
��7 8
}
�� 	
private
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
)
��2 3
{
��4 5
btnTogglePassword
�� 
.
�� 

Visibility
�� (
=
��) *
txtPassword
��+ 6
.
��6 7
Password
��7 ?
.
��? @
Length
��@ F
>
��G H
$num
��I J
?
��K L

Visibility
��M W
.
��W X
Visible
��X _
:
��` a

Visibility
��b l
.
��l m
	Collapsed
��m v
;
��v w
}
�� 	
private
�� 
void
�� &
BtnRecoverPassword_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
��P Q
enterEmailGrid
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;
}
�� 	
}
�� 
}�� �a
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
$str	 �
;
� �
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
}yy �
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
txtValidationCode4	rro �
.
rr� �
Text
rr� �
}
rr� �
{
rr� � 
txtValidationCode5
rr� �
.
rr� �
Text
rr� �
}
rr� �
{
rr� � 
txtValidationCode6
rr� �
.
rr� �
Text
rr� �
}
rr� �
"
rr� �
;
rr� �
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
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
)
��2 3
{
��4 5
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
txtPassword
��& 1
.
��1 2
Password
��2 :
)
��: ;
||
��< >
!
��? @
string
��@ F
.
��F G
IsNullOrEmpty
��G T
(
��T U 
txtPasswordVisible
��U g
.
��g h
Text
��h l
)
��l m
)
��m n
{
��o p
btnTogglePassword
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
�� 
btnTogglePassword
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
	IdProfile	ZZx �
)
ZZ� �
)
ZZ� �
;
ZZ� �
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
��, -
Lobby
�� 
lobby
�� 
=
�� 
await
�� 
lobbyBrowser
��  ,
.
��, -!
GetLobbyByCodeAsync
��- @
(
��@ A
	lobbyCode
��A J
)
��J K
;
��K L
if
�� 
(
�� 

IsUserHost
�� 
(
�� 
lobby
��  
)
��  !
)
��! "
{
��# $
	lbPlayer1
�� 
.
�� 
Content
�� !
=
��" #
lobby
��$ )
.
��) *
Players
��* 1
.
��1 2
ContainsKey
��2 =
(
��= >
$str
��> I
)
��I J
?
��K L
lobby
��M R
.
��R S
Players
��S Z
[
��Z [
$str
��[ f
]
��f g
.
��g h
Username
��h p
:
��q r
$str��s �
;��� �
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
lobby
��$ )
.
��) *
Players
��* 1
.
��1 2
ContainsKey
��2 =
(
��= >
$str
��> I
)
��I J
?
��K L
lobby
��M R
.
��R S
Players
��S Z
[
��Z [
$str
��[ f
]
��f g
.
��g h
Username
��h p
:
��q r
$str��s �
;��� �
imgProfile1
�� 
.
�� 
Source
�� "
=
��# $
new
��% (
BitmapImage
��) 4
(
��4 5
new
��5 8
Uri
��9 <
(
��< ="
UserProfileSingleton
��= Q
.
��Q R
PicPath
��R Y
,
��Y Z
UriKind
��[ b
.
��b c 
RelativeOrAbsolute
��c u
)
��u v
)
��v w
;
��w x
}
�� 
else
�� 
{
�� 
	lbPlayer1
�� 
.
�� 
Content
�� !
=
��" #
lobby
��$ )
.
��) *
Players
��* 1
.
��1 2
ContainsKey
��2 =
(
��= >
$str
��> I
)
��I J
?
��K L
lobby
��M R
.
��R S
Players
��S Z
[
��Z [
$str
��[ f
]
��f g
.
��g h
Username
��h p
:
��q r
$str��s �
;��� �
	lbPlayer2
�� 
.
�� 
Content
�� !
=
��" #
lobby
��$ )
.
��) *
Players
��* 1
.
��1 2
ContainsKey
��2 =
(
��= >
$str
��> I
)
��I J
?
��K L
lobby
��M R
.
��R S
Players
��S Z
[
��Z [
$str
��[ f
]
��f g
.
��g h
Username
��h p
:
��q r
$str��s �
;��� �
imgProfile1
�� 
.
�� 
Source
�� "
=
��# $
new
��% (
BitmapImage
��) 4
(
��4 5
new
��5 8
Uri
��9 <
(
��< ="
UserProfileSingleton
��= Q
.
��Q R
PicPath
��R Y
,
��Y Z
UriKind
��[ b
.
��b c 
RelativeOrAbsolute
��c u
)
��u v
)
��v w
;
��w x
string
�� 
ruta
�� 
=
�� 
userManager
�� )
.
��) *

GetPicPath
��* 4
(
��4 5
lobby
��5 :
.
��: ;
Players
��; B
[
��B C
$str
��C N
]
��N O
.
��O P
Username
��P X
)
��X Y
;
��Y Z
imgProfile2
�� 
.
�� 
Source
�� "
=
��# $
new
��% (
BitmapImage
��) 4
(
��4 5
new
��5 8
Uri
��9 <
(
��< =
ruta
��= A
,
��A B
UriKind
��C J
.
��J K 
RelativeOrAbsolute
��K ]
)
��] ^
)
��^ _
;
��_ `
btnKickPlayer
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
��? @
btnInvitedFriend
��  
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
��B C
btnStartGame
�� 
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
��> ?
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
�� 
lobbyManager
�� "
.
��" #
LeaveLobbyAsync
��# 2
(
��2 3
	lobbyCode
��3 <
,
��< ="
UserProfileSingleton
��> R
.
��R S
	IdProfile
��S \
)
��\ ]
;
��] ^
await
�� 
chatManager
�� !
.
��! "
LeaveChatAsync
��" 0
(
��0 1"
UserProfileSingleton
��1 E
.
��E F
UserName
��F N
,
��N O
	lobbyCode
��P Y
)
��Y Z
;
��Z [
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
��) *
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
�� 
isConnected
�� 
)
�� 
{
�� 
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
��& (
lobbyManager
��  
.
��  !

LeaveLobby
��! +
(
��+ ,
	lobbyCode
��, 5
,
��5 6"
UserProfileSingleton
��7 K
.
��K L
	IdProfile
��L U
)
��U V
)
��V W
;
��W X
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
��[ \
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
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
�� 
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
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
��2 3
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
)
��8 9
{
��: ;

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
��- .
string
�� 
ruta
�� 
=
�� 
userManager
�� )
.
��) *

GetPicPath
��* 4
(
��4 5
	guestName
��5 >
)
��> ?
;
��? @
imgProfile2
�� 
.
�� 
Source
�� "
=
��# $
new
��% (
BitmapImage
��) 4
(
��4 5
new
��5 8
Uri
��9 <
(
��< =
ruta
��= A
,
��A B
UriKind
��C J
.
��J K 
RelativeOrAbsolute
��K ]
)
��] ^
)
��^ _
;
��_ `
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
��J K
lobbyManager
�� 
.
�� 

StartMatch
�� #
(
��# $
	lobbyCode
��$ -
)
��- .
;
��. /
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
��- .
	lobbyCode
��. 7
)
��7 8
;
��8 9
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
friendsManager
��( 6
.
��6 7
GetFriendsAsync
��7 F
(
��F G
userProfileId
��G T
)
��T U
;
��U V
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
��! &
statusManager
��' 4
.
��4 5"
GetPlayerStatusAsync
��5 I
(
��I J
friend
��J P
.
��P Q
	IdProfile
��Q Z
)
��Z [
;
��[ \
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
��T U 
areElementsVisible
�� 
=
��  
!
��! " 
areElementsVisible
��" 4
;
��4 5
if
�� 
(
��  
areElementsVisible
�� "
)
��" #
{
��$ %
invitedFriendGrid
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
��A B

lstFriends
�� 
.
�� 
	IsEnabled
�� $
=
��% &
true
��' +
;
��+ ,

btnInvited
�� 
.
�� 
	IsEnabled
�� $
=
��% &
true
��' +
;
��+ ,
await
�� "
LoadFriendsListAsync
�� *
(
��* +
)
��+ ,
;
��, -
btnInvitedFriend
��  
.
��  !

Background
��! +
=
��, -
new
��. 1
SolidColorBrush
��2 A
(
��A B
Colors
��B H
.
��H I
Green
��I N
)
��N O
;
��O P
}
�� 
else
�� 
{
�� 
invitedFriendGrid
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
��C D

lstFriends
�� 
.
�� 
	IsEnabled
�� $
=
��% &
false
��' ,
;
��, -

btnInvited
�� 
.
�� 
	IsEnabled
�� $
=
��% &
false
��' ,
;
��, -
btnInvitedFriend
��  
.
��  !

Background
��! +
=
��, -
new
��. 1
SolidColorBrush
��2 A
(
��A B
Color
��B G
.
��G H
FromArgb
��H P
(
��P Q
$num
��Q T
,
��T U
$num
��V Y
,
��Y Z
$num
��[ ^
,
��^ _
$num
��` c
)
��c d
)
��d e
;
��e f
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
��N O
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
��! &$
emailInvitationManager
��' =
.
��= >!
SendInvitationAsync
��> Q
(
��Q R

friendName
��R \
,
��\ ]
	lobbyCode
��^ g
)
��g h
;
��h i
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
�� 	
}
�� 
}�� �!
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
}00 ��
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
�� 
.
�� 
Points
�� 
.
�� 
Add
�� "
(
��" #
mousePosition
��# 0
)
��0 1
;
��1 2
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
�� 
timer
�� 
!=
�� 
null
�� 
)
�� 
{
��  
timer
�� 
.
�� 
Stop
�� 
(
�� 
)
�� 
;
�� 
timer
�� 
.
�� 
Tick
�� 
-=
�� 

Timer_Tick
�� (
;
��( )
}
�� 
remainingTime
�� 
=
�� 
	totalTime
�� %
;
��% &
timeProgressBar
�� 
.
�� 
Value
�� !
=
��" #
$num
��$ '
;
��' (
timeProgressBar
�� 
.
�� 

Foreground
�� &
=
��' (
Brushes
��) 0
.
��0 1
Green
��1 6
;
��6 7
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
��* +
isPlayerTurn
�� 
=
�� 
true
�� 
;
��  
	labelTurn
�� 
.
�� 
Content
�� 
=
�� 
$str
��  /
;
��/ 0
	labelTurn
�� 
.
�� 

Foreground
��  
=
��! "
Brushes
��# *
.
��* +
Green
��+ 0
;
��0 1

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
NotifyNotYouTurn
�� $
(
��$ %
)
��% &
{
��' (
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
�� 
timer
�� 
!=
�� 
null
�� !
)
��! "
{
��# $
timer
�� 
.
�� 
Stop
�� 
(
�� 
)
��  
;
��  !
timer
�� 
.
�� 
Tick
�� 
-=
�� !

Timer_Tick
��" ,
;
��, -
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
��/ 0
isPlayerTurn
�� 
=
�� 
false
�� $
;
��$ %
	labelTurn
�� 
.
�� 
Content
�� !
=
��" #
$str
��$ 8
;
��8 9
	labelTurn
�� 
.
�� 

Foreground
�� $
=
��% &
Brushes
��' .
.
��. /
Red
��/ 2
;
��2 3
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
�� 
	isDrawing
�� 
)
�� 
return
�� "
;
��" #
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
��  !
$str
��! K
)
��K L
;
��L M
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
��3 5
	startNode
��6 ?
)
��? @
{
��A B
if
�� 
(
�� 
!
�� 
IsPair
�� 
(
�� 
	startNode
�� %
,
��% &
currentNode
��' 2
)
��2 3
)
��3 4
{
��5 6
HandleInfraction
�� $
(
��$ %
$str
��% W
)
��W X
;
��X Y
return
�� 
;
�� 
}
�� 
}
��  
currentTracePoints
�� 
.
�� 
Add
�� "
(
��" #
newPoint
��# +
)
��+ ,
;
��, -
currentLine
�� 
.
�� 
Points
�� 
.
�� 
Add
�� "
(
��" #
mousePosition
��# 0
)
��0 1
;
��1 2
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
��" $
	allTraces
��% .
)
��. /
{
��0 1
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
�� 
	isDrawing
�� 
)
�� 
return
�� "
;
��" #
	isDrawing
�� 
=
�� 
false
�� 
;
�� 
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
��* +
	startNode
��+ 4
,
��4 5
endNode
��6 =
)
��= >
)
��> ?
{
��@ A
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
��- .
currentLine
��. 9
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
��3 4
$str
��4 h
)
��h i
;
��i j
return
�� 
;
�� 
}
�� 
if
�� 
(
��  
currentTracePoints
�� "
.
��" #
Count
��# (
>
��) *
$num
��+ ,
)
��, -
{
��. /
	allTraces
�� 
.
�� 
Add
�� 
(
�� 
currentLine
�� )
)
��) *
;
��* +
	SendTrace
�� 
(
��  
currentTracePoints
�� ,
)
��, -
;
��- .
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
��  
matchManagerClient
�� 1
.
��1 2
EndTurnAsync
��2 >
(
��> ?
	matchCode
��? H
,
��H I"
UserProfileSingleton
��J ^
.
��^ _
UserName
��_ g
)
��g h
)
��h i
;
��i j
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
��, - 
matchManagerClient
�� &
.
��& '
EndMatch
��' /
(
��/ 0
	matchCode
��0 9
)
��9 :
;
��: ;
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
��- .
currentLine
��. 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
public
�� 
void
�� 
NotifyMatchEnded
�� $
(
��$ %
)
��% &
{
��' (
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
��D E
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
��1 2
async
��2 7
(
��8 9
)
��9 :
=>
��; =
{
��> ?
try
�� 
{
�� 
	labelTurn
�� 
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
��? @
timer
�� 
.
�� 
Stop
�� 
(
�� 
)
��  
;
��  !
var
�� 
result
�� 
=
��  
await
��! &
Task
��' +
.
��+ ,
Run
��, /
(
��/ 0
(
��0 1
)
��1 2
=>
��3 5 
matchManagerClient
��6 H
.
��H I
GetGameResult
��I V
(
��V W
	matchCode
��W `
,
��` a"
UserProfileSingleton
��b v
.
��v w
UserName
��w 
)�� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
!=
�� !
null
��" &
)
��& '
{
��( )
string
�� 
message
�� &
=
��' (
result
��) /
.
��/ 0
IsWinner
��0 8
?
�� 
$str
�� >
:
�� 
result
�� $
.
��$ %
IsDraw
��% +
?
��  !
$str
��" 1
:
��  !
$str
��" Q
;
��Q R
labelMatchResult
�� (
.
��( )
Content
��) 0
=
��1 2
message
��3 :
;
��: ;

labelScore
�� "
.
��" #
Content
��# *
=
��+ ,
result
��- 3
.
��3 4
Score
��4 9
;
��9 :
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
��; <
$str
��< n
)
��n o
;
��o p
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
�� 
finally
�� 
{
�� 
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
�� 
)
�� 
;
�� 
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
��  
	nodePairs
��! *
)
��* +
{
��, -
bool
�� 
isConnected
��  
=
��! "
	allTraces
��# ,
.
��, -
Any
��- 0
(
��0 1
trace
��1 6
=>
��7 9
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
�� 
	nodePairs
�� 
.
�� 
ContainsKey
�� (
(
��( )
start
��) .
.
��. /
Id
��/ 1
)
��1 2
&&
��3 5
	nodePairs
��6 ?
[
��? @
start
��@ E
.
��E F
Id
��F H
]
��H I
==
��J L
end
��M P
.
��P Q
Id
��Q S
;
��S T
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
��8 9
if
�� 
(
�� 
!
�� 
isConnected
�� 
)
�� 
return
�� $
;
��$ %
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
��  
matchManagerClient
�� "
.
��" #
RegisterTrace
��# 0
(
��0 1
	matchCode
��1 :
,
��: ;
trace
��< A
)
��A B
;
��B C
}
�� 
catch
�� 
(
�� $
CommunicationException
�� +
)
��+ ,
{
��- .
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
$str
��4 o
)
��o p
;
��p q
}
�� 
catch
�� 
(
�� 
TimeoutException
�� %
)
��% &
{
��' (
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
$str
��4 _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� !
)
��! "
{
��# $
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
$"
��4 6
$str
��6 P
{
��P Q
ex
��Q S
.
��S T
Message
��T [
}
��[ \
"
��\ ]
)
��] ^
;
��^ _
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
��6 7
	isDrawing
�� 
=
�� 
false
�� 
;
�� 
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
��) *
currentLine
��* 5
)
��5 6
;
��6 7
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
�� 

MatchEnded
�� 
(
�� 
string
�� %
	matchCode
��& /
)
��/ 0
{
��1 2
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
)
��. /
;
��/ 0
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
�� 
	allTraces
�� 
.
�� 
Add
�� 
(
�� 
receivedLine
�� &
)
��& '
;
��' (
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
�� 
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
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
��e f
ExitUseSinglenton
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
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
��) *
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
�� 	
}
�� 
}�� �V
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
�� 	
}
�� 
}�� �>
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
}RR �J
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
		� �
.
		� �
FromMilliseconds
		� �
(
		� �
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
| �
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
(	 �
$num
� �
)
� �
)
� �
;
� �
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
$num	 �
)
� �
)
� �
;
� �
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
)	 �
)
� �
;
� �
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
;	II �
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
}OO �"
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
}22 �
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
}33 �
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
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
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
}$$ �
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
} �
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
MessageBoxImage	~ �
.
� �
Warning
� �
)
� �
;
� �
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
MessageBoxImage	} �
.
� �
Information
� �
)
� �
;
� �
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
OK	 �
,
� �
MessageBoxImage
� �
.
� �
Question
� �
)
� �
;
� �
} 	
} �
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