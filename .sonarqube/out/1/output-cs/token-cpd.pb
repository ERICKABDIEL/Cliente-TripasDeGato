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
]77) *�
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
} �
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
} �6
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
}xx ��
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
txtValidationCode4	uuo �
.
uu� �
Text
uu� �
}
uu� �
{
uu� � 
txtValidationCode5
uu� �
.
uu� �
Text
uu� �
}
uu� �
{
uu� � 
txtValidationCode6
uu� �
.
uu� �
Text
uu� �
}
uu� �
"
uu� �
;
uu� �
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
userName
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
score
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
picturePath
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
�� 	
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
�� 	 
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
�� 	
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
�� 	
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
�� 	
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
�� 	
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
�� 	
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
�� 
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
}�� �a
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
}zz ��
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
�� 
(
�� 
	Exception
�� 
ex
�� !
)
��! "
{
��# $
HandleException
�� 
(
��  
ex
��  "
,
��" #
logger
��$ *
)
��* +
;
��+ ,
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
�� 
void
�� 
HandleException
�� $
(
��$ %
	Exception
��% .
ex
��/ 1
,
��1 2
LoggerManager
��3 @
logger
��A G
)
��G H
{
��I J
if
�� 
(
�� 
ex
�� 
is
�� 
FaultException
�� $
<
��$ %"
ProfileNotFoundFault
��% 9
>
��9 :
faultEx
��; B
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
��  
faultEx
��  '
)
��' (
;
��( )
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
��H I'
dialogNotRetrievedProfile
��I b
)
��b c
;
��c d
}
�� 
else
�� 
if
�� 
(
�� 
ex
�� 
is
�� '
EndpointNotFoundException
�� 6
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
�� 
else
�� 
if
�� 
(
�� 
ex
�� 
is
�� 
TimeoutException
�� -
)
��- .
{
��/ 0
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
�� 
else
�� 
if
�� 
(
�� 
ex
�� 
is
�� $
CommunicationException
�� 3
)
��3 4
{
��5 6
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
	idProfile
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
userName
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
��N O
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
��M N 
selectedFriendName
��N `
)
��` a
;
��a b
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
��| }!
selectedFriendName��~ �
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
}�� � 
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
}00 ��
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
}�� �]
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
�� 
bool
�� 
CheckIntersection
�� &
(
��& '
List
��' +
<
��+ ,
Point
��, 1
>
��1 2
newTrace
��3 ;
)
��; <
{
��= >
foreach
�� 
(
�� 
var
�� 
trace
�� 
in
�� !"
traceCoordinatesList
��" 6
)
��6 7
{
��8 9
foreach
�� 
(
�� 
var
�� 
point
�� "
in
��# %
newTrace
��& .
)
��. /
{
��0 1
if
�� 
(
�� 
trace
�� 
.
�� 
Any
�� !
(
��! "
existingPoint
��" /
=>
��0 2
ArePointsClose
��3 A
(
��A B
point
��B G
,
��G H
existingPoint
��I V
)
��V W
)
��W X
)
��X Y
{
��Z [
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
�� 
bool
�� 
ArePointsClose
�� #
(
��# $
Point
��$ )
p1
��* ,
,
��, -
Point
��. 3
p2
��4 6
,
��6 7
double
��8 >
	threshold
��? H
=
��I J
$num
��K N
)
��N O
{
��P Q
double
�� 
distance
�� 
=
�� 
Math
�� "
.
��" #
Sqrt
��# '
(
��' (
Math
��( ,
.
��, -
Pow
��- 0
(
��0 1
p1
��1 3
.
��3 4
X
��4 5
-
��6 7
p2
��8 :
.
��: ;
X
��; <
,
��< =
$num
��> ?
)
��? @
+
��A B
Math
��C G
.
��G H
Pow
��H K
(
��K L
p1
��L N
.
��N O
Y
��O P
-
��Q R
p2
��S U
.
��U V
Y
��V W
,
��W X
$num
��Y Z
)
��Z [
)
��[ \
;
��\ ]
return
�� 
distance
�� 
<=
�� 
	threshold
�� (
;
��( )
}
�� 	
}
�� 
}�� ��
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
)	88 �
)
88� �
;
88� �
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
	IdProfile	QQx �
)
QQ� �
)
QQ� �
;
QQ� �
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
�� 
.
�� 
Content
�� $
=
��% &
lobby
��' ,
.
��, -
Players
��- 4
.
��4 5
ContainsKey
��5 @
(
��@ A
$str
��A L
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
��] ^
$str
��^ i
]
��i j
.
��j k
userName
��k s
:
��t u
$str��v �
;��� �
labelPlayer2
�� 
.
�� 
Content
�� $
=
��% &
lobby
��' ,
.
��, -
Players
��- 4
.
��4 5
ContainsKey
��5 @
(
��@ A
$str
��A L
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
��] ^
$str
��^ i
]
��i j
.
��j k
userName
��k s
:
��t u
$str��v �
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
�� 
userManager
�� (
.
��( )

GetPicPath
��) 3
(
��3 4
lobby
��4 9
.
��9 :
Players
��: A
[
��A B
$str
��B M
]
��M N
.
��N O
userName
��O W
)
��W X
;
��X Y
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
��_ `
}
�� 
else
�� 
{
�� 
labelPlayer1
�� 
.
�� 
Content
�� $
=
��% &
lobby
��' ,
.
��, -
Players
��- 4
.
��4 5
ContainsKey
��5 @
(
��@ A
$str
��A L
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
��] ^
$str
��^ i
]
��i j
.
��j k
userName
��k s
:
��t u
$str��v �
;��� �
labelPlayer2
�� 
.
�� 
Content
�� $
=
��% &
lobby
��' ,
.
��, -
Players
��- 4
.
��4 5
ContainsKey
��5 @
(
��@ A
$str
��A L
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
��] ^
$str
��^ i
]
��i j
.
��j k
userName
��k s
:
��t u
$str��v �
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
�� 
userManager
�� (
.
��( )

GetPicPath
��) 3
(
��3 4
lobby
��4 9
.
��9 :
Players
��: A
[
��A B
$str
��B M
]
��M N
.
��N O
userName
��O W
)
��W X
;
��X Y
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
userName
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
��K L
try
�� 
{
�� 
if
�� 
(
�� "
UserProfileSingleton
�� (
.
��( )
	IdProfile
��) 2
<
��3 4
$num
��5 ;
)
��; <
{
��= >
await
�� 
lobbyManager
�� &
.
��& '
LeaveLobbyAsync
��' 6
(
��6 7
	lobbyCode
��7 @
,
��@ A"
UserProfileSingleton
��B V
.
��V W
	IdProfile
��W `
)
��` a
;
��a b
await
�� 
chatManager
�� %
.
��% &
LeaveChatAsync
��& 4
(
��4 5"
UserProfileSingleton
��5 I
.
��I J
UserName
��J R
,
��R S
	lobbyCode
��T ]
)
��] ^
;
��^ _
GoToMenuView
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
{
�� 
await
�� 
lobbyManager
�� &
.
��& '
LeaveLobbyAsync
��' 6
(
��6 7
	lobbyCode
��7 @
,
��@ A"
UserProfileSingleton
��B V
.
��V W
	IdProfile
��W `
)
��` a
;
��a b
await
�� 
chatManager
�� %
.
��% &
LeaveChatAsync
��& 4
(
��4 5"
UserProfileSingleton
��5 I
.
��I J
UserName
��J R
,
��R S
	lobbyCode
��T ]
)
��] ^
;
��^ _
GoToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� !
)
��! "
{
��# $

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$"
��  "
$str
��" <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
)
��I J
;
��J K
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
�� $
.
��$ %

LeaveLobby
��% /
(
��/ 0
	lobbyCode
��0 9
,
��9 :"
UserProfileSingleton
��; O
.
��O P
	IdProfile
��P Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� 
	Exception
�� "
ex
��# %
)
��% &
{
��' (
Console
�� 
.
�� 
	WriteLine
�� %
(
��% &
$"
��& (
$str
��( B
{
��B C
ex
��C E
.
��E F
Message
��F M
}
��M N
"
��N O
)
��O P
;
��P Q
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
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  E
)
��E F
;
��F G
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
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  E
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
��$ %

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  ?
)
��? @
;
��@ A
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
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :
$str
��: [
)
��[ \
)
�� 
;
�� 
try
�� 
{
�� 
if
�� 
(
�� "
UserProfileSingleton
�� ,
.
��, -
	IdProfile
��- 6
<
��7 8
$num
��9 ?
)
��? @
{
��A B
GoToMenuView
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
else
�� 
{
�� 
GoToLoginView
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� "
ex
��# %
)
��% &
{
��' (

MessageBox
�� 
.
�� 
Show
�� #
(
��# $
$"
��$ &
$str
��& @
{
��@ A
ex
��A C
.
��C D
Message
��D K
}
��K L
"
��L M
)
��M N
;
��N O
}
�� 
;
�� 
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
��$ %
labelPlayer2
�� 
.
�� 
Content
�� $
=
��% &
$str
��' =
;
��= >
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
��$ %
labelPlayer2
�� 
.
�� 
Content
�� $
=
��% &
	guestName
��' 0
;
��0 1
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
��J K
lobbyManager
�� 
.
�� 

StartMatch
�� #
(
��# $
	lobbyCode
��$ -
)
��- .
;
��. /
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
��- .
)
��. /
;
��/ 0
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
�� 
void
�� $
btnInvitedFriend_Click
�� +
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
��N O
}
�� 	
}
�� 
}�� �U
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
Error	// �
)
//� �
;
//� �
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
MessageBoxImage	44~ �
.
44� �
Error
44� �
)
44� �
;
44� �
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
MessageBoxImage	[[v �
.
[[� �
Error
[[� �
)
[[� �
;
[[� �
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
MessageBoxImage	^^r �
.
^^� �
Error
^^� �
)
^^� �
;
^^� �
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
;	`` �
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
Error	dd| �
)
dd� �
;
dd� �
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
MessageBoxImage	pp| �
.
pp� �
Error
pp� �
)
pp� �
;
pp� �
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
MessageBoxImage	xx| �
.
xx� �
Error
xx� �
)
xx� �
;
xx� �
}yy 
}zz 	
}|| 
}}} �0
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
}HH �J
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
}22 �
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
} �
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
} �
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
}$$ �
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