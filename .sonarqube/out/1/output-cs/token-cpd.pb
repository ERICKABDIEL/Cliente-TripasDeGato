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
]77) *À
)C:\TripasDeGatoCliente\MainWindow.xaml.cs
	namespace 	
TripasDeGatoCliente
 
{ 
public

 

partial

 
class

 

MainWindow

 #
:

$ %
Window

& ,
{ 
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
this 
. !
WindowStartupLocation &
=' (!
WindowStartupLocation) >
.> ?
CenterScreen? K
;K L
NavigationFrame 
. 
Navigate $
($ %
new% (
Views) .
.. /
	LoginView/ 8
(8 9
)9 :
): ;
;; <
} 	
} 
} á
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
} ç6
4C:\TripasDeGatoCliente\Views\SelectLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
SelectLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
public 
SelectLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! "
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
LoadLobbiesAsync 
( 
) 
; 
} 	
private 
Task 
LoadLobbiesAsync %
(% &
)& '
{( )
try 
{ 
var 
lobbies 
= 
lobbyBrowser *
.* +
GetAvailableLobbies+ >
(> ?
)? @
;@ A
LobbyDataGrid 
. 
ItemsSource )
=* +
lobbies, 3
;3 4
}   
catch   
(   
	Exception   
ex   !
)  ! "
{  # $

MessageBox!! 
.!! 
Show!! 
(!!  
$"!!  "
$str!!" ?
{!!? @
ex!!@ B
.!!B C
Message!!C J
}!!J K
"!!K L
)!!L M
;!!M N
}"" 
return$$ 
Task$$ 
.$$ 
CompletedTask$$ %
;$$% &
}%% 	
private'' 
async'' 
void'' 
BtnJoinGame_Click'' ,
('', -
object''- 3
sender''4 :
,'': ;
RoutedEventArgs''< K
e''L M
)''M N
{''O P
if)) 
()) 
LobbyDataGrid)) 
.)) 
SelectedItem)) *
is))+ -
Lobby)). 3
selectedLobby))4 A
)))A B
{))C D
string** 
	lobbyCode**  
=**! "
selectedLobby**# 0
.**0 1
Code**1 5
;**5 6
Profile++ 
guest++ 
=++ 
new++  #
Profile++$ +
{++, -
	idProfile,, 
=,,  
UserProfileSingleton,,  4
.,,4 5
	IdProfile,,5 >
,,,> ?
userName-- 
=--  
UserProfileSingleton-- 3
.--3 4
UserName--4 <
}.. 
;.. 
try00 
{00 
bool22 
joined22 
=22  !
await22" '
lobbyBrowser22( 4
.224 5
JoinLobbyAsync225 C
(22C D
	lobbyCode22D M
,22M N
guest22O T
)22T U
;22U V
if44 
(44 
joined44 
)44 
{44  !
	LobbyView55 !
	lobbyView55" +
=55, -
new55. 1
	LobbyView552 ;
(55; <
	lobbyCode55< E
)55E F
;55F G
this66 
.66 
NavigationService66 .
.66. /
Navigate66/ 7
(667 8
	lobbyView668 A
)66A B
;66B C
}77 
else77 
{77 

MessageBox88 "
.88" #
Show88# '
(88' (
$str88( u
)88u v
;88v w
}99 
}:: 
catch:: 
(:: 
	Exception:: "
ex::# %
)::% &
{::' (

MessageBox;; 
.;; 
Show;; #
(;;# $
$";;$ &
$str;;& I
{;;I J
ex;;J L
.;;L M
Message;;M T
};;T U
";;U V
);;V W
;;;W X
}<< 
}== 
else== 
{== 

MessageBox>> 
.>> 
Show>> 
(>>  
$str>>  M
)>>M N
;>>N O
}?? 
}@@ 	
privateCC 
voidCC 
BtnBack_ClickCC "
(CC" #
objectCC# )
senderCC* 0
,CC0 1
RoutedEventArgsCC2 A
eCCB C
)CCC D
{CCE F
MenuViewDD 
menuViewDD 
=DD 
newDD  #
MenuViewDD$ ,
(DD, -
)DD- .
;DD. /
ifEE 
(EE 
thisEE 
.EE 
NavigationServiceEE &
!=EE' )
nullEE* .
)EE. /
{EE0 1
thisFF 
.FF 
NavigationServiceFF &
.FF& '
NavigateFF' /
(FF/ 0
menuViewFF0 8
)FF8 9
;FF9 :
}GG 
elseGG 
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  E
)HHE F
;HHF G
}II 
}JJ 	
privateKK 
asyncKK 
voidKK 
BtnSearch_ClickKK *
(KK* +
objectKK+ 1
senderKK2 8
,KK8 9
RoutedEventArgsKK: I
eKKJ K
)KKK L
{KKM N
stringLL 

searchCodeLL 
=LL 
txtCodeLobbyLL  ,
.LL, -
TextLL- 1
.LL1 2
TrimLL2 6
(LL6 7
)LL7 8
;LL8 9
tryNN 
{NN 
varOO 
lobbiesOO 
=OO 
awaitOO #
lobbyBrowserOO$ 0
.OO0 1$
GetAvailableLobbiesAsyncOO1 I
(OOI J
)OOJ K
;OOK L
varRR 
filteredLobbiesRR #
=RR$ %
lobbiesRR& -
.RR- .
WhereRR. 3
(RR3 4
lobbyRR4 9
=>RR: <
lobbyRR= B
.RRB C
CodeRRC G
.RRG H
ContainsRRH P
(RRP Q

searchCodeRRQ [
)RR[ \
)RR\ ]
.RR] ^
ToListRR^ d
(RRd e
)RRe f
;RRf g
ifUU 
(UU 
filteredLobbiesUU #
.UU# $
CountUU$ )
==UU* ,
$numUU- .
)UU. /
{UU0 1

MessageBoxVV 
.VV 
ShowVV #
(VV# $
$strVV$ O
)VVO P
;VVP Q
}WW 
LobbyDataGridZZ 
.ZZ 
ItemsSourceZZ )
=ZZ* +
filteredLobbiesZZ, ;
;ZZ; <
}[[ 
catch[[ 
([[ 
	Exception[[ 
ex[[ !
)[[! "
{[[# $

MessageBox\\ 
.\\ 
Show\\ 
(\\  
$"\\  "
$str\\" ?
{\\? @
ex\\@ B
.\\B C
Message\\C J
}\\J K
"\\K L
)\\L M
;\\M N
}]] 
}^^ 	
}ww 
}xx áÑ
1C:\TripasDeGatoCliente\Views\RegisterView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{ 
public 

partial 
class 
RegisterView %
:& '
Page( ,
{ 
public 
RegisterView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
BtnSignIn_Click $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{G H
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
;D E
string 
email 
= 
txtEmail #
.# $
Text$ (
;( )
string 
username 
= 
txtName %
.% &
Text& *
;* +
string 
password 
= 
txtPassword )
.) *
Password* 2
;2 3
if 
( 
! 
ValidateFields 
(  
email  %
,% &
username' /
,/ 0
password1 9
)9 :
): ;
return< B
;B C
try 
{ 
if 
( 
! #
VerifyEmailAvailability ,
(, -
email- 2
)2 3
)3 4
return5 ;
;; <
if 
( 
! &
VerifyUsernameAvailability /
(/ 0
username0 8
)8 9
)9 :
return; A
;A B 
SendVerificationCode   $
(  $ %
email  % *
)  * +
;  + ,
}!! 
catch!! 
(!! %
EndpointNotFoundException!! .%
endpointNotFoundException!!/ H
)!!H I
{!!J K
logger"" 
."" 
LogError"" 
(""  %
endpointNotFoundException""  9
)""9 :
;"": ;
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
}$$ 
catch$$ 
($$ 
TimeoutException$$ %
timeoutException$$& 6
)$$6 7
{$$8 9
logger%% 
.%% 
LogError%% 
(%%  
timeoutException%%  0
)%%0 1
;%%1 2
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
}'' 
catch'' 
('' "
CommunicationException'' +"
communicationException'', B
)''B C
{''D E
logger(( 
.(( 
LogError(( 
(((  "
communicationException((  6
)((6 7
;((7 8
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
}** 
}++ 	
private,, 
bool,, #
VerifyEmailAvailability,, ,
(,,, -
string,,- 3
email,,4 9
),,9 :
{,,; <
var-- 
	userProxy-- 
=-- 
new--  
TripasDeGatoServicio--  4
.--4 5
UserManagerClient--5 F
(--F G
)--G H
;--H I
int.. 
emailCheckResult..  
=..! "
	userProxy..# ,
..., -
IsEmailRegistered..- >
(..> ?
email..? D
)..D E
;..E F
if00 
(00 
emailCheckResult00  
==00! #
	Constants00$ -
.00- .
DATA_MATCHES00. :
)00: ;
{00< =
DialogManager11 
.11 !
ShowErrorMessageAlert11 3
(113 4

Properties114 >
.11> ?
	Resources11? H
.11H I
dialogEmailInUse11I Y
)11Y Z
;11Z [
HighlightField22 
(22 
txtEmail22 '
)22' (
;22( )
return33 
false33 
;33 
}44 
if66 
(66 
emailCheckResult66  
==66! #
	Constants66$ -
.66- .
ERROR_OPERATION66. =
)66= >
{66? @
DialogManager77 
.77 !
ShowErrorMessageAlert77 3
(773 4

Properties774 >
.77> ?
	Resources77? H
.77H I$
dialogErrorCheckingEmail77I a
)77a b
;77b c
return88 
false88 
;88 
}99 
return;; 
true;; 
;;; 
}<< 	
private>> 
bool>> &
VerifyUsernameAvailability>> /
(>>/ 0
string>>0 6
username>>7 ?
)>>? @
{>>A B
var?? 
	userProxy?? 
=?? 
new??  
TripasDeGatoServicio??  4
.??4 5
UserManagerClient??5 F
(??F G
)??G H
;??H I
int@@ 
usernameCheckResult@@ #
=@@$ %
	userProxy@@& /
.@@/ 0
IsNameRegistered@@0 @
(@@@ A
username@@A I
)@@I J
;@@J K
ifBB 
(BB 
usernameCheckResultBB #
==BB$ &
	ConstantsBB' 0
.BB0 1
DATA_MATCHESBB1 =
)BB= >
{BB? @
DialogManagerCC 
.CC !
ShowErrorMessageAlertCC 3
(CC3 4

PropertiesCC4 >
.CC> ?
	ResourcesCC? H
.CCH I
dialogUserNameInUseCCI \
)CC\ ]
;CC] ^
HighlightFieldDD 
(DD 
txtNameDD &
)DD& '
;DD' (
returnEE 
falseEE 
;EE 
}FF 
ifHH 
(HH 
usernameCheckResultHH #
==HH$ &
	ConstantsHH' 0
.HH0 1
ERROR_OPERATIONHH1 @
)HH@ A
{HHB C
DialogManagerII 
.II !
ShowErrorMessageAlertII 3
(II3 4

PropertiesII4 >
.II> ?
	ResourcesII? H
.IIH I'
dialogErrorCheckingUserNameIII d
)IId e
;IIe f
returnJJ 
falseJJ 
;JJ 
}KK 
returnMM 
trueMM 
;MM 
}NN 	
privatePP 
voidPP  
SendVerificationCodePP )
(PP) *
stringPP* 0
emailPP1 6
)PP6 7
{PP8 9
varQQ "
emailVerificationProxyQQ &
=QQ' (
newQQ) , 
TripasDeGatoServicioQQ- A
.QQA B*
EmailVerificationManagerClientQQB `
(QQ` a
)QQa b
;QQb c
intRR 
resultRR 
=RR "
emailVerificationProxyRR /
.RR/ 0(
SendVerificationCodeRegisterRR0 L
(RRL M
emailRRM R
)RRR S
;RRS T
ifTT 
(TT 
resultTT 
==TT 
	ConstantsTT #
.TT# $
SUCCES_OPERATIONTT$ 4
)TT4 5
{TT6 7
verificationGridUU  
.UU  !

VisibilityUU! +
=UU, -

VisibilityUU. 8
.UU8 9
VisibleUU9 @
;UU@ A
DialogManagerVV 
.VV #
ShowSuccessMessageAlertVV 5
(VV5 6

PropertiesVV6 @
.VV@ A
	ResourcesVVA J
.VVJ K&
dialogVerificationCodeSentVVK e
)VVe f
;VVf g
}WW 
elseWW 
{WW 
DialogManagerXX 
.XX !
ShowErrorMessageAlertXX 3
(XX3 4

PropertiesXX4 >
.XX> ?
	ResourcesXX? H
.XXH I.
"dialogErrorSendingVerificationCodeXXI k
)XXk l
;XXl m
}YY 
}ZZ 	
private\\ 
void\\ 
BtnResendCode_Click\\ (
(\\( )
object\\) /
sender\\0 6
,\\6 7
RoutedEventArgs\\8 G
e\\H I
)\\I J
{\\K L
LoggerManager]] 
logger]]  
=]]! "
new]]# &
LoggerManager]]' 4
(]]4 5
this]]5 9
.]]9 :
GetType]]: A
(]]A B
)]]B C
)]]C D
;]]D E
try^^ 
{^^ 
var__ "
emailVerificationProxy__ *
=__+ ,
new__- 0 
TripasDeGatoServicio__1 E
.__E F*
EmailVerificationManagerClient__F d
(__d e
)__e f
;__f g
int`` 
result`` 
=`` "
emailVerificationProxy`` 3
.``3 4(
SendVerificationCodeRegister``4 P
(``P Q
txtEmail``Q Y
.``Y Z
Text``Z ^
)``^ _
;``_ `
ifbb 
(bb 
resultbb 
==bb 
	Constantsbb '
.bb' (
SUCCES_OPERATIONbb( 8
)bb8 9
{bb: ;
DialogManagercc !
.cc! "#
ShowSuccessMessageAlertcc" 9
(cc9 :

Propertiescc: D
.ccD E
	ResourcesccE N
.ccN O4
(dialogVerificationCodeResentSuccessfullyccO w
)ccw x
;ccx y
}dd 
elsedd 
{dd 
DialogManageree !
.ee! "!
ShowErrorMessageAlertee" 7
(ee7 8

Propertiesee8 B
.eeB C
	ResourceseeC L
.eeL M0
$dialogErrorResendingVerificationCodeeeM q
)eeq r
;eer s
}ff 
}gg 
catchgg 
(gg %
EndpointNotFoundExceptiongg .%
endpointNotFoundExceptiongg/ H
)ggH I
{ggJ K
loggerhh 
.hh 
LogErrorhh 
(hh  %
endpointNotFoundExceptionhh  9
)hh9 :
;hh: ;
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I#
dialogEndPointExceptioniiI `
)ii` a
;iia b
}jj 
catchjj 
(jj 
TimeoutExceptionjj %
timeoutExceptionjj& 6
)jj6 7
{jj8 9
loggerkk 
.kk 
LogErrorkk 
(kk  
timeoutExceptionkk  0
)kk0 1
;kk1 2
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I"
dialogTimeOutExceptionllI _
)ll_ `
;ll` a
}mm 
catchmm 
(mm "
CommunicationExceptionmm +"
communicationExceptionmm, B
)mmB C
{mmD E
loggernn 
.nn 
LogErrornn 
(nn  "
communicationExceptionnn  6
)nn6 7
;nn7 8
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I'
dialogComunicationExceptionooI d
)ood e
;ooe f
}pp 
}qq 	
privatess 
voidss 
BtnValidate_Clickss &
(ss& '
objectss' -
senderss. 4
,ss4 5
RoutedEventArgsss6 E
essF G
)ssG H
{ssI J
LoggerManagertt 
loggertt  
=tt! "
newtt# &
LoggerManagertt' 4
(tt4 5
thistt5 9
.tt9 :
GetTypett: A
(ttA B
)ttB C
)ttC D
;ttD E
stringuu 
enteredCodeuu 
=uu  
$"uu! #
{uu# $
txtValidationCode1uu$ 6
.uu6 7
Textuu7 ;
}uu; <
{uu< =
txtValidationCode2uu= O
.uuO P
TextuuP T
}uuT U
{uuU V
txtValidationCode3uuV h
.uuh i
Textuui m
}uum n
{uun o
txtValidationCode4	uuo Å
.
uuÅ Ç
Text
uuÇ Ü
}
uuÜ á
{
uuá à 
txtValidationCode5
uuà ö
.
uuö õ
Text
uuõ ü
}
uuü †
{
uu† ° 
txtValidationCode6
uu° ≥
.
uu≥ ¥
Text
uu¥ ∏
}
uu∏ π
"
uuπ ∫
;
uu∫ ª
tryww 
{ww 
varxx "
emailVerificationProxyxx *
=xx+ ,
newxx- 0 
TripasDeGatoServicioxx1 E
.xxE F*
EmailVerificationManagerClientxxF d
(xxd e
)xxe f
;xxf g
boolyy 
isCodeValidyy  
=yy! ""
emailVerificationProxyyy# 9
.yy9 :

VerifyCodeyy: D
(yyD E
txtEmailyyE M
.yyM N
TextyyN R
,yyR S
enteredCodeyyT _
)yy_ `
;yy` a
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
var~~ 
newUser~~ 
=~~  !
new~~" % 
TripasDeGatoServicio~~& :
.~~: ;
	LoginUser~~; D
{~~E F
mail 
= 
txtEmail '
.' (
Text( ,
,, -
password
ÄÄ  
=
ÄÄ! "
Hasher
ÄÄ# )
.
ÄÄ) *
HashToSHA256
ÄÄ* 6
(
ÄÄ6 7
txtPassword
ÄÄ7 B
.
ÄÄB C
Password
ÄÄC K
)
ÄÄK L
}
ÅÅ 
;
ÅÅ 
var
ÉÉ 

newProfile
ÉÉ "
=
ÉÉ# $
new
ÉÉ% ("
TripasDeGatoServicio
ÉÉ) =
.
ÉÉ= >
Profile
ÉÉ> E
{
ÉÉF G
userName
ÑÑ  
=
ÑÑ! "
txtName
ÑÑ# *
.
ÑÑ* +
Text
ÑÑ+ /
,
ÑÑ/ 0
score
ÖÖ 
=
ÖÖ 
	Constants
ÖÖ  )
.
ÖÖ) *
INITIAL_SCORE
ÖÖ* 7
,
ÖÖ7 8
picturePath
ÜÜ #
=
ÜÜ$ %
$str
ÜÜ& J
}
áá 
;
áá 
int
ââ 
accountResult
ââ %
=
ââ& '
	userProxy
ââ( 1
.
ââ1 2
CreateAccount
ââ2 ?
(
ââ? @
newUser
ââ@ G
,
ââG H

newProfile
ââI S
)
ââS T
;
ââT U
if
ãã 
(
ãã 
accountResult
ãã %
==
ãã& (
	Constants
ãã) 2
.
ãã2 3
SUCCES_OPERATION
ãã3 C
)
ããC D
{
ããE F
DialogManager
åå %
.
åå% &%
ShowSuccessMessageAlert
åå& =
(
åå= >

Properties
åå> H
.
ååH I
	Resources
ååI R
.
ååR S-
dialogAccountCreatedSuccesfully
ååS r
)
åår s
;
åås t
verificationGrid
çç (
.
çç( )

Visibility
çç) 3
=
çç4 5

Visibility
çç6 @
.
çç@ A
	Collapsed
ççA J
;
ççJ K
GoToLoginView
éé %
(
éé% &
)
éé& '
;
éé' (
}
èè 
else
èè 
{
èè 
DialogManager
êê %
.
êê% &#
ShowErrorMessageAlert
êê& ;
(
êê; <

Properties
êê< F
.
êêF G
	Resources
êêG P
.
êêP Q(
dialogAccountCreatedErrror
êêQ k
)
êêk l
;
êêl m
}
ëë 
}
íí 
else
íí 
{
íí 
DialogManager
ìì !
.
ìì! "#
ShowErrorMessageAlert
ìì" 7
(
ìì7 8

Properties
ìì8 B
.
ììB C
	Resources
ììC L
.
ììL M+
dialogInvalidVerificationCode
ììM j
)
ììj k
;
ììk l
}
îî 
}
ïï 
catch
ïï 
(
ïï '
EndpointNotFoundException
ïï .'
endpointNotFoundException
ïï/ H
)
ïïH I
{
ïïJ K
logger
ññ 
.
ññ 
LogError
ññ 
(
ññ  '
endpointNotFoundException
ññ  9
)
ññ9 :
;
ññ: ;
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
óóH I%
dialogEndPointException
óóI `
)
óó` a
;
óóa b
}
òò 
catch
òò 
(
òò 
TimeoutException
òò %
timeoutException
òò& 6
)
òò6 7
{
òò8 9
logger
ôô 
.
ôô 
LogError
ôô 
(
ôô  
timeoutException
ôô  0
)
ôô0 1
;
ôô1 2
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
ööH I$
dialogTimeOutException
ööI _
)
öö_ `
;
öö` a
}
õõ 
catch
õõ 
(
õõ $
CommunicationException
õõ +$
communicationException
õõ, B
)
õõB C
{
õõD E
logger
úú 
.
úú 
LogError
úú 
(
úú  $
communicationException
úú  6
)
úú6 7
;
úú7 8
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4

Properties
ùù4 >
.
ùù> ?
	Resources
ùù? H
.
ùùH I)
dialogComunicationException
ùùI d
)
ùùd e
;
ùùe f
}
ûû 
}
üü 	
private
°° 
bool
°° 
ValidateFields
°° #
(
°°# $
string
°°$ *
email
°°+ 0
,
°°0 1
string
°°2 8
username
°°9 A
,
°°A B
string
°°C I
password
°°J R
)
°°R S
{
°°T U
bool
¢¢ 
isValid
¢¢ 
=
¢¢ 
true
¢¢ 
;
¢¢  
if
§§ 
(
§§ 
!
§§ 
	Validador
§§ 
.
§§ 
ValidateEmail
§§ (
(
§§( )
email
§§) .
)
§§. /
)
§§/ 0
{
§§1 2
HighlightField
•• 
(
•• 
txtEmail
•• '
)
••' (
;
••( )
lbInvalidEmail
¶¶ 
.
¶¶ 

Visibility
¶¶ )
=
¶¶* +

Visibility
¶¶, 6
.
¶¶6 7
Visible
¶¶7 >
;
¶¶> ?
isValid
ßß 
=
ßß 
false
ßß 
;
ßß  
}
®® 
else
®® 
{
®® 

ResetField
©© 
(
©© 
txtEmail
©© #
)
©©# $
;
©©$ %
lbInvalidEmail
™™ 
.
™™ 

Visibility
™™ )
=
™™* +

Visibility
™™, 6
.
™™6 7
	Collapsed
™™7 @
;
™™@ A
}
´´ 
if
≠≠ 
(
≠≠ 
!
≠≠ 
	Validador
≠≠ 
.
≠≠ 
ValidateUsername
≠≠ +
(
≠≠+ ,
username
≠≠, 4
)
≠≠4 5
)
≠≠5 6
{
≠≠7 8
HighlightField
ÆÆ 
(
ÆÆ 
txtName
ÆÆ &
)
ÆÆ& '
;
ÆÆ' (
lbInvalidUser
ØØ 
.
ØØ 

Visibility
ØØ (
=
ØØ) *

Visibility
ØØ+ 5
.
ØØ5 6
Visible
ØØ6 =
;
ØØ= >
isValid
∞∞ 
=
∞∞ 
false
∞∞ 
;
∞∞  
}
±± 
else
±± 
{
±± 

ResetField
≤≤ 
(
≤≤ 
txtName
≤≤ "
)
≤≤" #
;
≤≤# $
lbInvalidUser
≥≥ 
.
≥≥ 

Visibility
≥≥ (
=
≥≥) *

Visibility
≥≥+ 5
.
≥≥5 6
	Collapsed
≥≥6 ?
;
≥≥? @
}
¥¥ 
if
∂∂ 
(
∂∂ 
!
∂∂ 
	Validador
∂∂ 
.
∂∂ 
ValidatePassword
∂∂ +
(
∂∂+ ,
password
∂∂, 4
)
∂∂4 5
)
∂∂5 6
{
∂∂7 8
HighlightField
∑∑ 
(
∑∑ 
txtPassword
∑∑ *
)
∑∑* +
;
∑∑+ ,
lbInvalidPassword
∏∏ !
.
∏∏! "

Visibility
∏∏" ,
=
∏∏- .

Visibility
∏∏/ 9
.
∏∏9 :
Visible
∏∏: A
;
∏∏A B
isValid
ππ 
=
ππ 
false
ππ 
;
ππ  
}
∫∫ 
else
∫∫ 
{
∫∫ 

ResetField
ªª 
(
ªª 
txtPassword
ªª &
)
ªª& '
;
ªª' (
lbInvalidPassword
ºº !
.
ºº! "

Visibility
ºº" ,
=
ºº- .

Visibility
ºº/ 9
.
ºº9 :
	Collapsed
ºº: C
;
ººC D
}
ΩΩ 
return
øø 
isValid
øø 
;
øø 
}
¿¿ 	
private
¬¬ 
void
¬¬ 
HighlightField
¬¬ #
(
¬¬# $
Control
¬¬$ +
control
¬¬, 3
)
¬¬3 4
{
√√ 	
control
ƒƒ 
.
ƒƒ 
BorderBrush
ƒƒ 
=
ƒƒ  !
Brushes
ƒƒ" )
.
ƒƒ) *
Red
ƒƒ* -
;
ƒƒ- .
}
≈≈ 	
private
«« 
void
«« )
TxtPassword_PasswordChanged
«« 0
(
««0 1
object
««1 7
sender
««8 >
,
««> ?
RoutedEventArgs
««@ O
e
««P Q
)
««Q R
{
««S T
if
»» 
(
»» 
txtPassword
»» 
.
»» 

Visibility
»» &
==
»»' )

Visibility
»»* 4
.
»»4 5
Visible
»»5 <
)
»»< =
{
»»> ?
ValidatePassword
……  
(
……  !
txtPassword
……! ,
.
……, -
Password
……- 5
)
……5 6
;
……6 7
}
   
}
ÀÀ 	
private
ÕÕ 
void
ÕÕ 0
"TxtPasswordVisible_PasswordChanged
ÕÕ 7
(
ÕÕ7 8
object
ÕÕ8 >
sender
ÕÕ? E
,
ÕÕE F
RoutedEventArgs
ÕÕG V
e
ÕÕW X
)
ÕÕX Y
{
ÕÕZ [
if
ŒŒ 
(
ŒŒ  
txtPasswordVisible
ŒŒ "
.
ŒŒ" #

Visibility
ŒŒ# -
==
ŒŒ. 0

Visibility
ŒŒ1 ;
.
ŒŒ; <
Visible
ŒŒ< C
)
ŒŒC D
{
ŒŒE F
ValidatePassword
œœ  
(
œœ  ! 
txtPasswordVisible
œœ! 3
.
œœ3 4
Text
œœ4 8
)
œœ8 9
;
œœ9 :
}
–– 
}
—— 	
private
”” 
void
”” 
ValidatePassword
”” %
(
””% &
string
””& ,
password
””- 5
)
””5 6
{
””7 8
if
‘‘ 
(
‘‘ 
!
‘‘ 
	Validador
‘‘ 
.
‘‘ 
ValidatePassword
‘‘ +
(
‘‘+ ,
password
‘‘, 4
)
‘‘4 5
)
‘‘5 6
{
‘‘7 8
HighlightField
’’ 
(
’’ 
txtPassword
’’ *
)
’’* +
;
’’+ ,
lbInvalidPassword
÷÷ !
.
÷÷! "

Visibility
÷÷" ,
=
÷÷- .

Visibility
÷÷/ 9
.
÷÷9 :
Visible
÷÷: A
;
÷÷A B
}
◊◊ 
else
◊◊ 
{
◊◊ 

ResetField
ÿÿ 
(
ÿÿ 
txtPassword
ÿÿ &
)
ÿÿ& '
;
ÿÿ' (
lbInvalidPassword
ŸŸ !
.
ŸŸ! "

Visibility
ŸŸ" ,
=
ŸŸ- .

Visibility
ŸŸ/ 9
.
ŸŸ9 :
	Collapsed
ŸŸ: C
;
ŸŸC D
}
⁄⁄ 
}
€€ 	
private
›› 
void
›› '
BtnTogglePassword_Checked
›› .
(
››. /
object
››/ 5
sender
››6 <
,
››< =
RoutedEventArgs
››> M
e
››N O
)
››O P
{
ﬁﬁ 	 
txtPasswordVisible
ﬂﬂ 
.
ﬂﬂ 
Text
ﬂﬂ #
=
ﬂﬂ$ %
txtPassword
ﬂﬂ& 1
.
ﬂﬂ1 2
Password
ﬂﬂ2 :
;
ﬂﬂ: ; 
txtPasswordVisible
‡‡ 
.
‡‡ 

Visibility
‡‡ )
=
‡‡* +

Visibility
‡‡, 6
.
‡‡6 7
Visible
‡‡7 >
;
‡‡> ?
txtPassword
·· 
.
·· 

Visibility
·· "
=
··# $

Visibility
··% /
.
··/ 0
	Collapsed
··0 9
;
··9 :
}
‚‚ 	
private
‰‰ 
void
‰‰ )
BtnTogglePassword_Unchecked
‰‰ 0
(
‰‰0 1
object
‰‰1 7
sender
‰‰8 >
,
‰‰> ?
RoutedEventArgs
‰‰@ O
e
‰‰P Q
)
‰‰Q R
{
ÂÂ 	
txtPassword
ÊÊ 
.
ÊÊ 
Password
ÊÊ  
=
ÊÊ! " 
txtPasswordVisible
ÊÊ# 5
.
ÊÊ5 6
Text
ÊÊ6 :
;
ÊÊ: ; 
txtPasswordVisible
ÁÁ 
.
ÁÁ 

Visibility
ÁÁ )
=
ÁÁ* +

Visibility
ÁÁ, 6
.
ÁÁ6 7
	Collapsed
ÁÁ7 @
;
ÁÁ@ A
txtPassword
ËË 
.
ËË 

Visibility
ËË "
=
ËË# $

Visibility
ËË% /
.
ËË/ 0
Visible
ËË0 7
;
ËË7 8
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ *
UpdatePasswordVisibilityIcon
ÎÎ 1
(
ÎÎ1 2
)
ÎÎ2 3
{
ÎÎ4 5
if
ÏÏ 
(
ÏÏ 
!
ÏÏ 
string
ÏÏ 
.
ÏÏ 
IsNullOrEmpty
ÏÏ %
(
ÏÏ% &
txtPassword
ÏÏ& 1
.
ÏÏ1 2
Password
ÏÏ2 :
)
ÏÏ: ;
||
ÏÏ< >
!
ÏÏ? @
string
ÏÏ@ F
.
ÏÏF G
IsNullOrEmpty
ÏÏG T
(
ÏÏT U 
txtPasswordVisible
ÏÏU g
.
ÏÏg h
Text
ÏÏh l
)
ÏÏl m
)
ÏÏm n
{
ÏÏo p
btnTogglePassword
ÌÌ !
.
ÌÌ! "

Visibility
ÌÌ" ,
=
ÌÌ- .

Visibility
ÌÌ/ 9
.
ÌÌ9 :
Visible
ÌÌ: A
;
ÌÌA B
}
ÓÓ 
else
ÓÓ 
{
ÓÓ 
btnTogglePassword
ÔÔ !
.
ÔÔ! "

Visibility
ÔÔ" ,
=
ÔÔ- .

Visibility
ÔÔ/ 9
.
ÔÔ9 :
	Collapsed
ÔÔ: C
;
ÔÔC D
}
 
}
ÒÒ 	
private
ÙÙ 
void
ÙÙ 

ResetField
ÙÙ 
(
ÙÙ  
Control
ÙÙ  '
control
ÙÙ( /
)
ÙÙ/ 0
{
ıı 	
control
ˆˆ 
.
ˆˆ 
BorderBrush
ˆˆ 
=
ˆˆ  !
Brushes
ˆˆ" )
.
ˆˆ) *
White
ˆˆ* /
;
ˆˆ/ 0
}
˜˜ 	
private
˘˘ 
void
˘˘ !
TxtName_TextChanged
˘˘ (
(
˘˘( )
object
˘˘) /
sender
˘˘0 6
,
˘˘6 7"
TextChangedEventArgs
˘˘8 L
e
˘˘M N
)
˘˘N O
{
˘˘P Q
string
˙˙ 
username
˙˙ 
=
˙˙ 
txtName
˙˙ %
.
˙˙% &
Text
˙˙& *
;
˙˙* +
if
˚˚ 
(
˚˚ 
!
˚˚ 
	Validador
˚˚ 
.
˚˚ 
ValidateUsername
˚˚ +
(
˚˚+ ,
username
˚˚, 4
)
˚˚4 5
)
˚˚5 6
{
˚˚7 8
HighlightField
¸¸ 
(
¸¸ 
txtName
¸¸ &
)
¸¸& '
;
¸¸' (
lbInvalidUser
˝˝ 
.
˝˝ 

Visibility
˝˝ (
=
˝˝) *

Visibility
˝˝+ 5
.
˝˝5 6
Visible
˝˝6 =
;
˝˝= >
}
˛˛ 
else
˛˛ 
{
˛˛ 

ResetField
ˇˇ 
(
ˇˇ 
txtName
ˇˇ "
)
ˇˇ" #
;
ˇˇ# $
lbInvalidUser
ÄÄ 
.
ÄÄ 

Visibility
ÄÄ (
=
ÄÄ) *

Visibility
ÄÄ+ 5
.
ÄÄ5 6
	Collapsed
ÄÄ6 ?
;
ÄÄ? @
}
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ "
TxtEmail_TextChanged
ÑÑ )
(
ÑÑ) *
object
ÑÑ* 0
sender
ÑÑ1 7
,
ÑÑ7 8"
TextChangedEventArgs
ÑÑ9 M
e
ÑÑN O
)
ÑÑO P
{
ÑÑQ R
string
ÖÖ 
email
ÖÖ 
=
ÖÖ 
txtEmail
ÖÖ #
.
ÖÖ# $
Text
ÖÖ$ (
;
ÖÖ( )
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
	Validador
ÜÜ 
.
ÜÜ 
ValidateEmail
ÜÜ (
(
ÜÜ( )
email
ÜÜ) .
)
ÜÜ. /
)
ÜÜ/ 0
{
ÜÜ1 2
HighlightField
áá 
(
áá 
txtEmail
áá '
)
áá' (
;
áá( )
lbInvalidEmail
àà 
.
àà 

Visibility
àà )
=
àà* +

Visibility
àà, 6
.
àà6 7
Visible
àà7 >
;
àà> ?
}
ââ 
else
ââ 
{
ââ 

ResetField
ää 
(
ää 
txtEmail
ää #
)
ää# $
;
ää$ %
lbInvalidEmail
ãã 
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
ãã@ A
}
åå 
}
çç 	
private
èè 
void
èè 
GoToLoginView
èè "
(
èè" #
)
èè# $
{
èè% &
if
êê 
(
êê 
this
êê 
.
êê 
NavigationService
êê &
.
êê& '
	CanGoBack
êê' 0
)
êê0 1
{
êê2 3
this
ëë 
.
ëë 
NavigationService
ëë &
.
ëë& '
GoBack
ëë' -
(
ëë- .
)
ëë. /
;
ëë/ 0
}
íí 
}
ìì 	
private
óó 
void
óó 
BtnBack_Click
óó "
(
óó" #
object
óó# )
sender
óó* 0
,
óó0 1
RoutedEventArgs
óó2 A
e
óóB C
)
óóC D
{
òò 	
GoToLoginView
ôô 
(
ôô 
)
ôô 
;
ôô 
}
öö 	
private
úú 
void
úú #
BtnBackValidate_Click
úú *
(
úú* +
object
úú+ 1
sender
úú2 8
,
úú8 9
RoutedEventArgs
úú: I
e
úúJ K
)
úúK L
{
ùù 	
verificationGrid
ûû 
.
ûû 

Visibility
ûû '
=
ûû( )

Visibility
ûû* 4
.
ûû4 5
	Collapsed
ûû5 >
;
ûû> ?
txtEmail
üü 
.
üü 
Clear
üü 
(
üü 
)
üü 
;
üü 
txtName
†† 
.
†† 
Clear
†† 
(
†† 
)
†† 
;
†† 
txtPassword
°° 
.
°° 
Clear
°° 
(
°° 
)
°° 
;
°°   
txtPasswordVisible
¢¢ 
.
¢¢ 
Clear
¢¢ $
(
¢¢$ %
)
¢¢% &
;
¢¢& '
}
££ 	
private
•• 
void
•• +
TxtValidationCode_TextChanged
•• 2
(
••2 3
object
••3 9
sender
••: @
,
••@ A"
TextChangedEventArgs
••B V
e
••W X
)
••X Y
{
¶¶ 	
TextBox
ßß 
currentTextBox
ßß "
=
ßß# $
sender
ßß% +
as
ßß, .
TextBox
ßß/ 6
;
ßß6 7
if
®® 
(
®® 
currentTextBox
®® 
.
®® 
Text
®® #
.
®®# $
Length
®®$ *
==
®®+ -
$num
®®. /
)
®®/ 0
{
©© 
if
™™ 
(
™™ 
currentTextBox
™™ "
==
™™# % 
txtValidationCode1
™™& 8
)
™™8 9 
txtValidationCode2
´´ &
.
´´& '
Focus
´´' ,
(
´´, -
)
´´- .
;
´´. /
else
¨¨ 
if
¨¨ 
(
¨¨ 
currentTextBox
¨¨ '
==
¨¨( * 
txtValidationCode2
¨¨+ =
)
¨¨= > 
txtValidationCode3
≠≠ &
.
≠≠& '
Focus
≠≠' ,
(
≠≠, -
)
≠≠- .
;
≠≠. /
else
ÆÆ 
if
ÆÆ 
(
ÆÆ 
currentTextBox
ÆÆ '
==
ÆÆ( * 
txtValidationCode3
ÆÆ+ =
)
ÆÆ= > 
txtValidationCode4
ØØ &
.
ØØ& '
Focus
ØØ' ,
(
ØØ, -
)
ØØ- .
;
ØØ. /
else
∞∞ 
if
∞∞ 
(
∞∞ 
currentTextBox
∞∞ '
==
∞∞( * 
txtValidationCode4
∞∞+ =
)
∞∞= > 
txtValidationCode5
±± &
.
±±& '
Focus
±±' ,
(
±±, -
)
±±- .
;
±±. /
else
≤≤ 
if
≤≤ 
(
≤≤ 
currentTextBox
≤≤ '
==
≤≤( * 
txtValidationCode5
≤≤+ =
)
≤≤= > 
txtValidationCode6
≥≥ &
.
≥≥& '
Focus
≥≥' ,
(
≥≥, -
)
≥≥- .
;
≥≥. /
}
¥¥ 
}
µµ 	
}
∑∑ 
}∏∏ ˘a
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
privateJJ 
asyncJJ 
voidJJ 
SaveProfileJJ &
(JJ& '
stringJJ' -
userNameJJ. 6
,JJ6 7
stringJJ8 >
selectedLanguageJJ? O
,JJO P
stringJJQ W
selectedProfileJJX g
)JJg h
{JJi j
tryKK 
{KK 
varLL 
serviceLL 
=LL 
newLL ! 
TripasDeGatoServicioLL" 6
.LL6 7
UserManagerClientLL7 H
(LLH I
)LLI J
;LLJ K
intMM 
	idProfileMM 
=MM  
UserProfileSingletonMM  4
.MM4 5
	IdProfileMM5 >
;MM> ?
stringNN 
newPicNN 
=NN 
selectedProfileNN  /
??NN0 2 
UserProfileSingletonNN3 G
.NNG H
PicPathNNH O
;NNO P
intOO 
updateResultOO  
=OO! "
awaitOO# (
serviceOO) 0
.OO0 1
UpdateProfileAsyncOO1 C
(OOC D
	idProfileOOD M
,OOM N
userNameOOO W
,OOW X
newPicOOY _
)OO_ `
;OO` a
ifQQ 
(QQ 
updateResultQQ  
==QQ! #
ConstantsManagerQQ$ 4
.QQ4 5
	ConstantsQQ5 >
.QQ> ?
SUCCES_OPERATIONQQ? O
)QQO P
{QQQ R 
UserProfileSingletonRR (
.RR( )
UpdateNombreRR) 5
(RR5 6
userNameRR6 >
)RR> ?
;RR? @ 
UserProfileSingletonSS (
.SS( )
UpdateFotoRutaSS) 7
(SS7 8
newPicSS8 >
)SS> ?
;SS? @
LoadProfileTT 
(TT  
)TT  !
;TT! "
DialogManagerUU !
.UU! "#
ShowSuccessMessageAlertUU" 9
(UU9 :

PropertiesUU: D
.UUD E
	ResourcesUUE N
.UUN O
dialogChangesSavedUUO a
)UUa b
;UUb c
DisableEditingVV "
(VV" #
)VV# $
;VV$ %
}WW 
elseWW 
{WW 
DialogManagerXX !
.XX! "!
ShowErrorMessageAlertXX" 7
(XX7 8

PropertiesXX8 B
.XXB C
	ResourcesXXC L
.XXL M(
dialogErrorSavingProfileDataXXM i
)XXi j
;XXj k
}YY 
}ZZ 
catchZZ 
(ZZ %
EndpointNotFoundExceptionZZ .
)ZZ. /
{ZZ0 1
DialogManager[[ 
.[[ !
ShowErrorMessageAlert[[ 3
([[3 4

Properties[[4 >
.[[> ?
	Resources[[? H
.[[H I+
dialogConnectionErrorWithServer[[I h
)[[h i
;[[i j
}\\ 
catch\\ 
(\\ 
TimeoutException\\ %
)\\% &
{\\' (
DialogManager]] 
.]] !
ShowErrorMessageAlert]] 3
(]]3 4

Properties]]4 >
.]]> ?
	Resources]]? H
.]]H I 
dialogRequestTimeout]]I ]
)]]] ^
;]]^ _
}^^ 
catch^^ 
(^^ "
CommunicationException^^ +
)^^+ ,
{^^- .
DialogManager__ 
.__ !
ShowErrorMessageAlert__ 3
(__3 4

Properties__4 >
.__> ?
	Resources__? H
.__H I$
dialogCommunicationError__I a
)__a b
;__b c
}`` 
catch`` 
(`` 
	Exception`` 
ex`` !
)``! "
{``# $
DialogManageraa 
.aa !
ShowErrorMessageAlertaa 3
(aa3 4
stringaa4 :
.aa: ;
Formataa; A
(aaA B

PropertiesaaB L
.aaL M
	ResourcesaaM V
.aaV W$
dialogErrorSavingProfileaaW o
,aao p
exaaq s
.aas t
Messageaat {
)aa{ |
)aa| }
;aa} ~
}bb 
}cc 	
privateee 
boolee 
ValidateFieldsee #
(ee# $
)ee$ %
{ee& '
boolff 
isValidff 
=ff 
trueff 
;ff  
ifhh 
(hh 
stringhh 
.hh 
IsNullOrWhiteSpacehh )
(hh) *
txtUserNamehh* 5
.hh5 6
Texthh6 :
)hh: ;
)hh; <
{hh= >
isValidii 
=ii 
falseii 
;ii  
txtUserNamejj 
.jj 
BorderBrushjj '
=jj( )
Systemjj* 0
.jj0 1
Windowsjj1 8
.jj8 9
Mediajj9 >
.jj> ?
Brushesjj? F
.jjF G
RedjjG J
;jjJ K
}kk 
elsekk 
{kk 
txtUserNamell 
.ll 
BorderBrushll '
=ll( )
Systemll* 0
.ll0 1
Windowsll1 8
.ll8 9
Mediall9 >
.ll> ?
Brushesll? F
.llF G
WhitellG L
;llL M
}mm 
returnnn 
isValidnn 
;nn 
}oo 	
privateqq 
voidqq 
GoToMenuViewqq !
(qq! "
)qq" #
{qq$ %
MenuViewrr 
menuViewrr 
=rr 
newrr  #
MenuViewrr$ ,
(rr, -
)rr- .
;rr. /
thisss 
.ss 
NavigationServicess "
?ss" #
.ss# $
Navigatess$ ,
(ss, -
menuViewss- 5
)ss5 6
;ss6 7
}tt 	
privatevv 
voidvv 
BtnBack_Clickvv "
(vv" #
objectvv# )
sendervv* 0
,vv0 1
RoutedEventArgsvv2 A
evvB C
)vvC D
{vvE F
GoToMenuViewww 
(ww 
)ww 
;ww 
}xx 	
}yy 
}zz ≤ë
-C:\TripasDeGatoCliente\Views\MenuView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
MenuView !
:" #
Page$ (
{) *
private 
UserManagerClient !
userManager" -
;- .
private  
FriendsManagerClient $
friendsManager% 3
;3 4
private 
StatusManagerClient #
statusManager$ 1
;1 2
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
MenuView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
userManager 
= 
new 
UserManagerClient /
(/ 0
)0 1
;1 2
friendsManager 
= 
new   
FriendsManagerClient! 5
(5 6
)6 7
;7 8
statusManager 
= 
new 
StatusManagerClient  3
(3 4
)4 5
;5 6
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4 
LoadUserProfileAsync  
(  !
)! "
;" #
} 	
private 
async 
void  
LoadUserProfileAsync /
(/ 0
)0 1
{2 3
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% & 
UserProfileSingleton& :
.: ;
UserName; C
)C D
)D E
{F G

lbUserName   
.   
Content   "
=  # $ 
UserProfileSingleton  % 9
.  9 :
UserName  : B
;  B C
}!! 
else!! 
{!! 

lbUserName"" 
."" 
Content"" "
=""# $

Properties""% /
.""/ 0
	Resources""0 9
.""9 :
lbUnknownUser"": G
;""G H
}## 
}$$ 	
private&& 
void&& 
BtnSignOut_Click&& %
(&&% &
object&&& ,
sender&&- 3
,&&3 4
RoutedEventArgs&&5 D
e&&E F
)&&F G
{&&H I
SignOut'' 
('' 
)'' 
;'' 
NavigateToLoginView(( 
(((  
)((  !
;((! "
})) 	
private++ 
void++ 
SignOut++ 
(++ 
)++ 
{++  
int,, 
playerId,, 
=,,  
UserProfileSingleton,, /
.,,/ 0
	IdProfile,,0 9
;,,9 :"
SetPlayerOfflineStatus-- "
(--" #
playerId--# +
)--+ ,
;--, - 
UserProfileSingleton..  
...  !
Instance..! )
...) *
ResetInstance..* 7
(..7 8
)..8 9
;..9 :
}// 	
private11 
void11 "
SetPlayerOfflineStatus11 +
(11+ ,
int11, /
playerId110 8
)118 9
{11: ;
LoggerManager22 
logger22  
=22! "
new22# &
LoggerManager22' 4
(224 5
this225 9
.229 :
GetType22: A
(22A B
)22B C
)22C D
;22D E
try44 
{44 
IStatusManager55 
statusManager55 ,
=55- .
new55/ 2
StatusManagerClient553 F
(55F G
)55G H
;55H I
statusManager66 
.66 
SetPlayerStatus66 -
(66- .
playerId66. 6
,666 7!
GameEnumsPlayerStatus668 M
.66M N
Offline66N U
)66U V
;66V W
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
;99a b
}:: 
catch:: 
(:: 
TimeoutException:: %
timeoutException::& 6
)::6 7
{::8 9
logger;; 
.;; 
LogError;; 
(;;  
timeoutException;;  0
);;0 1
;;;1 2
DialogManager<< 
.<< !
ShowErrorMessageAlert<< 3
(<<3 4

Properties<<4 >
.<<> ?
	Resources<<? H
.<<H I"
dialogTimeOutException<<I _
)<<_ `
;<<` a
}== 
catch== 
(== "
CommunicationException== +"
communicationException==, B
)==B C
{==D E
logger>> 
.>> 
LogError>> 
(>>  "
communicationException>>  6
)>>6 7
;>>7 8
DialogManager?? 
.?? !
ShowErrorMessageAlert?? 3
(??3 4

Properties??4 >
.??> ?
	Resources??? H
.??H I'
dialogComunicationException??I d
)??d e
;??e f
}@@ 
}AA 	
privateCC 
voidCC 
NavigateToLoginViewCC (
(CC( )
)CC) *
{CC+ ,
	LoginViewDD 
	loginViewDD 
=DD  !
newDD" %
	LoginViewDD& /
(DD/ 0
)DD0 1
;DD1 2
thisEE 
.EE 
NavigationServiceEE "
.EE" #
NavigateEE# +
(EE+ ,
	loginViewEE, 5
)EE5 6
;EE6 7
}FF 	
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
úú 
(
úú 
	Exception
úú 
ex
úú !
)
úú! "
{
úú# $
HandleException
ùù 
(
ùù  
ex
ùù  "
,
ùù" #
logger
ùù$ *
)
ùù* +
;
ùù+ ,
}
ûû 
}
üü 	
private
°° 
async
°° 
Task
°° #
ExecuteFriendAddition
°° 0
(
°°0 1
int
°°1 4
friendProfileId
°°5 D
,
°°D E
string
°°F L

friendName
°°M W
)
°°W X
{
°°Y Z
int
¢¢ 
userProfileId
¢¢ 
=
¢¢ "
UserProfileSingleton
¢¢  4
.
¢¢4 5
	IdProfile
¢¢5 >
;
¢¢> ?
int
££ 
result
££ 
=
££ 
await
££ 
friendsManager
££ -
.
££- .
AddFriendAsync
££. <
(
££< =
userProfileId
££= J
,
££J K
friendProfileId
££L [
)
££[ \
;
££\ ]
if
§§ 
(
§§ 
result
§§ 
==
§§ 
	Constants
§§ #
.
§§# $
SUCCES_OPERATION
§§$ 4
)
§§4 5
{
§§6 7
DialogManager
•• 
.
•• %
ShowSuccessMessageAlert
•• 5
(
••5 6
string
••6 <
.
••< =
Format
••= C
(
••C D

Properties
••D N
.
••N O
	Resources
••O X
.
••X Y)
dialogAddFriendSuccessfully
••Y t
,
••t u

friendName••v Ä
)••Ä Å
)••Å Ç
;••Ç É
await
¶¶ "
LoadFriendsListAsync
¶¶ *
(
¶¶* +
)
¶¶+ ,
;
¶¶, -
}
ßß 
else
ßß 
{
ßß 
DialogManager
®® 
.
®® #
ShowErrorMessageAlert
®® 3
(
®®3 4

Properties
®®4 >
.
®®> ?
	Resources
®®? H
.
®®H I%
dialogErrorAddingFriend
®®I `
)
®®` a
;
®®a b
}
©© 
}
™™ 	
private
¨¨ 
void
¨¨ 
HandleException
¨¨ $
(
¨¨$ %
	Exception
¨¨% .
ex
¨¨/ 1
,
¨¨1 2
LoggerManager
¨¨3 @
logger
¨¨A G
)
¨¨G H
{
¨¨I J
if
≠≠ 
(
≠≠ 
ex
≠≠ 
is
≠≠ 
FaultException
≠≠ $
<
≠≠$ %"
ProfileNotFoundFault
≠≠% 9
>
≠≠9 :
faultEx
≠≠; B
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
ÆÆ  
faultEx
ÆÆ  '
)
ÆÆ' (
;
ÆÆ( )
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
ØØH I'
dialogNotRetrievedProfile
ØØI b
)
ØØb c
;
ØØc d
}
∞∞ 
else
∞∞ 
if
∞∞ 
(
∞∞ 
ex
∞∞ 
is
∞∞ '
EndpointNotFoundException
∞∞ 6
)
∞∞6 7
{
∞∞8 9
logger
±± 
.
±± 
LogError
±± 
(
±±  
ex
±±  "
)
±±" #
;
±±# $
DialogManager
≤≤ 
.
≤≤ #
ShowErrorMessageAlert
≤≤ 3
(
≤≤3 4

Properties
≤≤4 >
.
≤≤> ?
	Resources
≤≤? H
.
≤≤H I%
dialogEndPointException
≤≤I `
)
≤≤` a
;
≤≤a b
}
≥≥ 
else
≥≥ 
if
≥≥ 
(
≥≥ 
ex
≥≥ 
is
≥≥ 
TimeoutException
≥≥ -
)
≥≥- .
{
≥≥/ 0
logger
¥¥ 
.
¥¥ 
LogError
¥¥ 
(
¥¥  
ex
¥¥  "
)
¥¥" #
;
¥¥# $
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
µµH I$
dialogTimeOutException
µµI _
)
µµ_ `
;
µµ` a
}
∂∂ 
else
∂∂ 
if
∂∂ 
(
∂∂ 
ex
∂∂ 
is
∂∂ $
CommunicationException
∂∂ 3
)
∂∂3 4
{
∂∂5 6
logger
∑∑ 
.
∑∑ 
LogError
∑∑ 
(
∑∑  
ex
∑∑  "
)
∑∑" #
;
∑∑# $
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
∏∏H I)
dialogComunicationException
∏∏I d
)
∏∏d e
;
∏∏e f
}
ππ 
}
∫∫ 	
private
ΩΩ 
async
ΩΩ 
Task
ΩΩ "
LoadFriendsListAsync
ΩΩ /
(
ΩΩ/ 0
)
ΩΩ0 1
{
ΩΩ2 3
LoggerManager
ææ 
logger
ææ  
=
ææ! "
new
ææ# &
LoggerManager
ææ' 4
(
ææ4 5
this
ææ5 9
.
ææ9 :
GetType
ææ: A
(
ææA B
)
ææB C
)
ææC D
;
ææD E
try
øø 
{
øø 
int
¿¿ 
userProfileId
¿¿ !
=
¿¿" #"
UserProfileSingleton
¿¿$ 8
.
¿¿8 9
	IdProfile
¿¿9 B
;
¿¿B C
var
¡¡ 
friendsList
¡¡ 
=
¡¡  !
await
¡¡" '
friendsManager
¡¡( 6
.
¡¡6 7
GetFriendsAsync
¡¡7 F
(
¡¡F G
userProfileId
¡¡G T
)
¡¡T U
;
¡¡U V
var
√√ 
friendsWithStatus
√√ %
=
√√& '
new
√√( +
List
√√, 0
<
√√0 1
string
√√1 7
>
√√7 8
(
√√8 9
)
√√9 :
;
√√: ;
foreach
≈≈ 
(
≈≈ 
var
≈≈ 
friend
≈≈ #
in
≈≈$ &
friendsList
≈≈' 2
)
≈≈2 3
{
≈≈4 5
var
∆∆ 
status
∆∆ 
=
∆∆  
await
∆∆! &
statusManager
∆∆' 4
.
∆∆4 5"
GetPlayerStatusAsync
∆∆5 I
(
∆∆I J
friend
∆∆J P
.
∆∆P Q
	idProfile
∆∆Q Z
)
∆∆Z [
;
∆∆[ \
friendsWithStatus
«« %
.
««% &
Add
««& )
(
««) *
$"
««* ,
{
««, -
friend
««- 3
.
««3 4
userName
««4 <
}
««< =
$str
««= @
{
««@ A
status
««A G
}
««G H
"
««H I
)
««I J
;
««J K
}
»» 

lstFriends
   
.
   
ItemsSource
   &
=
  ' (
friendsWithStatus
  ) :
;
  : ;
}
ÀÀ 
catch
ÀÀ 
(
ÀÀ '
EndpointNotFoundException
ÀÀ .'
endpointNotFoundException
ÀÀ/ H
)
ÀÀH I
{
ÀÀJ K
logger
ÃÃ 
.
ÃÃ 
LogError
ÃÃ 
(
ÃÃ  '
endpointNotFoundException
ÃÃ  9
)
ÃÃ9 :
;
ÃÃ: ;
DialogManager
ÕÕ 
.
ÕÕ #
ShowErrorMessageAlert
ÕÕ 3
(
ÕÕ3 4

Properties
ÕÕ4 >
.
ÕÕ> ?
	Resources
ÕÕ? H
.
ÕÕH I%
dialogEndPointException
ÕÕI `
)
ÕÕ` a
;
ÕÕa b
}
ŒŒ 
catch
ŒŒ 
(
ŒŒ 
TimeoutException
ŒŒ %
timeoutException
ŒŒ& 6
)
ŒŒ6 7
{
ŒŒ8 9
logger
œœ 
.
œœ 
LogError
œœ 
(
œœ  
timeoutException
œœ  0
)
œœ0 1
;
œœ1 2
DialogManager
–– 
.
–– #
ShowErrorMessageAlert
–– 3
(
––3 4

Properties
––4 >
.
––> ?
	Resources
––? H
.
––H I$
dialogTimeOutException
––I _
)
––_ `
;
––` a
}
—— 
catch
—— 
(
—— $
CommunicationException
—— +$
communicationException
——, B
)
——B C
{
——D E
logger
““ 
.
““ 
LogError
““ 
(
““  $
communicationException
““  6
)
““6 7
;
““7 8
DialogManager
”” 
.
”” #
ShowErrorMessageAlert
”” 3
(
””3 4

Properties
””4 >
.
””> ?
	Resources
””? H
.
””H I)
dialogComunicationException
””I d
)
””d e
;
””e f
}
‘‘ 
}
’’ 	
private
ÿÿ 
async
ÿÿ 
void
ÿÿ #
BtnRemoveFriend_Click
ÿÿ 0
(
ÿÿ0 1
object
ÿÿ1 7
sender
ÿÿ8 >
,
ÿÿ> ?
RoutedEventArgs
ÿÿ@ O
e
ÿÿP Q
)
ÿÿQ R
{
ÿÿS T
LoggerManager
ŸŸ 
logger
ŸŸ  
=
ŸŸ! "
new
ŸŸ# &
LoggerManager
ŸŸ' 4
(
ŸŸ4 5
this
ŸŸ5 9
.
ŸŸ9 :
GetType
ŸŸ: A
(
ŸŸA B
)
ŸŸB C
)
ŸŸC D
;
ŸŸD E
if
⁄⁄ 
(
⁄⁄ 

lstFriends
⁄⁄ 
.
⁄⁄ 
SelectedItem
⁄⁄ '
!=
⁄⁄( *
null
⁄⁄+ /
)
⁄⁄/ 0
{
⁄⁄1 2
string
€€  
selectedFriendName
€€ )
=
€€* +

lstFriends
€€, 6
.
€€6 7
SelectedItem
€€7 C
.
€€C D
ToString
€€D L
(
€€L M
)
€€M N
;
€€N O
try
›› 
{
›› 
int
ﬁﬁ 
friendProfileId
ﬁﬁ '
=
ﬁﬁ( )
await
ﬁﬁ* /
userManager
ﬁﬁ0 ;
.
ﬁﬁ; <
GetProfileIdAsync
ﬁﬁ< M
(
ﬁﬁM N 
selectedFriendName
ﬁﬁN `
)
ﬁﬁ` a
;
ﬁﬁa b
if
‡‡ 
(
‡‡ 
friendProfileId
‡‡ '
>
‡‡( )
$num
‡‡* +
)
‡‡+ ,
{
‡‡- .
int
·· 
userProfileId
·· )
=
··* +"
UserProfileSingleton
··, @
.
··@ A
	IdProfile
··A J
;
··J K
int
‚‚ 
result
‚‚ "
=
‚‚# $
await
‚‚% *
friendsManager
‚‚+ 9
.
‚‚9 :
DeleteFriendAsync
‚‚: K
(
‚‚K L
userProfileId
‚‚L Y
,
‚‚Y Z
friendProfileId
‚‚[ j
)
‚‚j k
;
‚‚k l
if
‰‰ 
(
‰‰ 
result
‰‰ "
==
‰‰# %
	Constants
‰‰& /
.
‰‰/ 0
SUCCES_OPERATION
‰‰0 @
)
‰‰@ A
{
‰‰B C
DialogManager
ÂÂ )
.
ÂÂ) *%
ShowSuccessMessageAlert
ÂÂ* A
(
ÂÂA B
string
ÂÂB H
.
ÂÂH I
Format
ÂÂI O
(
ÂÂO P

Properties
ÂÂP Z
.
ÂÂZ [
	Resources
ÂÂ[ d
.
ÂÂd e%
dialogFriendshipDeleted
ÂÂe |
,
ÂÂ| }!
selectedFriendNameÂÂ~ ê
)ÂÂê ë
)ÂÂë í
;ÂÂí ì
await
ÊÊ !"
LoadFriendsListAsync
ÊÊ" 6
(
ÊÊ6 7
)
ÊÊ7 8
;
ÊÊ8 9
}
ÁÁ 
else
ÁÁ 
{
ÁÁ  
DialogManager
ËË )
.
ËË) *#
ShowErrorMessageAlert
ËË* ?
(
ËË? @

Properties
ËË@ J
.
ËËJ K
	Resources
ËËK T
.
ËËT U+
dialogErrorDeletingFriendship
ËËU r
)
ËËr s
;
ËËs t
}
ÈÈ 
}
ÍÍ 
else
ÍÍ 
{
ÍÍ 
DialogManager
ÎÎ %
.
ÎÎ% &#
ShowErrorMessageAlert
ÎÎ& ;
(
ÎÎ; <

Properties
ÎÎ< F
.
ÎÎF G
	Resources
ÎÎG P
.
ÎÎP Q'
dialogNotRetrievedProfile
ÎÎQ j
)
ÎÎj k
;
ÎÎk l
}
ÏÏ 
}
ÌÌ 
catch
ÌÌ 
(
ÌÌ '
EndpointNotFoundException
ÌÌ 2'
endpointNotFoundException
ÌÌ3 L
)
ÌÌL M
{
ÌÌN O
logger
ÓÓ 
.
ÓÓ 
LogError
ÓÓ #
(
ÓÓ# $'
endpointNotFoundException
ÓÓ$ =
)
ÓÓ= >
;
ÓÓ> ?
DialogManager
ÔÔ !
.
ÔÔ! "#
ShowErrorMessageAlert
ÔÔ" 7
(
ÔÔ7 8

Properties
ÔÔ8 B
.
ÔÔB C
	Resources
ÔÔC L
.
ÔÔL M%
dialogEndPointException
ÔÔM d
)
ÔÔd e
;
ÔÔe f
}
 
catch
 
(
 
TimeoutException
 )
timeoutException
* :
)
: ;
{
< =
logger
ÒÒ 
.
ÒÒ 
LogError
ÒÒ #
(
ÒÒ# $
timeoutException
ÒÒ$ 4
)
ÒÒ4 5
;
ÒÒ5 6
DialogManager
ÚÚ !
.
ÚÚ! "#
ShowErrorMessageAlert
ÚÚ" 7
(
ÚÚ7 8

Properties
ÚÚ8 B
.
ÚÚB C
	Resources
ÚÚC L
.
ÚÚL M$
dialogTimeOutException
ÚÚM c
)
ÚÚc d
;
ÚÚd e
}
ÛÛ 
catch
ÛÛ 
(
ÛÛ $
CommunicationException
ÛÛ /$
communicationException
ÛÛ0 F
)
ÛÛF G
{
ÛÛH I
logger
ÙÙ 
.
ÙÙ 
LogError
ÙÙ #
(
ÙÙ# $$
communicationException
ÙÙ$ :
)
ÙÙ: ;
;
ÙÙ; <
DialogManager
ıı !
.
ıı! "#
ShowErrorMessageAlert
ıı" 7
(
ıı7 8

Properties
ıı8 B
.
ııB C
	Resources
ııC L
.
ııL M)
dialogComunicationException
ııM h
)
ııh i
;
ııi j
}
ˆˆ 
}
˜˜ 
else
˜˜ 
{
˜˜ 
DialogManager
¯¯ 
.
¯¯ %
ShowWarningMessageAlert
¯¯ 5
(
¯¯5 6

Properties
¯¯6 @
.
¯¯@ A
	Resources
¯¯A J
.
¯¯J K(
dialogSelectFriendToDelete
¯¯K e
)
¯¯e f
;
¯¯f g
}
˘˘ 
}
˙˙ 	
private
˝˝ 
async
˝˝ 
void
˝˝  
BtnStartGame_Click
˝˝ -
(
˝˝- .
object
˝˝. 4
sender
˝˝5 ;
,
˝˝; <
RoutedEventArgs
˝˝= L
e
˝˝M N
)
˝˝N O
{
˝˝P Q!
GoToCreateLobbyView
˛˛ 
(
˛˛  
)
˛˛  !
;
˛˛! "
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ 
BtnProfile_Click
ÅÅ %
(
ÅÅ% &
object
ÅÅ& ,
sender
ÅÅ- 3
,
ÅÅ3 4
RoutedEventArgs
ÅÅ5 D
e
ÅÅE F
)
ÅÅF G
{
ÅÅH I
GoToPerfilView
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ !
BtnLaderboard_Click
ÖÖ (
(
ÖÖ( )
object
ÖÖ) /
sender
ÖÖ0 6
,
ÖÖ6 7
RoutedEventArgs
ÖÖ8 G
e
ÖÖH I
)
ÖÖI J
{
ÖÖK L 
GoToLaderboardView
ÜÜ 
(
ÜÜ 
)
ÜÜ  
;
ÜÜ  !
}
áá 	
private
ââ 
void
ââ 
BtnJoinGame_Click
ââ &
(
ââ& '
object
ââ' -
sender
ââ. 4
,
ââ4 5
RoutedEventArgs
ââ6 E
e
ââF G
)
ââG H
{
ââI J!
GoToSelectLobbyView
ää 
(
ää  
)
ää  !
;
ää! "
}
ãã 	
private
çç 
void
çç !
GoToCreateLobbyView
çç (
(
çç( )
)
çç) *
{
çç+ ,
CreateLobbyView
éé 
lobbyConfig
éé '
=
éé( )
new
éé* -
CreateLobbyView
éé. =
(
éé= >
)
éé> ?
;
éé? @
if
èè 
(
èè 
this
èè 
.
èè 
NavigationService
èè &
!=
èè' )
null
èè* .
)
èè. /
{
èè0 1
this
êê 
.
êê 
NavigationService
êê &
.
êê& '
Navigate
êê' /
(
êê/ 0
lobbyConfig
êê0 ;
)
êê; <
;
êê< =
}
ëë 
else
ëë 
{
ëë 
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
ííH I#
dialogNavigationError
ííI ^
)
íí^ _
;
íí_ `
}
ìì 
}
îî 	
private
ññ 
void
ññ 
GoToPerfilView
ññ #
(
ññ# $
)
ññ$ %
{
ññ& '
ProfileView
óó 
profileView
óó #
=
óó$ %
new
óó& )
ProfileView
óó* 5
(
óó5 6
)
óó6 7
;
óó7 8
if
òò 
(
òò 
this
òò 
.
òò 
NavigationService
òò &
!=
òò' )
null
òò* .
)
òò. /
{
òò0 1
this
ôô 
.
ôô 
NavigationService
ôô &
.
ôô& '
Navigate
ôô' /
(
ôô/ 0
profileView
ôô0 ;
)
ôô; <
;
ôô< =
}
öö 
else
öö 
{
öö 
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
õõH I#
dialogNavigationError
õõI ^
)
õõ^ _
;
õõ_ `
}
úú 
}
ùù 	
private
üü 
void
üü  
GoToLaderboardView
üü '
(
üü' (
)
üü( )
{
üü* +

Laderboard
†† 
laderboardView
†† %
=
††& '
new
††( +

Laderboard
††, 6
(
††6 7
)
††7 8
;
††8 9
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
laderboardView
¢¢0 >
)
¢¢> ?
;
¢¢? @
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
¶¶ 	
private
ßß 
void
ßß !
GoToSelectLobbyView
ßß (
(
ßß( )
)
ßß) *
{
ßß+ ,
SelectLobbyView
®® 
selectLobbyView
®® +
=
®®, -
new
®®. 1
SelectLobbyView
®®2 A
(
®®A B
)
®®B C
;
®®C D
if
©© 
(
©© 
this
©© 
.
©© 
NavigationService
©© &
!=
©©' )
null
©©* .
)
©©. /
{
©©0 1
this
™™ 
.
™™ 
NavigationService
™™ &
.
™™& '
Navigate
™™' /
(
™™/ 0
selectLobbyView
™™0 ?
)
™™? @
;
™™@ A
}
´´ 
else
´´ 
{
´´ 
DialogManager
¨¨ 
.
¨¨ #
ShowErrorMessageAlert
¨¨ 3
(
¨¨3 4

Properties
¨¨4 >
.
¨¨> ?
	Resources
¨¨? H
.
¨¨H I#
dialogNavigationError
¨¨I ^
)
¨¨^ _
;
¨¨_ `
}
≠≠ 
}
ÆÆ 	
}
∞∞ 
}±± ˚ 
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
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  
$str,,  E
),,E F
;,,F G
}-- 
}.. 	
}// 
}00 ˙ı
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
	idProfile>>3 <
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
(dd3 4
$strdd4 w
)ddw x
;ddx y
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
(gg3 4
$strgg4 y
)ggy z
;ggz {
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
(jj3 4
$strjj4 y
)jjy z
;jjz {
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
}çç ’]
2C:\TripasDeGatoCliente\Views\GameMatchView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	GameMatch "
:# $
Page% )
{* +
private 
Polyline 
currentLine $
;$ %
private 
List 
< 
List 
< 
Point 
>  
>  ! 
traceCoordinatesList" 6
;6 7
private 
List 
< 
Polyline 
> 
traceGraphicsList 0
;0 1
private 
List 
< 
Point 
> #
currentTraceCoordinates 3
;3 4
private 
DispatcherTimer 
timer  %
;% &
private 
int 
	totalTime 
= 
$num  "
;" #
private 
double 
remainingTime $
;$ %
public 
	GameMatch 
( 
)? @
{A B
InitializeComponent 
(  
)  !
;! "
drawingCanvas 
. 
	MouseDown #
+=$ &
Canvas_MouseDown' 7
;7 8
drawingCanvas 
. 
	MouseMove #
+=$ &
Canvas_MouseMove' 7
;7 8
drawingCanvas 
. 
MouseUp !
+=" $
Canvas_MouseUp% 3
;3 4 
traceCoordinatesList  
=! "
new# &
List' +
<+ ,
List, 0
<0 1
Point1 6
>6 7
>7 8
(8 9
)9 :
;: ;
traceGraphicsList 
= 
new  #
List$ (
<( )
Polyline) 1
>1 2
(2 3
)3 4
;4 5#
currentTraceCoordinates   #
=  $ %
new  & )
List  * .
<  . /
Point  / 4
>  4 5
(  5 6
)  6 7
;  7 8

StartTimer%% 
(%% 
)%% 
;%% 
}&& 	
private(( 
void(( 

StartTimer(( 
(((  
)((  !
{((" #
remainingTime)) 
=)) 
	totalTime)) %
;))% &
timeProgressBar** 
.** 
Value** !
=**" #
$num**$ '
;**' (
timer,, 
=,, 
new,, 
DispatcherTimer,, '
(,,' (
),,( )
;,,) *
timer-- 
.-- 
Interval-- 
=-- 
TimeSpan-- %
.--% &
FromMilliseconds--& 6
(--6 7
$num--7 :
)--: ;
;--; <
timer.. 
... 
Tick.. 
+=.. 

Timer_Tick.. $
;..$ %
timer// 
.// 
Start// 
(// 
)// 
;// 
}00 	
private22 
void22 

Timer_Tick22 
(22  
object22  &
sender22' -
,22- .
	EventArgs22/ 8
e229 :
)22: ;
{22< =
if33 
(33 
remainingTime33 
>33 
$num33  !
)33! "
{33# $
remainingTime44 
-=44  
$num44! $
;44$ %
timeProgressBar66 
.66  
Value66  %
=66& '
(66( )
remainingTime66) 6
/667 8
	totalTime669 B
)66B C
*66D E
$num66F I
;66I J
if88 
(88 
remainingTime88 !
>88" #
	totalTime88$ -
*88. /
$num880 3
)883 4
{885 6
timeProgressBar99 #
.99# $

Foreground99$ .
=99/ 0
Brushes991 8
.998 9
Green999 >
;99> ?
}:: 
else:: 
if:: 
(:: 
remainingTime:: (
>::) *
	totalTime::+ 4
*::5 6
$num::7 :
)::: ;
{::< =
timeProgressBar;; #
.;;# $

Foreground;;$ .
=;;/ 0
Brushes;;1 8
.;;8 9
Orange;;9 ?
;;;? @
}<< 
else<< 
{<< 
timeProgressBar== #
.==# $

Foreground==$ .
===/ 0
Brushes==1 8
.==8 9
Red==9 <
;==< =
}>> 
}?? 
else?? 
{?? 
timer@@ 
.@@ 
Stop@@ 
(@@ 
)@@ 
;@@ 
}AA 
}BB 	
privateDD 
voidDD 
Canvas_MouseDownDD %
(DD% &
objectDD& ,
senderDD- 3
,DD3 4 
MouseButtonEventArgsDD5 I
eDDJ K
)DDK L
{DDM N
currentLineEE 
=EE 
newEE 
PolylineEE &
{EE' (
StrokeFF 
=FF 
BrushesFF  
.FF  !
BlueFF! %
,FF% &
StrokeThicknessGG 
=GG  !
$numGG" $
}HH 
;HH 
drawingCanvasII 
.II 
ChildrenII "
.II" #
AddII# &
(II& '
currentLineII' 2
)II2 3
;II3 4#
currentTraceCoordinatesJJ #
.JJ# $
ClearJJ$ )
(JJ) *
)JJ* +
;JJ+ ,
PointKK 

startPointKK 
=KK 
eKK  
.KK  !
GetPositionKK! ,
(KK, -
drawingCanvasKK- :
)KK: ;
;KK; <#
currentTraceCoordinatesLL #
.LL# $
AddLL$ '
(LL' (

startPointLL( 2
)LL2 3
;LL3 4
currentLineMM 
.MM 
PointsMM 
.MM 
AddMM "
(MM" #

startPointMM# -
)MM- .
;MM. /
}NN 	
privatePP 
voidPP 
Canvas_MouseMovePP %
(PP% &
objectPP& ,
senderPP- 3
,PP3 4
MouseEventArgsPP5 C
ePPD E
)PPE F
{PPG H
ifQQ 
(QQ 
eQQ 
.QQ 

LeftButtonQQ 
==QQ 
MouseButtonStateQQ  0
.QQ0 1
PressedQQ1 8
&&QQ9 ;
currentLineQQ< G
!=QQH J
nullQQK O
)QQO P
{QQQ R
PointRR 
currentPointRR "
=RR# $
eRR% &
.RR& '
GetPositionRR' 2
(RR2 3
drawingCanvasRR3 @
)RR@ A
;RRA B#
currentTraceCoordinatesSS '
.SS' (
AddSS( +
(SS+ ,
currentPointSS, 8
)SS8 9
;SS9 :
currentLineTT 
.TT 
PointsTT "
.TT" #
AddTT# &
(TT& '
currentPointTT' 3
)TT3 4
;TT4 5
}UU 
}VV 	
privateXX 
voidXX 
Canvas_MouseUpXX #
(XX# $
objectXX$ *
senderXX+ 1
,XX1 2 
MouseButtonEventArgsXX3 G
eXXH I
)XXI J
{XXK L 
traceCoordinatesListZZ  
.ZZ  !
AddZZ! $
(ZZ$ %
newZZ% (
ListZZ) -
<ZZ- .
PointZZ. 3
>ZZ3 4
(ZZ4 5#
currentTraceCoordinatesZZ5 L
)ZZL M
)ZZM N
;ZZN O
traceGraphicsList[[ 
.[[ 
Add[[ !
([[! "
currentLine[[" -
)[[- .
;[[. /
SendTraceToServer^^ 
(^^ #
currentTraceCoordinates^^ 5
)^^5 6
;^^6 7
ifaa 
(aa 
CheckIntersectionaa !
(aa! "#
currentTraceCoordinatesaa" 9
)aa9 :
)aa: ;
{aa< =

MessageBoxbb 
.bb 
Showbb 
(bb  
$strbb  B
)bbB C
;bbC D
}dd 
currentLineff 
=ff 
nullff 
;ff 
}gg 	
privateii 
voidii 
SendTraceToServerii &
(ii& '
Listii' +
<ii+ ,
Pointii, 1
>ii1 2
traceCoordinatesii3 C
)iiC D
{iiE F
}ll 	
privatenn 
voidnn 
AddTraceFromServernn '
(nn' (
Listnn( ,
<nn, -
Pointnn- 2
>nn2 3
traceCoordinatesnn4 D
)nnD E
{nnF G
Polylineoo 
receivedLineoo !
=oo" #
newoo$ '
Polylineoo( 0
{oo1 2
Strokepp 
=pp 
Brushespp  
.pp  !
Redpp! $
,pp$ %
StrokeThicknessqq 
=qq  !
$numqq" $
}rr 
;rr 
foreachtt 
(tt 
vartt 
pointtt 
intt !
traceCoordinatestt" 2
)tt2 3
{tt4 5
receivedLineuu 
.uu 
Pointsuu #
.uu# $
Adduu$ '
(uu' (
pointuu( -
)uu- .
;uu. /
}vv  
traceCoordinatesListyy  
.yy  !
Addyy! $
(yy$ %
traceCoordinatesyy% 5
)yy5 6
;yy6 7
traceGraphicsListzz 
.zz 
Addzz !
(zz! "
receivedLinezz" .
)zz. /
;zz/ 0
drawingCanvas}} 
.}} 
Children}} "
.}}" #
Add}}# &
(}}& '
receivedLine}}' 3
)}}3 4
;}}4 5
}~~ 	
private
ÄÄ 
bool
ÄÄ 
CheckIntersection
ÄÄ &
(
ÄÄ& '
List
ÄÄ' +
<
ÄÄ+ ,
Point
ÄÄ, 1
>
ÄÄ1 2
newTrace
ÄÄ3 ;
)
ÄÄ; <
{
ÄÄ= >
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
trace
ÇÇ 
in
ÇÇ !"
traceCoordinatesList
ÇÇ" 6
)
ÇÇ6 7
{
ÇÇ8 9
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
point
ÉÉ "
in
ÉÉ# %
newTrace
ÉÉ& .
)
ÉÉ. /
{
ÉÉ0 1
if
ÑÑ 
(
ÑÑ 
trace
ÑÑ 
.
ÑÑ 
Any
ÑÑ !
(
ÑÑ! "
existingPoint
ÑÑ" /
=>
ÑÑ0 2
ArePointsClose
ÑÑ3 A
(
ÑÑA B
point
ÑÑB G
,
ÑÑG H
existingPoint
ÑÑI V
)
ÑÑV W
)
ÑÑW X
)
ÑÑX Y
{
ÑÑZ [
return
ÖÖ 
true
ÖÖ #
;
ÖÖ# $
}
ÜÜ 
}
áá 
}
àà 
return
ââ 
false
ââ 
;
ââ 
}
ää 	
private
åå 
bool
åå 
ArePointsClose
åå #
(
åå# $
Point
åå$ )
p1
åå* ,
,
åå, -
Point
åå. 3
p2
åå4 6
,
åå6 7
double
åå8 >
	threshold
åå? H
=
ååI J
$num
ååK N
)
ååN O
{
ååP Q
double
éé 
distance
éé 
=
éé 
Math
éé "
.
éé" #
Sqrt
éé# '
(
éé' (
Math
éé( ,
.
éé, -
Pow
éé- 0
(
éé0 1
p1
éé1 3
.
éé3 4
X
éé4 5
-
éé6 7
p2
éé8 :
.
éé: ;
X
éé; <
,
éé< =
$num
éé> ?
)
éé? @
+
ééA B
Math
ééC G
.
ééG H
Pow
ééH K
(
ééK L
p1
ééL N
.
ééN O
Y
ééO P
-
ééQ R
p2
ééS U
.
ééU V
Y
ééV W
,
ééW X
$num
ééY Z
)
ééZ [
)
éé[ \
;
éé\ ]
return
èè 
distance
èè 
<=
èè 
	threshold
èè (
;
èè( )
}
êê 	
}
ëë 
}ôô ©˙
.C:\TripasDeGatoCliente\Views\LobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback+ ?
,? @!
ILobbyManagerCallbackA V
{W X
private 
ChatManagerClient !
chatManager" -
;- .
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
private 
UserManagerClient !
userManager" -
;- .
private 
bool 
isConnected  
=! "
false# (
;( )
private 
string 
	lobbyCode  
;  !
public 
	LobbyView 
( 
string 
	lobbyCode  )
)) *
{+ ,
InitializeComponent 
(  
)  !
;! "
this 
. 
	lobbyCode 
= 
	lobbyCode &
;& '
lbCode 
. 
Content 
= 
	lobbyCode &
;& '
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
InitializeLobby 
( 
) 
; 
lobbyManager   
=   
new   
LobbyManagerClient   1
(  1 2
new  2 5
InstanceContext  6 E
(  E F
this  F J
)  J K
)  K L
;  L M
chatManager!! 
=!! 
new!! 
ChatManagerClient!! /
(!!/ 0
new!!0 3
InstanceContext!!4 C
(!!C D
this!!D H
)!!H I
)!!I J
;!!J K
userManager"" 
="" 
new"" 
UserManagerClient"" /
(""/ 0
)""0 1
;""1 2&
InitializeConnectionsAsync## &
(##& '
)##' (
;##( )
if$$ 
($$ 
!$$ 
string$$ 
.$$ 
IsNullOrEmpty$$ %
($$% & 
UserProfileSingleton$$& :
.$$: ;
PicPath$$; B
)$$B C
)$$C D
{$$E F
imgProfile1%% 
.%% 
Source%% "
=%%# $
new%%% (
BitmapImage%%) 4
(%%4 5
new%%5 8
Uri%%9 <
(%%< = 
UserProfileSingleton%%= Q
.%%Q R
PicPath%%R Y
,%%Y Z
UriKind%%[ b
.%%b c
RelativeOrAbsolute%%c u
)%%u v
)%%v w
;%%w x
}&& 
}'' 	
private)) 
async)) 
void)) &
InitializeConnectionsAsync)) 5
())5 6
)))6 7
{))8 9
LoggerManager** 
logger**  
=**! "
new**# &
LoggerManager**' 4
(**4 5
this**5 9
.**9 :
GetType**: A
(**A B
)**B C
)**C D
;**D E
try++ 
{++ 
await,, 
InitializeChatAsync,, )
(,,) *
),,* +
;,,+ ,
await-- 
ConnectToLobbyAsync-- )
(--) *
)--* +
;--+ ,
}.. 
catch.. 
(.. %
EndpointNotFoundException.. .
ex../ 1
)..1 2
{..3 4
logger// 
.// 
LogError// 
(//  
ex//  "
)//" #
;//# $

Dispatcher00 
.00 
Invoke00 !
(00! "
(00" #
)00# $
=>00% '
DialogManager00( 5
.005 6!
ShowErrorMessageAlert006 K
(00K L
$str00L p
)00p q
)00q r
;00r s
GoToMenuView11 
(11 
)11 
;11 
}22 
catch22 
(22 "
CommunicationException22 +
ex22, .
)22. /
{220 1
logger33 
.33 
LogError33 
(33  
ex33  "
)33" #
;33# $

Dispatcher44 
.44 
Invoke44 !
(44! "
(44" #
)44# $
=>44% '
DialogManager44( 5
.445 6!
ShowErrorMessageAlert446 K
(44K L
$str44L t
)44t u
)44u v
;44v w
GoToMenuView55 
(55 
)55 
;55 
}66 
catch66 
(66 
TimeoutException66 %
ex66& (
)66( )
{66* +
logger77 
.77 
LogError77 
(77  
ex77  "
)77" #
;77# $

Dispatcher88 
.88 
Invoke88 !
(88! "
(88" #
)88# $
=>88% '
DialogManager88( 5
.885 6!
ShowErrorMessageAlert886 K
(88K L
$str88L 
)	88 Ä
)
88Ä Å
;
88Å Ç
GoToMenuView99 
(99 
)99 
;99 
}:: 
};; 	
private== 
async== 
Task== 
InitializeChatAsync== .
(==. /
)==/ 0
{==1 2
LoggerManager>> 
logger>>  
=>>! "
new>># &
LoggerManager>>' 4
(>>4 5
this>>5 9
.>>9 :
GetType>>: A
(>>A B
)>>B C
)>>C D
;>>D E
try?? 
{?? 
await@@ 
chatManager@@ !
.@@! "
ConnectToChatAsync@@" 4
(@@4 5 
UserProfileSingleton@@5 I
.@@I J
UserName@@J R
,@@R S
	lobbyCode@@T ]
)@@] ^
;@@^ _
}AA 
catchAA 
(AA %
EndpointNotFoundExceptionAA .
exAA/ 1
)AA1 2
{AA3 4
loggerBB 
.BB 
LogErrorBB 
(BB  
exBB  "
)BB" #
;BB# $
DialogManagerCC 
.CC !
ShowErrorMessageAlertCC 3
(CC3 4
$strCC4 ^
)CC^ _
;CC_ `
}DD 
catchDD 
(DD 
TimeoutExceptionDD %
exDD& (
)DD( )
{DD* +
loggerEE 
.EE 
LogErrorEE 
(EE  
exEE  "
)EE" #
;EE# $
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4
$strFF4 c
)FFc d
;FFd e
}GG 
catchGG 
(GG "
CommunicationExceptionGG +
exGG, .
)GG. /
{GG0 1
loggerHH 
.HH 
LogErrorHH 
(HH  
exHH  "
)HH" #
;HH# $
DialogManagerII 
.II !
ShowErrorMessageAlertII 3
(II3 4
$strII4 `
)II` a
;IIa b
}JJ 
}KK 	
privateNN 
asyncNN 
TaskNN 
ConnectToLobbyAsyncNN .
(NN. /
)NN/ 0
{NN1 2
LoggerManagerOO 
loggerOO  
=OO! "
newOO# &
LoggerManagerOO' 4
(OO4 5
thisOO5 9
.OO9 :
GetTypeOO: A
(OOA B
)OOB C
)OOC D
;OOD E
tryPP 
{PP 
boolQQ 
	connectedQQ 
=QQ  
awaitQQ! &
TaskQQ' +
.QQ+ ,
RunQQ, /
(QQ/ 0
(QQ0 1
)QQ1 2
=>QQ3 5
lobbyManagerQQ6 B
.QQB C 
ConnectPlayerToLobbyQQC W
(QQW X
	lobbyCodeQQX a
,QQa b 
UserProfileSingletonQQc w
.QQw x
	IdProfile	QQx Å
)
QQÅ Ç
)
QQÇ É
;
QQÉ Ñ
ifSS 
(SS 
!SS 
	connectedSS 
)SS 
{SS  !
DialogManagerTT !
.TT! "!
ShowErrorMessageAlertTT" 7
(TT7 8
$strTT8 W
)TTW X
;TTX Y
}UU 
elseUU 
{UU 
isConnectedVV 
=VV  !
trueVV" &
;VV& '
}WW 
}XX 
catchXX 
(XX %
EndpointNotFoundExceptionXX .
exXX/ 1
)XX1 2
{XX3 4
loggerYY 
.YY 
LogErrorYY 
(YY  
exYY  "
)YY" #
;YY# $
DialogManagerZZ 
.ZZ !
ShowErrorMessageAlertZZ 3
(ZZ3 4
$strZZ4 `
)ZZ` a
;ZZa b
}[[ 
catch[[ 
([[ 
TimeoutException[[ %
ex[[& (
)[[( )
{[[* +
logger\\ 
.\\ 
LogError\\ 
(\\  
ex\\  "
)\\" #
;\\# $
DialogManager]] 
.]] !
ShowErrorMessageAlert]] 3
(]]3 4
$str]]4 d
)]]d e
;]]e f
}^^ 
catch^^ 
(^^ "
CommunicationException^^ +
ex^^, .
)^^. /
{^^0 1
logger__ 
.__ 
LogError__ 
(__  
ex__  "
)__" #
;__# $
DialogManager`` 
.`` !
ShowErrorMessageAlert`` 3
(``3 4
$str``4 a
)``a b
;``b c
}aa 
}bb 	
privatedd 
asyncdd 
voiddd  
BtnSendMessage_Clickdd /
(dd/ 0
objectdd0 6
senderdd7 =
,dd= >
RoutedEventArgsdd? N
eddO P
)ddP Q
{ddR S
LoggerManageree 
loggeree  
=ee! "
newee# &
LoggerManageree' 4
(ee4 5
thisee5 9
.ee9 :
GetTypeee: A
(eeA B
)eeB C
)eeC D
;eeD E
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
{gg4 5
varhh 
messagehh 
=hh 
newhh !
Messagehh" )
{hh* +
userNameii 
=ii  
UserProfileSingletonii 3
.ii3 4
UserNameii4 <
,ii< =
chatMessagejj 
=jj  !
messageTextjj" -
}kk 
;kk 
trymm 
{mm 
awaitnn 
chatManagernn %
.nn% &
SendMessageAsyncnn& 6
(nn6 7 
UserProfileSingletonnn7 K
.nnK L
UserNamennL T
,nnT U
messagennV ]
,nn] ^
	lobbyCodenn_ h
)nnh i
;nni j
txtMessageInputoo #
.oo# $
Clearoo$ )
(oo) *
)oo* +
;oo+ ,
}pp 
catchpp 
(pp %
EndpointNotFoundExceptionpp 2
expp3 5
)pp5 6
{pp7 8
loggerqq 
.qq 
LogErrorqq #
(qq# $
exqq$ &
)qq& '
;qq' (
DialogManagerrr !
.rr! "!
ShowErrorMessageAlertrr" 7
(rr7 8
$strrr8 W
)rrW X
;rrX Y
}ss 
catchss 
(ss 
TimeoutExceptionss )
exss* ,
)ss, -
{ss. /
loggertt 
.tt 
LogErrortt #
(tt# $
extt$ &
)tt& '
;tt' (
DialogManageruu !
.uu! "!
ShowErrorMessageAlertuu" 7
(uu7 8
$struu8 h
)uuh i
;uui j
}vv 
catchvv 
(vv "
CommunicationExceptionvv /
exvv0 2
)vv2 3
{vv4 5
loggerww 
.ww 
LogErrorww #
(ww# $
exww$ &
)ww& '
;ww' (
DialogManagerxx !
.xx! "!
ShowErrorMessageAlertxx" 7
(xx7 8
$strxx8 e
)xxe f
;xxf g
}yy 
}zz 
}{{ 	
public}} 
async}} 
void}} 
InitializeLobby}} )
(}}) *
)}}* +
{}}, -
Lobby~~ 
lobby~~ 
=~~ 
await~~ 
lobbyBrowser~~  ,
.~~, -
GetLobbyByCodeAsync~~- @
(~~@ A
	lobbyCode~~A J
)~~J K
;~~K L
if 
( 

IsUserHost 
( 
lobby  
)  !
)! "
{# $
labelPlayer1
ÄÄ 
.
ÄÄ 
Content
ÄÄ $
=
ÄÄ% &
lobby
ÄÄ' ,
.
ÄÄ, -
Players
ÄÄ- 4
.
ÄÄ4 5
ContainsKey
ÄÄ5 @
(
ÄÄ@ A
$str
ÄÄA L
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
ÄÄ] ^
$str
ÄÄ^ i
]
ÄÄi j
.
ÄÄj k
userName
ÄÄk s
:
ÄÄt u
$strÄÄv å
;ÄÄå ç
labelPlayer2
ÅÅ 
.
ÅÅ 
Content
ÅÅ $
=
ÅÅ% &
lobby
ÅÅ' ,
.
ÅÅ, -
Players
ÅÅ- 4
.
ÅÅ4 5
ContainsKey
ÅÅ5 @
(
ÅÅ@ A
$str
ÅÅA L
)
ÅÅL M
?
ÅÅN O
lobby
ÅÅP U
.
ÅÅU V
Players
ÅÅV ]
[
ÅÅ] ^
$str
ÅÅ^ i
]
ÅÅi j
.
ÅÅj k
userName
ÅÅk s
:
ÅÅt u
$strÅÅv å
;ÅÅå ç
imgProfile1
ÇÇ 
.
ÇÇ 
Source
ÇÇ "
=
ÇÇ# $
new
ÇÇ% (
BitmapImage
ÇÇ) 4
(
ÇÇ4 5
new
ÇÇ5 8
Uri
ÇÇ9 <
(
ÇÇ< ="
UserProfileSingleton
ÇÇ= Q
.
ÇÇQ R
PicPath
ÇÇR Y
,
ÇÇY Z
UriKind
ÇÇ[ b
.
ÇÇb c 
RelativeOrAbsolute
ÇÇc u
)
ÇÇu v
)
ÇÇv w
;
ÇÇw x
string
ÉÉ 
ruta
ÉÉ 
=
ÉÉ 
userManager
ÉÉ (
.
ÉÉ( )

GetPicPath
ÉÉ) 3
(
ÉÉ3 4
lobby
ÉÉ4 9
.
ÉÉ9 :
Players
ÉÉ: A
[
ÉÉA B
$str
ÉÉB M
]
ÉÉM N
.
ÉÉN O
userName
ÉÉO W
)
ÉÉW X
;
ÉÉX Y
imgProfile2
ÑÑ 
.
ÑÑ 
Source
ÑÑ "
=
ÑÑ# $
new
ÑÑ% (
BitmapImage
ÑÑ) 4
(
ÑÑ4 5
new
ÑÑ5 8
Uri
ÑÑ9 <
(
ÑÑ< =
ruta
ÑÑ= A
,
ÑÑA B
UriKind
ÑÑC J
.
ÑÑJ K 
RelativeOrAbsolute
ÑÑK ]
)
ÑÑ] ^
)
ÑÑ^ _
;
ÑÑ_ `
}
áá 
else
áá 
{
áá 
labelPlayer1
àà 
.
àà 
Content
àà $
=
àà% &
lobby
àà' ,
.
àà, -
Players
àà- 4
.
àà4 5
ContainsKey
àà5 @
(
àà@ A
$str
ààA L
)
ààL M
?
ààN O
lobby
ààP U
.
ààU V
Players
ààV ]
[
àà] ^
$str
àà^ i
]
àài j
.
ààj k
userName
ààk s
:
ààt u
$strààv å
;ààå ç
labelPlayer2
ââ 
.
ââ 
Content
ââ $
=
ââ% &
lobby
ââ' ,
.
ââ, -
Players
ââ- 4
.
ââ4 5
ContainsKey
ââ5 @
(
ââ@ A
$str
ââA L
)
ââL M
?
ââN O
lobby
ââP U
.
ââU V
Players
ââV ]
[
ââ] ^
$str
ââ^ i
]
ââi j
.
ââj k
userName
ââk s
:
âât u
$strââv å
;ââå ç
imgProfile1
ää 
.
ää 
Source
ää "
=
ää# $
new
ää% (
BitmapImage
ää) 4
(
ää4 5
new
ää5 8
Uri
ää9 <
(
ää< ="
UserProfileSingleton
ää= Q
.
ääQ R
PicPath
ääR Y
,
ääY Z
UriKind
ää[ b
.
ääb c 
RelativeOrAbsolute
ääc u
)
ääu v
)
ääv w
;
ääw x
string
ãã 
ruta
ãã 
=
ãã 
userManager
ãã (
.
ãã( )

GetPicPath
ãã) 3
(
ãã3 4
lobby
ãã4 9
.
ãã9 :
Players
ãã: A
[
ããA B
$str
ããB M
]
ããM N
.
ããN O
userName
ããO W
)
ããW X
;
ããX Y
imgProfile2
åå 
.
åå 
Source
åå "
=
åå# $
new
åå% (
BitmapImage
åå) 4
(
åå4 5
new
åå5 8
Uri
åå9 <
(
åå< =
ruta
åå= A
,
ååA B
UriKind
ååC J
.
ååJ K 
RelativeOrAbsolute
ååK ]
)
åå] ^
)
åå^ _
;
åå_ `
btnKickPlayer
çç 
.
çç 

Visibility
çç (
=
çç) *

Visibility
çç+ 5
.
çç5 6
	Collapsed
çç6 ?
;
çç? @
btnInvitedFriend
éé  
.
éé  !

Visibility
éé! +
=
éé, -

Visibility
éé. 8
.
éé8 9
	Collapsed
éé9 B
;
ééB C
btnStartGame
èè 
.
èè 

Visibility
èè '
=
èè( )

Visibility
èè* 4
.
èè4 5
	Collapsed
èè5 >
;
èè> ?
}
êê 
}
ëë 	
private
ìì 
bool
ìì 

IsUserHost
ìì 
(
ìì  
Lobby
ìì  %
lobby
ìì& +
)
ìì+ ,
{
ìì- .
return
îî 
lobby
îî 
.
îî 
Players
îî  
.
îî  !
TryGetValue
îî! ,
(
îî, -
$str
îî- 8
,
îî8 9
out
îî: =
var
îî> A
host
îîB F
)
îîF G
&&
îîH J
host
îîK O
.
îîO P
userName
îîP X
==
îîY ["
UserProfileSingleton
îî\ p
.
îîp q
UserName
îîq y
;
îîy z
}
ïï 	
private
óó 
async
óó 
void
óó 
BtnBack_Click
óó (
(
óó( )
object
óó) /
sender
óó0 6
,
óó6 7
RoutedEventArgs
óó8 G
e
óóH I
)
óóI J
{
óóK L
try
òò 
{
òò 
if
öö 
(
öö "
UserProfileSingleton
öö (
.
öö( )
	IdProfile
öö) 2
<
öö3 4
$num
öö5 ;
)
öö; <
{
öö= >
await
úú 
lobbyManager
úú &
.
úú& '
LeaveLobbyAsync
úú' 6
(
úú6 7
	lobbyCode
úú7 @
,
úú@ A"
UserProfileSingleton
úúB V
.
úúV W
	IdProfile
úúW `
)
úú` a
;
úúa b
await
ùù 
chatManager
ùù %
.
ùù% &
LeaveChatAsync
ùù& 4
(
ùù4 5"
UserProfileSingleton
ùù5 I
.
ùùI J
UserName
ùùJ R
,
ùùR S
	lobbyCode
ùùT ]
)
ùù] ^
;
ùù^ _
GoToMenuView
ûû  
(
ûû  !
)
ûû! "
;
ûû" #
}
üü 
else
üü 
{
üü 
await
°° 
lobbyManager
°° &
.
°°& '
LeaveLobbyAsync
°°' 6
(
°°6 7
	lobbyCode
°°7 @
,
°°@ A"
UserProfileSingleton
°°B V
.
°°V W
	IdProfile
°°W `
)
°°` a
;
°°a b
await
¢¢ 
chatManager
¢¢ %
.
¢¢% &
LeaveChatAsync
¢¢& 4
(
¢¢4 5"
UserProfileSingleton
¢¢5 I
.
¢¢I J
UserName
¢¢J R
,
¢¢R S
	lobbyCode
¢¢T ]
)
¢¢] ^
;
¢¢^ _
GoToLoginView
££ !
(
££! "
)
££" #
;
££# $
}
§§ 
}
•• 
catch
•• 
(
•• 
	Exception
•• 
ex
•• !
)
••! "
{
••# $

MessageBox
¶¶ 
.
¶¶ 
Show
¶¶ 
(
¶¶  
$"
¶¶  "
$str
¶¶" <
{
¶¶< =
ex
¶¶= ?
.
¶¶? @
Message
¶¶@ G
}
¶¶G H
"
¶¶H I
)
¶¶I J
;
¶¶J K
}
ßß 
}
®® 	
private
™™ 
async
™™ 
void
™™ 
	OnClosing
™™ $
(
™™$ %
object
™™% +
sender
™™, 2
,
™™2 3
CancelEventArgs
™™4 C
e
™™D E
)
™™E F
{
™™G H
if
´´ 
(
´´ 
isConnected
´´ 
)
´´ 
{
´´ 
try
¨¨ 
{
¨¨ 
await
≠≠ 
Task
≠≠ 
.
≠≠ 
Run
≠≠ "
(
≠≠" #
(
≠≠# $
)
≠≠$ %
=>
≠≠& (
lobbyManager
ÆÆ $
.
ÆÆ$ %

LeaveLobby
ÆÆ% /
(
ÆÆ/ 0
	lobbyCode
ÆÆ0 9
,
ÆÆ9 :"
UserProfileSingleton
ÆÆ; O
.
ÆÆO P
	IdProfile
ÆÆP Y
)
ÆÆY Z
)
ÆÆZ [
;
ÆÆ[ \
}
ØØ 
catch
ØØ 
(
ØØ 
	Exception
ØØ "
ex
ØØ# %
)
ØØ% &
{
ØØ' (
Console
∞∞ 
.
∞∞ 
	WriteLine
∞∞ %
(
∞∞% &
$"
∞∞& (
$str
∞∞( B
{
∞∞B C
ex
∞∞C E
.
∞∞E F
Message
∞∞F M
}
∞∞M N
"
∞∞N O
)
∞∞O P
;
∞∞P Q
}
±± 
}
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ 
ScrollToBottom
µµ #
(
µµ# $
)
µµ$ %
{
µµ& '
var
∂∂ 
scrollViewer
∂∂ 
=
∂∂ 
VisualTreeHelper
∂∂ /
.
∂∂/ 0
	GetParent
∂∂0 9
(
∂∂9 :
ChatMessagesPanel
∂∂: K
)
∂∂K L
as
∂∂M O
ScrollViewer
∂∂P \
;
∂∂\ ]
scrollViewer
∑∑ 
?
∑∑ 
.
∑∑ 
ScrollToEnd
∑∑ %
(
∑∑% &
)
∑∑& '
;
∑∑' (
}
∏∏ 	
private
∫∫ 
void
∫∫ 
GoToMenuView
∫∫ !
(
∫∫! "
)
∫∫" #
{
∫∫$ %
MenuView
ªª 
menuView
ªª 
=
ªª 
new
ªª  #
MenuView
ªª$ ,
(
ªª, -
)
ªª- .
;
ªª. /
if
ºº 
(
ºº 
this
ºº 
.
ºº 
NavigationService
ºº &
!=
ºº' )
null
ºº* .
)
ºº. /
{
ºº0 1
this
ΩΩ 
.
ΩΩ 
NavigationService
ΩΩ &
.
ΩΩ& '
Navigate
ΩΩ' /
(
ΩΩ/ 0
menuView
ΩΩ0 8
)
ΩΩ8 9
;
ΩΩ9 :
}
ææ 
else
ææ 
{
ææ 

MessageBox
øø 
.
øø 
Show
øø 
(
øø  
$str
øø  E
)
øøE F
;
øøF G
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
GoToLoginView
√√ "
(
√√" #
)
√√# $
{
√√% &
	LoginView
ƒƒ 
	loginView
ƒƒ 
=
ƒƒ  !
new
ƒƒ" %
	LoginView
ƒƒ& /
(
ƒƒ/ 0
)
ƒƒ0 1
;
ƒƒ1 2
if
≈≈ 
(
≈≈ 
this
≈≈ 
.
≈≈ 
NavigationService
≈≈ &
!=
≈≈' )
null
≈≈* .
)
≈≈. /
{
≈≈0 1
this
∆∆ 
.
∆∆ 
NavigationService
∆∆ &
.
∆∆& '
Navigate
∆∆' /
(
∆∆/ 0
	loginView
∆∆0 9
)
∆∆9 :
;
∆∆: ;
}
«« 
else
«« 
{
«« 

MessageBox
»» 
.
»» 
Show
»» 
(
»»  
$str
»»  E
)
»»E F
;
»»F G
}
…… 
}
   	
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
ŒŒ$ %

MessageBox
œœ 
.
œœ 
Show
œœ 
(
œœ  
$str
œœ  ?
)
œœ? @
;
œœ@ A
GoToMenuView
–– 
(
–– 
)
–– 
;
–– 
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
◊◊ 
Task
◊◊ 
.
◊◊ 
Run
◊◊ 
(
◊◊ 
(
◊◊  
)
◊◊  !
=>
◊◊" $
DialogManager
ÿÿ !
.
ÿÿ! "%
ShowWarningMessageAlert
ÿÿ" 9
(
ÿÿ9 :
$str
ÿÿ: [
)
ÿÿ[ \
)
ŸŸ 
;
ŸŸ 
try
⁄⁄ 
{
⁄⁄ 
if
€€ 
(
€€ "
UserProfileSingleton
€€ ,
.
€€, -
	IdProfile
€€- 6
<
€€7 8
$num
€€9 ?
)
€€? @
{
€€A B
GoToMenuView
‹‹ $
(
‹‹$ %
)
‹‹% &
;
‹‹& '
}
›› 
else
›› 
{
›› 
GoToLoginView
ﬁﬁ %
(
ﬁﬁ% &
)
ﬁﬁ& '
;
ﬁﬁ' (
}
ﬂﬂ 
}
‡‡ 
catch
‡‡ 
(
‡‡ 
	Exception
‡‡ "
ex
‡‡# %
)
‡‡% &
{
‡‡' (

MessageBox
·· 
.
·· 
Show
·· #
(
··# $
$"
··$ &
$str
··& @
{
··@ A
ex
··A C
.
··C D
Message
··D K
}
··K L
"
··L M
)
··M N
;
··N O
}
‚‚ 
;
„„ 
}
‰‰ 
)
‰‰ 
;
‰‰ 
}
ÂÂ 	
public
ÁÁ 
void
ÁÁ 
GuestLeftCallback
ÁÁ %
(
ÁÁ% &
)
ÁÁ& '
{
ÁÁ( )

Dispatcher
ÈÈ 
.
ÈÈ 
Invoke
ÈÈ 
(
ÈÈ 
(
ÈÈ 
)
ÈÈ  
=>
ÈÈ! #
{
ÈÈ$ %
labelPlayer2
ÍÍ 
.
ÍÍ 
Content
ÍÍ $
=
ÍÍ% &
$str
ÍÍ' =
;
ÍÍ= >
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
ÓÓ !
GuestJoinedCallback
ÓÓ '
(
ÓÓ' (
string
ÓÓ( .
	guestName
ÓÓ/ 8
)
ÓÓ8 9
{
ÓÓ: ;

Dispatcher
ÔÔ 
.
ÔÔ 
Invoke
ÔÔ 
(
ÔÔ 
(
ÔÔ 
)
ÔÔ  
=>
ÔÔ! #
{
ÔÔ$ %
labelPlayer2
 
.
 
Content
 $
=
% &
	guestName
' 0
;
0 1
}
ÒÒ 
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ  
BtnStartGame_Click
ÙÙ '
(
ÙÙ' (
object
ÙÙ( .
sender
ÙÙ/ 5
,
ÙÙ5 6
RoutedEventArgs
ÙÙ7 F
e
ÙÙG H
)
ÙÙH I
{
ÙÙJ K
lobbyManager
ıı 
.
ıı 

StartMatch
ıı #
(
ıı# $
	lobbyCode
ıı$ -
)
ıı- .
;
ıı. /
}
ˆˆ 	
public
¯¯ 
void
¯¯ 
BroadcastMessage
¯¯ $
(
¯¯$ %
Message
¯¯% ,
message
¯¯- 4
)
¯¯4 5
{
¯¯6 7
Application
˘˘ 
.
˘˘ 
Current
˘˘ 
.
˘˘  

Dispatcher
˘˘  *
.
˘˘* +
Invoke
˘˘+ 1
(
˘˘1 2
(
˘˘2 3
)
˘˘3 4
=>
˘˘5 7
{
˘˘8 9
Border
˙˙ 
messageContainer
˙˙ '
=
˙˙( )
new
˙˙* -
Border
˙˙. 4
{
˙˙5 6

Background
˚˚ 
=
˚˚  
new
˚˚! $
SolidColorBrush
˚˚% 4
(
˚˚4 5
Colors
˚˚5 ;
.
˚˚; <
White
˚˚< A
)
˚˚A B
,
˚˚B C
BorderThickness
¸¸ #
=
¸¸$ %
new
¸¸& )
	Thickness
¸¸* 3
(
¸¸3 4
$num
¸¸4 5
)
¸¸5 6
,
¸¸6 7
Padding
˝˝ 
=
˝˝ 
new
˝˝ !
	Thickness
˝˝" +
(
˝˝+ ,
$num
˝˝, .
)
˝˝. /
,
˝˝/ 0
Margin
˛˛ 
=
˛˛ 
new
˛˛  
	Thickness
˛˛! *
(
˛˛* +
$num
˛˛+ -
,
˛˛- .
$num
˛˛/ 0
,
˛˛0 1
$num
˛˛2 4
,
˛˛4 5
$num
˛˛6 7
)
˛˛7 8
,
˛˛8 9!
HorizontalAlignment
ˇˇ '
=
ˇˇ( )
message
ˇˇ* 1
.
ˇˇ1 2
userName
ˇˇ2 :
==
ˇˇ; ="
UserProfileSingleton
ˇˇ> R
.
ˇˇR S
UserName
ˇˇS [
?
ˇˇ\ ]!
HorizontalAlignment
ˇˇ^ q
.
ˇˇq r
Right
ˇˇr w
:
ˇˇx y"
HorizontalAlignmentˇˇz ç
.ˇˇç é
Leftˇˇé í
}
ÄÄ 
;
ÄÄ 
	TextBlock
ÇÇ 
messageBlock
ÇÇ &
=
ÇÇ' (
new
ÇÇ) ,
	TextBlock
ÇÇ- 6
{
ÇÇ7 8
Text
ÉÉ 
=
ÉÉ 
$"
ÉÉ 
{
ÉÉ 
message
ÉÉ %
.
ÉÉ% &
chatMessage
ÉÉ& 1
}
ÉÉ1 2
$str
ÉÉ2 3
{
ÉÉ3 4
DateTime
ÉÉ4 <
.
ÉÉ< =
Now
ÉÉ= @
:
ÉÉ@ A
$str
ÉÉA F
}
ÉÉF G
"
ÉÉG H
,
ÉÉH I

Foreground
ÑÑ 
=
ÑÑ  
new
ÑÑ! $
SolidColorBrush
ÑÑ% 4
(
ÑÑ4 5
Colors
ÑÑ5 ;
.
ÑÑ; <
Black
ÑÑ< A
)
ÑÑA B
,
ÑÑB C
FontSize
ÖÖ 
=
ÖÖ 
$num
ÖÖ !
,
ÖÖ! "

FontWeight
ÜÜ 
=
ÜÜ  
FontWeights
ÜÜ! ,
.
ÜÜ, -
Bold
ÜÜ- 1
,
ÜÜ1 2
TextWrapping
áá  
=
áá! "
TextWrapping
áá# /
.
áá/ 0
Wrap
áá0 4
,
áá4 5
MaxWidth
àà 
=
àà 
$num
àà "
}
ââ 
;
ââ 
messageContainer
ãã  
.
ãã  !
Child
ãã! &
=
ãã' (
messageBlock
ãã) 5
;
ãã5 6
ChatMessagesPanel
åå !
.
åå! "
Children
åå" *
.
åå* +
Add
åå+ .
(
åå. /
messageContainer
åå/ ?
)
åå? @
;
åå@ A
ScrollToBottom
çç 
(
çç 
)
çç  
;
çç  !
}
éé 
)
éé 
;
éé 
}
èè 	
public
ëë 
void
ëë 
GameStarted
ëë 
(
ëë  
)
ëë  !
{
ëë" #
GoToGameMatch
íí 
(
íí 
)
íí 
;
íí 
}
ìì 	
private
ïï 
void
ïï 
GoToGameMatch
ïï "
(
ïï" #
)
ïï# $
{
ïï% &
Application
ññ 
.
ññ 
Current
ññ 
.
ññ  

Dispatcher
ññ  *
.
ññ* +
Invoke
ññ+ 1
(
ññ1 2
(
ññ2 3
)
ññ3 4
=>
ññ5 7
{
ññ8 9
var
óó 
	gameMatch
óó 
=
óó 
new
óó  #
	GameMatch
óó$ -
(
óó- .
)
óó. /
;
óó/ 0
NavigationService
òò !
?
òò! "
.
òò" #
Navigate
òò# +
(
òò+ ,
	gameMatch
òò, 5
)
òò5 6
;
òò6 7
}
ôô 
)
ôô 
;
ôô 
}
öö 	
private
úú 
void
úú $
btnInvitedFriend_Click
úú +
(
úú+ ,
object
úú, 2
sender
úú3 9
,
úú9 :
RoutedEventArgs
úú; J
e
úúK L
)
úúL M
{
úúN O
}
ûû 	
}
üü 
}†† ◊U
4C:\TripasDeGatoCliente\Views\CreateLobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
CreateLobbyView (
:) *
Page+ /
{0 1
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
CreateLobbyView 
( 
)  
{! "
InitializeComponent 
(  
)  !
;! " 
InitializeFormValues  
(  !
)! "
;" #
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
}   	
private"" 
void""  
InitializeFormValues"" )
("") *
)""* +
{"", -
cboxNode$$ 
.$$ 
ItemsSource$$  
=$$! "
new$$# &
List$$' +
<$$+ ,
int$$, /
>$$/ 0
{$$1 2
$num$$3 4
,$$4 5
$num$$6 7
,$$7 8
$num$$9 :
}$$; <
;$$< =
cboxNode%% 
.%% 
SelectedIndex%% "
=%%# $
$num%%% &
;%%& '
cboxTime(( 
.(( 
ItemsSource((  
=((! "
new((# &
List((' +
<((+ ,
string((, 2
>((2 3
{((4 5
$str((6 @
,((@ A
$str((B L
,((L M
$str((N Y
}((Z [
;(([ \
cboxTime)) 
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
{,,R S
if.. 
(.. 
string.. 
... 
IsNullOrWhiteSpace.. )
(..) *
txtNameLobby..* 6
...6 7
Text..7 ;
)..; <
)..< =
{..> ?

MessageBox// 
.// 
Show// 
(//  
$str//  O
,//O P
$str//Q X
,//X Y
MessageBoxButton//Z j
.//j k
OK//k m
,//m n
MessageBoxImage//o ~
.//~ 
Error	// Ñ
)
//Ñ Ö
;
//Ö Ü
return00 
;00 
}11 
if33 
(33 
cboxNode33 
.33 
SelectedItem33 %
==33& (
null33) -
||33. 0
cboxTime331 9
.339 :
SelectedItem33: F
==33G I
null33J N
)33N O
{33P Q

MessageBox44 
.44 
Show44 
(44  
$str44  ^
,44^ _
$str44` g
,44g h
MessageBoxButton44i y
.44y z
OK44z |
,44| }
MessageBoxImage	44~ ç
.
44ç é
Error
44é ì
)
44ì î
;
44î ï
return55 
;55 
}66 
string99 
gameName99 
=99 
txtNameLobby99 *
.99* +
Text99+ /
.99/ 0
Trim990 4
(994 5
)995 6
;996 7
int:: 
	nodeCount:: 
=:: 
(:: 
int::  
)::  !
cboxNode::! )
.::) *
SelectedItem::* 6
;::6 7
TimeSpan;; 
duration;; 
=;; 
TimeSpan;;  (
.;;( )
Zero;;) -
;;;- .
switch>> 
(>> 
cboxTime>> 
.>> 
SelectedItem>> )
.>>) *
ToString>>* 2
(>>2 3
)>>3 4
)>>4 5
{>>6 7
case?? 
$str?? 
:??  
duration@@ 
=@@ 
TimeSpan@@ '
.@@' (
FromMinutes@@( 3
(@@3 4
$num@@4 5
)@@5 6
;@@6 7
breakAA 
;AA 
caseBB 
$strBB 
:BB  
durationCC 
=CC 
TimeSpanCC '
.CC' (
FromMinutesCC( 3
(CC3 4
$numCC4 5
)CC5 6
;CC6 7
breakDD 
;DD 
caseEE 
$strEE  
:EE  !
durationFF 
=FF 
TimeSpanFF '
.FF' (
FromMinutesFF( 3
(FF3 4
$numFF4 6
)FF6 7
;FF7 8
breakGG 
;GG 
defaultHH 
:HH 

MessageBoxII 
.II 
ShowII #
(II# $
$strII$ D
,IID E
$strIIF M
,IIM N
MessageBoxButtonIIO _
.II_ `
OKII` b
,IIb c
MessageBoxImageIId s
.IIs t
ErrorIIt y
)IIy z
;IIz {
returnJJ 
;JJ 
}KK 
tryMM 
{MM 
varOO 
ownerOO 
=OO 
newOO 
ProfileOO  '
{OO( )
	idProfilePP 
=PP  
UserProfileSingletonPP  4
.PP4 5
	IdProfilePP5 >
,PP> ?
userNameQQ 
=QQ  
UserProfileSingletonQQ 3
.QQ3 4
UserNameQQ4 <
}RR 
;RR 
stringUU 
	lobbyCodeUU  
=UU! "
awaitUU# (
lobbyBrowserUU) 5
.UU5 6
CreateLobbyAsyncUU6 F
(UUF G
gameNameUUG O
,UUO P
	nodeCountUUQ Z
,UUZ [
ownerUU\ a
,UUa b
durationUUc k
)UUk l
;UUl m
ifWW 
(WW 
!WW 
stringWW 
.WW 
IsNullOrEmptyWW )
(WW) *
	lobbyCodeWW* 3
)WW3 4
)WW4 5
{WW6 7
GoToLobbyViewYY !
(YY! "
	lobbyCodeYY" +
)YY+ ,
;YY, -
}ZZ 
elseZZ 
{ZZ 

MessageBox[[ 
.[[ 
Show[[ #
([[# $
$str[[$ V
,[[V W
$str[[X _
,[[_ `
MessageBoxButton[[a q
.[[q r
OK[[r t
,[[t u
MessageBoxImage	[[v Ö
.
[[Ö Ü
Error
[[Ü ã
)
[[ã å
;
[[å ç
}\\ 
}]] 
catch]] 
(]] %
EndpointNotFoundException]] .
ex]]/ 1
)]]1 2
{]]3 4

MessageBox^^ 
.^^ 
Show^^ 
(^^  
$"^^  "
$str^^" E
{^^E F
ex^^F H
.^^H I
Message^^I P
}^^P Q
"^^Q R
,^^R S
$str^^T [
,^^[ \
MessageBoxButton^^] m
.^^m n
OK^^n p
,^^p q
MessageBoxImage	^^r Å
.
^^Å Ç
Error
^^Ç á
)
^^á à
;
^^à â
}__ 
catch__ 
(__ 
TimeoutException__ %
ex__& (
)__( )
{__* +

MessageBox`` 
.`` 
Show`` 
(``  
$"``  "
$str``" <
{``< =
ex``= ?
.``? @
Message``@ G
}``G H
"``H I
,``I J
$str``K R
,``R S
MessageBoxButton``T d
.``d e
OK``e g
,``g h
MessageBoxImage``i x
.``x y
Error``y ~
)``~ 
;	`` Ä
}aa 
catchaa 
(aa "
CommunicationExceptionaa +
exaa, .
)aa. /
{aa0 1

MessageBoxbb 
.bb 
Showbb 
(bb  
$"bb  "
$strbb" 9
{bb9 :
exbb: <
.bb< =
Messagebb= D
}bbD E
"bbE F
,bbF G
$strbbH O
,bbO P
MessageBoxButtonbbQ a
.bba b
OKbbb d
,bbd e
MessageBoxImagebbf u
.bbu v
Errorbbv {
)bb{ |
;bb| }
}cc 
catchcc 
(cc 
	Exceptioncc 
excc !
)cc! "
{cc# $

MessageBoxdd 
.dd 
Showdd 
(dd  
$"dd  "
$strdd" ?
{dd? @
exdd@ B
.ddB C
MessageddC J
}ddJ K
"ddK L
,ddL M
$strddN U
,ddU V
MessageBoxButtonddW g
.ddg h
OKddh j
,ddj k
MessageBoxImageddl {
.dd{ |
Error	dd| Å
)
ddÅ Ç
;
ddÇ É
}ee 
}ff 	
privategg 
voidgg 
BtnBack_Clickgg "
(gg" #
objectgg# )
sendergg* 0
,gg0 1
	EventArgsgg2 ;
egg< =
)gg= >
{gg? @
GoToMenuViewhh 
(hh 
)hh 
;hh 
}ii 	
privatekk 
voidkk 
GoToLobbyViewkk "
(kk" #
stringkk# )
	lobbyCodekk* 3
)kk3 4
{kk5 6
	LobbyViewll 
	lobbyViewll 
=ll  !
newll" %
	LobbyViewll& /
(ll/ 0
	lobbyCodell0 9
)ll9 :
;ll: ;
ifmm 
(mm 
thismm 
.mm 
NavigationServicemm &
!=mm' )
nullmm* .
)mm. /
{mm0 1
thisnn 
.nn 
NavigationServicenn &
.nn& '
Navigatenn' /
(nn/ 0
	lobbyViewnn0 9
)nn9 :
;nn: ;
}oo 
elseoo 
{oo 

MessageBoxpp 
.pp 
Showpp 
(pp  
$strpp  \
,pp\ ]
$strpp^ e
,ppe f
MessageBoxButtonppg w
.ppw x
OKppx z
,ppz {
MessageBoxImage	pp| ã
.
ppã å
Error
ppå ë
)
ppë í
;
ppí ì
}qq 
}rr 	
privatess 
voidss 
GoToMenuViewss !
(ss! "
)ss" #
{ss$ %
MenuViewtt 
menuViewtt 
=tt 
newtt  #
MenuViewtt$ ,
(tt, -
)tt- .
;tt. /
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
(vv/ 0
menuViewvv0 8
)vv8 9
;vv9 :
}ww 
elseww 
{ww 

MessageBoxxx 
.xx 
Showxx 
(xx  
$strxx  \
,xx\ ]
$strxx^ e
,xxe f
MessageBoxButtonxxg w
.xxw x
OKxxx z
,xxz {
MessageBoxImage	xx| ã
.
xxã å
Error
xxå ë
)
xxë í
;
xxí ì
}yy 
}zz 	
}|| 
}}} ˛0
6C:\TripasDeGatoCliente\Views\CodeGameMatchView.xaml.cs
	namespace		 	
TripasDeGatoCliente		
 
.		 
Views		 #
{		$ %
public

 

partial

 
class

 
CodeGameMatch

 &
:

' (
Page

) -
{

. /
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
public 
CodeGameMatch 
( 
) 
{  
InitializeComponent 
(  
)  !
;! "
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
} 	
public 
void  
GenerateGuestProfile (
(( )
)) *
{+ ,
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
;D E
try 
{ 
string 
	codeMatch  
=! "
txtCodeLobby# /
./ 0
Text0 4
;4 5 
UserProfileSingleton $
.$ %
Instance% -
.- .
CreateGuestInstance. A
(A B
)B C
;C D
} 
catch 
( %
EndpointNotFoundException .
endpointException/ @
)@ A
{B C
logger 
. 
LogError 
(  
endpointException  1
)1 2
;2 3
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
{,,K L 
GenerateGuestProfile--  
(--  !
)--! "
;--" #
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
	idProfile33 !
=33" # 
UserProfileSingleton33$ 8
.338 9
	IdProfile339 B
,33B C
userName44  
=44! " 
UserProfileSingleton44# 7
.447 8
UserName448 @
,44@ A
picturePath55 #
=55$ % 
UserProfileSingleton55& :
.55: ;
PicPath55; B
,55B C
score66 
=66  
UserProfileSingleton66  4
.664 5
Score665 :
}77 
;77 
bool99 
joined99 
=99  !
await99" '
lobbyBrowser99( 4
.994 5
JoinLobbyAsync995 C
(99C D
	lobbyCode99D M
,99M N
guestProfile99O [
)99[ \
;99\ ]
if:: 
(:: 
joined:: 
):: 
{::  !
	LobbyView;; !
	lobbyView;;" +
=;;, -
new;;. 1
	LobbyView;;2 ;
(;;; <
	lobbyCode;;< E
);;E F
;;;F G
this<< 
.<< 
NavigationService<< .
.<<. /
Navigate<</ 7
(<<7 8
	lobbyView<<8 A
)<<A B
;<<B C
}== 
else== 
{== 

MessageBox>> "
.>>" #
Show>># '
(>>' (
$str>>( u
)>>u v
;>>v w
}?? 
}@@ 
else@@ 
{@@ 

MessageBoxAA 
.AA 
ShowAA #
(AA# $
$strAA$ i
)AAi j
;AAj k
}BB 
}CC 
catchCC 
(CC 
	ExceptionCC 
exCC !
)CC! "
{CC# $

MessageBoxDD 
.DD 
ShowDD 
(DD  
$"DD  "
$strDD" E
{DDE F
exDDF H
.DDH I
MessageDDI P
}DDP Q
"DDQ R
)DDR S
;DDS T
}EE 
}FF 	
}GG 
}HH øJ
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
	idProfile  )
;) *
UserName 
= 
profile 
. 
userName '
;' (
Score 
= 
profile 
. 
score !
;! "
PicPath 
= 
profile 
. 
picturePath )
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
}22 ∞
%C:\TripasDeGatoCliente\Logic\Trace.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
public		 

class		 
Trace		 
{		 
public

 
string

 
Player
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
public 
List 
< 
Point 
> 
TracePoints &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Color 
{ 
get !
;! "
set# &
;& '
}( )
public 
double 
	Thickness 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
	Timestamp !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Õ
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
}33 √
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
} Œ
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
}$$ £
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