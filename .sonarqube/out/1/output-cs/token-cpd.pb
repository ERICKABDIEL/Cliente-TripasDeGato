�
<C:\Users\cv419\source\repos\Cliente-TripasDeGato\App.xaml.cs
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
} ��
HC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\LoginView.xaml.cs
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
.##: ;
IdPerfil##; C
)##C D
;##D E
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
if<< 
(<< 
profile<< 
!=<<  "
null<<# '
)<<' (
{<<) *
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
(EE %
EndpointNotFoundExceptionEE .%
endpointNotFoundExceptionEE/ H
)EEH I
{EEJ K
loggerFF 
.FF 
LogErrorFF 
(FF  %
endpointNotFoundExceptionFF  9
)FF9 :
;FF: ;
DialogManagerGG 
.GG !
ShowErrorMessageAlertGG 3
(GG3 4

PropertiesGG4 >
.GG> ?
	ResourcesGG? H
.GGH I#
dialogEndPointExceptionGGI `
)GG` a
;GGa b
}HH 
catchHH 
(HH 
TimeoutExceptionHH %
timeoutExceptionHH& 6
)HH6 7
{HH8 9
loggerII 
.II 
LogErrorII 
(II  
timeoutExceptionII  0
)II0 1
;II1 2
DialogManagerJJ 
.JJ !
ShowErrorMessageAlertJJ 3
(JJ3 4

PropertiesJJ4 >
.JJ> ?
	ResourcesJJ? H
.JJH I"
dialogTimeOutExceptionJJI _
)JJ_ `
;JJ` a
}KK 
catchKK 
(KK "
CommunicationExceptionKK +"
communicationExceptionKK, B
)KKB C
{KKD E
loggerLL 
.LL 
LogErrorLL 
(LL  "
communicationExceptionLL  6
)LL6 7
;LL7 8
DialogManagerMM 
.MM !
ShowErrorMessageAlertMM 3
(MM3 4

PropertiesMM4 >
.MM> ?
	ResourcesMM? H
.MMH I'
dialogComunicationExceptionMMI d
)MMd e
;MMe f
}NN 
returnPP 
isAuthenticatedPP "
;PP" #
}QQ 	
privateSS 
voidSS 
ObtainSingletonDataSS (
(SS( )
ProfileSS) 0
profileSS1 8
)SS8 9
{SS: ; 
UserProfileSingletonTT  
.TT  !
InstanceTT! )
.TT) *
CreateInstanceTT* 8
(TT8 9
profileTT9 @
)TT@ A
;TTA B
}UU 	
privateWW 
voidWW !
SetPlayerOnlineStatusWW *
(WW* +
intWW+ .
playerIdWW/ 7
)WW7 8
{WW9 :
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
tryZZ 
{ZZ 
IStatusManager[[ 
statusManager[[ ,
=[[- .
new[[/ 2
StatusManagerClient[[3 F
([[F G
)[[G H
;[[H I
statusManager\\ 
.\\ 
SetPlayerStatus\\ -
(\\- .
playerId\\. 6
,\\6 7!
GameEnumsPlayerStatus\\8 M
.\\M N
Online\\N T
)\\T U
;\\U V
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
}gg 	
privateii 
voidii 
BtnGuest_Clickii #
(ii# $
objectii$ *
senderii+ 1
,ii1 2
RoutedEventArgsii3 B
eiiC D
)iiD E
{iiF G
CodeGameMatchjj 
codeGameMatchjj '
=jj( )
newjj* -
CodeGameMatchjj. ;
(jj; <
)jj< =
;jj= >
thiskk 
.kk 
NavigationServicekk "
.kk" #
Navigatekk# +
(kk+ ,
codeGameMatchkk, 9
)kk9 :
;kk: ;
}ll 	
privatenn 
voidnn 
DisplayMainMenuViewnn (
(nn( )
)nn) *
{nn+ ,
MenuViewoo 
menuViewoo 
=oo 
newoo  #
MenuViewoo$ ,
(oo, -
)oo- .
;oo. /
thispp 
.pp 
NavigationServicepp "
.pp" #
Navigatepp# +
(pp+ ,
menuViewpp, 4
)pp4 5
;pp5 6
}qq 	
privatess 
voidss 
HighlightFieldss #
(ss# $
Controlss$ +
controlss, 3
,ss3 4
boolss5 9
isValidss: A
)ssA B
{ssC D
controltt 
.tt 
BorderBrushtt 
=tt  !
isValidtt" )
?tt* +
Brushestt, 3
.tt3 4
Whitett4 9
:tt: ;
Brushestt< C
.ttC D
RedttD G
;ttG H
}uu 	
privateww 
voidww  
TxtEmail_TextChangedww )
(ww) *
objectww* 0
senderww1 7
,ww7 8 
TextChangedEventArgsww9 M
ewwN O
)wwO P
{wwQ R
stringxx 
emailxx 
=xx 
txtEmailxx #
.xx# $
Textxx$ (
;xx( )
boolyy 
isValidyy 
=yy 
	Validadoryy $
.yy$ %
ValidateEmailyy% 2
(yy2 3
emailyy3 8
)yy8 9
;yy9 :
HighlightField{{ 
({{ 
txtEmail{{ #
,{{# $
isValid{{% ,
){{, -
;{{- .
lbInvalidEmail|| 
.|| 

Visibility|| %
=||& '
isValid||( /
?||0 1

Visibility||2 <
.||< =
	Collapsed||= F
:||G H

Visibility||I S
.||S T
Visible||T [
;||[ \
}}} 	
private 
void '
TxtPassword_PasswordChanged 0
(0 1
object1 7
sender8 >
,> ?
RoutedEventArgs@ O
eP Q
)Q R
{S T
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
��D E
	userEmail
��E N
)
��N O
;
��O P
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
recoveryGrid
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
��M N
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
enterEmailGrid
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
KC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\RegisterView.xaml.cs
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
): ;
{< =
return 
; 
} 
try 
{ 
var 
	userProxy 
= 
new  # 
TripasDeGatoServicio$ 8
.8 9
UserManagerClient9 J
(J K
)K L
;L M
bool!! 
emailRegistered!! $
=!!% &
	userProxy!!' 0
.!!0 1
IsEmailRegistered!!1 B
(!!B C
email!!C H
)!!H I
;!!I J
if"" 
("" 
emailRegistered"" #
)""# $
{""% &
DialogManager## !
.##! "!
ShowErrorMessageAlert##" 7
(##7 8

Properties##8 B
.##B C
	Resources##C L
.##L M
dialogEmailInUse##M ]
)##] ^
;##^ _
HighlightField$$ "
($$" #
txtEmail$$# +
)$$+ ,
;$$, -
return%% 
;%% 
}&& 
var(( "
emailVerificationProxy(( *
=((+ ,
new((- 0 
TripasDeGatoServicio((1 E
.((E F*
EmailVerificationManagerClient((F d
(((d e
)((e f
;((f g
int)) 
result)) 
=)) "
emailVerificationProxy)) 3
.))3 4(
SendVerificationCodeRegister))4 P
())P Q
email))Q V
)))V W
;))W X
if++ 
(++ 
result++ 
==++ 
	Constants++ '
.++' (
SUCCES_OPERATION++( 8
)++8 9
{++: ;
verificationGrid,, $
.,,$ %

Visibility,,% /
=,,0 1

Visibility,,2 <
.,,< =
Visible,,= D
;,,D E
DialogManager-- !
.--! "#
ShowSuccessMessageAlert--" 9
(--9 :

Properties--: D
.--D E
	Resources--E N
.--N O&
dialogVerificationCodeSent--O i
)--i j
;--j k
}.. 
else.. 
{.. 
DialogManager// !
.//! "!
ShowErrorMessageAlert//" 7
(//7 8

Properties//8 B
.//B C
	Resources//C L
.//L M.
"dialogErrorSendingVerificationCode//M o
)//o p
;//p q
}00 
}11 
catch11 
(11 %
EndpointNotFoundException11 .%
endpointNotFoundException11/ H
)11H I
{11J K
logger22 
.22 
LogError22 
(22  %
endpointNotFoundException22  9
)229 :
;22: ;
DialogManager33 
.33 !
ShowErrorMessageAlert33 3
(333 4

Properties334 >
.33> ?
	Resources33? H
.33H I#
dialogEndPointException33I `
)33` a
;33a b
}44 
catch44 
(44 
TimeoutException44 %
timeoutException44& 6
)446 7
{448 9
logger55 
.55 
LogError55 
(55  
timeoutException55  0
)550 1
;551 2
DialogManager66 
.66 !
ShowErrorMessageAlert66 3
(663 4

Properties664 >
.66> ?
	Resources66? H
.66H I"
dialogTimeOutException66I _
)66_ `
;66` a
}77 
catch77 
(77 "
CommunicationException77 +"
communicationException77, B
)77B C
{77D E
logger88 
.88 
LogError88 
(88  "
communicationException88  6
)886 7
;887 8
DialogManager99 
.99 !
ShowErrorMessageAlert99 3
(993 4

Properties994 >
.99> ?
	Resources99? H
.99H I'
dialogComunicationException99I d
)99d e
;99e f
}:: 
};; 	
private== 
void== 
BtnResendCode_Click== (
(==( )
object==) /
sender==0 6
,==6 7
RoutedEventArgs==8 G
e==H I
)==I J
{==K L
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
{?? 
var@@ "
emailVerificationProxy@@ *
=@@+ ,
new@@- 0 
TripasDeGatoServicio@@1 E
.@@E F*
EmailVerificationManagerClient@@F d
(@@d e
)@@e f
;@@f g
intAA 
resultAA 
=AA "
emailVerificationProxyAA 3
.AA3 4(
SendVerificationCodeRegisterAA4 P
(AAP Q
txtEmailAAQ Y
.AAY Z
TextAAZ ^
)AA^ _
;AA_ `
ifCC 
(CC 
resultCC 
==CC 
	ConstantsCC '
.CC' (
SUCCES_OPERATIONCC( 8
)CC8 9
{CC: ;
DialogManagerDD !
.DD! "#
ShowSuccessMessageAlertDD" 9
(DD9 :

PropertiesDD: D
.DDD E
	ResourcesDDE N
.DDN O4
(dialogVerificationCodeResentSuccessfullyDDO w
)DDw x
;DDx y
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
$dialogErrorResendingVerificationCodeFFM q
)FFq r
;FFr s
}GG 
}HH 
catchHH 
(HH %
EndpointNotFoundExceptionHH .%
endpointNotFoundExceptionHH/ H
)HHH I
{HHJ K
loggerII 
.II 
LogErrorII 
(II  %
endpointNotFoundExceptionII  9
)II9 :
;II: ;
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
}KK 
catchKK 
(KK 
TimeoutExceptionKK %
timeoutExceptionKK& 6
)KK6 7
{KK8 9
loggerLL 
.LL 
LogErrorLL 
(LL  
timeoutExceptionLL  0
)LL0 1
;LL1 2
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
}NN 
catchNN 
(NN "
CommunicationExceptionNN +"
communicationExceptionNN, B
)NNB C
{NND E
loggerOO 
.OO 
LogErrorOO 
(OO  "
communicationExceptionOO  6
)OO6 7
;OO7 8
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
}QQ 
}RR 	
privateTT 
voidTT 
BtnValidate_ClickTT &
(TT& '
objectTT' -
senderTT. 4
,TT4 5
RoutedEventArgsTT6 E
eTTF G
)TTG H
{TTI J
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
stringVV 
enteredCodeVV 
=VV  
$"VV! #
{VV# $
txtValidationCode1VV$ 6
.VV6 7
TextVV7 ;
}VV; <
{VV< =
txtValidationCode2VV= O
.VVO P
TextVVP T
}VVT U
{VVU V
txtValidationCode3VVV h
.VVh i
TextVVi m
}VVm n
{VVn o
txtValidationCode4	VVo �
.
VV� �
Text
VV� �
}
VV� �
{
VV� � 
txtValidationCode5
VV� �
.
VV� �
Text
VV� �
}
VV� �
{
VV� � 
txtValidationCode6
VV� �
.
VV� �
Text
VV� �
}
VV� �
"
VV� �
;
VV� �
tryXX 
{XX 
varYY "
emailVerificationProxyYY *
=YY+ ,
newYY- 0 
TripasDeGatoServicioYY1 E
.YYE F*
EmailVerificationManagerClientYYF d
(YYd e
)YYe f
;YYf g
boolZZ 
isCodeValidZZ  
=ZZ! ""
emailVerificationProxyZZ# 9
.ZZ9 :

VerifyCodeZZ: D
(ZZD E
txtEmailZZE M
.ZZM N
TextZZN R
,ZZR S
enteredCodeZZT _
)ZZ_ `
;ZZ` a
if\\ 
(\\ 
isCodeValid\\ 
)\\  
{\\! "
var]] 
	userProxy]] !
=]]" #
new]]$ ' 
TripasDeGatoServicio]]( <
.]]< =
UserManagerClient]]= N
(]]N O
)]]O P
;]]P Q
var__ 
newUser__ 
=__  !
new__" % 
TripasDeGatoServicio__& :
.__: ;
	LoginUser__; D
{__E F
mail`` 
=`` 
txtEmail`` '
.``' (
Text``( ,
,``, -
passwordaa  
=aa! "
Hasheraa# )
.aa) *
HashToSHA256aa* 6
(aa6 7
txtPasswordaa7 B
.aaB C
PasswordaaC K
)aaK L
}bb 
;bb 
vardd 

newProfiledd "
=dd# $
newdd% ( 
TripasDeGatoServiciodd) =
.dd= >
Profiledd> E
{ddF G
userNameee  
=ee! "
txtNameee# *
.ee* +
Textee+ /
,ee/ 0
scoreff 
=ff 
	Constantsff  )
.ff) *
INITIAL_SCOREff* 7
,ff7 8
picturePathgg #
=gg$ %
$strgg& J
}hh 
;hh 
intjj 
accountResultjj %
=jj& '
	userProxyjj( 1
.jj1 2
CreateAccountjj2 ?
(jj? @
newUserjj@ G
,jjG H

newProfilejjI S
)jjS T
;jjT U
ifll 
(ll 
accountResultll %
==ll& (
	Constantsll) 2
.ll2 3
SUCCES_OPERATIONll3 C
)llC D
{llE F
DialogManagermm %
.mm% &#
ShowSuccessMessageAlertmm& =
(mm= >

Propertiesmm> H
.mmH I
	ResourcesmmI R
.mmR S+
dialogAccountCreatedSuccesfullymmS r
)mmr s
;mms t
verificationGridnn (
.nn( )

Visibilitynn) 3
=nn4 5

Visibilitynn6 @
.nn@ A
	CollapsednnA J
;nnJ K
GoToLoginViewoo %
(oo% &
)oo& '
;oo' (
}pp 
elsepp 
{pp 
DialogManagerqq %
.qq% &!
ShowErrorMessageAlertqq& ;
(qq; <

Propertiesqq< F
.qqF G
	ResourcesqqG P
.qqP Q&
dialogAccountCreatedErrrorqqQ k
)qqk l
;qql m
}rr 
}ss 
elsess 
{ss 
DialogManagertt !
.tt! "!
ShowErrorMessageAlerttt" 7
(tt7 8

Propertiestt8 B
.ttB C
	ResourcesttC L
.ttL M)
dialogInvalidVerificationCodettM j
)ttj k
;ttk l
}uu 
}vv 
catchvv 
(vv %
EndpointNotFoundExceptionvv .%
endpointNotFoundExceptionvv/ H
)vvH I
{vvJ K
loggerww 
.ww 
LogErrorww 
(ww  %
endpointNotFoundExceptionww  9
)ww9 :
;ww: ;
DialogManagerxx 
.xx !
ShowErrorMessageAlertxx 3
(xx3 4

Propertiesxx4 >
.xx> ?
	Resourcesxx? H
.xxH I#
dialogEndPointExceptionxxI `
)xx` a
;xxa b
}yy 
catchyy 
(yy 
TimeoutExceptionyy %
timeoutExceptionyy& 6
)yy6 7
{yy8 9
loggerzz 
.zz 
LogErrorzz 
(zz  
timeoutExceptionzz  0
)zz0 1
;zz1 2
DialogManager{{ 
.{{ !
ShowErrorMessageAlert{{ 3
({{3 4

Properties{{4 >
.{{> ?
	Resources{{? H
.{{H I"
dialogTimeOutException{{I _
){{_ `
;{{` a
}|| 
catch|| 
(|| "
CommunicationException|| +"
communicationException||, B
)||B C
{||D E
logger}} 
.}} 
LogError}} 
(}}  "
communicationException}}  6
)}}6 7
;}}7 8
DialogManager~~ 
.~~ !
ShowErrorMessageAlert~~ 3
(~~3 4

Properties~~4 >
.~~> ?
	Resources~~? H
.~~H I'
dialogComunicationException~~I d
)~~d e
;~~e f
} 
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
��Z [
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
��2 3
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
�� *
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
��2 3
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
�� *
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
�� 	
if
�� 
(
�� 
txtPassword
�� 
.
�� 
Password
�� $
.
��$ %
Length
��% +
>
��, -
$num
��. /
)
��/ 0
{
�� 
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
�� 
{
�� 
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
}�� ��
GC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\MenuView.xaml.cs
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
.: ;
Nombre; A
)A B
)B C
{D E

lbUserName   
.   
Content   "
=  # $ 
UserProfileSingleton  % 9
.  9 :
Nombre  : @
;  @ A
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
{++   
UserProfileSingleton,,  
.,,  !
Instance,,! )
.,,) *
ResetInstance,,* 7
(,,7 8
),,8 9
;,,9 :
}-- 	
private// 
void// 
NavigateToLoginView// (
(//( )
)//) *
{//+ ,
	LoginView00 
	loginView00 
=00  !
new00" %
	LoginView00& /
(00/ 0
)000 1
;001 2
this11 
.11 
NavigationService11 "
.11" #
Navigate11# +
(11+ ,
	loginView11, 5
)115 6
;116 7
}22 	
private55 
bool55 
areElementsVisible55 '
=55( )
false55* /
;55/ 0
private77 
async77 
void77 
BtnFriends_Click77 +
(77+ ,
object77, 2
sender773 9
,779 :
RoutedEventArgs77; J
e77K L
)77L M
{77N O
areElementsVisible88 
=88  
!88! "
areElementsVisible88" 4
;884 5
if:: 
(:: 
areElementsVisible:: "
)::" #
{::$ %

lstFriends;; 
.;; 

Visibility;; %
=;;& '

Visibility;;( 2
.;;2 3
Visible;;3 :
;;;: ;
btnAddFriend<< 
.<< 

Visibility<< '
=<<( )

Visibility<<* 4
.<<4 5
Visible<<5 <
;<<< =
btnRemoveFriend== 
.==  

Visibility==  *
===+ ,

Visibility==- 7
.==7 8
Visible==8 ?
;==? @
await>>  
LoadFriendsListAsync>> *
(>>* +
)>>+ ,
;>>, -

lstFriends@@ 
.@@ 
	IsEnabled@@ $
=@@% &
true@@' +
;@@+ ,
btnAddFriendAA 
.AA 
	IsEnabledAA &
=AA' (
trueAA) -
;AA- .
btnRemoveFriendBB 
.BB  
	IsEnabledBB  )
=BB* +
trueBB, 0
;BB0 1

btnFriendsDD 
.DD 

BackgroundDD %
=DD& '
newDD( +
SolidColorBrushDD, ;
(DD; <
ColorDD< A
.DDA B
FromArgbDDB J
(DDJ K
$numDDK M
,DDM N
$numDDO R
,DDR S
$numDDT W
,DDW X
$numDDY \
)DD\ ]
)DD] ^
;DD^ _
}EE 
elseEE 
{EE 

lstFriendsFF 
.FF 

VisibilityFF %
=FF& '

VisibilityFF( 2
.FF2 3
	CollapsedFF3 <
;FF< =
btnAddFriendGG 
.GG 

VisibilityGG '
=GG( )

VisibilityGG* 4
.GG4 5
	CollapsedGG5 >
;GG> ?
btnRemoveFriendHH 
.HH  

VisibilityHH  *
=HH+ ,

VisibilityHH- 7
.HH7 8
	CollapsedHH8 A
;HHA B
txtFriendNameII 
.II 

VisibilityII (
=II) *

VisibilityII+ 5
.II5 6
	CollapsedII6 ?
;II? @
btnAddJJ 
.JJ 

VisibilityJJ !
=JJ" #

VisibilityJJ$ .
.JJ. /
	CollapsedJJ/ 8
;JJ8 9

lstFriendsLL 
.LL 
	IsEnabledLL $
=LL% &
falseLL' ,
;LL, -
btnAddFriendMM 
.MM 
	IsEnabledMM &
=MM' (
falseMM) .
;MM. /
btnRemoveFriendNN 
.NN  
	IsEnabledNN  )
=NN* +
falseNN, 1
;NN1 2
txtFriendNameOO 
.OO 
	IsEnabledOO '
=OO( )
falseOO* /
;OO/ 0
btnAddPP 
.PP 
	IsEnabledPP  
=PP! "
falsePP# (
;PP( )

btnFriendsRR 
.RR 

BackgroundRR %
=RR& '
newRR( +
SolidColorBrushRR, ;
(RR; <
ColorRR< A
.RRA B
FromArgbRRB J
(RRJ K
$numRRK M
,RRM N
$numRRO R
,RRR S
$numRRT W
,RRW X
$numRRY \
)RR\ ]
)RR] ^
;RR^ _
btnAddFriendSS 
.SS 

BackgroundSS '
=SS( )
newSS* -
SolidColorBrushSS. =
(SS= >
ColorSS> C
.SSC D
FromArgbSSD L
(SSL M
$numSSM P
,SSP Q
$numSSR T
,SST U
$numSSV X
,SSX Y
$numSSZ \
)SS\ ]
)SS] ^
;SS^ _
}TT 
}UU 	
privateWW 
voidWW 
BtnAddFriend_ClickWW '
(WW' (
objectWW( .
senderWW/ 5
,WW5 6
RoutedEventArgsWW7 F
eWWG H
)WWH I
{WWJ K
areElementsVisibleXX 
=XX  
!XX! "
areElementsVisibleXX" 4
;XX4 5
ifZZ 
(ZZ 
areElementsVisibleZZ "
)ZZ" #
{ZZ$ %
txtFriendName[[ 
.[[ 

Visibility[[ (
=[[) *

Visibility[[+ 5
.[[5 6
Visible[[6 =
;[[= >
btnAdd\\ 
.\\ 

Visibility\\ !
=\\" #

Visibility\\$ .
.\\. /
Visible\\/ 6
;\\6 7
txtFriendName]] 
.]] 
	IsEnabled]] '
=]]( )
true]]* .
;]]. /
btnAdd^^ 
.^^ 
	IsEnabled^^  
=^^! "
true^^# '
;^^' (
btnAddFriend`` 
.`` 

Background`` '
=``( )
new``* -
SolidColorBrush``. =
(``= >
Color``> C
.``C D
FromArgb``D L
(``L M
$num``M O
,``O P
$num``Q S
,``S T
$num``U W
,``W X
$num``Y [
)``[ \
)``\ ]
;``] ^
}aa 
elseaa 
{aa 
txtFriendNamebb 
.bb 

Visibilitybb (
=bb) *

Visibilitybb+ 5
.bb5 6
	Collapsedbb6 ?
;bb? @
btnAddcc 
.cc 

Visibilitycc !
=cc" #

Visibilitycc$ .
.cc. /
	Collapsedcc/ 8
;cc8 9
txtFriendNameee 
.ee 
	IsEnabledee '
=ee( )
falseee* /
;ee/ 0
btnAddff 
.ff 
	IsEnabledff  
=ff! "
falseff# (
;ff( )
btnAddFriendhh 
.hh 

Backgroundhh '
=hh( )
newhh* -
SolidColorBrushhh. =
(hh= >
Colorhh> C
.hhC D
FromArgbhhD L
(hhL M
$numhhM P
,hhP Q
$numhhR T
,hhT U
$numhhV X
,hhX Y
$numhhZ \
)hh\ ]
)hh] ^
;hh^ _
}ii 
}jj 	
privatemm 
asyncmm 
voidmm 
BtnAdd_Clickmm '
(mm' (
objectmm( .
sendermm/ 5
,mm5 6
RoutedEventArgsmm7 F
emmG H
)mmH I
{mmJ K
stringnn 

friendNamenn 
=nn 
txtFriendNamenn  -
.nn- .
Textnn. 2
.nn2 3
Trimnn3 7
(nn7 8
)nn8 9
;nn9 :
ifoo 
(oo 
ValidateFriendNameoo "
(oo" #

friendNameoo# -
)oo- .
)oo. /
{oo0 1
awaitpp 
	AddFriendpp 
(pp  

friendNamepp  *
)pp* +
;pp+ ,
}qq 
txtFriendNamerr 
.rr 
Clearrr 
(rr  
)rr  !
;rr! "
}ss 	
privateuu 
booluu 
ValidateFriendNameuu '
(uu' (
stringuu( .

friendNameuu/ 9
)uu9 :
{uu; <
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %

friendNamevv% /
)vv/ 0
)vv0 1
{vv2 3
DialogManagerww 
.ww !
ShowErrorMessageAlertww 3
(ww3 4

Propertiesww4 >
.ww> ?
	Resourcesww? H
.wwH I
dialogInvalidNamewwI Z
)wwZ [
;ww[ \
returnxx 
falsexx 
;xx 
}yy 
returnzz 
truezz 
;zz 
}{{ 	
private}} 
async}} 
Task}} 
	AddFriend}} $
(}}$ %
string}}% +

friendName}}, 6
)}}6 7
{}}8 9
LoggerManager~~ 
logger~~  
=~~! "
new~~# &
LoggerManager~~' 4
(~~4 5
this~~5 9
.~~9 :
GetType~~: A
(~~A B
)~~B C
)~~C D
;~~D E
try 
{ 
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
��; <
IdPerfil
��< D
)
��D E
{
��F G
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
��4 5
IdPerfil
��5 =
;
��= >
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
��8 9
IdPerfil
��9 A
;
��A B
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
��@ A
IdPerfil
��A I
;
��I J
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
��P Q
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
�� 
gameName
�� 
=
�� 
$str
�� .
;
��. /
int
�� 
	nodeCount
�� 
=
�� 
$num
�� 
;
�� 
Profile
�� 
owner
�� 
=
�� 
new
�� 
Profile
��  '
{
��( )
	idProfile
��* 3
=
��4 5"
UserProfileSingleton
��6 J
.
��J K
IdPerfil
��K S
,
��S T
userName
��U ]
=
��^ _"
UserProfileSingleton
��` t
.
��t u
Nombre
��u {
}
��| }
;
��} ~
try
�� 
{
�� 
string
�� 
	lobbyCode
��  
=
��! "
await
��# (
lobbyBrowser
��) 5
.
��5 6
CreateLobbyAsync
��6 F
(
��F G
gameName
��G O
,
��O P
	nodeCount
��Q Z
,
��Z [
owner
��\ a
)
��a b
;
��b c
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
	lobbyCode
��* 3
)
��3 4
)
��4 5
{
��6 7
GoToLobbyView
�� !
(
��! "
	lobbyCode
��" +
)
��+ ,
;
��, -
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
��L M&
dialogErrorCreatingLobby
��M e
)
��e f
;
��f g
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
�� 
}
�� 	
private
�� 
void
�� 
GoToLobbyView
�� "
(
��" #
string
��# )
	lobbyCode
��* 3
)
��3 4
{
��5 6
	LobbyView
�� 
	lobbyView
�� 
=
��  !
new
��" %
	LobbyView
��& /
(
��/ 0
	lobbyCode
��0 9
)
��9 :
;
��: ;
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
	lobbyView
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
��I J
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
}�� �
KC:\Users\cv419\source\repos\Cliente-TripasDeGato\Properties\AssemblyInfo.cs
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
CC:\Users\cv419\source\repos\Cliente-TripasDeGato\MainWindow.xaml.cs
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
} �@
NC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\SelectLobbyView.xaml.cs
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
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
LoadLobbiesAsync 
( 
) 
; 
} 	
private 
Task 
LoadLobbiesAsync %
(% &
)& '
{( )
try 
{ 
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
( 
	Exception 
ex !
)! "
{# $

MessageBox 
. 
Show 
(  
$"  "
$str" ?
{? @
ex@ B
.B C
MessageC J
}J K
"K L
)L M
;M N
} 
return!! 
Task!! 
.!! 
CompletedTask!! %
;!!% &
}"" 	
private$$ 
async$$ 
void$$ 
BtnJoinGame_Click$$ ,
($$, -
object$$- 3
sender$$4 :
,$$: ;
RoutedEventArgs$$< K
e$$L M
)$$M N
{$$O P
if&& 
(&& 
LobbyDataGrid&& 
.&& 
SelectedItem&& *
is&&+ -
Lobby&&. 3
selectedLobby&&4 A
)&&A B
{&&C D
string'' 
	lobbyCode''  
=''! "
selectedLobby''# 0
.''0 1
Code''1 5
;''5 6
Profile(( 
guest(( 
=(( 
new((  #
Profile(($ +
{((, -
	idProfile)) 
=))  
UserProfileSingleton))  4
.))4 5
IdPerfil))5 =
,))= >
userName** 
=**  
UserProfileSingleton** 3
.**3 4
Nombre**4 :
}++ 
;++ 
try-- 
{-- 
bool// 
joined// 
=//  !
await//" '
lobbyBrowser//( 4
.//4 5
JoinLobbyAsync//5 C
(//C D
	lobbyCode//D M
,//M N
guest//O T
)//T U
;//U V
if11 
(11 
joined11 
)11 
{11  !
	LobbyView22 !
	lobbyView22" +
=22, -
new22. 1
	LobbyView222 ;
(22; <
	lobbyCode22< E
)22E F
;22F G
this33 
.33 
NavigationService33 .
.33. /
Navigate33/ 7
(337 8
	lobbyView338 A
)33A B
;33B C
}44 
else44 
{44 

MessageBox55 "
.55" #
Show55# '
(55' (
$str55( u
)55u v
;55v w
}66 
}77 
catch77 
(77 
	Exception77 "
ex77# %
)77% &
{77' (

MessageBox88 
.88 
Show88 #
(88# $
$"88$ &
$str88& I
{88I J
ex88J L
.88L M
Message88M T
}88T U
"88U V
)88V W
;88W X
}99 
}:: 
else:: 
{:: 

MessageBox;; 
.;; 
Show;; 
(;;  
$str;;  M
);;M N
;;;N O
}<< 
}== 	
private@@ 
void@@ 
BtnBack_Click@@ "
(@@" #
object@@# )
sender@@* 0
,@@0 1
RoutedEventArgs@@2 A
e@@B C
)@@C D
{@@E F
MenuViewAA 
menuViewAA 
=AA 
newAA  #
MenuViewAA$ ,
(AA, -
)AA- .
;AA. /
ifBB 
(BB 
thisBB 
.BB 
NavigationServiceBB &
!=BB' )
nullBB* .
)BB. /
{BB0 1
thisCC 
.CC 
NavigationServiceCC &
.CC& '
NavigateCC' /
(CC/ 0
menuViewCC0 8
)CC8 9
;CC9 :
}DD 
elseDD 
{DD 

MessageBoxEE 
.EE 
ShowEE 
(EE  
$strEE  E
)EEE F
;EEF G
}FF 
}GG 	
privateHH 
voidHH 
BtnSearch_ClickHH $
(HH$ %
objectHH% +
senderHH, 2
,HH2 3
RoutedEventArgsHH4 C
eHHD E
)HHE F
{HHG H
}II 	
publicKK 
voidKK  
GenerateGuestProfileKK (
(KK( )
)KK) *
{KK+ ,
LoggerManagerLL 
loggerLL  
=LL! "
newLL# &
LoggerManagerLL' 4
(LL4 5
thisLL5 9
.LL9 :
GetTypeLL: A
(LLA B
)LLB C
)LLC D
;LLD E
tryNN 
{NN 
stringOO 
randomUsernameOO %
=OO& '
GuestProfileOO( 4
.OO4 5!
RandomChooserUsernameOO5 J
(OOJ K
)OOK L
;OOL M
stringPP 
randomAvatarPP #
=PP$ %
GuestProfilePP& 2
.PP2 3#
RandomChooserAvatarIconPP3 J
(PPJ K
)PPK L
;PPL M
stringQQ 
	codeMatchQQ  
=QQ! "
txtCodeLobbyQQ# /
.QQ/ 0
TextQQ0 4
;QQ4 5!
GuestProfileSingletonRR %
.RR% &
InstanceRR& .
.RR. /
CreateInstanceRR/ =
(RR= >
	codeMatchRR> G
)RRG H
;RRH I
SelectLobbyViewSS 
selectLobbyViewSS  /
=SS0 1
newSS2 5
SelectLobbyViewSS6 E
(SSE F
)SSF G
;SSG H
thisTT 
.TT 
NavigationServiceTT &
.TT& '
NavigateTT' /
(TT/ 0
selectLobbyViewTT0 ?
)TT? @
;TT@ A
}UU 
catchUU 
(UU %
EndpointNotFoundExceptionUU .
endpointExceptionUU/ @
)UU@ A
{UUB C
loggerVV 
.VV 
LogErrorVV 
(VV  
endpointExceptionVV  1
)VV1 2
;VV2 3
DialogManagerWW 
.WW !
ShowErrorMessageAlertWW 3
(WW3 4

PropertiesWW4 >
.WW> ?
	ResourcesWW? H
.WWH I#
dialogEndPointExceptionWWI `
)WW` a
;WWa b
}XX 
catchXX 
(XX 
TimeoutExceptionXX %
timeoutExceptionXX& 6
)XX6 7
{XX8 9
loggerYY 
.YY 
LogErrorYY 
(YY  
timeoutExceptionYY  0
)YY0 1
;YY1 2
DialogManagerZZ 
.ZZ !
ShowErrorMessageAlertZZ 3
(ZZ3 4

PropertiesZZ4 >
.ZZ> ?
	ResourcesZZ? H
.ZZH I"
dialogTimeOutExceptionZZI _
)ZZ_ `
;ZZ` a
}[[ 
catch[[ 
([[ "
CommunicationException[[ +"
communicationException[[, B
)[[B C
{[[D E
logger\\ 
.\\ 
LogError\\ 
(\\  "
communicationException\\  6
)\\6 7
;\\7 8
DialogManager]] 
.]] !
ShowErrorMessageAlert]] 3
(]]3 4

Properties]]4 >
.]]> ?
	Resources]]? H
.]]H I'
dialogComunicationException]]I d
)]]d e
;]]e f
}^^ 
}__ 	
}`` 
}aa �Z
JC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\ProfileView.xaml.cs
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
bool 
	isEditing 
=  
false! &
;& '
public 
ProfileView 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
LoadProfile 
( 
) 
; 
DisableEditing 
( 
) 
; 
} 	
private 
void 
LoadProfile  
(  !
)! "
{# $
lbUserNameProfile 
. 
Content %
=& '
!( )
string) /
./ 0
IsNullOrEmpty0 =
(= > 
UserProfileSingleton> R
.R S
NombreS Y
)Y Z
?[ \ 
UserProfileSingleton] q
.q r
Nombrer x
:y z
$str	{ �
;
� �
txtUserName 
. 
Text 
=  
UserProfileSingleton 3
.3 4
Nombre4 :
;: ;
cboxLanguage 
. 
ItemsSource $
=% &
new' *
List+ /
</ 0
string0 6
>6 7
{8 9
$str: C
,C D
$strE M
,M N
$strO X
}Y Z
;Z [
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% & 
UserProfileSingleton& :
.: ;
FotoRuta; C
)C D
)D E
{F G
imageProfile 
. 
Source #
=$ %
new& )
BitmapImage* 5
(5 6
new6 9
Uri: =
(= > 
UserProfileSingleton> R
.R S
FotoRutaS [
,[ \
UriKind] d
.d e
RelativeOrAbsolutee w
)w x
)x y
;y z
} 
lbScoreProfile 
. 
Content "
=# $
string% +
.+ ,
Format, 2
(2 3

Properties3 =
.= >
	Resources> G
.G H
lbScoreH O
,O P 
UserProfileSingletonQ e
.e f
Puntajef m
)m n
;n o
} 	
private 
void 
EnableEditing "
(" #
)# $
{% &
txtUserName   
.   
	IsEnabled   !
=  " #
true  $ (
;  ( )
cboxLanguage!! 
.!! 
	IsEnabled!! "
=!!# $
true!!% )
;!!) *
btnSave"" 
."" 
	IsEnabled"" 
="" 
true""  $
;""$ %
	isEditing## 
=## 
true## 
;## 
btnSave$$ 
.$$ 

Visibility$$ 
=$$  

Visibility$$! +
.$$+ ,
Visible$$, 3
;$$3 4
}%% 	
private'' 
void'' 
DisableEditing'' #
(''# $
)''$ %
{''& '
txtUserName(( 
.(( 
	IsEnabled(( !
=((" #
false(($ )
;(() *
cboxLanguage)) 
.)) 
	IsEnabled)) "
=))# $
false))% *
;))* +
btnSave** 
.** 
	IsEnabled** 
=** 
false**  %
;**% &
	isEditing++ 
=++ 
false++ 
;++ 
btnSave,, 
.,, 

Visibility,, 
=,,  

Visibility,,! +
.,,+ ,
	Collapsed,,, 5
;,,5 6
}-- 	
private// 
void// 
btnEdit_Click// "
(//" #
object//# )
sender//* 0
,//0 1
RoutedEventArgs//2 A
e//B C
)//C D
{//E F
if00 
(00 
!00 
	isEditing00 
)00 
{00 
EnableEditing11 
(11 
)11 
;11  
}22 
}33 	
private55 
void55 
btnSave_Click55 "
(55" #
object55# )
sender55* 0
,550 1
RoutedEventArgs552 A
e55B C
)55C D
{55E F
if66 
(66 
	isEditing66 
)66 
{66 
if77 
(77 
ValidateFields77 "
(77" #
)77# $
)77$ %
{77& '
string88 
userName88 #
=88$ %
txtUserName88& 1
.881 2
Text882 6
;886 7
string99 
selectedLanguage99 +
=99, -
cboxLanguage99. :
.99: ;
SelectedItem99; G
?99G H
.99H I
ToString99I Q
(99Q R
)99R S
;99S T
SaveProfile;; 
(;;  
userName;;  (
,;;( )
selectedLanguage;;* :
);;: ;
;;;; <
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
.==L M%
dialogCompleteFieldsError==M f
)==f g
;==g h
}>> 
}?? 
}@@ 	
privateBB 
asyncBB 
voidBB 
SaveProfileBB &
(BB& '
stringBB' -
userNameBB. 6
,BB6 7
stringBB8 >
selectedLanguageBB? O
)BBO P
{BBQ R
tryCC 
{CC 
varDD 
serviceDD 
=DD 
newDD ! 
TripasDeGatoServicioDD" 6
.DD6 7
UserManagerClientDD7 H
(DDH I
)DDI J
;DDJ K
intEE 
	idProfileEE 
=EE  
UserProfileSingletonEE  4
.EE4 5
IdPerfilEE5 =
;EE= >
stringFF 
newPicFF 
=FF  
UserProfileSingletonFF  4
.FF4 5
FotoRutaFF5 =
;FF= >
intGG 
updateResultGG  
=GG! "
serviceGG# *
.GG* +
UpdateProfileGG+ 8
(GG8 9
	idProfileGG9 B
,GGB C
userNameGGD L
,GGL M
newPicGGN T
)GGT U
;GGU V
ifII 
(II 
updateResultII  
==II! #
ConstantsManagerII$ 4
.II4 5
	ConstantsII5 >
.II> ?
SUCCES_OPERATIONII? O
)IIO P
{IIQ R 
UserProfileSingletonJJ (
.JJ( )
UpdateNombreJJ) 5
(JJ5 6
userNameJJ6 >
)JJ> ?
;JJ? @ 
UserProfileSingletonKK (
.KK( )
UpdateFotoRutaKK) 7
(KK7 8
newPicKK8 >
)KK> ?
;KK? @
LoadProfileLL 
(LL  
)LL  !
;LL! "
DialogManagerMM !
.MM! "#
ShowSuccessMessageAlertMM" 9
(MM9 :

PropertiesMM: D
.MMD E
	ResourcesMME N
.MMN O
dialogChangesSavedMMO a
)MMa b
;MMb c
DisableEditingNN "
(NN" #
)NN# $
;NN$ %
}OO 
elseOO 
{OO 
DialogManagerPP !
.PP! "!
ShowErrorMessageAlertPP" 7
(PP7 8

PropertiesPP8 B
.PPB C
	ResourcesPPC L
.PPL M(
dialogErrorSavingProfileDataPPM i
)PPi j
;PPj k
}QQ 
}RR 
catchRR 
(RR %
EndpointNotFoundExceptionRR .
)RR. /
{RR0 1
DialogManagerSS 
.SS !
ShowErrorMessageAlertSS 3
(SS3 4

PropertiesSS4 >
.SS> ?
	ResourcesSS? H
.SSH I+
dialogConnectionErrorWithServerSSI h
)SSh i
;SSi j
}TT 
catchTT 
(TT 
TimeoutExceptionTT %
)TT% &
{TT' (
DialogManagerUU 
.UU !
ShowErrorMessageAlertUU 3
(UU3 4

PropertiesUU4 >
.UU> ?
	ResourcesUU? H
.UUH I 
dialogRequestTimeoutUUI ]
)UU] ^
;UU^ _
}VV 
catchVV 
(VV "
CommunicationExceptionVV +
)VV+ ,
{VV- .
DialogManagerWW 
.WW !
ShowErrorMessageAlertWW 3
(WW3 4

PropertiesWW4 >
.WW> ?
	ResourcesWW? H
.WWH I$
dialogCommunicationErrorWWI a
)WWa b
;WWb c
}XX 
catchXX 
(XX 
	ExceptionXX 
exXX !
)XX! "
{XX# $
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
.YYV W$
dialogErrorSavingProfileYYW o
,YYo p
exYYq s
.YYs t
MessageYYt {
)YY{ |
)YY| }
;YY} ~
}ZZ 
}[[ 	
private^^ 
bool^^ 
ValidateFields^^ #
(^^# $
)^^$ %
{^^& '
bool__ 
isValid__ 
=__ 
true__ 
;__  
ifaa 
(aa 
stringaa 
.aa 
IsNullOrWhiteSpaceaa )
(aa) *
txtUserNameaa* 5
.aa5 6
Textaa6 :
)aa: ;
)aa; <
{aa= >
isValidbb 
=bb 
falsebb 
;bb  
txtUserNamecc 
.cc 
BorderBrushcc '
=cc( )
Systemcc* 0
.cc0 1
Windowscc1 8
.cc8 9
Mediacc9 >
.cc> ?
Brushescc? F
.ccF G
RedccG J
;ccJ K
}dd 
elsedd 
{dd 
txtUserNameee 
.ee 
BorderBrushee '
=ee( )
Systemee* 0
.ee0 1
Windowsee1 8
.ee8 9
Mediaee9 >
.ee> ?
Brushesee? F
.eeF G
WhiteeeG L
;eeL M
}ff 
returngg 
isValidgg 
;gg 
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
}nn 
}oo 	
privateqq 
voidqq 
BtnBack_Clickqq "
(qq" #
objectqq# )
senderqq* 0
,qq0 1
RoutedEventArgsqq2 A
eqqB C
)qqC D
{qqE F
GoToMenuViewrr 
(rr 
)rr 
;rr 
}ss 	
}tt 
}uu �
HC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\LobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{$ %
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback+ ?
,? @!
ILobbyManagerCallbackA V
{W X
private 
ChatManagerClient !
chatManager" -
;- .
private 
LobbyManagerClient "
lobbyManager# /
;/ 0
private 
LobbyBrowserClient "
lobbyBrowser# /
;/ 0
private 
Timer 
refreshTimer "
;" #
private 
bool 
isConnected  
=! "
false# (
;( )
private 
string 
	lobbyCode  
;  !
public 
	LobbyView 
( 
string 
	lobbyCode  )
)) *
{+ ,
InitializeComponent 
(  
)  !
;! "
this 
. 
	lobbyCode 
= 
	lobbyCode &
;& '
lbCode 
. 
Content 
= 
	lobbyCode &
;& '
lobbyBrowser 
= 
new 
LobbyBrowserClient 1
(1 2
)2 3
;3 4
	LoadLobby 
( 
) 
; 
lobbyManager 
= 
new 
LobbyManagerClient 1
(1 2
new2 5
InstanceContext6 E
(E F
thisF J
)J K
)K L
;L M
chatManager 
= 
new 
ChatManagerClient /
(/ 0
new0 3
InstanceContext4 C
(C D
thisD H
)H I
)I J
;J K&
InitializeConnectionsAsync   &
(  & '
)  ' (
;  ( )
}!! 	
private## 
async## 
void## &
InitializeConnectionsAsync## 5
(##5 6
)##6 7
{##8 9
LoggerManager$$ 
logger$$  
=$$! "
new$$# &
LoggerManager$$' 4
($$4 5
this$$5 9
.$$9 :
GetType$$: A
($$A B
)$$B C
)$$C D
;$$D E
try%% 
{%% 
await&& 
InitializeChatAsync&& )
(&&) *
)&&* +
;&&+ ,
await'' 
ConnectToLobbyAsync'' )
('') *
)''* +
;''+ ,
}(( 
catch(( 
((( %
EndpointNotFoundException(( .
ex((/ 1
)((1 2
{((3 4
logger)) 
.)) 
LogError)) 
())  
ex))  "
)))" #
;))# $

Dispatcher** 
.** 
Invoke** !
(**! "
(**" #
)**# $
=>**% '
DialogManager**( 5
.**5 6!
ShowErrorMessageAlert**6 K
(**K L
$str**L p
)**p q
)**q r
;**r s
GoToMenuView++ 
(++ 
)++ 
;++ 
},, 
catch,, 
(,, "
CommunicationException,, +
ex,,, .
),,. /
{,,0 1
logger-- 
.-- 
LogError-- 
(--  
ex--  "
)--" #
;--# $

Dispatcher.. 
... 
Invoke.. !
(..! "
(.." #
)..# $
=>..% '
DialogManager..( 5
...5 6!
ShowErrorMessageAlert..6 K
(..K L
$str..L t
)..t u
)..u v
;..v w
GoToMenuView// 
(// 
)// 
;// 
}00 
catch00 
(00 
TimeoutException00 %
ex00& (
)00( )
{00* +
logger11 
.11 
LogError11 
(11  
ex11  "
)11" #
;11# $

Dispatcher22 
.22 
Invoke22 !
(22! "
(22" #
)22# $
=>22% '
DialogManager22( 5
.225 6!
ShowErrorMessageAlert226 K
(22K L
$str22L 
)	22 �
)
22� �
;
22� �
GoToMenuView33 
(33 
)33 
;33 
}44 
}55 	
private77 
async77 
Task77 
InitializeChatAsync77 .
(77. /
)77/ 0
{771 2
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
;88D E
try99 
{99 
await:: 
chatManager:: !
.::! "
ConnectToChatAsync::" 4
(::4 5 
UserProfileSingleton::5 I
.::I J
Nombre::J P
,::P Q
	lobbyCode::R [
)::[ \
;::\ ]
};; 
catch;; 
(;; %
EndpointNotFoundException;; .
ex;;/ 1
);;1 2
{;;3 4
logger<< 
.<< 
LogError<< 
(<<  
ex<<  "
)<<" #
;<<# $
DialogManager== 
.== !
ShowErrorMessageAlert== 3
(==3 4
$str==4 ^
)==^ _
;==_ `
}>> 
catch>> 
(>> 
TimeoutException>> %
ex>>& (
)>>( )
{>>* +
logger?? 
.?? 
LogError?? 
(??  
ex??  "
)??" #
;??# $
DialogManager@@ 
.@@ !
ShowErrorMessageAlert@@ 3
(@@3 4
$str@@4 c
)@@c d
;@@d e
}AA 
catchAA 
(AA "
CommunicationExceptionAA +
exAA, .
)AA. /
{AA0 1
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
$strCC4 `
)CC` a
;CCa b
}DD 
}EE 	
privateHH 
asyncHH 
TaskHH 
ConnectToLobbyAsyncHH .
(HH. /
)HH/ 0
{HH1 2
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
=KK  
awaitKK! &
TaskKK' +
.KK+ ,
RunKK, /
(KK/ 0
(KK0 1
)KK1 2
=>KK3 5
lobbyManagerKK6 B
.KKB C 
ConnectPlayerToLobbyKKC W
(KKW X
	lobbyCodeKKX a
,KKa b 
UserProfileSingletonKKc w
.KKw x
IdPerfil	KKx �
)
KK� �
)
KK� �
;
KK� �
ifMM 
(MM 
!MM 
	connectedMM 
)MM 
{MM  !
DialogManagerNN !
.NN! "!
ShowErrorMessageAlertNN" 7
(NN7 8
$strNN8 W
)NNW X
;NNX Y
}OO 
elseOO 
{OO 
isConnectedPP 
=PP  !
truePP" &
;PP& '
}QQ 
}RR 
catchRR 
(RR %
EndpointNotFoundExceptionRR .
exRR/ 1
)RR1 2
{RR3 4
loggerSS 
.SS 
LogErrorSS 
(SS  
exSS  "
)SS" #
;SS# $
DialogManagerTT 
.TT !
ShowErrorMessageAlertTT 3
(TT3 4
$strTT4 `
)TT` a
;TTa b
}UU 
catchUU 
(UU 
TimeoutExceptionUU %
exUU& (
)UU( )
{UU* +
loggerVV 
.VV 
LogErrorVV 
(VV  
exVV  "
)VV" #
;VV# $
DialogManagerWW 
.WW !
ShowErrorMessageAlertWW 3
(WW3 4
$strWW4 d
)WWd e
;WWe f
}XX 
catchXX 
(XX "
CommunicationExceptionXX +
exXX, .
)XX. /
{XX0 1
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
$strZZ4 a
)ZZa b
;ZZb c
}[[ 
}\\ 	
private^^ 
async^^ 
void^^  
BtnSendMessage_Click^^ /
(^^/ 0
object^^0 6
sender^^7 =
,^^= >
RoutedEventArgs^^? N
e^^O P
)^^P Q
{^^R S
LoggerManager__ 
logger__  
=__! "
new__# &
LoggerManager__' 4
(__4 5
this__5 9
.__9 :
GetType__: A
(__A B
)__B C
)__C D
;__D E
string`` 
messageText`` 
=``  
txtMessageInput``! 0
.``0 1
Text``1 5
.``5 6
Trim``6 :
(``: ;
)``; <
;``< =
ifaa 
(aa 
!aa 
stringaa 
.aa 
IsNullOrEmptyaa %
(aa% &
messageTextaa& 1
)aa1 2
)aa2 3
{aa4 5
varbb 
messagebb 
=bb 
newbb !
Messagebb" )
{bb* +
userNamecc 
=cc  
UserProfileSingletoncc 3
.cc3 4
Nombrecc4 :
,cc: ;
chatMessagedd 
=dd  !
messageTextdd" -
}ee 
;ee 
trygg 
{gg 
awaithh 
chatManagerhh %
.hh% &
SendMessageAsynchh& 6
(hh6 7 
UserProfileSingletonhh7 K
.hhK L
NombrehhL R
,hhR S
messagehhT [
,hh[ \
	lobbyCodehh] f
)hhf g
;hhg h
txtMessageInputii #
.ii# $
Clearii$ )
(ii) *
)ii* +
;ii+ ,
}jj 
catchjj 
(jj %
EndpointNotFoundExceptionjj 2
exjj3 5
)jj5 6
{jj7 8
loggerkk 
.kk 
LogErrorkk #
(kk# $
exkk$ &
)kk& '
;kk' (
DialogManagerll !
.ll! "!
ShowErrorMessageAlertll" 7
(ll7 8
$strll8 W
)llW X
;llX Y
}mm 
catchmm 
(mm 
TimeoutExceptionmm )
exmm* ,
)mm, -
{mm. /
loggernn 
.nn 
LogErrornn #
(nn# $
exnn$ &
)nn& '
;nn' (
DialogManageroo !
.oo! "!
ShowErrorMessageAlertoo" 7
(oo7 8
$stroo8 h
)ooh i
;ooi j
}pp 
catchpp 
(pp "
CommunicationExceptionpp /
expp0 2
)pp2 3
{pp4 5
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
$strrr8 e
)rre f
;rrf g
}ss 
}tt 
}uu 	
publicww 
asyncww 
voidww 
	LoadLobbyww #
(ww# $
)ww$ %
{ww& '
tryxx 
{xx 
Lobbyyy 
lobbyyy 
=yy 
awaityy #
lobbyBrowseryy$ 0
.yy0 1
GetLobbyByCodeAsyncyy1 D
(yyD E
	lobbyCodeyyE N
)yyN O
;yyO P
labelPlayer2{{ 
.{{ 
Content{{ $
={{% &
lobby{{' ,
.{{, -
Players{{- 4
.{{4 5
ContainsKey{{5 @
({{@ A
$str{{A L
){{L M
?{{N O
lobby{{P U
.{{U V
Players{{V ]
[{{] ^
$str{{^ i
]{{i j
.{{j k
userName{{k s
:{{t u
$str	{{v �
;
{{� �
labelPlayer1|| 
.|| 
Content|| $
=||% &
lobby||' ,
.||, -
Players||- 4
.||4 5
ContainsKey||5 @
(||@ A
$str||A L
)||L M
?||N O
lobby||P U
.||U V
Players||V ]
[||] ^
$str||^ i
]||i j
.||j k
userName||k s
:||t u
$str	||v �
;
||� �
}}} 
catch}} 
(}} 
	Exception}} 
ex}} !
)}}! "
{}}# $
DialogManager~~ 
.~~ !
ShowErrorMessageAlert~~ 3
(~~3 4
$"~~4 6
$str~~6 R
{~~R S
ex~~S U
.~~U V
Message~~V ]
}~~] ^
"~~^ _
)~~_ `
;~~` a
} 
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
��O P
IdPerfil
��P X
)
��X Y
)
��Y Z
;
��Z [
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
��R S
IdPerfil
��S [
)
��[ \
;
��\ ]
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
��E F
Nombre
��F L
,
��L M
	lobbyCode
��N W
)
��W X
;
��X Y
GoToMenuView
�� 
(
�� 
)
�� 
;
�� 
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
��R S
Nombre
��S Y
?
��Z [!
HorizontalAlignment
��\ o
.
��o p
Right
��p u
:
��v w"
HorizontalAlignment��x �
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
�� 
=
�� 
$"
�� 
{
�� 
message
�� %
.
��% &
chatMessage
��& 1
}
��1 2
$str
��2 3
{
��3 4
DateTime
��4 <
.
��< =
Now
��= @
:
��@ A
$str
��A F
}
��F G
"
��G H
,
��H I

Foreground
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
Black
��< A
)
��A B
,
��B C
FontSize
�� 
=
�� 
$num
�� !
,
��! "

FontWeight
�� 
=
��  
FontWeights
��! ,
.
��, -
Bold
��- 1
,
��1 2
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
MaxWidth
�� 
=
�� 
$num
�� "
}
�� 
;
�� 
messageContainer
��  
.
��  !
Child
��! &
=
��' (
messageBlock
��) 5
;
��5 6
ChatMessagesPanel
�� !
.
��! "
Children
��" *
.
��* +
Add
��+ .
(
��. /
messageContainer
��/ ?
)
��? @
;
��@ A
ScrollToBottom
�� 
(
�� 
)
��  
;
��  !
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
IC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\Laderboard.xaml.cs
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
List 
< 
Profile 
> 
highestScores +
=, -
(. /
await/ 4$
leaderboardManagerClient5 M
.M N!
GetHighestScoresAsyncN c
(c d
)d e
)e f
.f g
ToListg m
(m n
)n o
;o p
LeaderboardListView #
.# $
ItemsSource$ /
=0 1
highestScores2 ?
;? @
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
}(( 	
})) 
}** �-
HC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\GameMatch.xaml.cs
	namespace		 	
TripasDeGatoCliente		
 
.		 
Views		 #
{		$ %
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
private 
DispatcherTimer 
timer  %
;% &
private 
int 
	totalTime 
= 
$num  "
;" #
private 
double 
remainingTime $
;$ %
public 
	GameMatch 
( 
) 
{ 
InitializeComponent 
(  
)  !
;! "
drawingCanvas 
. 
	MouseDown #
+=$ &
Canvas_MouseDown' 7
;7 8
drawingCanvas 
. 
	MouseMove #
+=$ &
Canvas_MouseMove' 7
;7 8
drawingCanvas 
. 
MouseUp !
+=" $
Canvas_MouseUp% 3
;3 4

StartTimer 
( 
) 
; 
} 	
private 
void 

StartTimer 
(  
)  !
{" #
remainingTime 
= 
	totalTime %
;% &
timeProgressBar 
. 
Value !
=" #
$num$ '
;' (
timer   
=   
new   
DispatcherTimer   '
(  ' (
)  ( )
;  ) *
timer!! 
.!! 
Interval!! 
=!! 
TimeSpan!! %
.!!% &
FromMilliseconds!!& 6
(!!6 7
$num!!7 :
)!!: ;
;!!; <
timer"" 
."" 
Tick"" 
+="" 

Timer_Tick"" $
;""$ %
timer## 
.## 
Start## 
(## 
)## 
;## 
}$$ 	
private&& 
void&& 

Timer_Tick&& 
(&&  
object&&  &
sender&&' -
,&&- .
	EventArgs&&/ 8
e&&9 :
)&&: ;
{&&< =
if'' 
('' 
remainingTime'' 
>'' 
$num''  !
)''! "
{''# $
remainingTime(( 
-=((  
$num((! $
;(($ %
timeProgressBar** 
.**  
Value**  %
=**& '
(**( )
remainingTime**) 6
/**7 8
	totalTime**9 B
)**B C
***D E
$num**F I
;**I J
if,, 
(,, 
remainingTime,, !
>,," #
	totalTime,,$ -
*,,. /
$num,,0 3
),,3 4
{,,5 6
timeProgressBar-- #
.--# $

Foreground--$ .
=--/ 0
Brushes--1 8
.--8 9
Green--9 >
;--> ?
}.. 
else.. 
if.. 
(.. 
remainingTime.. (
>..) *
	totalTime..+ 4
*..5 6
$num..7 :
)..: ;
{..< =
timeProgressBar// #
.//# $

Foreground//$ .
=/// 0
Brushes//1 8
.//8 9
Orange//9 ?
;//? @
}00 
else00 
{00 
timeProgressBar11 #
.11# $

Foreground11$ .
=11/ 0
Brushes111 8
.118 9
Red119 <
;11< =
}22 
}33 
else33 
{33 
timer44 
.44 
Stop44 
(44 
)44 
;44 
}55 
}66 	
private88 
void88 
Canvas_MouseDown88 %
(88% &
object88& ,
sender88- 3
,883 4 
MouseButtonEventArgs885 I
e88J K
)88K L
{88M N
currentLine99 
=99 
new99 
Polyline99 &
{99' (
Stroke:: 
=:: 
Brushes::  
.::  !
Blue::! %
,::% &
StrokeThickness;; 
=;;  !
$num;;" $
}<< 
;<< 
drawingCanvas== 
.== 
Children== "
.==" #
Add==# &
(==& '
currentLine==' 2
)==2 3
;==3 4
currentLine>> 
.>> 
Points>> 
.>> 
Add>> "
(>>" #
e>># $
.>>$ %
GetPosition>>% 0
(>>0 1
drawingCanvas>>1 >
)>>> ?
)>>? @
;>>@ A
}?? 	
privateAA 
voidAA 
Canvas_MouseMoveAA %
(AA% &
objectAA& ,
senderAA- 3
,AA3 4
MouseEventArgsAA5 C
eAAD E
)AAE F
{AAG H
ifBB 
(BB 
eBB 
.BB 

LeftButtonBB 
==BB 
MouseButtonStateBB  0
.BB0 1
PressedBB1 8
&&BB9 ;
currentLineBB< G
!=BBH J
nullBBK O
)BBO P
{BBQ R
currentLineCC 
.CC 
PointsCC "
.CC" #
AddCC# &
(CC& '
eCC' (
.CC( )
GetPositionCC) 4
(CC4 5
drawingCanvasCC5 B
)CCB C
)CCC D
;CCD E
}DD 
}EE 	
privateGG 
voidGG 
Canvas_MouseUpGG #
(GG# $
objectGG$ *
senderGG+ 1
,GG1 2 
MouseButtonEventArgsGG3 G
eGGH I
)GGI J
{GGK L
currentLineHH 
=HH 
nullHH 
;HH 
}II 	
}KK 
}LL �#
LC:\Users\cv419\source\repos\Cliente-TripasDeGato\Views\CodeGameMatch.xaml.cs
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
public 
void 
GenerateProfile #
(# $
)$ %
{& ' 
TripasDeGatoServicio  
.  !
Profile! (
profile) 0
=1 2
new3 6
Profile7 >
(> ?
)? @
;@ A
profile 
. 
userName 
= 
string %
.% &
Empty& +
;+ ,
profile 
. 
picturePath 
=  !
string" (
.( )
Empty) .
;. /
profile 
. 
status 
= 
$num 
; 
} 	
public 
void  
GenerateGuestProfile (
(( )
)) *
{+ ,
LoggerManager 
logger  
=! "
new# &
LoggerManager' 4
(4 5
this5 9
.9 :
GetType: A
(A B
)B C
)C D
;D E
try 
{ 
string 
	codeMatch  
=! "
txtCodeLobby# /
./ 0
Text0 4
;4 5!
GuestProfileSingleton %
.% &
Instance& .
.. /
CreateInstance/ =
(= >
	codeMatch> G
)G H
;H I
} 
catch 
( %
EndpointNotFoundException .
endpointException/ @
)@ A
{B C
logger   
.   
LogError   
(    
endpointException    1
)  1 2
;  2 3
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
}"" 
catch"" 
("" 
TimeoutException"" %
timeoutException""& 6
)""6 7
{""8 9
logger## 
.## 
LogError## 
(##  
timeoutException##  0
)##0 1
;##1 2
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
}%% 
catch%% 
(%% "
CommunicationException%% +"
communicationException%%, B
)%%B C
{%%D E
logger&& 
.&& 
LogError&& 
(&&  "
communicationException&&  6
)&&6 7
;&&7 8
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
}(( 
})) 	
private++ 
void++ 
BtnBack_Click++ "
(++" #
object++# )
sender++* 0
,++0 1
RoutedEventArgs++2 A
e++B C
)++C D
{++E F
	LoginView,, 
	loginView,, 
=,,  !
new,," %
	LoginView,,& /
(,,/ 0
),,0 1
;,,1 2
this-- 
.-- 
NavigationService-- "
.--" #
Navigate--# +
(--+ ,
	loginView--, 5
)--5 6
;--6 7
}.. 	
private00 
void00 
btnPlay_Click00 "
(00" #
object00# )
sender00* 0
,000 1
RoutedEventArgs002 A
e00B C
)00C D
{00E F
}22 	
}44 
}55 �J
CC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\Validador.cs
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
}OO �
NC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\UserProfileSnglenton.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{		 
public

 

class

  
UserProfileSingleton

 %
{ 
private 
static 
readonly  
UserProfileSingleton  4
singlentonInstance5 G
=H I
newJ M 
UserProfileSingletonN b
(b c
)c d
;d e
public 
static 
int 
IdPerfil "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
static 
string 
Nombre #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
static 
int 
Puntaje !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
static 
string 
FotoRuta %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
public 
static 
int 
	IdUsuario #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
static 
string 

Contrasena '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
public 
static 
string 
Correo #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
static  
UserProfileSingleton *
Instance+ 3
=>4 6
singlentonInstance7 I
;I J
public 
void 
CreateInstance "
(" #
Profile# *
profile+ 2
)2 3
{ 	
IdPerfil 
= 
profile 
. 
	idProfile (
;( )
Nombre 
= 
profile 
. 
userName %
;% &
Puntaje 
= 
profile 
. 
score #
;# $
FotoRuta 
= 
profile 
. 
picturePath *
;* +
}   	
public"" 
void"" 
ResetInstance"" !
(""! "
)""" #
{## 	
IdPerfil$$ 
=$$ 
$num$$ 
;$$ 
Nombre%% 
=%% 
null%% 
;%% 
Puntaje&& 
=&& 
$num&& 
;&& 
FotoRuta'' 
='' 
null'' 
;'' 
	IdUsuario(( 
=(( 
$num(( 
;(( 

Contrasena)) 
=)) 
null)) 
;)) 
Correo** 
=** 
null** 
;** 
}++ 	
public,, 
static,, 
void,, 
UpdateFotoRuta,, )
(,,) *
string,,* 0
	nuevaRuta,,1 :
),,: ;
{,,< =
FotoRuta-- 
=-- 
	nuevaRuta--  
;--  !
}.. 	
public// 
static// 
void// 
UpdateNombre// '
(//' (
string//( .
nuevoNombre/// :
)//: ;
{//< =
Nombre00 
=00 
nuevoNombre00  
;00  !
}11 	
}22 
}33 �
GC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\LoggerManager.cs
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
@C:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\Hasher.cs
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
} �
FC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\GuestProfile.cs
	namespace 	
TripasDeGatoCliente
 
. 
Logic #
{$ %
internal 
class 
GuestProfile 
{  !
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Avatar 
{ 
get "
;" #
set$ '
;' (
}) *
public 
GuestProfile 
( 
) 
{ 
this

 
.

 
Username

 
=

 !
RandomChooserUsername

 1
(

1 2
)

2 3
;

3 4
this 
. 
Avatar 
= #
RandomChooserAvatarIcon 1
(1 2
)2 3
;3 4
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{7 8
string 
[ 
] 
defaultAvatars #
=$ %
{& '
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
,
� �
$str 4
,4 5
$str6 Z
,Z [
$str	\ �
} 
; 
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultAvatars* 8
.8 9
Length9 ?
)? @
;@ A
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
} 	
public 
static 
string !
RandomChooserUsername 2
(2 3
)3 4
{5 6
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
int 
randomIndexNumber !
=" #
random$ *
.* +
Next+ /
(/ 0
$num0 1
,1 2
$num3 :
): ;
;; <
string 
defaultUsername "
=# $
$str% ,
+- .
randomIndexNumber/ @
;@ A
return 
defaultUsername "
;" #
} 	
} 
}   �
GC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\DialogManager.cs
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
} �
PC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\GuestProfileSinglenton.cs
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
public 
void 
CreateInstance "
(" #
string# )
code* .
). /
{0 1
PerfilInvitado 
=  
new! $
GuestProfile% 1
(1 2
)2 3
;3 4
PerfilInvitado 
. 
Username '
=( )
GuestProfile* 6
.6 7!
RandomChooserUsername7 L
(L M
)M N
;N O
PerfilInvitado 
. 
Avatar %
=& '
GuestProfile( 4
.4 5#
RandomChooserAvatarIcon5 L
(L M
)M N
;N O
	CodeMatch 
= 
code  
;  !
} 	
public 
void 
ResetSingleton "
(" #
)# $
{% &
	CodeMatch 
= 
null 
; 
PerfilInvitado 
= 
null !
;! "
} 	
} 
} �

JC:\Users\cv419\source\repos\Cliente-TripasDeGato\Logic\ConstantsManager.cs
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
=- .
$num/ 0
;0 1
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
;9 :
} 	
} 
} 