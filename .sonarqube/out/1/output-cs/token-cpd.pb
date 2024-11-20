�
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
;! "
NavigationFrame 
. 
Navigate $
($ %
new% (
Views) .
.. /
	LoginView/ 8
(8 9
)9 :
): ;
;; <
} 	
} 
} �
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
]77) *�
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
} �X
.C:\TripasDeGatoCliente\Views\LoginView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{ 
public 

partial 
class 
	LoginView "
:# $
Page% )
{ 
public 
	LoginView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
UpdatePasswordVisibilityIcon (
(( )
)) *
;* +
txtEmail 
. 
TextChanged  
+=! # 
TxtEmail_TextChanged$ 8
;8 9
txtPassword 
. 
PasswordChanged '
+=( *'
TxtPassword_PasswordChanged+ F
;F G
} 	
private 
void  
TxtEmail_TextChanged )
() *
object* 0
sender1 7
,7 8 
TextChangedEventArgs9 M
eN O
)O P
{ 	
txtEmail 
. 
BorderBrush  
=! "
new# &
SolidColorBrush' 6
(6 7
Colors7 =
.= >
White> C
)C D
;D E
} 	
private 
void '
TxtPassword_PasswordChanged 0
(0 1
object1 7
sender8 >
,> ?
RoutedEventArgs@ O
eP Q
)Q R
{ 	
txtPassword 
. 
BorderBrush #
=$ %
new& )
SolidColorBrush* 9
(9 :
Colors: @
.@ A
WhiteA F
)F G
;G H
}   	
private"" 
void"" 
BtnLogin_Click"" #
(""# $
object""$ *
sender""+ 1
,""1 2
RoutedEventArgs""3 B
e""C D
)""D E
{## 	
txtEmail$$ 
.$$ 
BorderBrush$$  
=$$! "
new$$# &
SolidColorBrush$$' 6
($$6 7
Colors$$7 =
.$$= >
White$$> C
)$$C D
;$$D E
txtPassword%% 
.%% 
BorderBrush%% #
=%%$ %
new%%& )
SolidColorBrush%%* 9
(%%9 :
Colors%%: @
.%%@ A
White%%A F
)%%F G
;%%G H
	LoginUser'' 
userAccount'' !
=''" #
new''$ '
	LoginUser''( 1
{(( 
mail)) 
=)) 
txtEmail)) 
.))  
Text))  $
,))$ %
password** 
=** 
Hasher** !
.**! "
HashToSHA256**" .
(**. /
txtPassword**/ :
.**: ;
Password**; C
)**C D
}++ 
;++ 
if-- 
(-- 
VerifyFields-- 
(-- 
)-- 
)-- 
{.. 
if// 
(// 
ValidateCredentials// '
(//' (
userAccount//( 3
)//3 4
)//4 5
{00 
DisplayMainMenuView11 '
(11' (
)11( )
;11) *
}22 
else33 
{44 
DialogManager55 !
.55! "!
ShowErrorMessageAlert55" 7
(557 8

Properties558 B
.55B C
	Resources55C L
.55L M(
dialogMissmatchesCredentials55M i
)55i j
;55j k
}66 
}77 
else88 
{99 
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4

Properties::4 >
.::> ?
	Resources::? H
.::H I
dialogWrongData::I X
)::X Y
;::Y Z
};; 
}<< 	
private>> 
bool>> 
VerifyFields>> !
(>>! "
)>>" #
{?? 	
bool@@ 
passwordValid@@ 
=@@  
	Validador@@! *
.@@* +
ValidatePassword@@+ ;
(@@; <
txtPassword@@< G
.@@G H
Password@@H P
)@@P Q
;@@Q R
boolAA 

emailValidAA 
=AA 
	ValidadorAA '
.AA' (
ValidateEmailAA( 5
(AA5 6
txtEmailAA6 >
.AA> ?
TextAA? C
)AAC D
;AAD E
ifCC 
(CC 
!CC 
passwordValidCC 
)CC 
{DD 
txtPasswordEE 
.EE 
BorderBrushEE '
=EE( )
BrushesEE* 1
.EE1 2
RedEE2 5
;EE5 6
}FF 
ifGG 
(GG 
!GG 

emailValidGG 
)GG 
{HH 
txtEmailII 
.II 
BorderBrushII $
=II% &
BrushesII' .
.II. /
RedII/ 2
;II2 3
}JJ 
returnLL 
passwordValidLL  
&&LL! #

emailValidLL$ .
;LL. /
}MM 	
publicOO 
boolOO 
ValidateCredentialsOO '
(OO' (
	LoginUserOO( 1
userOO2 6
)OO6 7
{PP 	
boolQQ 
validateResultQQ 
=QQ  !
falseQQ" '
;QQ' (
LoggerManagerRR 
loggerRR  
=RR! "
newRR# &
LoggerManagerRR' 4
(RR4 5
thisRR5 9
.RR9 :
GetTypeRR: A
(RRA B
)RRB C
)RRC D
;RRD E
intSS 
validationResultSS  
=SS! "
$numSS# $
;SS$ %
tryUU 
{VV 
IUserManagerWW 
userManagerWW (
=WW) *
newWW+ .
UserManagerClientWW/ @
(WW@ A
)WWA B
;WWB C
validationResultXX  
=XX! "
userManagerXX# .
.XX. /
verifyLoginXX/ :
(XX: ;
userXX; ?
)XX? @
;XX@ A
ifZZ 
(ZZ 
validationResultZZ $
==ZZ% '
	ConstantsZZ( 1
.ZZ1 2
DATA_MATCHESZZ2 >
)ZZ> ?
{[[ 
Profile\\ 
profile\\ #
=\\$ %
userManager\\& 1
.\\1 2

getProfile\\2 <
(\\< =
user\\= A
.\\A B
mail\\B F
,\\F G
user\\H L
.\\L M
password\\M U
)\\U V
;\\V W
if]] 
(]] 
profile]] 
!=]]  "
null]]# '
)]]' (
{^^ 
ObtainSingletonData__ +
(__+ ,
profile__, 3
)__3 4
;__4 5
validateResult`` &
=``' (
true``) -
;``- .
}aa 
elsebb 
{cc 
DialogManagerdd %
.dd% &!
ShowErrorMessageAlertdd& ;
(dd; <
$strdd< g
)ddg h
;ddh i
}ee 
}ff 
elsegg 
{hh 
DialogManagerii !
.ii! "!
ShowErrorMessageAlertii" 7
(ii7 8
$strii8 Z
)iiZ [
;ii[ \
}jj 
}kk 
catchll 
(ll 
	Exceptionll 
exll 
)ll  
{mm 
loggernn 
.nn 
LogErrornn 
(nn  
exnn  "
)nn" #
;nn# $
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4
$stroo4 \
)oo\ ]
;oo] ^
}pp 
returnrr 
validateResultrr !
;rr! "
}ss 	
privateuu 
voiduu 
ObtainSingletonDatauu (
(uu( )
Profileuu) 0
profileuu1 8
)uu8 9
{vv 	 
UserProfileSingletonww  
.ww  !
Instanceww! )
.ww) *
CreateInstanceww* 8
(ww8 9
profileww9 @
)ww@ A
;wwA B
}xx 	
privatezz 
voidzz 
DisplayMainMenuViewzz (
(zz( )
)zz) *
{{{ 	
MenuView|| 
menuView|| 
=|| 
new||  #
MenuView||$ ,
(||, -
)||- .
;||. /
this}} 
.}} 
NavigationService}} "
.}}" #
Navigate}}# +
(}}+ ,
menuView}}, 4
)}}4 5
;}}5 6
}~~ 	
private 
void 
BtnSignIn_Click $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{
�� 	
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
�� 	
}
�� 
}�� �>
1C:\TripasDeGatoCliente\Views\RegisterView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{		 
public

 

partial

 
class

 
RegisterView

 %
:

& '
Page

( ,
{ 
public 
RegisterView 
( 
) 
{ 	
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
{ 	
string 
email 
= 
	txtCorreo $
.$ %
Text% )
;) *
string 
username 
= 
	txtNombre '
.' (
Text( ,
;, -
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
): ;
{ 
return 
; 
} 
var 
newUser 
= 
new 
	LoginUser '
{ 
mail 
= 
email 
, 
password 
= 
Hasher !
.! "
HashToSHA256" .
(. /
password/ 7
)7 8
}   
;   
var"" 

newProfile"" 
="" 
new""  
Profile""! (
{## 
userName$$ 
=$$ 
username$$ #
,$$# $
score%% 
=%% 
	Constants%% !
.%%! "
INITIAL_SCORE%%" /
,%%/ 0
picturePath&& 
=&& 
$str&& ;
}'' 
;'' 
var)) 
proxy)) 
=)) 
new))  
TripasDeGatoServicio)) 0
.))0 1
UserManagerClient))1 B
())B C
)))C D
;))D E
var** 
	loginUser** 
=** 
new**  
TripasDeGatoServicio**  4
.**4 5
	LoginUser**5 >
{++ 
mail,, 
=,, 
email,, 
,,, 
password-- 
=-- 
newUser-- "
.--" #
password--# +
}.. 
;.. 
var00 
profile00 
=00 
new00  
TripasDeGatoServicio00 2
.002 3
Profile003 :
{11 
userName22 
=22 
username22 #
}33 
;33 
int55 
result55 
=55 
proxy55 
.55 
createAccount55 ,
(55, -
	loginUser55- 6
,556 7
profile558 ?
)55? @
;55@ A
if77 
(77 
result77 
==77 
	Constants77 #
.77# $
SUCCES_OPERATION77$ 4
)774 5
{88 

MessageBox99 
.99 
Show99 
(99  
$str99  ?
,99? @
$str99A J
,99J K
MessageBoxButton99L \
.99\ ]
OK99] _
,99_ `
MessageBoxImage99a p
.99p q
Information99q |
)99| }
;99} ~
GoToLoginView:: 
(:: 
):: 
;::  
};; 
else<< 
{== 

MessageBox>> 
.>> 
Show>> 
(>>  
$str>>  K
,>>K L
$str>>M T
,>>T U
MessageBoxButton>>V f
.>>f g
OK>>g i
,>>i j
MessageBoxImage>>k z
.>>z {
Error	>>{ �
)
>>� �
;
>>� �
}?? 
}@@ 	
privateBB 
boolBB 
ValidateFieldsBB #
(BB# $
stringBB$ *
emailBB+ 0
,BB0 1
stringBB2 8
usernameBB9 A
,BBA B
stringBBC I
passwordBBJ R
)BBR S
{CC 	
boolDD 
isValidDD 
=DD 
trueDD 
;DD  
ifFF 
(FF 
!FF 
	ValidadorFF 
.FF 
ValidateEmailFF (
(FF( )
emailFF) .
)FF. /
)FF/ 0
{GG 
	txtCorreoHH 
.HH 
BorderBrushHH %
=HH& '
BrushesHH( /
.HH/ 0
RedHH0 3
;HH3 4

MessageBoxII 
.II 
ShowII 
(II  
$strII  ?
,II? @
$strIIA V
,IIV W
MessageBoxButtonIIX h
.IIh i
OKIIi k
,IIk l
MessageBoxImageIIm |
.II| }
Error	II} �
)
II� �
;
II� �
isValidJJ 
=JJ 
falseJJ 
;JJ  
}KK 
elseLL 
{MM 
	txtCorreoNN 
.NN 
BorderBrushNN %
=NN& '
BrushesNN( /
.NN/ 0
WhiteNN0 5
;NN5 6
}OO 
ifQQ 
(QQ 
!QQ 
	ValidadorQQ 
.QQ 
ValidateUsernameQQ +
(QQ+ ,
usernameQQ, 4
)QQ4 5
)QQ5 6
{RR 
	txtNombreSS 
.SS 
BorderBrushSS %
=SS& '
BrushesSS( /
.SS/ 0
RedSS0 3
;SS3 4

MessageBoxTT 
.TT 
ShowTT 
(TT  
$strTT  ?
,TT? @
$strTTA V
,TTV W
MessageBoxButtonTTX h
.TTh i
OKTTi k
,TTk l
MessageBoxImageTTm |
.TT| }
Error	TT} �
)
TT� �
;
TT� �
isValidUU 
=UU 
falseUU 
;UU  
}VV 
elseWW 
{XX 
	txtNombreYY 
.YY 
BorderBrushYY %
=YY& '
BrushesYY( /
.YY/ 0
WhiteYY0 5
;YY5 6
}ZZ 
if\\ 
(\\ 
!\\ 
	Validador\\ 
.\\ 
ValidatePassword\\ +
(\\+ ,
password\\, 4
)\\4 5
)\\5 6
{]] 
txtPassword^^ 
.^^ 
BorderBrush^^ '
=^^( )
Brushes^^* 1
.^^1 2
Red^^2 5
;^^5 6

MessageBox__ 
.__ 
Show__ 
(__  
$str__  ?
,__? @
$str__A V
,__V W
MessageBoxButton__X h
.__h i
OK__i k
,__k l
MessageBoxImage__m |
.__| }
Error	__} �
)
__� �
;
__� �
isValid`` 
=`` 
false`` 
;``  
}aa 
elsebb 
{cc 
txtPassworddd 
.dd 
BorderBrushdd '
=dd( )
Brushesdd* 1
.dd1 2
Whitedd2 7
;dd7 8
}ee 
returngg 
isValidgg 
;gg 
}hh 	
privatejj 
voidjj 
GoToLoginViewjj "
(jj" #
)jj# $
{kk 	
ifll 
(ll 
thisll 
.ll 
NavigationServicell &
.ll& '
	CanGoBackll' 0
)ll0 1
{mm 
thisnn 
.nn 
NavigationServicenn &
.nn& '
GoBacknn' -
(nn- .
)nn. /
;nn/ 0
}oo 
}pp 	
privaterr 
voidrr 
BtnBack_Clickrr "
(rr" #
objectrr# )
senderrr* 0
,rr0 1
RoutedEventArgsrr2 A
errB C
)rrC D
{ss 	
GoToLoginViewtt 
(tt 
)tt 
;tt 
}uu 	
}vv 
}ww �.
0C:\TripasDeGatoCliente\Views\ProfileView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{ 
public 

partial 
class 
ProfileView $
:% &
Page' +
{		 
private

 
bool

 
	isEditing

 
=

  
false

! &
;

& '
public 
ProfileView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
LoadProfile 
( 
) 
; 
DisableEditing 
( 
) 
; 
} 	
private 
void 
LoadProfile  
(  !
)! "
{ 	
txtUserName 
. 
Text 
=  
UserProfileSingleton 3
.3 4
Nombre4 :
;: ;
cboxLanguage 
. 
SelectedItem %
=& '
$str( 1
;1 2
} 	
private 
void 
EnableEditing "
(" #
)# $
{ 	
txtUserName 
. 
	IsEnabled !
=" #
true$ (
;( )
cboxLanguage 
. 
	IsEnabled "
=# $
true% )
;) *
btnSave   
.   
	IsEnabled   
=   
true    $
;  $ %
	isEditing!! 
=!! 
true!! 
;!! 
btnSave"" 
."" 

Visibility"" 
="" 

Visibility""  *
.""* +
Visible""+ 2
;""2 3
}## 	
private%% 
void%% 
DisableEditing%% #
(%%# $
)%%$ %
{&& 	
txtUserName'' 
.'' 
	IsEnabled'' !
=''! "
false''# (
;''( )
cboxLanguage(( 
.(( 
	IsEnabled(( "
=((# $
false((% *
;((* +
btnSave)) 
.)) 
	IsEnabled)) 
=)) 
false))  %
;))% &
	isEditing** 
=** 
false** 
;** 
btnSave++ 
.++ 

Visibility++ 
=++  

Visibility++! +
.+++ ,
	Collapsed++, 5
;++5 6
},, 	
private.. 
void.. 
btnEdit_Click.. "
(.." #
object..# )
sender..* 0
,..0 1
RoutedEventArgs..2 A
e..B C
)..C D
{// 	
if00 
(00 
!00 
	isEditing00 
)00 
{11 
EnableEditing22 
(22 
)22 
;22  
}33 
}44 	
private66 
void66 
btnSave_Click66 "
(66" #
object66# )
sender66* 0
,660 1
RoutedEventArgs662 A
e66B C
)66C D
{77 	
if88 
(88 
	isEditing88 
)88 
{99 
string:: 
userName:: 
=::  !
txtUserName::" -
.::- .
Text::. 2
;::2 3
string;; 
selectedLanguage;; '
=;;( )
cboxLanguage;;* 6
.;;6 7
SelectedItem;;7 C
?;;C D
.;;D E
ToString;;E M
(;;M N
);;N O
;;;O P
if== 
(== 
string== 
.== 
IsNullOrEmpty== (
(==( )
userName==) 1
)==1 2
)==2 3
{>> 

MessageBox?? 
.?? 
Show?? #
(??# $
$str??$ P
,??P Q
$str??R Y
,??Y Z
MessageBoxButton??[ k
.??k l
OK??l n
,??n o
MessageBoxImage??p 
.	?? �
Error
??� �
)
??� �
;
??� �
return@@ 
;@@ 
}AA 
SaveProfileCC 
(CC 
userNameCC $
,CC$ %
selectedLanguageCC& 6
)CC6 7
;CC7 8
DisableEditingEE 
(EE 
)EE  
;EE  !

MessageBoxFF 
.FF 
ShowFF 
(FF  
$strFF  L
,FFL M
$strFFN U
,FFU V
MessageBoxButtonFFW g
.FFg h
OKFFh j
,FFj k
MessageBoxImageFFl {
.FF{ |
Information	FF| �
)
FF� �
;
FF� �
}GG 
}HH 	
privateKK 
voidKK 
SaveProfileKK  
(KK  !
stringKK! '
userNameKK( 0
,KK0 1
stringKK2 8
selectedLanguageKK9 I
)KKI J
{LL 	
}OO 	
privatePP 
voidPP 
GoToMenuViewPP !
(PP! "
)PP" #
{QQ 	
MenuViewRR 
menuViewRR 
=RR 
newRR  #
MenuViewRR$ ,
(RR, -
)RR- .
;RR. /
ifSS 
(SS 
thisSS 
.SS 
NavigationServiceSS &
!=SS' )
nullSS* .
)SS. /
{TT 
thisUU 
.UU 
NavigationServiceUU &
.UU& '
NavigateUU' /
(UU/ 0
menuViewUU0 8
)UU8 9
;UU9 :
}VV 
elseWW 
{XX 

MessageBoxYY 
.YY 
ShowYY 
(YY  
$strYY  E
)YYE F
;YYF G
}ZZ 
}[[ 	
private]] 
void]] 
BtnBack_Click]] "
(]]" #
object]]# )
sender]]* 0
,]]0 1
RoutedEventArgs]]2 A
e]]B C
)]]C D
{^^ 	
GoToMenuView__ 
(__ 
)__ 
;__ 
}`` 	
}bb 
}cc ��
-C:\TripasDeGatoCliente\Views\MenuView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{ 
public 

partial 
class 
MenuView !
:" #
Page$ (
{ 
private 
UserManagerClient !
userManager" -
;- .
private  
FriendsManagerClient $
friendsManager% 3
;3 4
public 
MenuView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
userManager 
= 
new 
UserManagerClient /
(/ 0
)0 1
;1 2
friendsManager 
= 
new   
FriendsManagerClient! 5
(5 6
)6 7
;7 8 
LoadUserProfileAsync  
(  !
)! "
;" #
} 	
private 
async 
void  
LoadUserProfileAsync /
(/ 0
)0 1
{ 	
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% & 
UserProfileSingleton& :
.: ;
Nombre; A
)A B
)B C
{ 

lbUserName 
. 
Content "
=# $ 
UserProfileSingleton% 9
.9 :
Nombre: @
;@ A
}   
else!! 
{"" 

lbUserName## 
.## 
Content## "
=### $
$str##% :
;##: ;
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
{(( 	 
UserProfileSingleton))  
.))  !
Instance))! )
.))) *
ResetInstance))* 7
())7 8
)))8 9
;))9 :
	LoginView** 
	loginView** 
=**  !
new**" %
	LoginView**& /
(**/ 0
)**0 1
;**1 2
this++ 
.++ 
NavigationService++ "
.++" #
Navigate++# +
(+++ ,
	loginView++, 5
)++5 6
;++6 7
},, 	
private.. 
bool.. 
areElementsVisible.. '
=..( )
false..* /
;../ 0
private00 
async00 
void00 
BtnFriends_Click00 +
(00+ ,
object00, 2
sender003 9
,009 :
RoutedEventArgs00; J
e00K L
)00L M
{11 	
areElementsVisible22 
=22  
!22! "
areElementsVisible22" 4
;224 5
if44 
(44 
areElementsVisible44 "
)44" #
{55 

lstFriends66 
.66 

Visibility66 %
=66& '

Visibility66( 2
.662 3
Visible663 :
;66: ;
btnAddFriend77 
.77 

Visibility77 '
=77( )

Visibility77* 4
.774 5
Visible775 <
;77< =
btnRemoveFriend88 
.88  

Visibility88  *
=88+ ,

Visibility88- 7
.887 8
Visible888 ?
;88? @
await99  
LoadFriendsListAsync99 *
(99* +
)99+ ,
;99, -

lstFriends;; 
.;; 
	IsEnabled;; $
=;;% &
true;;' +
;;;+ ,
btnAddFriend<< 
.<< 
	IsEnabled<< &
=<<' (
true<<) -
;<<- .
btnRemoveFriend== 
.==  
	IsEnabled==  )
===* +
true==, 0
;==0 1

btnFriends?? 
.?? 

Background?? %
=??& '
new??( +
SolidColorBrush??, ;
(??; <
Colors??< B
.??B C
Green??C H
)??H I
;??I J
}@@ 
elseAA 
{BB 

lstFriendsCC 
.CC 

VisibilityCC %
=CC& '

VisibilityCC( 2
.CC2 3
	CollapsedCC3 <
;CC< =
btnAddFriendDD 
.DD 

VisibilityDD '
=DD( )

VisibilityDD* 4
.DD4 5
	CollapsedDD5 >
;DD> ?
btnRemoveFriendEE 
.EE  

VisibilityEE  *
=EE+ ,

VisibilityEE- 7
.EE7 8
	CollapsedEE8 A
;EEA B
txtFriendNameFF 
.FF 

VisibilityFF (
=FF) *

VisibilityFF+ 5
.FF5 6
	CollapsedFF6 ?
;FF? @
btnAddGG 
.GG 

VisibilityGG !
=GG" #

VisibilityGG$ .
.GG. /
	CollapsedGG/ 8
;GG8 9

lstFriendsII 
.II 
	IsEnabledII $
=II% &
falseII' ,
;II, -
btnAddFriendJJ 
.JJ 
	IsEnabledJJ &
=JJ' (
falseJJ) .
;JJ. /
btnRemoveFriendKK 
.KK  
	IsEnabledKK  )
=KK* +
falseKK, 1
;KK1 2
txtFriendNameLL 
.LL 
	IsEnabledLL '
=LL( )
falseLL* /
;LL/ 0
btnAddMM 
.MM 
	IsEnabledMM  
=MM! "
falseMM# (
;MM( )

btnFriendsOO 
.OO 

BackgroundOO %
=OO& '
newOO( +
SolidColorBrushOO, ;
(OO; <
ColorsOO< B
.OOB C
BlackOOC H
)OOH I
;OOI J
btnAddFriendPP 
.PP 

BackgroundPP '
=PP( )
newPP* -
SolidColorBrushPP. =
(PP= >
ColorsPP> D
.PPD E
BlackPPE J
)PPJ K
;PPK L
}QQ 
}RR 	
privateTT 
voidTT 
BtnAddFriend_ClickTT '
(TT' (
objectTT( .
senderTT/ 5
,TT5 6
RoutedEventArgsTT7 F
eTTG H
)TTH I
{UU 	
areElementsVisibleVV 
=VV  
!VV! "
areElementsVisibleVV" 4
;VV4 5
ifXX 
(XX 
areElementsVisibleXX "
)XX" #
{YY 
txtFriendNameZZ 
.ZZ 

VisibilityZZ (
=ZZ) *

VisibilityZZ+ 5
.ZZ5 6
VisibleZZ6 =
;ZZ= >
btnAdd[[ 
.[[ 

Visibility[[ !
=[[" #

Visibility[[$ .
.[[. /
Visible[[/ 6
;[[6 7
txtFriendName\\ 
.\\ 
	IsEnabled\\ '
=\\( )
true\\* .
;\\. /
btnAdd]] 
.]] 
	IsEnabled]]  
=]]! "
true]]# '
;]]' (
btnAddFriend__ 
.__ 

Background__ '
=__( )
new__* -
SolidColorBrush__. =
(__= >
Colors__> D
.__D E
Green__E J
)__J K
;__K L
}`` 
elseaa 
{bb 
txtFriendNamecc 
.cc 

Visibilitycc (
=cc) *

Visibilitycc+ 5
.cc5 6
	Collapsedcc6 ?
;cc? @
btnAdddd 
.dd 

Visibilitydd !
=dd" #

Visibilitydd$ .
.dd. /
	Collapseddd/ 8
;dd8 9
txtFriendNameff 
.ff 
	IsEnabledff '
=ff( )
falseff* /
;ff/ 0
btnAddgg 
.gg 
	IsEnabledgg  
=gg! "
falsegg# (
;gg( )
btnAddFriendii 
.ii 

Backgroundii '
=ii( )
newii* -
SolidColorBrushii. =
(ii= >
Colorsii> D
.iiD E
BlackiiE J
)iiJ K
;iiK L
}jj 
}kk 	
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
{nn 	
stringoo 

friendNameoo 
=oo 
txtFriendNameoo  -
.oo- .
Textoo. 2
.oo2 3
Trimoo3 7
(oo7 8
)oo8 9
;oo9 :
ifqq 
(qq 
!qq 
stringqq 
.qq 
IsNullOrEmptyqq %
(qq% &

friendNameqq& 0
)qq0 1
)qq1 2
{rr 
tryss 
{tt 
intuu 
friendProfileIduu '
=uu( )
awaituu* /
userManageruu0 ;
.uu; <
getProfileIdAsyncuu< M
(uuM N

friendNameuuN X
)uuX Y
;uuY Z
ifww 
(ww 
friendProfileIdww '
>ww( )
$numww* +
)ww+ ,
{xx 
intyy 
userProfileIdyy )
=yy* + 
UserProfileSingletonyy, @
.yy@ A
IdPerfilyyA I
;yyI J
intzz 
resultzz "
=zz# $
awaitzz% *
friendsManagerzz+ 9
.zz9 :
addFriendAsynczz: H
(zzH I
userProfileIdzzI V
,zzV W
friendProfileIdzzX g
)zzg h
;zzh i
if|| 
(|| 
result|| "
==||# %
	Constants||& /
.||/ 0
SUCCES_OPERATION||0 @
)||@ A
{}} 

MessageBox~~ &
.~~& '
Show~~' +
(~~+ ,
$"~~, .
$str~~. 5
{~~5 6

friendName~~6 @
}~~@ A
$str~~A Z
"~~Z [
)~~[ \
;~~\ ]
await ! 
LoadFriendsListAsync" 6
(6 7
)7 8
;8 9
}
�� 
else
�� 
{
�� 

MessageBox
�� &
.
��& '
Show
��' +
(
��+ ,
$str
��, Z
)
��Z [
;
��[ \
}
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� "
.
��" #
Show
��# '
(
��' (
$str
��( _
)
��_ `
;
��` a
}
�� 
txtFriendName
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
}
�� 
catch
�� 
(
�� 
FaultException
�� %
<
��% &"
ProfileNotFoundFault
��& :
>
��: ;
ex
��< >
)
��> ?
{
�� 

MessageBox
�� 
.
�� 
Show
�� #
(
��# $
ex
��$ &
.
��& '
Detail
��' -
.
��- .
errorMessage
��. :
,
��: ;
$str
��< R
)
��R S
;
��S T
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 

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
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
)
��E F
;
��F G
}
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  F
)
��F G
;
��G H
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
�� 	
try
�� 
{
�� 
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
getFriendsAsync
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
�� 
friendNames
�� 
=
��  !
friendsList
��" -
.
��- .
Select
��. 4
(
��4 5
friend
��5 ;
=>
��< >
friend
��? E
.
��E F
userName
��F N
)
��N O
.
��O P
ToList
��P V
(
��V W
)
��W X
;
��X Y

lstFriends
�� 
.
�� 
ItemsSource
�� &
=
��' (
friendNames
��) 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 

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
��" Q
{
��Q R
ex
��R T
.
��T U
Message
��U \
}
��\ ]
"
��] ^
)
��^ _
;
��_ `
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
�� 	
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
�� 
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
�� 
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
getProfileIdAsync
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
�� 
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
deleteFriendAsync
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
�� 

MessageBox
�� &
.
��& '
Show
��' +
(
��+ ,
$"
��, .
$str
��. ;
{
��; < 
selectedFriendName
��< N
}
��N O
$str
��O i
"
��i j
)
��j k
;
��k l
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
�� 
{
�� 

MessageBox
�� &
.
��& '
Show
��' +
(
��+ ,
$str
��, ]
)
��] ^
;
��^ _
}
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� "
.
��" #
Show
��# '
(
��' (
$str
��( Z
)
��Z [
;
��[ \
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 

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
��& X
{
��X Y
ex
��Y [
.
��[ \
Message
��\ c
}
��c d
"
��d e
)
��e f
;
��f g
}
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  O
)
��O P
;
��P Q
}
�� 
}
�� 	
private
�� 
void
�� 
GoToLobbyView
�� "
(
��" #
)
��# $
{
�� 	
	LobbyView
�� 
	lobbyView
�� 
=
��  !
new
��" %
	LobbyView
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
�� 
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
	lobbyView
��0 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  I
)
��I J
;
��J K
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
�� 	
GoToLobbyView
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
�� 
GoToPerfilView
�� #
(
��# $
)
��$ %
{
�� 	
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
�� 
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
�� 
{
�� 

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
�� 	
GoToPerfilView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �L
.C:\TripasDeGatoCliente\Views\LobbyView.xaml.cs
	namespace 	
TripasDeGatoCliente
 
. 
Views #
{ 
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback+ ?
{ 
private 
ChatManagerClient !
chatManager" -
;- .
public 
	LobbyView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
labelPlayer1 
. 
Content  
=! " 
UserProfileSingleton# 7
.7 8
Nombre8 >
;> ?
chatManager 
= 
new 
ChatManagerClient /
(/ 0
new0 3
InstanceContext4 C
(C D
thisD H
)H I
)I J
;J K
InitializeChatAsync 
(  
)  !
;! "
} 	
private 
async 
void 
InitializeChatAsync .
(. /
)/ 0
{ 	
try 
{ 
await 
Task 
. 
Run 
( 
(  
)  !
=>" $
chatManager% 0
.0 1
connectToLobby1 ?
(? @ 
UserProfileSingleton@ T
.T U
NombreU [
)[ \
)\ ]
;] ^#
SendWelcomeNotification '
(' (
)( )
;) *
} 
catch 
( 
	Exception 
ex 
)  
{   
HandleChatException!! #
(!!# $
ex!!$ &
)!!& '
;!!' (
}"" 
}## 	
private%% 
async%% 
void%% #
SendWelcomeNotification%% 2
(%%2 3
)%%3 4
{&& 	
var'' 
message'' 
='' 
new'' 
Message'' %
{(( 
chatMessage)) 
=)) 
$"))  
{))  ! 
UserProfileSingleton))! 5
.))5 6
Nombre))6 <
}))< =
$str))= R
"))R S
,))S T
userName** 
=** 
$str** 0
}++ 
;++ 
try-- 
{.. 
await// 
Task// 
.// 
Run// 
(// 
(//  
)//  !
=>//" $
chatManager//% 0
.//0 1
sendMessage//1 <
(//< = 
UserProfileSingleton//= Q
.//Q R
Nombre//R X
,//X Y
message//Z a
)//a b
)//b c
;//c d
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
HandleChatException33 #
(33# $
ex33$ &
)33& '
;33' (
}44 
}55 	
public77 
void77 
broadcastMessage77 $
(77$ %
Message77% ,
message77- 4
)774 5
{88 	

Dispatcher99 
.99 
Invoke99 
(99 
(99 
)99  
=>99! #
{:: 
Border;; 
messageContainer;; '
=;;( )
new;;* -
Border;;. 4
{<< 

Background== 
===  
new==! $
SolidColorBrush==% 4
(==4 5
Colors==5 ;
.==; <
White==< A
)==A B
,==B C
BorderThickness>> #
=>>$ %
new>>& )
	Thickness>>* 3
(>>3 4
$num>>4 5
)>>5 6
,>>6 7
Padding?? 
=?? 
new?? !
	Thickness??" +
(??+ ,
$num??, .
)??. /
,??/ 0
Margin@@ 
=@@ 
new@@  
	Thickness@@! *
(@@* +
$num@@+ -
,@@- .
$num@@/ 0
,@@0 1
$num@@2 4
,@@4 5
$num@@6 7
)@@7 8
,@@8 9
HorizontalAlignmentAA '
=AA( )
messageAA* 1
.AA1 2
userNameAA2 :
==AA; = 
UserProfileSingletonAA> R
.AAR S
NombreAAS Y
?AAZ [
HorizontalAlignmentAA\ o
.AAo p
RightAAp u
:AAv w 
HorizontalAlignment	AAx �
.
AA� �
Left
AA� �
}BB 
;BB 
	TextBlockDD 
messageBlockDD &
=DD' (
newDD) ,
	TextBlockDD- 6
{EE 
TextFF 
=FF 
$"FF 
{FF 
messageFF %
.FF% &
chatMessageFF& 1
}FF1 2
$strFF2 3
{FF3 4
DateTimeFF4 <
.FF< =
NowFF= @
:FF@ A
$strFFA F
}FFF G
"FFG H
,FFH I

ForegroundGG 
=GG  
newGG! $
SolidColorBrushGG% 4
(GG4 5
ColorsGG5 ;
.GG; <
BlackGG< A
)GGA B
,GGB C
FontSizeHH 
=HH 
$numHH !
,HH! "

FontWeightII 
=II  
FontWeightsII! ,
.II, -
BoldII- 1
,II1 2
TextWrappingJJ  
=JJ! "
TextWrappingJJ# /
.JJ/ 0
WrapJJ0 4
,JJ4 5
MaxWidthKK 
=KK 
$numKK "
}LL 
;LL 
messageContainerNN  
.NN  !
ChildNN! &
=NN' (
messageBlockNN) 5
;NN5 6
ChatMessagesPanelOO !
.OO! "
ChildrenOO" *
.OO* +
AddOO+ .
(OO. /
messageContainerOO/ ?
)OO? @
;OO@ A
ScrollToBottomPP 
(PP 
)PP  
;PP  !
}QQ 
)QQ 
;QQ 
}RR 	
privateTT 
asyncTT 
voidTT  
BtnSendMessage_ClickTT /
(TT/ 0
objectTT0 6
senderTT7 =
,TT= >
RoutedEventArgsTT? N
eTTO P
)TTP Q
{UU 	
stringVV 
messageTextVV 
=VV  
txtMessageInputVV! 0
.VV0 1
TextVV1 5
.VV5 6
TrimVV6 :
(VV: ;
)VV; <
;VV< =
ifXX 
(XX 
!XX 
stringXX 
.XX 
IsNullOrEmptyXX %
(XX% &
messageTextXX& 1
)XX1 2
)XX2 3
{YY 
varZZ 
messageZZ 
=ZZ 
newZZ !
MessageZZ" )
{[[ 
userName\\ 
=\\  
UserProfileSingleton\\ 3
.\\3 4
Nombre\\4 :
,\\: ;
chatMessage]] 
=]]  !
messageText]]" -
}^^ 
;^^ 
try`` 
{aa 
awaitbb 
Taskbb 
.bb 
Runbb "
(bb" #
(bb# $
)bb$ %
=>bb& (
chatManagerbb) 4
.bb4 5
sendMessagebb5 @
(bb@ A 
UserProfileSingletonbbA U
.bbU V
NombrebbV \
,bb\ ]
messagebb^ e
)bbe f
)bbf g
;bbg h
txtMessageInputcc #
.cc# $
Clearcc$ )
(cc) *
)cc* +
;cc+ ,
}dd 
catchee 
(ee 
	Exceptionee  
exee! #
)ee# $
{ff 
HandleChatExceptiongg '
(gg' (
exgg( *
)gg* +
;gg+ ,
}hh 
}ii 
}jj 	
privatell 
voidll 
HandleChatExceptionll (
(ll( )
	Exceptionll) 2
exll3 5
)ll5 6
{mm 	

MessageBoxnn 
.nn 
Shownn 
(nn 
$"nn 
$strnn A
{nnA B
exnnB D
.nnD E
MessagennE L
}nnL M
"nnM N
)nnN O
;nnO P
}pp 	
privaterr 
voidrr 
ScrollToBottomrr #
(rr# $
)rr$ %
{ss 	
vartt 
scrollViewertt 
=tt 
VisualTreeHelpertt /
.tt/ 0
	GetParenttt0 9
(tt9 :
ChatMessagesPaneltt: K
)ttK L
asttM O
ScrollViewerttP \
;tt\ ]
scrollVieweruu 
?uu 
.uu 
ScrollToEnduu %
(uu% &
)uu& '
;uu' (
}vv 	
privatezz 
voidzz 
GoToMenuViewzz !
(zz! "
)zz" #
{{{ 	
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
{~~ 
this 
. 
NavigationService &
.& '
Navigate' /
(/ 0
menuView0 8
)8 9
;9 :
}
�� 
else
�� 
{
�� 

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
�� 	
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
}�� �
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
}33 �
4C:\TripasDeGatoCliente\Logic\UserProfileSnglenton.cs
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
}++ 	
},, 
}-- �
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
} �C
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
$str		7 g
,		g h
RegexOptions		i u
.		u v
None		v z
,		z {
TimeSpan			| �
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
public 
static 
bool 
ValidatePassword +
(+ ,
string, 2
password3 ;
); <
{ 	
bool 
isValid 
= 
false  
;  !
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
;O P
if   
(   
!   
string   
.   
IsNullOrWhiteSpace   *
(  * +
cleanedPassword  + :
)  : ;
&&  < > 
validateRegexPattern  ? S
(  S T
cleanedPassword  T c
,  c d
passwordRegex  e r
)  r s
)  s t
{!! 
isValid"" 
="" 
true"" 
;"" 
}## 
return$$ 
isValid$$ 
;$$ 
}%% 	
public'' 
static'' 
bool'' 
ValidateUsername'' +
(''+ ,
string'', 2
username''3 ;
)''; <
{(( 	
bool)) 
isValid)) 
=)) 
false))  
;))  !
string** 
cleanedUsername** "
=**# $
Regex**% *
.*** +
Replace**+ 2
(**2 3
username**3 ;
.**; <
Trim**< @
(**@ A
)**A B
,**B C
$str**D J
,**J K
$str**L N
)**N O
;**O P
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrWhiteSpace++ *
(++* +
cleanedUsername+++ :
)++: ;
&&++< > 
validateRegexPattern++? S
(++S T
cleanedUsername++T c
,++c d
usernameRegex++e r
)++r s
)++s t
{,, 
isValid-- 
=-- 
true-- 
;-- 
}.. 
return// 
isValid// 
;// 
}00 	
public22 
static22 
bool22 
ValidateEmail22 (
(22( )
string22) /
email220 5
)225 6
{33 	
string44 
cleanedEmail44 
=44  !
email44" '
?44' (
.44( )
Trim44) -
(44- .
)44. /
;44/ 0
if66 
(66 
!66 
string66 
.66 
IsNullOrWhiteSpace66 *
(66* +
cleanedEmail66+ 7
)667 8
&&669 ;
cleanedEmail66< H
.66H I
Length66I O
<=66P R
$num66S V
)66V W
{77 
try88 
{99 
var:: 
mailAddress:: #
=::$ %
new::& )
MailAddress::* 5
(::5 6
cleanedEmail::6 B
)::B C
;::C D
return;; 
true;; 
;;;  
}<< 
catch== 
(== 
FormatException== &
)==& '
{>> 
return?? 
false??  
;??  !
}@@ 
}AA 
returnBB 
falseBB 
;BB 
}CC 	
publicEE 
staticEE 
boolEE 
validateCodeEE '
(EE' (
stringEE( .
	codeLobbyEE/ 8
)EE8 9
{FF 	
boolGG 
isValidGG 
=GG 
falseGG  
;GG  !
stringHH 
codeCleanedHH 
=HH  
RegexHH! &
.HH& '
ReplaceHH' .
(HH. /
	codeLobbyHH/ 8
.HH8 9
TrimHH9 =
(HH= >
)HH> ?
,HH? @
$strHHA G
,HHG H
$strHHI K
)HHK L
;HHL M
ifII 
(II 
!II 
stringII 
.II 
IsNullOrWhiteSpaceII *
(II* +
codeCleanedII+ 6
)II6 7
&&II8 : 
validateRegexPatternII; O
(IIO P
codeCleanedIIP [
,II[ \
codeLobbyMatchRegexII] p
)IIp q
)IIq r
{JJ 
isValidKK 
=KK 
trueKK 
;KK 
}LL 
returnMM 
isValidMM 
;MM 
}NN 	
publicOO 
staticOO 
boolOO 
validateStateOO (
(OO( )
stringOO) /
stateOO0 5
)OO5 6
{PP 	
boolQQ 
isValidQQ 
=QQ 
falseQQ  
;QQ  !
stringRR 
stateCleanedRR 
=RR  !
RegexRR" '
.RR' (
ReplaceRR( /
(RR/ 0
stateRR0 5
.RR5 6
TrimRR6 :
(RR: ;
)RR; <
,RR< =
$strRR> D
,RRD E
$strRRF H
)RRH I
;RRI J
ifSS 
(SS 
!SS 
stringSS 
.SS 
IsNullOrWhiteSpaceSS *
(SS* +
stateCleanedSS+ 7
)SS7 8
&&SS9 ; 
validateRegexPatternSS< P
(SSP Q
stateCleanedSSQ ]
,SS] ^

stateRegexSS_ i
)SSi j
)SSj k
{TT 
isValidUU 
=UU 
trueUU 
;UU 
}VV 
returnWW 
isValidWW 
;WW 
}XX 	
}YY 
}ZZ �

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
} �
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
} 