   M S B A M L   `   `   `  ����N  JTripasDeGatoCliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:TripasDeGatoCliente.ViewsTripasDeGatoCliente.Views  5      O,clr-namespace:TripasDeGatoCliente.PropertiesTripasDeGatoCliente.Properties  5      *    $TripasDeGatoCliente.Views.Laderboard   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:TripasDeGatoCliente.Views     5      C
Properties,clr-namespace:TripasDeGatoCliente.Properties     5      $
��1280��5	      $	��720��5
        N� 
Background
  �   � � 	Resources 5         LeaderboardItemStyle �� 
TargetType �� Property �� Value  TextBlockStyle��%;  &	        &	 �     �� 5   
   " ��6-   .�5      ��  � ��$ 5q�6'   �� 5       � ��$ 5q�6(   �� 5       � ��$ Stretch=�6;   5      �� 5   
   " ��6'   .�5      ��  � ��
 �   �6+   �� 5       � ��$ 16(�6)   �� 5       � ��$
 Bold"�6+   5      5      .��5      � .+�5   
   �� $&�� /Images/BackgroundLaderboard.png��6   $��Center=�5      $	��720��5      $��Center=�5      $
��1280��5      �� 5!   
   -   5         ��Name$ lstViewLeaderboard��5!      $��432,328,486,112q�5"      $��0q�5$      #��[  5%      ��5#      Z� ��5&      �� 5'      .R�5(      ��  �� Orientation$ 
Horizontal=�6!   .+�5)      �� #��[ 5*   $   $	��5,0q�5+   $   $��Rockwell Extra Bold)�5,   $   $��Center=�5-   $   $��Center=�5.   $   ��5)   $   �� *Score+5.   $   �� 5/      $	�� - ��6$   
���   �$��16(�51   $   $��Center=�52   $   $��Center=�53   $   �� 54      #��[ 55   $   $	��5,0q�56   $   $��Rockwell Extra Bold)�57   $   $��Center=�58   $   $��Center=�59   $   ��54   $   �� *
Username+59   $   5:      5;      5=      �� 5?   
   -   5         ��Name$ btnBack��5?      .   (TripasDeGatoCliente.Properties.Resources   globalBtnBack#��Z 5@      $
��Left=�5A      $	��Top=�5B      $	��150��5C      $��50��5D      $��	10,42,0,0q�5E      $��16(�5F      $
��Bold"�5H      ��5I      �� 5J      	 �� EndPoint$		 0,1&�6&   .��5K      � 
 � Color$
 	#FFDBB277��6#   � 5L      $
 	#FF9A663F��6#    � Offset$ 1Q�65   5M      ��5O      �� 5P      " ��6   .�5Q      ��  � �� 5R      �� 5S       �� 
StartPoint$	 0,0&�62   $		 0,1&�6C   .��5T   "   � $
 	#FFDBB277��6/   $	 0.0Q�6A   � 5U   "   $
 	#FF15031D��6/   $	 1.0Q�6A   5V      5X      �� 5Y       � ��
 �����63   �� 5Z       � ��
 ���� 64   �� 5[       � ��$ 0q�68   �� 5\       � ��$
 Bold"�63   �� 5]       �@J�Effect 5^      3  -System.Windows.Media.Effects.DropShadowEffect  5_         Color$ Black��6/      ShadowDepth$ 5Q�6=      
BlurRadius$ 10Q�6M   5a      �� 5b       � �� 5c      �� 5d       �� 
TargetType" ��6.   .R�5e   "   � .+�5f   &   ��  �� CornerRadius$ 15��6-   #��z��6?   ._�5g   *   �� $��Center=�6;   $��Center=�6X   5h   '   5i   #   5j      5l       �� Triggers 5m      P� 5n       P� Property �@J�IsMouseOver P� Value . . �5o      ��  � �� 5p   "   �� 5q   &   $	 0,0&�6:   $		 0,1&�6K   .��5r   *   � $
 	#FFDBB277��67   $	 0.0Q�6I   � 5s   *   $
 	#FF967A51��67   $	 1.0Q�6I   5t   '   5v      �� 5w       �@J�Effect 5x   "     5y   &   $ 	#FF99633D��67   $ 10Q�6I   $ 15Q�6Z   5{      5|      5~      5�      5�      5�      