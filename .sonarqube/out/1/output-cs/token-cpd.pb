°
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
} ¯‹
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
ÄÄ 
password
ÄÄ 
=
ÄÄ 
txtPassword
ÄÄ )
.
ÄÄ) *
Password
ÄÄ* 2
;
ÄÄ2 3
bool
ÅÅ 
isValid
ÅÅ 
=
ÅÅ 
	Validador
ÅÅ $
.
ÅÅ$ %
ValidatePassword
ÅÅ% 5
(
ÅÅ5 6
password
ÅÅ6 >
)
ÅÅ> ?
;
ÅÅ? @
HighlightField
ÉÉ 
(
ÉÉ 
txtPassword
ÉÉ &
,
ÉÉ& '
isValid
ÉÉ( /
)
ÉÉ/ 0
;
ÉÉ0 1
lbInvalidPassword
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ (
=
ÑÑ) *
isValid
ÑÑ+ 2
?
ÑÑ3 4

Visibility
ÑÑ5 ?
.
ÑÑ? @
	Collapsed
ÑÑ@ I
:
ÑÑJ K

Visibility
ÑÑL V
.
ÑÑV W
Visible
ÑÑW ^
;
ÑÑ^ _*
UpdatePasswordVisibilityIcon
ÖÖ (
(
ÖÖ( )
)
ÖÖ) *
;
ÖÖ* +
}
ÜÜ 	
private
àà 
void
àà 

ResetField
àà 
(
àà  
Control
àà  '
control
àà( /
)
àà/ 0
{
àà1 2
control
ââ 
.
ââ 
BorderBrush
ââ 
=
ââ  !
Brushes
ââ" )
.
ââ) *
White
ââ* /
;
ââ/ 0
}
ää 	
private
åå 
void
åå 
BtnSignIn_Click
åå $
(
åå$ %
object
åå% +
sender
åå, 2
,
åå2 3
RoutedEventArgs
åå4 C
e
ååD E
)
ååE F
{
ååG H
RegisterView
çç 
registerView
çç %
=
çç& '
new
çç( +
RegisterView
çç, 8
(
çç8 9
)
çç9 :
;
çç: ;
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
éé+ ,
registerView
éé, 8
)
éé8 9
;
éé9 :
}
èè 	
private
íí 
void
íí 
BtnContinue_Click
íí &
(
íí& '
object
íí' -
sender
íí. 4
,
íí4 5
RoutedEventArgs
íí6 E
e
ííF G
)
ííG H
{
ííI J
LoggerManager
ìì 
logger
ìì  
=
ìì! "
new
ìì# &
LoggerManager
ìì' 4
(
ìì4 5
this
ìì5 9
.
ìì9 :
GetType
ìì: A
(
ììA B
)
ììB C
)
ììC D
;
ììD E
string
îî 
email
îî 
=
îî 
txtEmailRecovery
îî +
.
îî+ ,
Text
îî, 0
.
îî0 1
Trim
îî1 5
(
îî5 6
)
îî6 7
;
îî7 8
if
ññ 
(
ññ 
string
ññ 
.
ññ  
IsNullOrWhiteSpace
ññ )
(
ññ) *
email
ññ* /
)
ññ/ 0
)
ññ0 1
{
ññ2 3
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
óóH I
dialogNullEmail
óóI X
)
óóX Y
;
óóY Z
return
òò 
;
òò 
}
ôô 
if
õõ 
(
õõ 
!
õõ 
	Validador
õõ 
.
õõ 
ValidateEmail
õõ (
(
õõ( )
email
õõ) .
)
õõ. /
)
õõ/ 0
{
õõ1 2
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
dialogInvalidEmail
úúI [
)
úú[ \
;
úú\ ]
return
ùù 
;
ùù 
}
ûû 
try
†† 
{
†† &
IPasswordRecoveryManager
°° (
passwordRecovery
°°) 9
=
°°: ;
new
°°< ?+
PasswordRecoveryManagerClient
°°@ ]
(
°°] ^
)
°°^ _
;
°°_ `
int
¢¢ 
result
¢¢ 
=
¢¢ 
passwordRecovery
¢¢ -
.
¢¢- .
SendRecoveryCode
¢¢. >
(
¢¢> ?
email
¢¢? D
)
¢¢D E
;
¢¢E F
if
§§ 
(
§§ 
result
§§ 
==
§§ 
	Constants
§§ '
.
§§' (
SUCCES_OPERATION
§§( 8
)
§§8 9
{
§§: ;
	userEmail
•• 
=
•• 
email
••  %
;
••% &
enterEmailGrid
¶¶ "
.
¶¶" #

Visibility
¶¶# -
=
¶¶. /

Visibility
¶¶0 :
.
¶¶: ;
	Collapsed
¶¶; D
;
¶¶D E
recoveryGrid
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
ßß8 9
Visible
ßß9 @
;
ßß@ A
DialogManager
®® !
.
®®! "%
ShowSuccessMessageAlert
®®" 9
(
®®9 :

Properties
®®: D
.
®®D E
	Resources
®®E N
.
®®N O+
dialogRecoveryCodeHasBeenSent
®®O l
)
®®l m
;
®®m n
}
©© 
else
©© 
if
©© 
(
©© 
result
©© !
==
©©" $
	Constants
©©% .
.
©©. /
NO_DATA_MATCHES
©©/ >
)
©©> ?
{
©©@ A
DialogManager
™™ !
.
™™! "#
ShowErrorMessageAlert
™™" 7
(
™™7 8

Properties
™™8 B
.
™™B C
	Resources
™™C L
.
™™L M 
dialogInvalidEmail
™™M _
)
™™_ `
;
™™` a
}
´´ 
else
´´ 
{
´´ 
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
¨¨L M,
dialogErrorSendingRecoveryCode
¨¨M k
)
¨¨k l
;
¨¨l m
}
≠≠ 
}
ÆÆ 
catch
ÆÆ 
(
ÆÆ '
EndpointNotFoundException
ÆÆ .
ex
ÆÆ/ 1
)
ÆÆ1 2
{
ÆÆ3 4
logger
ØØ 
.
ØØ 
LogError
ØØ 
(
ØØ  
ex
ØØ  "
)
ØØ" #
;
ØØ# $
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
∞∞H I%
dialogEndPointException
∞∞I `
)
∞∞` a
;
∞∞a b
}
±± 
catch
±± 
(
±± 
TimeoutException
±± %
ex
±±& (
)
±±( )
{
±±* +
logger
≤≤ 
.
≤≤ 
LogError
≤≤ 
(
≤≤  
ex
≤≤  "
)
≤≤" #
;
≤≤# $
DialogManager
≥≥ 
.
≥≥ #
ShowErrorMessageAlert
≥≥ 3
(
≥≥3 4

Properties
≥≥4 >
.
≥≥> ?
	Resources
≥≥? H
.
≥≥H I$
dialogTimeOutException
≥≥I _
)
≥≥_ `
;
≥≥` a
}
¥¥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ +
ex
¥¥, .
)
¥¥. /
{
¥¥0 1
logger
µµ 
.
µµ 
LogError
µµ 
(
µµ  
ex
µµ  "
)
µµ" #
;
µµ# $
DialogManager
∂∂ 
.
∂∂ #
ShowErrorMessageAlert
∂∂ 3
(
∂∂3 4

Properties
∂∂4 >
.
∂∂> ?
	Resources
∂∂? H
.
∂∂H I)
dialogComunicationException
∂∂I d
)
∂∂d e
;
∂∂e f
}
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ %
BtnBackEnterEmail_Click
∫∫ ,
(
∫∫, -
object
∫∫- 3
sender
∫∫4 :
,
∫∫: ;
RoutedEventArgs
∫∫< K
e
∫∫L M
)
∫∫M N
{
∫∫O P
enterEmailGrid
ªª 
.
ªª 

Visibility
ªª %
=
ªª& '

Visibility
ªª( 2
.
ªª2 3
	Collapsed
ªª3 <
;
ªª< =
txtEmail
ºº 
.
ºº 
Clear
ºº 
(
ºº 
)
ºº 
;
ºº 
txtPassword
ΩΩ 
.
ΩΩ 
Clear
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ   
txtPasswordVisible
ææ 
.
ææ 
Clear
ææ $
(
ææ$ %
)
ææ% &
;
ææ& '
}
øø 	
private
¡¡ 
void
¡¡ 
BtnValidate_Click
¡¡ &
(
¡¡& '
object
¡¡' -
sender
¡¡. 4
,
¡¡4 5
RoutedEventArgs
¡¡6 E
e
¡¡F G
)
¡¡G H
{
¡¡I J
LoggerManager
¬¬ 
logger
¬¬  
=
¬¬! "
new
¬¬# &
LoggerManager
¬¬' 4
(
¬¬4 5
this
¬¬5 9
.
¬¬9 :
GetType
¬¬: A
(
¬¬A B
)
¬¬B C
)
¬¬C D
;
¬¬D E
string
√√ 
enteredCode
√√ 
=
√√  
$"
√√! #
{
√√# $ 
txtValidationCode1
√√$ 6
.
√√6 7
Text
√√7 ;
}
√√; <
{
√√< = 
txtValidationCode2
√√= O
.
√√O P
Text
√√P T
}
√√T U
{
√√U V 
txtValidationCode3
√√V h
.
√√h i
Text
√√i m
}
√√m n
{
√√n o!
txtValidationCode4√√o Å
.√√Å Ç
Text√√Ç Ü
}√√Ü á
{√√á à"
txtValidationCode5√√à ö
.√√ö õ
Text√√õ ü
}√√ü †
{√√† °"
txtValidationCode6√√° ≥
.√√≥ ¥
Text√√¥ ∏
}√√∏ π
"√√π ∫
;√√∫ ª
try
≈≈ 
{
≈≈ &
IPasswordRecoveryManager
∆∆ (
passwordRecovery
∆∆) 9
=
∆∆: ;
new
∆∆< ?+
PasswordRecoveryManagerClient
∆∆@ ]
(
∆∆] ^
)
∆∆^ _
;
∆∆_ `
bool
«« 
isCodeValid
««  
=
««! "
passwordRecovery
««# 3
.
««3 4 
VerifyRecoveryCode
««4 F
(
««F G
	userEmail
««G P
,
««P Q
enteredCode
««R ]
)
««] ^
;
««^ _
if
…… 
(
…… 
isCodeValid
…… 
)
……  
{
……! "
recoveryGrid
    
.
    !

Visibility
  ! +
=
  , -

Visibility
  . 8
.
  8 9
	Collapsed
  9 B
;
  B C"
recoveryPasswordGrid
ÀÀ (
.
ÀÀ( )

Visibility
ÀÀ) 3
=
ÀÀ4 5

Visibility
ÀÀ6 @
.
ÀÀ@ A
Visible
ÀÀA H
;
ÀÀH I
}
ÃÃ 
else
ÃÃ 
{
ÃÃ 
DialogManager
ÕÕ !
.
ÕÕ! "#
ShowErrorMessageAlert
ÕÕ" 7
(
ÕÕ7 8

Properties
ÕÕ8 B
.
ÕÕB C
	Resources
ÕÕC L
.
ÕÕL M'
dialogInvalidRecoveryCode
ÕÕM f
)
ÕÕf g
;
ÕÕg h
}
ŒŒ 
}
œœ 
catch
œœ 
(
œœ '
EndpointNotFoundException
œœ .'
endpointNotFoundException
œœ/ H
)
œœH I
{
œœJ K
logger
–– 
.
–– 
LogError
–– 
(
––  '
endpointNotFoundException
––  9
)
––9 :
;
––: ;
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
——H I%
dialogEndPointException
——I `
)
——` a
;
——a b
}
““ 
catch
““ 
(
““ 
TimeoutException
““ %
timeoutException
““& 6
)
““6 7
{
““8 9
logger
”” 
.
”” 
LogError
”” 
(
””  
timeoutException
””  0
)
””0 1
;
””1 2
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
‘‘H I$
dialogTimeOutException
‘‘I _
)
‘‘_ `
;
‘‘` a
}
’’ 
catch
’’ 
(
’’ $
CommunicationException
’’ +$
communicationException
’’, B
)
’’B C
{
’’D E
logger
÷÷ 
.
÷÷ 
LogError
÷÷ 
(
÷÷  $
communicationException
÷÷  6
)
÷÷6 7
;
÷÷7 8
DialogManager
◊◊ 
.
◊◊ #
ShowErrorMessageAlert
◊◊ 3
(
◊◊3 4

Properties
◊◊4 >
.
◊◊> ?
	Resources
◊◊? H
.
◊◊H I)
dialogComunicationException
◊◊I d
)
◊◊d e
;
◊◊e f
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ !
BtnResendCode_Click
€€ (
(
€€( )
object
€€) /
sender
€€0 6
,
€€6 7
RoutedEventArgs
€€8 G
e
€€H I
)
€€I J
{
€€K L
LoggerManager
‹‹ 
logger
‹‹  
=
‹‹! "
new
‹‹# &
LoggerManager
‹‹' 4
(
‹‹4 5
this
‹‹5 9
.
‹‹9 :
GetType
‹‹: A
(
‹‹A B
)
‹‹B C
)
‹‹C D
;
‹‹D E
if
ﬁﬁ 
(
ﬁﬁ 
string
ﬁﬁ 
.
ﬁﬁ 
IsNullOrEmpty
ﬁﬁ $
(
ﬁﬁ$ %
	userEmail
ﬁﬁ% .
)
ﬁﬁ. /
)
ﬁﬁ/ 0
{
ﬁﬁ1 2
DialogManager
ﬂﬂ 
.
ﬂﬂ #
ShowErrorMessageAlert
ﬂﬂ 3
(
ﬂﬂ3 4

Properties
ﬂﬂ4 >
.
ﬂﬂ> ?
	Resources
ﬂﬂ? H
.
ﬂﬂH I
dialogNullEmail
ﬂﬂI X
)
ﬂﬂX Y
;
ﬂﬂY Z
return
‡‡ 
;
‡‡ 
}
·· 
try
„„ 
{
„„ 
var
‰‰ $
emailVerificationProxy
‰‰ *
=
‰‰+ ,
new
‰‰- 0"
TripasDeGatoServicio
‰‰1 E
.
‰‰E F+
PasswordRecoveryManagerClient
‰‰F c
(
‰‰c d
)
‰‰d e
;
‰‰e f
int
ÂÂ 
result
ÂÂ 
=
ÂÂ $
emailVerificationProxy
ÂÂ 3
.
ÂÂ3 4
SendRecoveryCode
ÂÂ4 D
(
ÂÂD E
	userEmail
ÂÂE N
)
ÂÂN O
;
ÂÂO P
if
ÁÁ 
(
ÁÁ 
result
ÁÁ 
==
ÁÁ 
	Constants
ÁÁ '
.
ÁÁ' (
SUCCES_OPERATION
ÁÁ( 8
)
ÁÁ8 9
{
ÁÁ: ;
DialogManager
ËË !
.
ËË! "%
ShowSuccessMessageAlert
ËË" 9
(
ËË9 :

Properties
ËË: D
.
ËËD E
	Resources
ËËE N
.
ËËN O&
dialogRecoveryCodeResent
ËËO g
)
ËËg h
;
ËËh i
}
ÈÈ 
else
ÈÈ 
{
ÈÈ 
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
ÍÍL M.
 dialogErrorResendingRecoveryCode
ÍÍM m
)
ÍÍm n
;
ÍÍn o
}
ÎÎ 
}
ÏÏ 
catch
ÏÏ 
(
ÏÏ '
EndpointNotFoundException
ÏÏ .'
endpointNotFoundException
ÏÏ/ H
)
ÏÏH I
{
ÏÏJ K
logger
ÌÌ 
.
ÌÌ 
LogError
ÌÌ 
(
ÌÌ  '
endpointNotFoundException
ÌÌ  9
)
ÌÌ9 :
;
ÌÌ: ;
DialogManager
ÓÓ 
.
ÓÓ #
ShowErrorMessageAlert
ÓÓ 3
(
ÓÓ3 4

Properties
ÓÓ4 >
.
ÓÓ> ?
	Resources
ÓÓ? H
.
ÓÓH I%
dialogEndPointException
ÓÓI `
)
ÓÓ` a
;
ÓÓa b
}
ÔÔ 
catch
ÔÔ 
(
ÔÔ 
TimeoutException
ÔÔ %
timeoutException
ÔÔ& 6
)
ÔÔ6 7
{
ÔÔ8 9
logger
 
.
 
LogError
 
(
  
timeoutException
  0
)
0 1
;
1 2
DialogManager
ÒÒ 
.
ÒÒ #
ShowErrorMessageAlert
ÒÒ 3
(
ÒÒ3 4

Properties
ÒÒ4 >
.
ÒÒ> ?
	Resources
ÒÒ? H
.
ÒÒH I$
dialogTimeOutException
ÒÒI _
)
ÒÒ_ `
;
ÒÒ` a
}
ÚÚ 
catch
ÚÚ 
(
ÚÚ $
CommunicationException
ÚÚ +$
communicationException
ÚÚ, B
)
ÚÚB C
{
ÚÚD E
logger
ÛÛ 
.
ÛÛ 
LogError
ÛÛ 
(
ÛÛ  $
communicationException
ÛÛ  6
)
ÛÛ6 7
;
ÛÛ7 8
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
ÙÙH I)
dialogComunicationException
ÙÙI d
)
ÙÙd e
;
ÙÙe f
}
ıı 
}
ˆˆ 	
private
¯¯ 
void
¯¯ #
BtnBackValidate_Click
¯¯ *
(
¯¯* +
object
¯¯+ 1
sender
¯¯2 8
,
¯¯8 9
RoutedEventArgs
¯¯: I
e
¯¯J K
)
¯¯K L
{
¯¯M N
recoveryGrid
˘˘ 
.
˘˘ 

Visibility
˘˘ #
=
˘˘$ %

Visibility
˘˘& 0
.
˘˘0 1
	Collapsed
˘˘1 :
;
˘˘: ;
txtEmail
˙˙ 
.
˙˙ 
Clear
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
txtPassword
˚˚ 
.
˚˚ 
Clear
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚   
txtPasswordVisible
¸¸ 
.
¸¸ 
Clear
¸¸ $
(
¸¸$ %
)
¸¸% &
;
¸¸& '
}
˝˝ 	
private
ˇˇ 
void
ˇˇ #
BtnSavePassword_Click
ˇˇ *
(
ˇˇ* +
object
ˇˇ+ 1
sender
ˇˇ2 8
,
ˇˇ8 9
RoutedEventArgs
ˇˇ: I
e
ˇˇJ K
)
ˇˇK L
{
ˇˇM N
LoggerManager
ÄÄ 
logger
ÄÄ  
=
ÄÄ! "
new
ÄÄ# &
LoggerManager
ÄÄ' 4
(
ÄÄ4 5
this
ÄÄ5 9
.
ÄÄ9 :
GetType
ÄÄ: A
(
ÄÄA B
)
ÄÄB C
)
ÄÄC D
;
ÄÄD E
string
ÇÇ 
newPassword
ÇÇ 
=
ÇÇ  
txtNewPassword
ÇÇ! /
.
ÇÇ/ 0
Password
ÇÇ0 8
.
ÇÇ8 9
Trim
ÇÇ9 =
(
ÇÇ= >
)
ÇÇ> ?
;
ÇÇ? @
string
ÉÉ 
confirmPassword
ÉÉ "
=
ÉÉ# $#
txtNewPasswordConfirm
ÉÉ% :
.
ÉÉ: ;
Password
ÉÉ; C
.
ÉÉC D
Trim
ÉÉD H
(
ÉÉH I
)
ÉÉI J
;
ÉÉJ K
string
ÑÑ 
email
ÑÑ 
=
ÑÑ 
txtEmail
ÑÑ #
.
ÑÑ# $
Text
ÑÑ$ (
.
ÑÑ( )
Trim
ÑÑ) -
(
ÑÑ- .
)
ÑÑ. /
;
ÑÑ/ 0
if
ÜÜ 
(
ÜÜ 
newPassword
ÜÜ 
!=
ÜÜ 
confirmPassword
ÜÜ .
)
ÜÜ. /
{
ÜÜ0 1
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
ááH I*
dialogMissmatchesCredentials
ááI e
)
ááe f
;
ááf g
return
àà 
;
àà 
}
ââ 
if
ãã 
(
ãã 
!
ãã 
IsValidPassword
ãã  
(
ãã  !
newPassword
ãã! ,
)
ãã, -
)
ãã- .
{
ãã/ 0
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
ååH I#
dialogInvalidPassword
ååI ^
)
åå^ _
;
åå_ `
return
çç 
;
çç 
}
éé 
try
êê 
{
êê &
IPasswordRecoveryManager
ëë (
passwordRecovery
ëë) 9
=
ëë: ;
new
ëë< ?+
PasswordRecoveryManagerClient
ëë@ ]
(
ëë] ^
)
ëë^ _
;
ëë_ `
int
íí 
result
íí 
=
íí 
passwordRecovery
íí -
.
íí- .
UpdatePassword
íí. <
(
íí< =
	userEmail
íí= F
,
ííF G
Hasher
ííH N
.
ííN O
HashToSHA256
ííO [
(
íí[ \
newPassword
íí\ g
)
ííg h
)
ííh i
;
ííi j
if
îî 
(
îî 
result
îî 
==
îî 
	Constants
îî '
.
îî' (
SUCCES_OPERATION
îî( 8
)
îî8 9
{
îî: ;
DialogManager
ïï !
.
ïï! "%
ShowSuccessMessageAlert
ïï" 9
(
ïï9 :

Properties
ïï: D
.
ïïD E
	Resources
ïïE N
.
ïïN O/
!dialogPasswordUpdatedSuccessfully
ïïO p
)
ïïp q
;
ïïq r
txtNewPassword
ññ "
.
ññ" #
Clear
ññ# (
(
ññ( )
)
ññ) *
;
ññ* +#
txtNewPasswordConfirm
óó )
.
óó) *
Clear
óó* /
(
óó/ 0
)
óó0 1
;
óó1 2"
recoveryPasswordGrid
òò (
.
òò( )

Visibility
òò) 3
=
òò4 5

Visibility
òò6 @
.
òò@ A
	Collapsed
òòA J
;
òòJ K
}
ôô 
else
ôô 
{
ôô 
DialogManager
öö !
.
öö! "#
ShowErrorMessageAlert
öö" 7
(
öö7 8

Properties
öö8 B
.
ööB C
	Resources
ööC L
.
ööL M)
dialogErrorUpdatingPassowrd
ööM h
)
ööh i
;
ööi j
}
õõ 
}
úú 
catch
úú 
(
úú '
EndpointNotFoundException
úú .'
endpointNotFoundException
úú/ H
)
úúH I
{
úúJ K
logger
ùù 
.
ùù 
LogError
ùù 
(
ùù  '
endpointNotFoundException
ùù  9
)
ùù9 :
;
ùù: ;
DialogManager
ûû 
.
ûû #
ShowErrorMessageAlert
ûû 3
(
ûû3 4

Properties
ûû4 >
.
ûû> ?
	Resources
ûû? H
.
ûûH I%
dialogEndPointException
ûûI `
)
ûû` a
;
ûûa b
}
üü 
catch
üü 
(
üü 
TimeoutException
üü %
timeoutException
üü& 6
)
üü6 7
{
üü8 9
logger
†† 
.
†† 
LogError
†† 
(
††  
timeoutException
††  0
)
††0 1
;
††1 2
DialogManager
°° 
.
°° #
ShowErrorMessageAlert
°° 3
(
°°3 4

Properties
°°4 >
.
°°> ?
	Resources
°°? H
.
°°H I$
dialogTimeOutException
°°I _
)
°°_ `
;
°°` a
}
¢¢ 
catch
¢¢ 
(
¢¢ $
CommunicationException
¢¢ +$
communicationException
¢¢, B
)
¢¢B C
{
¢¢D E
logger
££ 
.
££ 
LogError
££ 
(
££  $
communicationException
££  6
)
££6 7
;
££7 8
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
§§H I)
dialogComunicationException
§§I d
)
§§d e
;
§§e f
}
•• 
}
¶¶ 	
private
®® 
void
®® +
TxtValidationCode_TextChanged
®® 2
(
®®2 3
object
®®3 9
sender
®®: @
,
®®@ A"
TextChangedEventArgs
®®B V
e
®®W X
)
®®X Y
{
®®Z [
TextBox
©© 
currentTextBox
©© "
=
©©# $
sender
©©% +
as
©©, .
TextBox
©©/ 6
;
©©6 7
if
™™ 
(
™™ 
currentTextBox
™™ 
.
™™ 
Text
™™ #
.
™™# $
Length
™™$ *
==
™™+ -
$num
™™. /
)
™™/ 0
{
™™1 2
if
´´ 
(
´´ 
currentTextBox
´´ "
==
´´# % 
txtValidationCode1
´´& 8
)
´´8 9 
txtValidationCode2
¨¨ &
.
¨¨& '
Focus
¨¨' ,
(
¨¨, -
)
¨¨- .
;
¨¨. /
else
≠≠ 
if
≠≠ 
(
≠≠ 
currentTextBox
≠≠ '
==
≠≠( * 
txtValidationCode2
≠≠+ =
)
≠≠= > 
txtValidationCode3
ÆÆ &
.
ÆÆ& '
Focus
ÆÆ' ,
(
ÆÆ, -
)
ÆÆ- .
;
ÆÆ. /
else
ØØ 
if
ØØ 
(
ØØ 
currentTextBox
ØØ '
==
ØØ( * 
txtValidationCode3
ØØ+ =
)
ØØ= > 
txtValidationCode4
∞∞ &
.
∞∞& '
Focus
∞∞' ,
(
∞∞, -
)
∞∞- .
;
∞∞. /
else
±± 
if
±± 
(
±± 
currentTextBox
±± '
==
±±( * 
txtValidationCode4
±±+ =
)
±±= > 
txtValidationCode5
≤≤ &
.
≤≤& '
Focus
≤≤' ,
(
≤≤, -
)
≤≤- .
;
≤≤. /
else
≥≥ 
if
≥≥ 
(
≥≥ 
currentTextBox
≥≥ '
==
≥≥( * 
txtValidationCode5
≥≥+ =
)
≥≥= > 
txtValidationCode6
¥¥ &
.
¥¥& '
Focus
¥¥' ,
(
¥¥, -
)
¥¥- .
;
¥¥. /
}
µµ 
}
∂∂ 	
private
∏∏ 
bool
∏∏ 
IsValidPassword
∏∏ $
(
∏∏$ %
string
∏∏% +
password
∏∏, 4
)
∏∏4 5
{
∏∏6 7
bool
ππ 
isValid
ππ 
=
ππ 
true
ππ 
;
ππ  
if
∫∫ 
(
∫∫ 
!
∫∫ 
	Validador
∫∫ 
.
∫∫ 
ValidatePassword
∫∫ +
(
∫∫+ ,
password
∫∫, 4
)
∫∫4 5
)
∫∫5 6
{
∫∫7 8
isValid
ªª 
=
ªª 
false
ªª 
;
ªª  
}
ºº 
return
ΩΩ 
isValid
ΩΩ 
;
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ *
BtnToggleNewPassword_Checked
¿¿ 1
(
¿¿1 2
object
¿¿2 8
sender
¿¿9 ?
,
¿¿? @
RoutedEventArgs
¿¿A P
e
¿¿Q R
)
¿¿R S
{
¿¿T U#
txtNewPasswordVisible
¡¡ !
.
¡¡! "
Text
¡¡" &
=
¡¡' (
txtNewPassword
¡¡) 7
.
¡¡7 8
Password
¡¡8 @
;
¡¡@ A#
txtNewPasswordVisible
¬¬ !
.
¬¬! "

Visibility
¬¬" ,
=
¬¬- .

Visibility
¬¬/ 9
.
¬¬9 :
Visible
¬¬: A
;
¬¬A B
txtNewPassword
√√ 
.
√√ 

Visibility
√√ %
=
√√& '

Visibility
√√( 2
.
√√2 3
	Collapsed
√√3 <
;
√√< =*
txtNewPasswordConfirmVisible
≈≈ (
.
≈≈( )
Text
≈≈) -
=
≈≈. /#
txtNewPasswordConfirm
≈≈0 E
.
≈≈E F
Password
≈≈F N
;
≈≈N O*
txtNewPasswordConfirmVisible
∆∆ (
.
∆∆( )

Visibility
∆∆) 3
=
∆∆4 5

Visibility
∆∆6 @
.
∆∆@ A
Visible
∆∆A H
;
∆∆H I#
txtNewPasswordConfirm
«« !
.
««! "

Visibility
««" ,
=
««- .

Visibility
««/ 9
.
««9 :
	Collapsed
««: C
;
««C D
}
»» 	
private
   
void
   ,
BtnToggleNewPassword_Unchecked
   3
(
  3 4
object
  4 :
sender
  ; A
,
  A B
RoutedEventArgs
  C R
e
  S T
)
  T U
{
  V W
txtNewPassword
ÀÀ 
.
ÀÀ 
Password
ÀÀ #
=
ÀÀ$ %#
txtNewPasswordVisible
ÀÀ& ;
.
ÀÀ; <
Text
ÀÀ< @
;
ÀÀ@ A
txtNewPassword
ÃÃ 
.
ÃÃ 

Visibility
ÃÃ %
=
ÃÃ& '

Visibility
ÃÃ( 2
.
ÃÃ2 3
Visible
ÃÃ3 :
;
ÃÃ: ;#
txtNewPasswordVisible
ÕÕ !
.
ÕÕ! "

Visibility
ÕÕ" ,
=
ÕÕ- .

Visibility
ÕÕ/ 9
.
ÕÕ9 :
	Collapsed
ÕÕ: C
;
ÕÕC D#
txtNewPasswordConfirm
œœ !
.
œœ! "
Password
œœ" *
=
œœ+ ,*
txtNewPasswordConfirmVisible
œœ- I
.
œœI J
Text
œœJ N
;
œœN O#
txtNewPasswordConfirm
–– !
.
––! "

Visibility
––" ,
=
––- .

Visibility
––/ 9
.
––9 :
Visible
––: A
;
––A B*
txtNewPasswordConfirmVisible
—— (
.
——( )

Visibility
——) 3
=
——4 5

Visibility
——6 @
.
——@ A
	Collapsed
——A J
;
——J K
}
““ 	
private
‘‘ 
void
‘‘ #
BtnBackRecovery_Click
‘‘ *
(
‘‘* +
object
‘‘+ 1
sender
‘‘2 8
,
‘‘8 9
RoutedEventArgs
‘‘: I
e
‘‘J K
)
‘‘K L
{
‘‘M N"
recoveryPasswordGrid
’’  
.
’’  !

Visibility
’’! +
=
’’, -

Visibility
’’. 8
.
’’8 9
	Collapsed
’’9 B
;
’’B C
txtEmail
÷÷ 
.
÷÷ 
Clear
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ 
txtPassword
◊◊ 
.
◊◊ 
Clear
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊   
txtPasswordVisible
ÿÿ 
.
ÿÿ 
Clear
ÿÿ $
(
ÿÿ$ %
)
ÿÿ% &
;
ÿÿ& '
}
ŸŸ 	
private
€€ 
void
€€ '
BtnTogglePassword_Checked
€€ .
(
€€. /
object
€€/ 5
sender
€€6 <
,
€€< =
RoutedEventArgs
€€> M
e
€€N O
)
€€O P
{
€€Q R 
txtPasswordVisible
‹‹ 
.
‹‹ 
Text
‹‹ #
=
‹‹$ %
txtPassword
‹‹& 1
.
‹‹1 2
Password
‹‹2 :
;
‹‹: ; 
txtPasswordVisible
›› 
.
›› 

Visibility
›› )
=
››* +

Visibility
››, 6
.
››6 7
Visible
››7 >
;
››> ?
txtPassword
ﬁﬁ 
.
ﬁﬁ 

Visibility
ﬁﬁ "
=
ﬁﬁ# $

Visibility
ﬁﬁ% /
.
ﬁﬁ/ 0
	Collapsed
ﬁﬁ0 9
;
ﬁﬁ9 :
}
ﬂﬂ 	
private
·· 
void
·· )
BtnTogglePassword_Unchecked
·· 0
(
··0 1
object
··1 7
sender
··8 >
,
··> ?
RoutedEventArgs
··@ O
e
··P Q
)
··Q R
{
··S T
txtPassword
‚‚ 
.
‚‚ 
Password
‚‚  
=
‚‚! " 
txtPasswordVisible
‚‚# 5
.
‚‚5 6
Text
‚‚6 :
;
‚‚: ; 
txtPasswordVisible
„„ 
.
„„ 

Visibility
„„ )
=
„„* +

Visibility
„„, 6
.
„„6 7
	Collapsed
„„7 @
;
„„@ A
txtPassword
‰‰ 
.
‰‰ 

Visibility
‰‰ "
=
‰‰# $

Visibility
‰‰% /
.
‰‰/ 0
Visible
‰‰0 7
;
‰‰7 8
}
ÂÂ 	
private
ÁÁ 
void
ÁÁ *
UpdatePasswordVisibilityIcon
ÁÁ 1
(
ÁÁ1 2
)
ÁÁ2 3
{
ÁÁ4 5
btnTogglePassword
ËË 
.
ËË 

Visibility
ËË (
=
ËË) *
txtPassword
ËË+ 6
.
ËË6 7
Password
ËË7 ?
.
ËË? @
Length
ËË@ F
>
ËËG H
$num
ËËI J
?
ËËK L

Visibility
ËËM W
.
ËËW X
Visible
ËËX _
:
ËË` a

Visibility
ËËb l
.
ËËl m
	Collapsed
ËËm v
;
ËËv w
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ &
BtnRecoverPassword_Click
ÎÎ -
(
ÎÎ- .
object
ÎÎ. 4
sender
ÎÎ5 ;
,
ÎÎ; <
RoutedEventArgs
ÎÎ= L
e
ÎÎM N
)
ÎÎN O
{
ÎÎP Q
enterEmailGrid
ÏÏ 
.
ÏÏ 

Visibility
ÏÏ %
=
ÏÏ& '

Visibility
ÏÏ( 2
.
ÏÏ2 3
Visible
ÏÏ3 :
;
ÏÏ: ;
}
ÌÌ 	
}
ÓÓ 
}ÔÔ ¯È
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
txtValidationCode4	VVo Å
.
VVÅ Ç
Text
VVÇ Ü
}
VVÜ á
{
VVá à 
txtValidationCode5
VVà ö
.
VVö õ
Text
VVõ ü
}
VVü †
{
VV† ° 
txtValidationCode6
VV° ≥
.
VV≥ ¥
Text
VV¥ ∏
}
VV∏ π
"
VVπ ∫
;
VV∫ ª
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
ÄÄ 	
private
ÇÇ 
bool
ÇÇ 
ValidateFields
ÇÇ #
(
ÇÇ# $
string
ÇÇ$ *
email
ÇÇ+ 0
,
ÇÇ0 1
string
ÇÇ2 8
username
ÇÇ9 A
,
ÇÇA B
string
ÇÇC I
password
ÇÇJ R
)
ÇÇR S
{
ÇÇT U
bool
ÉÉ 
isValid
ÉÉ 
=
ÉÉ 
true
ÉÉ 
;
ÉÉ  
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
	Validador
ÖÖ 
.
ÖÖ 
ValidateEmail
ÖÖ (
(
ÖÖ( )
email
ÖÖ) .
)
ÖÖ. /
)
ÖÖ/ 0
{
ÖÖ1 2
HighlightField
ÜÜ 
(
ÜÜ 
txtEmail
ÜÜ '
)
ÜÜ' (
;
ÜÜ( )
lbInvalidEmail
áá 
.
áá 

Visibility
áá )
=
áá* +

Visibility
áá, 6
.
áá6 7
Visible
áá7 >
;
áá> ?
isValid
àà 
=
àà 
false
àà 
;
àà  
}
ââ 
else
ââ 
{
ââ 

ResetField
ää 
(
ää 
txtEmail
ää #
)
ää# $
;
ää$ %
lbInvalidEmail
ãã 
.
ãã 

Visibility
ãã )
=
ãã* +

Visibility
ãã, 6
.
ãã6 7
	Collapsed
ãã7 @
;
ãã@ A
}
åå 
if
éé 
(
éé 
!
éé 
	Validador
éé 
.
éé 
ValidateUsername
éé +
(
éé+ ,
username
éé, 4
)
éé4 5
)
éé5 6
{
éé7 8
HighlightField
èè 
(
èè 
txtName
èè &
)
èè& '
;
èè' (
lbInvalidUser
êê 
.
êê 

Visibility
êê (
=
êê) *

Visibility
êê+ 5
.
êê5 6
Visible
êê6 =
;
êê= >
isValid
ëë 
=
ëë 
false
ëë 
;
ëë  
}
íí 
else
íí 
{
íí 

ResetField
ìì 
(
ìì 
txtName
ìì "
)
ìì" #
;
ìì# $
lbInvalidUser
îî 
.
îî 

Visibility
îî (
=
îî) *

Visibility
îî+ 5
.
îî5 6
	Collapsed
îî6 ?
;
îî? @
}
ïï 
if
óó 
(
óó 
!
óó 
	Validador
óó 
.
óó 
ValidatePassword
óó +
(
óó+ ,
password
óó, 4
)
óó4 5
)
óó5 6
{
óó7 8
HighlightField
òò 
(
òò 
txtPassword
òò *
)
òò* +
;
òò+ ,
lbInvalidPassword
ôô !
.
ôô! "

Visibility
ôô" ,
=
ôô- .

Visibility
ôô/ 9
.
ôô9 :
Visible
ôô: A
;
ôôA B
isValid
öö 
=
öö 
false
öö 
;
öö  
}
õõ 
else
õõ 
{
õõ 

ResetField
úú 
(
úú 
txtPassword
úú &
)
úú& '
;
úú' (
lbInvalidPassword
ùù !
.
ùù! "

Visibility
ùù" ,
=
ùù- .

Visibility
ùù/ 9
.
ùù9 :
	Collapsed
ùù: C
;
ùùC D
}
ûû 
return
†† 
isValid
†† 
;
†† 
}
°° 	
private
££ 
void
££ 
HighlightField
££ #
(
££# $
Control
££$ +
control
££, 3
)
££3 4
{
§§ 	
control
•• 
.
•• 
BorderBrush
•• 
=
••  !
Brushes
••" )
.
••) *
Red
••* -
;
••- .
}
¶¶ 	
private
®® 
void
®® 0
"TxtPasswordVisible_PasswordChanged
®® 7
(
®®7 8
object
®®8 >
sender
®®? E
,
®®E F
RoutedEventArgs
®®G V
e
®®W X
)
®®X Y
{
®®Z [
string
©© 
password
©© 
=
©© 
txtPassword
©© )
.
©©) *
Password
©©* 2
;
©©2 3
if
´´ 
(
´´ 
!
´´ 
	Validador
´´ 
.
´´ 
ValidatePassword
´´ +
(
´´+ ,
password
´´, 4
)
´´4 5
)
´´5 6
{
´´7 8
HighlightField
¨¨ 
(
¨¨ 
txtPassword
¨¨ *
)
¨¨* +
;
¨¨+ ,
lbInvalidPassword
≠≠ !
.
≠≠! "

Visibility
≠≠" ,
=
≠≠- .

Visibility
≠≠/ 9
.
≠≠9 :
Visible
≠≠: A
;
≠≠A B
}
ÆÆ 
else
ÆÆ 
{
ÆÆ 

ResetField
ØØ 
(
ØØ 
txtPassword
ØØ &
)
ØØ& '
;
ØØ' (
lbInvalidPassword
∞∞ !
.
∞∞! "

Visibility
∞∞" ,
=
∞∞- .

Visibility
∞∞/ 9
.
∞∞9 :
	Collapsed
∞∞: C
;
∞∞C D
}
±± *
UpdatePasswordVisibilityIcon
≥≥ (
(
≥≥( )
)
≥≥) *
;
≥≥* +
}
¥¥ 	
private
∂∂ 
void
∂∂ )
TxtPassword_PasswordChanged
∂∂ 0
(
∂∂0 1
object
∂∂1 7
sender
∂∂8 >
,
∂∂> ?
RoutedEventArgs
∂∂@ O
e
∂∂P Q
)
∂∂Q R
{
∂∂S T
string
∑∑ 
password
∑∑ 
=
∑∑ 
txtPassword
∑∑ )
.
∑∑) *
Password
∑∑* 2
;
∑∑2 3
if
ππ 
(
ππ 
!
ππ 
	Validador
ππ 
.
ππ 
ValidatePassword
ππ +
(
ππ+ ,
password
ππ, 4
)
ππ4 5
)
ππ5 6
{
ππ7 8
HighlightField
∫∫ 
(
∫∫ 
txtPassword
∫∫ *
)
∫∫* +
;
∫∫+ ,
lbInvalidPassword
ªª !
.
ªª! "

Visibility
ªª" ,
=
ªª- .

Visibility
ªª/ 9
.
ªª9 :
Visible
ªª: A
;
ªªA B
}
ºº 
else
ºº 
{
ºº 

ResetField
ΩΩ 
(
ΩΩ 
txtPassword
ΩΩ &
)
ΩΩ& '
;
ΩΩ' (
lbInvalidPassword
ææ !
.
ææ! "

Visibility
ææ" ,
=
ææ- .

Visibility
ææ/ 9
.
ææ9 :
	Collapsed
ææ: C
;
ææC D
}
øø *
UpdatePasswordVisibilityIcon
¡¡ (
(
¡¡( )
)
¡¡) *
;
¡¡* +
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 

ResetField
ƒƒ 
(
ƒƒ  
Control
ƒƒ  '
control
ƒƒ( /
)
ƒƒ/ 0
{
≈≈ 	
control
∆∆ 
.
∆∆ 
BorderBrush
∆∆ 
=
∆∆  !
Brushes
∆∆" )
.
∆∆) *
White
∆∆* /
;
∆∆/ 0
}
«« 	
private
…… 
void
…… !
TxtName_TextChanged
…… (
(
……( )
object
……) /
sender
……0 6
,
……6 7"
TextChangedEventArgs
……8 L
e
……M N
)
……N O
{
……P Q
string
   
username
   
=
   
txtName
   %
.
  % &
Text
  & *
;
  * +
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
	Validador
ÀÀ 
.
ÀÀ 
ValidateUsername
ÀÀ +
(
ÀÀ+ ,
username
ÀÀ, 4
)
ÀÀ4 5
)
ÀÀ5 6
{
ÀÀ7 8
HighlightField
ÃÃ 
(
ÃÃ 
txtName
ÃÃ &
)
ÃÃ& '
;
ÃÃ' (
lbInvalidUser
ÕÕ 
.
ÕÕ 

Visibility
ÕÕ (
=
ÕÕ) *

Visibility
ÕÕ+ 5
.
ÕÕ5 6
Visible
ÕÕ6 =
;
ÕÕ= >
}
ŒŒ 
else
ŒŒ 
{
ŒŒ 

ResetField
œœ 
(
œœ 
txtName
œœ "
)
œœ" #
;
œœ# $
lbInvalidUser
–– 
.
–– 

Visibility
–– (
=
––) *

Visibility
––+ 5
.
––5 6
	Collapsed
––6 ?
;
––? @
}
—— 
}
““ 	
private
‘‘ 
void
‘‘ "
TxtEmail_TextChanged
‘‘ )
(
‘‘) *
object
‘‘* 0
sender
‘‘1 7
,
‘‘7 8"
TextChangedEventArgs
‘‘9 M
e
‘‘N O
)
‘‘O P
{
‘‘Q R
string
’’ 
email
’’ 
=
’’ 
txtEmail
’’ #
.
’’# $
Text
’’$ (
;
’’( )
if
÷÷ 
(
÷÷ 
!
÷÷ 
	Validador
÷÷ 
.
÷÷ 
ValidateEmail
÷÷ (
(
÷÷( )
email
÷÷) .
)
÷÷. /
)
÷÷/ 0
{
÷÷1 2
HighlightField
◊◊ 
(
◊◊ 
txtEmail
◊◊ '
)
◊◊' (
;
◊◊( )
lbInvalidEmail
ÿÿ 
.
ÿÿ 

Visibility
ÿÿ )
=
ÿÿ* +

Visibility
ÿÿ, 6
.
ÿÿ6 7
Visible
ÿÿ7 >
;
ÿÿ> ?
}
ŸŸ 
else
ŸŸ 
{
ŸŸ 

ResetField
⁄⁄ 
(
⁄⁄ 
txtEmail
⁄⁄ #
)
⁄⁄# $
;
⁄⁄$ %
lbInvalidEmail
€€ 
.
€€ 

Visibility
€€ )
=
€€* +

Visibility
€€, 6
.
€€6 7
	Collapsed
€€7 @
;
€€@ A
}
‹‹ 
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ 
GoToLoginView
ﬂﬂ "
(
ﬂﬂ" #
)
ﬂﬂ# $
{
ﬂﬂ% &
if
‡‡ 
(
‡‡ 
this
‡‡ 
.
‡‡ 
NavigationService
‡‡ &
.
‡‡& '
	CanGoBack
‡‡' 0
)
‡‡0 1
{
‡‡2 3
this
·· 
.
·· 
NavigationService
·· &
.
··& '
GoBack
··' -
(
··- .
)
··. /
;
··/ 0
}
‚‚ 
}
„„ 	
private
ÂÂ 
void
ÂÂ '
BtnTogglePassword_Checked
ÂÂ .
(
ÂÂ. /
object
ÂÂ/ 5
sender
ÂÂ6 <
,
ÂÂ< =
RoutedEventArgs
ÂÂ> M
e
ÂÂN O
)
ÂÂO P
{
ÊÊ 	 
txtPasswordVisible
ÁÁ 
.
ÁÁ 
Text
ÁÁ #
=
ÁÁ$ %
txtPassword
ÁÁ& 1
.
ÁÁ1 2
Password
ÁÁ2 :
;
ÁÁ: ; 
txtPasswordVisible
ËË 
.
ËË 

Visibility
ËË )
=
ËË* +

Visibility
ËË, 6
.
ËË6 7
Visible
ËË7 >
;
ËË> ?
txtPassword
ÈÈ 
.
ÈÈ 

Visibility
ÈÈ "
=
ÈÈ# $

Visibility
ÈÈ% /
.
ÈÈ/ 0
	Collapsed
ÈÈ0 9
;
ÈÈ9 :
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ )
BtnTogglePassword_Unchecked
ÏÏ 0
(
ÏÏ0 1
object
ÏÏ1 7
sender
ÏÏ8 >
,
ÏÏ> ?
RoutedEventArgs
ÏÏ@ O
e
ÏÏP Q
)
ÏÏQ R
{
ÌÌ 	
txtPassword
ÓÓ 
.
ÓÓ 
Password
ÓÓ  
=
ÓÓ! " 
txtPasswordVisible
ÓÓ# 5
.
ÓÓ5 6
Text
ÓÓ6 :
;
ÓÓ: ; 
txtPasswordVisible
ÔÔ 
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
ÔÔ@ A
txtPassword
 
.
 

Visibility
 "
=
# $

Visibility
% /
.
/ 0
Visible
0 7
;
7 8
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ *
UpdatePasswordVisibilityIcon
ÛÛ 1
(
ÛÛ1 2
)
ÛÛ2 3
{
ÙÙ 	
if
ıı 
(
ıı 
txtPassword
ıı 
.
ıı 
Password
ıı $
.
ıı$ %
Length
ıı% +
>
ıı, -
$num
ıı. /
)
ıı/ 0
{
ˆˆ 
btnTogglePassword
˜˜ !
.
˜˜! "

Visibility
˜˜" ,
=
˜˜- .

Visibility
˜˜/ 9
.
˜˜9 :
Visible
˜˜: A
;
˜˜A B
}
¯¯ 
else
˘˘ 
{
˙˙ 
btnTogglePassword
˚˚ !
.
˚˚! "

Visibility
˚˚" ,
=
˚˚- .

Visibility
˚˚/ 9
.
˚˚9 :
	Collapsed
˚˚: C
;
˚˚C D
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
void
ˇˇ 
BtnBack_Click
ˇˇ "
(
ˇˇ" #
object
ˇˇ# )
sender
ˇˇ* 0
,
ˇˇ0 1
RoutedEventArgs
ˇˇ2 A
e
ˇˇB C
)
ˇˇC D
{
ÄÄ 	
GoToLoginView
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ #
BtnBackValidate_Click
ÑÑ *
(
ÑÑ* +
object
ÑÑ+ 1
sender
ÑÑ2 8
,
ÑÑ8 9
RoutedEventArgs
ÑÑ: I
e
ÑÑJ K
)
ÑÑK L
{
ÖÖ 	
verificationGrid
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ '
=
ÜÜ( )

Visibility
ÜÜ* 4
.
ÜÜ4 5
	Collapsed
ÜÜ5 >
;
ÜÜ> ?
txtEmail
áá 
.
áá 
Clear
áá 
(
áá 
)
áá 
;
áá 
txtName
àà 
.
àà 
Clear
àà 
(
àà 
)
àà 
;
àà 
txtPassword
ââ 
.
ââ 
Clear
ââ 
(
ââ 
)
ââ 
;
ââ   
txtPasswordVisible
ää 
.
ää 
Clear
ää $
(
ää$ %
)
ää% &
;
ää& '
}
ãã 	
private
çç 
void
çç +
TxtValidationCode_TextChanged
çç 2
(
çç2 3
object
çç3 9
sender
çç: @
,
çç@ A"
TextChangedEventArgs
ççB V
e
ççW X
)
ççX Y
{
éé 	
TextBox
èè 
currentTextBox
èè "
=
èè# $
sender
èè% +
as
èè, .
TextBox
èè/ 6
;
èè6 7
if
êê 
(
êê 
currentTextBox
êê 
.
êê 
Text
êê #
.
êê# $
Length
êê$ *
==
êê+ -
$num
êê. /
)
êê/ 0
{
ëë 
if
íí 
(
íí 
currentTextBox
íí "
==
íí# % 
txtValidationCode1
íí& 8
)
íí8 9 
txtValidationCode2
ìì &
.
ìì& '
Focus
ìì' ,
(
ìì, -
)
ìì- .
;
ìì. /
else
îî 
if
îî 
(
îî 
currentTextBox
îî '
==
îî( * 
txtValidationCode2
îî+ =
)
îî= > 
txtValidationCode3
ïï &
.
ïï& '
Focus
ïï' ,
(
ïï, -
)
ïï- .
;
ïï. /
else
ññ 
if
ññ 
(
ññ 
currentTextBox
ññ '
==
ññ( * 
txtValidationCode3
ññ+ =
)
ññ= > 
txtValidationCode4
óó &
.
óó& '
Focus
óó' ,
(
óó, -
)
óó- .
;
óó. /
else
òò 
if
òò 
(
òò 
currentTextBox
òò '
==
òò( * 
txtValidationCode4
òò+ =
)
òò= > 
txtValidationCode5
ôô &
.
ôô& '
Focus
ôô' ,
(
ôô, -
)
ôô- .
;
ôô. /
else
öö 
if
öö 
(
öö 
currentTextBox
öö '
==
öö( * 
txtValidationCode5
öö+ =
)
öö= > 
txtValidationCode6
õõ &
.
õõ& '
Focus
õõ' ,
(
õõ, -
)
õõ- .
;
õõ. /
}
úú 
}
ùù 	
}
üü 
}†† îï
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
ÄÄ 
friendProfileId
ÄÄ #
=
ÄÄ$ %
await
ÄÄ& +
userManager
ÄÄ, 7
.
ÄÄ7 8
GetProfileIdAsync
ÄÄ8 I
(
ÄÄI J

friendName
ÄÄJ T
)
ÄÄT U
;
ÄÄU V
if
ÅÅ 
(
ÅÅ 
friendProfileId
ÅÅ #
==
ÅÅ$ &"
UserProfileSingleton
ÅÅ' ;
.
ÅÅ; <
IdPerfil
ÅÅ< D
)
ÅÅD E
{
ÅÅF G
DialogManager
ÇÇ !
.
ÇÇ! "#
ShowErrorMessageAlert
ÇÇ" 7
(
ÇÇ7 8

Properties
ÇÇ8 B
.
ÇÇB C
	Resources
ÇÇC L
.
ÇÇL M)
dialogCannotAddSelfAsFriend
ÇÇM h
)
ÇÇh i
;
ÇÇi j
}
ÉÉ 
else
ÉÉ 
if
ÉÉ 
(
ÉÉ 
friendProfileId
ÉÉ *
>
ÉÉ+ ,
$num
ÉÉ- .
)
ÉÉ. /
{
ÉÉ0 1
await
ÑÑ #
ExecuteFriendAddition
ÑÑ /
(
ÑÑ/ 0
friendProfileId
ÑÑ0 ?
,
ÑÑ? @

friendName
ÑÑA K
)
ÑÑK L
;
ÑÑL M
}
ÖÖ 
else
ÖÖ 
{
ÖÖ 
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
ÜÜL M#
dialogProfileNotFound
ÜÜM b
)
ÜÜb c
;
ÜÜc d
}
áá 
}
àà 
catch
àà 
(
àà 
	Exception
àà 
ex
àà !
)
àà! "
{
àà# $
HandleException
ââ 
(
ââ  
ex
ââ  "
,
ââ" #
logger
ââ$ *
)
ââ* +
;
ââ+ ,
}
ää 
}
ãã 	
private
çç 
async
çç 
Task
çç #
ExecuteFriendAddition
çç 0
(
çç0 1
int
çç1 4
friendProfileId
çç5 D
,
ççD E
string
ççF L

friendName
ççM W
)
ççW X
{
ççY Z
int
éé 
userProfileId
éé 
=
éé "
UserProfileSingleton
éé  4
.
éé4 5
IdPerfil
éé5 =
;
éé= >
int
èè 
result
èè 
=
èè 
await
èè 
friendsManager
èè -
.
èè- .
AddFriendAsync
èè. <
(
èè< =
userProfileId
èè= J
,
èèJ K
friendProfileId
èèL [
)
èè[ \
;
èè\ ]
if
êê 
(
êê 
result
êê 
==
êê 
	Constants
êê #
.
êê# $
SUCCES_OPERATION
êê$ 4
)
êê4 5
{
êê6 7
DialogManager
ëë 
.
ëë %
ShowSuccessMessageAlert
ëë 5
(
ëë5 6
string
ëë6 <
.
ëë< =
Format
ëë= C
(
ëëC D

Properties
ëëD N
.
ëëN O
	Resources
ëëO X
.
ëëX Y)
dialogAddFriendSuccessfully
ëëY t
,
ëët u

friendNameëëv Ä
)ëëÄ Å
)ëëÅ Ç
;ëëÇ É
await
íí "
LoadFriendsListAsync
íí *
(
íí* +
)
íí+ ,
;
íí, -
}
ìì 
else
ìì 
{
ìì 
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
dialogErrorAddingFriend
îîI `
)
îî` a
;
îîa b
}
ïï 
}
ññ 	
private
òò 
void
òò 
HandleException
òò $
(
òò$ %
	Exception
òò% .
ex
òò/ 1
,
òò1 2
LoggerManager
òò3 @
logger
òòA G
)
òòG H
{
òòI J
if
ôô 
(
ôô 
ex
ôô 
is
ôô 
FaultException
ôô $
<
ôô$ %"
ProfileNotFoundFault
ôô% 9
>
ôô9 :
faultEx
ôô; B
)
ôôB C
{
ôôD E
logger
öö 
.
öö 
LogError
öö 
(
öö  
faultEx
öö  '
)
öö' (
;
öö( )
DialogManager
õõ 
.
õõ #
ShowErrorMessageAlert
õõ 3
(
õõ3 4

Properties
õõ4 >
.
õõ> ?
	Resources
õõ? H
.
õõH I'
dialogNotRetrievedProfile
õõI b
)
õõb c
;
õõc d
}
úú 
else
úú 
if
úú 
(
úú 
ex
úú 
is
úú '
EndpointNotFoundException
úú 6
)
úú6 7
{
úú8 9
logger
ùù 
.
ùù 
LogError
ùù 
(
ùù  
ex
ùù  "
)
ùù" #
;
ùù# $
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
üü 
else
üü 
if
üü 
(
üü 
ex
üü 
is
üü 
TimeoutException
üü -
)
üü- .
{
üü/ 0
logger
†† 
.
†† 
LogError
†† 
(
††  
ex
††  "
)
††" #
;
††# $
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
¢¢ 
else
¢¢ 
if
¢¢ 
(
¢¢ 
ex
¢¢ 
is
¢¢ $
CommunicationException
¢¢ 3
)
¢¢3 4
{
¢¢5 6
logger
££ 
.
££ 
LogError
££ 
(
££  
ex
££  "
)
££" #
;
££# $
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
©© 
async
©© 
Task
©© "
LoadFriendsListAsync
©© /
(
©©/ 0
)
©©0 1
{
©©2 3
LoggerManager
™™ 
logger
™™  
=
™™! "
new
™™# &
LoggerManager
™™' 4
(
™™4 5
this
™™5 9
.
™™9 :
GetType
™™: A
(
™™A B
)
™™B C
)
™™C D
;
™™D E
try
´´ 
{
´´ 
int
¨¨ 
userProfileId
¨¨ !
=
¨¨" #"
UserProfileSingleton
¨¨$ 8
.
¨¨8 9
IdPerfil
¨¨9 A
;
¨¨A B
var
≠≠ 
friendsList
≠≠ 
=
≠≠  !
await
≠≠" '
friendsManager
≠≠( 6
.
≠≠6 7
GetFriendsAsync
≠≠7 F
(
≠≠F G
userProfileId
≠≠G T
)
≠≠T U
;
≠≠U V
var
ØØ 
friendsWithStatus
ØØ %
=
ØØ& '
new
ØØ( +
List
ØØ, 0
<
ØØ0 1
string
ØØ1 7
>
ØØ7 8
(
ØØ8 9
)
ØØ9 :
;
ØØ: ;
foreach
±± 
(
±± 
var
±± 
friend
±± #
in
±±$ &
friendsList
±±' 2
)
±±2 3
{
±±4 5
var
≤≤ 
status
≤≤ 
=
≤≤  
await
≤≤! &
statusManager
≤≤' 4
.
≤≤4 5"
GetPlayerStatusAsync
≤≤5 I
(
≤≤I J
friend
≤≤J P
.
≤≤P Q
	idProfile
≤≤Q Z
)
≤≤Z [
;
≤≤[ \
friendsWithStatus
≥≥ %
.
≥≥% &
Add
≥≥& )
(
≥≥) *
$"
≥≥* ,
{
≥≥, -
friend
≥≥- 3
.
≥≥3 4
userName
≥≥4 <
}
≥≥< =
$str
≥≥= @
{
≥≥@ A
status
≥≥A G
}
≥≥G H
"
≥≥H I
)
≥≥I J
;
≥≥J K
}
¥¥ 

lstFriends
∂∂ 
.
∂∂ 
ItemsSource
∂∂ &
=
∂∂' (
friendsWithStatus
∂∂) :
;
∂∂: ;
}
∑∑ 
catch
∑∑ 
(
∑∑ '
EndpointNotFoundException
∑∑ .'
endpointNotFoundException
∑∑/ H
)
∑∑H I
{
∑∑J K
logger
∏∏ 
.
∏∏ 
LogError
∏∏ 
(
∏∏  '
endpointNotFoundException
∏∏  9
)
∏∏9 :
;
∏∏: ;
DialogManager
ππ 
.
ππ #
ShowErrorMessageAlert
ππ 3
(
ππ3 4

Properties
ππ4 >
.
ππ> ?
	Resources
ππ? H
.
ππH I%
dialogEndPointException
ππI `
)
ππ` a
;
ππa b
}
∫∫ 
catch
∫∫ 
(
∫∫ 
TimeoutException
∫∫ %
timeoutException
∫∫& 6
)
∫∫6 7
{
∫∫8 9
logger
ªª 
.
ªª 
LogError
ªª 
(
ªª  
timeoutException
ªª  0
)
ªª0 1
;
ªª1 2
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4

Properties
ºº4 >
.
ºº> ?
	Resources
ºº? H
.
ººH I$
dialogTimeOutException
ººI _
)
ºº_ `
;
ºº` a
}
ΩΩ 
catch
ΩΩ 
(
ΩΩ $
CommunicationException
ΩΩ +$
communicationException
ΩΩ, B
)
ΩΩB C
{
ΩΩD E
logger
ææ 
.
ææ 
LogError
ææ 
(
ææ  $
communicationException
ææ  6
)
ææ6 7
;
ææ7 8
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
øøH I)
dialogComunicationException
øøI d
)
øød e
;
øøe f
}
¿¿ 
}
¡¡ 	
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
ƒƒS T
LoggerManager
≈≈ 
logger
≈≈  
=
≈≈! "
new
≈≈# &
LoggerManager
≈≈' 4
(
≈≈4 5
this
≈≈5 9
.
≈≈9 :
GetType
≈≈: A
(
≈≈A B
)
≈≈B C
)
≈≈C D
;
≈≈D E
if
∆∆ 
(
∆∆ 

lstFriends
∆∆ 
.
∆∆ 
SelectedItem
∆∆ '
!=
∆∆( *
null
∆∆+ /
)
∆∆/ 0
{
∆∆1 2
string
««  
selectedFriendName
«« )
=
««* +

lstFriends
««, 6
.
««6 7
SelectedItem
««7 C
.
««C D
ToString
««D L
(
««L M
)
««M N
;
««N O
try
…… 
{
…… 
int
   
friendProfileId
   '
=
  ( )
await
  * /
userManager
  0 ;
.
  ; <
GetProfileIdAsync
  < M
(
  M N 
selectedFriendName
  N `
)
  ` a
;
  a b
if
ÃÃ 
(
ÃÃ 
friendProfileId
ÃÃ '
>
ÃÃ( )
$num
ÃÃ* +
)
ÃÃ+ ,
{
ÃÃ- .
int
ÕÕ 
userProfileId
ÕÕ )
=
ÕÕ* +"
UserProfileSingleton
ÕÕ, @
.
ÕÕ@ A
IdPerfil
ÕÕA I
;
ÕÕI J
int
ŒŒ 
result
ŒŒ "
=
ŒŒ# $
await
ŒŒ% *
friendsManager
ŒŒ+ 9
.
ŒŒ9 :
DeleteFriendAsync
ŒŒ: K
(
ŒŒK L
userProfileId
ŒŒL Y
,
ŒŒY Z
friendProfileId
ŒŒ[ j
)
ŒŒj k
;
ŒŒk l
if
–– 
(
–– 
result
–– "
==
––# %
	Constants
––& /
.
––/ 0
SUCCES_OPERATION
––0 @
)
––@ A
{
––B C
DialogManager
—— )
.
——) *%
ShowSuccessMessageAlert
——* A
(
——A B
string
——B H
.
——H I
Format
——I O
(
——O P

Properties
——P Z
.
——Z [
	Resources
——[ d
.
——d e%
dialogFriendshipDeleted
——e |
,
——| }!
selectedFriendName——~ ê
)——ê ë
)——ë í
;——í ì
await
““ !"
LoadFriendsListAsync
““" 6
(
““6 7
)
““7 8
;
““8 9
}
”” 
else
”” 
{
””  
DialogManager
‘‘ )
.
‘‘) *#
ShowErrorMessageAlert
‘‘* ?
(
‘‘? @

Properties
‘‘@ J
.
‘‘J K
	Resources
‘‘K T
.
‘‘T U+
dialogErrorDeletingFriendship
‘‘U r
)
‘‘r s
;
‘‘s t
}
’’ 
}
÷÷ 
else
÷÷ 
{
÷÷ 
DialogManager
◊◊ %
.
◊◊% &#
ShowErrorMessageAlert
◊◊& ;
(
◊◊; <

Properties
◊◊< F
.
◊◊F G
	Resources
◊◊G P
.
◊◊P Q'
dialogNotRetrievedProfile
◊◊Q j
)
◊◊j k
;
◊◊k l
}
ÿÿ 
}
ŸŸ 
catch
ŸŸ 
(
ŸŸ '
EndpointNotFoundException
ŸŸ 2'
endpointNotFoundException
ŸŸ3 L
)
ŸŸL M
{
ŸŸN O
logger
⁄⁄ 
.
⁄⁄ 
LogError
⁄⁄ #
(
⁄⁄# $'
endpointNotFoundException
⁄⁄$ =
)
⁄⁄= >
;
⁄⁄> ?
DialogManager
€€ !
.
€€! "#
ShowErrorMessageAlert
€€" 7
(
€€7 8

Properties
€€8 B
.
€€B C
	Resources
€€C L
.
€€L M%
dialogEndPointException
€€M d
)
€€d e
;
€€e f
}
‹‹ 
catch
‹‹ 
(
‹‹ 
TimeoutException
‹‹ )
timeoutException
‹‹* :
)
‹‹: ;
{
‹‹< =
logger
›› 
.
›› 
LogError
›› #
(
››# $
timeoutException
››$ 4
)
››4 5
;
››5 6
DialogManager
ﬁﬁ !
.
ﬁﬁ! "#
ShowErrorMessageAlert
ﬁﬁ" 7
(
ﬁﬁ7 8

Properties
ﬁﬁ8 B
.
ﬁﬁB C
	Resources
ﬁﬁC L
.
ﬁﬁL M$
dialogTimeOutException
ﬁﬁM c
)
ﬁﬁc d
;
ﬁﬁd e
}
ﬂﬂ 
catch
ﬂﬂ 
(
ﬂﬂ $
CommunicationException
ﬂﬂ /$
communicationException
ﬂﬂ0 F
)
ﬂﬂF G
{
ﬂﬂH I
logger
‡‡ 
.
‡‡ 
LogError
‡‡ #
(
‡‡# $$
communicationException
‡‡$ :
)
‡‡: ;
;
‡‡; <
DialogManager
·· !
.
··! "#
ShowErrorMessageAlert
··" 7
(
··7 8

Properties
··8 B
.
··B C
	Resources
··C L
.
··L M)
dialogComunicationException
··M h
)
··h i
;
··i j
}
‚‚ 
}
„„ 
else
„„ 
{
„„ 
DialogManager
‰‰ 
.
‰‰ %
ShowWarningMessageAlert
‰‰ 5
(
‰‰5 6

Properties
‰‰6 @
.
‰‰@ A
	Resources
‰‰A J
.
‰‰J K(
dialogSelectFriendToDelete
‰‰K e
)
‰‰e f
;
‰‰f g
}
ÂÂ 
}
ÊÊ 	
private
ÈÈ 
async
ÈÈ 
void
ÈÈ  
BtnStartGame_Click
ÈÈ -
(
ÈÈ- .
object
ÈÈ. 4
sender
ÈÈ5 ;
,
ÈÈ; <
RoutedEventArgs
ÈÈ= L
e
ÈÈM N
)
ÈÈN O
{
ÈÈP Q
LoggerManager
ÍÍ 
logger
ÍÍ  
=
ÍÍ! "
new
ÍÍ# &
LoggerManager
ÍÍ' 4
(
ÍÍ4 5
this
ÍÍ5 9
.
ÍÍ9 :
GetType
ÍÍ: A
(
ÍÍA B
)
ÍÍB C
)
ÍÍC D
;
ÍÍD E
string
ÎÎ 
gameName
ÎÎ 
=
ÎÎ 
$str
ÎÎ .
;
ÎÎ. /
int
ÏÏ 
	nodeCount
ÏÏ 
=
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
Profile
ÌÌ 
owner
ÌÌ 
=
ÌÌ 
new
ÌÌ 
Profile
ÌÌ  '
{
ÌÌ( )
	idProfile
ÌÌ* 3
=
ÌÌ4 5"
UserProfileSingleton
ÌÌ6 J
.
ÌÌJ K
IdPerfil
ÌÌK S
,
ÌÌS T
userName
ÌÌU ]
=
ÌÌ^ _"
UserProfileSingleton
ÌÌ` t
.
ÌÌt u
Nombre
ÌÌu {
}
ÌÌ| }
;
ÌÌ} ~
try
ÔÔ 
{
ÔÔ 
string
 
	lobbyCode
  
=
! "
await
# (
lobbyBrowser
) 5
.
5 6
CreateLobbyAsync
6 F
(
F G
gameName
G O
,
O P
	nodeCount
Q Z
,
Z [
owner
\ a
)
a b
;
b c
if
ÚÚ 
(
ÚÚ 
!
ÚÚ 
string
ÚÚ 
.
ÚÚ 
IsNullOrEmpty
ÚÚ )
(
ÚÚ) *
	lobbyCode
ÚÚ* 3
)
ÚÚ3 4
)
ÚÚ4 5
{
ÚÚ6 7
GoToLobbyView
ÛÛ !
(
ÛÛ! "
	lobbyCode
ÛÛ" +
)
ÛÛ+ ,
;
ÛÛ, -
}
ÙÙ 
else
ÙÙ 
{
ÙÙ 
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
ııL M&
dialogErrorCreatingLobby
ııM e
)
ııe f
;
ııf g
}
ˆˆ 
}
˜˜ 
catch
˜˜ 
(
˜˜ '
EndpointNotFoundException
˜˜ .'
endpointNotFoundException
˜˜/ H
)
˜˜H I
{
˜˜J K
logger
¯¯ 
.
¯¯ 
LogError
¯¯ 
(
¯¯  '
endpointNotFoundException
¯¯  9
)
¯¯9 :
;
¯¯: ;
DialogManager
˘˘ 
.
˘˘ #
ShowErrorMessageAlert
˘˘ 3
(
˘˘3 4

Properties
˘˘4 >
.
˘˘> ?
	Resources
˘˘? H
.
˘˘H I%
dialogEndPointException
˘˘I `
)
˘˘` a
;
˘˘a b
}
˙˙ 
catch
˙˙ 
(
˙˙ 
TimeoutException
˙˙ %
timeoutException
˙˙& 6
)
˙˙6 7
{
˙˙8 9
logger
˚˚ 
.
˚˚ 
LogError
˚˚ 
(
˚˚  
timeoutException
˚˚  0
)
˚˚0 1
;
˚˚1 2
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
¸¸H I$
dialogTimeOutException
¸¸I _
)
¸¸_ `
;
¸¸` a
}
˝˝ 
catch
˝˝ 
(
˝˝ $
CommunicationException
˝˝ +$
communicationException
˝˝, B
)
˝˝B C
{
˝˝D E
logger
˛˛ 
.
˛˛ 
LogError
˛˛ 
(
˛˛  $
communicationException
˛˛  6
)
˛˛6 7
;
˛˛7 8
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
ˇˇH I)
dialogComunicationException
ˇˇI d
)
ˇˇd e
;
ˇˇe f
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
GoToLobbyView
ÉÉ "
(
ÉÉ" #
string
ÉÉ# )
	lobbyCode
ÉÉ* 3
)
ÉÉ3 4
{
ÉÉ5 6
	LobbyView
ÑÑ 
	lobbyView
ÑÑ 
=
ÑÑ  !
new
ÑÑ" %
	LobbyView
ÑÑ& /
(
ÑÑ/ 0
	lobbyCode
ÑÑ0 9
)
ÑÑ9 :
;
ÑÑ: ;
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
	lobbyView
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
ää 	
private
åå 
void
åå 
GoToPerfilView
åå #
(
åå# $
)
åå$ %
{
åå& '
ProfileView
çç 
profileView
çç #
=
çç$ %
new
çç& )
ProfileView
çç* 5
(
çç5 6
)
çç6 7
;
çç7 8
if
éé 
(
éé 
this
éé 
.
éé 
NavigationService
éé &
!=
éé' )
null
éé* .
)
éé. /
{
éé0 1
this
èè 
.
èè 
NavigationService
èè &
.
èè& '
Navigate
èè' /
(
èè/ 0
profileView
èè0 ;
)
èè; <
;
èè< =
}
êê 
else
êê 
{
êê 
DialogManager
ëë 
.
ëë #
ShowErrorMessageAlert
ëë 3
(
ëë3 4

Properties
ëë4 >
.
ëë> ?
	Resources
ëë? H
.
ëëH I#
dialogNavigationError
ëëI ^
)
ëë^ _
;
ëë_ `
}
íí 
}
ìì 	
private
ïï 
void
ïï 
BtnProfile_Click
ïï %
(
ïï% &
object
ïï& ,
sender
ïï- 3
,
ïï3 4
RoutedEventArgs
ïï5 D
e
ïïE F
)
ïïF G
{
ïïH I
GoToPerfilView
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 	
private
ôô 
void
ôô !
BtnLaderboard_Click
ôô (
(
ôô( )
object
ôô) /
sender
ôô0 6
,
ôô6 7
RoutedEventArgs
ôô8 G
e
ôôH I
)
ôôI J
{
ôôK L 
GoToLaderboardView
öö 
(
öö 
)
öö  
;
öö  !
}
õõ 	
private
úú 
void
úú  
GoToLaderboardView
úú '
(
úú' (
)
úú( )
{
úú* +

Laderboard
ùù 
laderboardView
ùù %
=
ùù& '
new
ùù( +

Laderboard
ùù, 6
(
ùù6 7
)
ùù7 8
;
ùù8 9
if
ûû 
(
ûû 
this
ûû 
.
ûû 
NavigationService
ûû &
!=
ûû' )
null
ûû* .
)
ûû. /
{
ûû0 1
this
üü 
.
üü 
NavigationService
üü &
.
üü& '
Navigate
üü' /
(
üü/ 0
laderboardView
üü0 >
)
üü> ?
;
üü? @
}
†† 
else
†† 
{
†† 
DialogManager
°° 
.
°° #
ShowErrorMessageAlert
°° 3
(
°°3 4

Properties
°°4 >
.
°°> ?
	Resources
°°? H
.
°°H I#
dialogNavigationError
°°I ^
)
°°^ _
;
°°_ `
}
¢¢ 
}
££ 	
private
•• 
void
•• 
BtnJoinGame_Click
•• &
(
••& '
object
••' -
sender
••. 4
,
••4 5
RoutedEventArgs
••6 E
e
••F G
)
••G H
{
••I J
SelectLobbyView
¶¶ 
selectLobbyView
¶¶ +
=
¶¶, -
new
¶¶. 1
SelectLobbyView
¶¶2 A
(
¶¶A B
)
¶¶B C
;
¶¶C D
if
ßß 
(
ßß 
this
ßß 
.
ßß 
NavigationService
ßß &
!=
ßß' )
null
ßß* .
)
ßß. /
{
ßß0 1
this
®® 
.
®® 
NavigationService
®® &
.
®®& '
Navigate
®®' /
(
®®/ 0
selectLobbyView
®®0 ?
)
®®? @
;
®®@ A
}
©© 
else
©© 
{
©© 
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
dialogNavigationError
™™I ^
)
™™^ _
;
™™_ `
}
´´ 
}
¨¨ 	
}
≠≠ 
}ÆÆ í
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
]77) *Â
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
} Ò@
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
}aa ÆZ
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
$str	{ ê
;
ê ë
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
}uu Á≤
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
)	22 Ä
)
22Ä Å
;
22Å Ç
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
IdPerfil	KKx Ä
)
KKÄ Å
)
KKÅ Ç
;
KKÇ É
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
$str	{{v å
;
{{å ç
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
$str	||v å
;
||å ç
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
ÄÄ 	
private
ÇÇ 
async
ÇÇ 
void
ÇÇ 
	OnClosing
ÇÇ $
(
ÇÇ$ %
object
ÇÇ% +
sender
ÇÇ, 2
,
ÇÇ2 3
CancelEventArgs
ÇÇ4 C
e
ÇÇD E
)
ÇÇE F
{
ÇÇG H
if
ÉÉ 
(
ÉÉ 
isConnected
ÉÉ 
)
ÉÉ 
{
ÉÉ 
try
ÑÑ 
{
ÑÑ 
await
ÖÖ 
Task
ÖÖ 
.
ÖÖ 
Run
ÖÖ "
(
ÖÖ" #
(
ÖÖ# $
)
ÖÖ$ %
=>
ÖÖ& (
lobbyManager
ÜÜ $
.
ÜÜ$ %

LeaveLobby
ÜÜ% /
(
ÜÜ/ 0
	lobbyCode
ÜÜ0 9
,
ÜÜ9 :"
UserProfileSingleton
ÜÜ; O
.
ÜÜO P
IdPerfil
ÜÜP X
)
ÜÜX Y
)
ÜÜY Z
;
ÜÜZ [
}
áá 
catch
áá 
(
áá 
	Exception
áá "
ex
áá# %
)
áá% &
{
áá' (
Console
àà 
.
àà 
	WriteLine
àà %
(
àà% &
$"
àà& (
$str
àà( B
{
ààB C
ex
ààC E
.
ààE F
Message
ààF M
}
ààM N
"
ààN O
)
ààO P
;
ààP Q
}
ââ 
}
ää 
}
ãã 	
private
çç 
void
çç 
ScrollToBottom
çç #
(
çç# $
)
çç$ %
{
çç& '
var
éé 
scrollViewer
éé 
=
éé 
VisualTreeHelper
éé /
.
éé/ 0
	GetParent
éé0 9
(
éé9 :
ChatMessagesPanel
éé: K
)
ééK L
as
ééM O
ScrollViewer
ééP \
;
éé\ ]
scrollViewer
èè 
?
èè 
.
èè 
ScrollToEnd
èè %
(
èè% &
)
èè& '
;
èè' (
}
êê 	
private
íí 
void
íí 
GoToMenuView
íí !
(
íí! "
)
íí" #
{
íí$ %
MenuView
ìì 
menuView
ìì 
=
ìì 
new
ìì  #
MenuView
ìì$ ,
(
ìì, -
)
ìì- .
;
ìì. /
if
îî 
(
îî 
this
îî 
.
îî 
NavigationService
îî &
!=
îî' )
null
îî* .
)
îî. /
{
îî0 1
this
ïï 
.
ïï 
NavigationService
ïï &
.
ïï& '
Navigate
ïï' /
(
ïï/ 0
menuView
ïï0 8
)
ïï8 9
;
ïï9 :
}
ññ 
else
ññ 
{
ññ 

MessageBox
óó 
.
óó 
Show
óó 
(
óó  
$str
óó  E
)
óóE F
;
óóF G
}
òò 
}
ôô 	
private
õõ 
async
õõ 
void
õõ 
BtnBack_Click
õõ (
(
õõ( )
object
õõ) /
sender
õõ0 6
,
õõ6 7
RoutedEventArgs
õõ8 G
e
õõH I
)
õõI J
{
õõK L
try
úú 
{
úú 
await
ùù 
lobbyManager
ùù "
.
ùù" #
LeaveLobbyAsync
ùù# 2
(
ùù2 3
	lobbyCode
ùù3 <
,
ùù< ="
UserProfileSingleton
ùù> R
.
ùùR S
IdPerfil
ùùS [
)
ùù[ \
;
ùù\ ]
await
ûû 
chatManager
ûû !
.
ûû! "
LeaveChatAsync
ûû" 0
(
ûû0 1"
UserProfileSingleton
ûû1 E
.
ûûE F
Nombre
ûûF L
,
ûûL M
	lobbyCode
ûûN W
)
ûûW X
;
ûûX Y
GoToMenuView
üü 
(
üü 
)
üü 
;
üü 
}
†† 
catch
†† 
(
†† 
	Exception
†† 
ex
†† !
)
††! "
{
††# $

MessageBox
°° 
.
°° 
Show
°° 
(
°°  
$"
°°  "
$str
°°" <
{
°°< =
ex
°°= ?
.
°°? @
Message
°°@ G
}
°°G H
"
°°H I
)
°°I J
;
°°J K
}
¢¢ 
}
££ 	
public
•• 
void
•• 
RemoveFromLobby
•• #
(
••# $
)
••$ %
{
••& '

Dispatcher
¶¶ 
.
¶¶ 
Invoke
¶¶ 
(
¶¶ 
(
¶¶ 
)
¶¶  
=>
¶¶! #
{
¶¶$ %

MessageBox
ßß 
.
ßß 
Show
ßß 
(
ßß  
$str
ßß  ?
)
ßß? @
;
ßß@ A
GoToMenuView
®® 
(
®® 
)
®® 
;
®® 
}
©© 
)
©© 
;
©© 
}
™™ 	
public
¨¨ 
void
¨¨ 
HostLeftCallback
¨¨ $
(
¨¨$ %
)
¨¨% &
{
¨¨' (

Dispatcher
≠≠ 
.
≠≠ 
Invoke
≠≠ 
(
≠≠ 
async
≠≠ #
(
≠≠$ %
)
≠≠% &
=>
≠≠' )
{
≠≠* +
await
ØØ 
Task
ØØ 
.
ØØ 
Run
ØØ 
(
ØØ 
(
ØØ  
)
ØØ  !
=>
ØØ" $
DialogManager
∞∞ !
.
∞∞! "%
ShowWarningMessageAlert
∞∞" 9
(
∞∞9 :
$str
∞∞: [
)
∞∞[ \
)
±± 
;
±± 
GoToMenuView
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 
)
µµ 
;
µµ 
}
∂∂ 	
public
∑∑ 
void
∑∑ 
GuestLeftCallback
∑∑ %
(
∑∑% &
)
∑∑& '
{
∑∑( )

Dispatcher
ππ 
.
ππ 
Invoke
ππ 
(
ππ 
(
ππ 
)
ππ  
=>
ππ! #
{
ππ$ %
labelPlayer2
∫∫ 
.
∫∫ 
Content
∫∫ $
=
∫∫% &
$str
∫∫' =
;
∫∫= >
}
ªª 
)
ªª 
;
ªª 
}
ºº 	
public
ææ 
void
ææ !
GuestJoinedCallback
ææ '
(
ææ' (
string
ææ( .
	guestName
ææ/ 8
)
ææ8 9
{
ææ: ;

Dispatcher
øø 
.
øø 
Invoke
øø 
(
øø 
(
øø 
)
øø  
=>
øø! #
{
øø$ %
labelPlayer2
¿¿ 
.
¿¿ 
Content
¿¿ $
=
¿¿% &
	guestName
¿¿' 0
;
¿¿0 1
}
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 	
public
ƒƒ 
void
ƒƒ 
BroadcastMessage
ƒƒ $
(
ƒƒ$ %
Message
ƒƒ% ,
message
ƒƒ- 4
)
ƒƒ4 5
{
ƒƒ6 7
Application
≈≈ 
.
≈≈ 
Current
≈≈ 
.
≈≈  

Dispatcher
≈≈  *
.
≈≈* +
Invoke
≈≈+ 1
(
≈≈1 2
(
≈≈2 3
)
≈≈3 4
=>
≈≈5 7
{
≈≈8 9
Border
∆∆ 
messageContainer
∆∆ '
=
∆∆( )
new
∆∆* -
Border
∆∆. 4
{
∆∆5 6

Background
«« 
=
««  
new
««! $
SolidColorBrush
««% 4
(
««4 5
Colors
««5 ;
.
««; <
White
««< A
)
««A B
,
««B C
BorderThickness
»» #
=
»»$ %
new
»»& )
	Thickness
»»* 3
(
»»3 4
$num
»»4 5
)
»»5 6
,
»»6 7
Padding
…… 
=
…… 
new
…… !
	Thickness
……" +
(
……+ ,
$num
……, .
)
……. /
,
……/ 0
Margin
   
=
   
new
    
	Thickness
  ! *
(
  * +
$num
  + -
,
  - .
$num
  / 0
,
  0 1
$num
  2 4
,
  4 5
$num
  6 7
)
  7 8
,
  8 9!
HorizontalAlignment
ÀÀ '
=
ÀÀ( )
message
ÀÀ* 1
.
ÀÀ1 2
userName
ÀÀ2 :
==
ÀÀ; ="
UserProfileSingleton
ÀÀ> R
.
ÀÀR S
Nombre
ÀÀS Y
?
ÀÀZ [!
HorizontalAlignment
ÀÀ\ o
.
ÀÀo p
Right
ÀÀp u
:
ÀÀv w"
HorizontalAlignmentÀÀx ã
.ÀÀã å
LeftÀÀå ê
}
ÃÃ 
;
ÃÃ 
	TextBlock
ŒŒ 
messageBlock
ŒŒ &
=
ŒŒ' (
new
ŒŒ) ,
	TextBlock
ŒŒ- 6
{
ŒŒ7 8
Text
œœ 
=
œœ 
$"
œœ 
{
œœ 
message
œœ %
.
œœ% &
chatMessage
œœ& 1
}
œœ1 2
$str
œœ2 3
{
œœ3 4
DateTime
œœ4 <
.
œœ< =
Now
œœ= @
:
œœ@ A
$str
œœA F
}
œœF G
"
œœG H
,
œœH I

Foreground
–– 
=
––  
new
––! $
SolidColorBrush
––% 4
(
––4 5
Colors
––5 ;
.
––; <
Black
––< A
)
––A B
,
––B C
FontSize
—— 
=
—— 
$num
—— !
,
——! "

FontWeight
““ 
=
““  
FontWeights
““! ,
.
““, -
Bold
““- 1
,
““1 2
TextWrapping
””  
=
””! "
TextWrapping
””# /
.
””/ 0
Wrap
””0 4
,
””4 5
MaxWidth
‘‘ 
=
‘‘ 
$num
‘‘ "
}
’’ 
;
’’ 
messageContainer
◊◊  
.
◊◊  !
Child
◊◊! &
=
◊◊' (
messageBlock
◊◊) 5
;
◊◊5 6
ChatMessagesPanel
ÿÿ !
.
ÿÿ! "
Children
ÿÿ" *
.
ÿÿ* +
Add
ÿÿ+ .
(
ÿÿ. /
messageContainer
ÿÿ/ ?
)
ÿÿ? @
;
ÿÿ@ A
ScrollToBottom
ŸŸ 
(
ŸŸ 
)
ŸŸ  
;
ŸŸ  !
}
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 	
}
‹‹ 
}›› £
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
}** À-
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
}LL †#
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
}55 ŸJ
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
}OO „
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
}33 Á
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
}33 ›
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
} —
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
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
,
Ä Å
$str 4
,4 5
$str6 Z
,Z [
$str	\ Ä
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
}   Ω
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
} Ë
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
} –

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