   M S B A M L   `   `   `  ����N  JTripasDeGatoCliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:TripasDeGatoCliente.ViewsTripasDeGatoCliente.Views  5      O,clr-namespace:TripasDeGatoCliente.PropertiesTripasDeGatoCliente.Properties  5      O,clr-namespace:TripasDeGatoCliente.PropertiesTripasDeGatoCliente.Properties  5	      )    #TripasDeGatoCliente.Views.GameMatch   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:TripasDeGatoCliente.Views     5      C
Properties,clr-namespace:TripasDeGatoCliente.Properties     5      :p,clr-namespace:TripasDeGatoCliente.Properties     5	      $
��1280��5
      $	��720��6   .��5      �   � RowDefinitions  5   
   �� 5      $
��269* �6   �� 5      $
��451* �6   .+�5   
   �� $��/Images/SceneCat.png��6   $��Center=�5      $	��720��5      $	��Top=�5      $
��1280��5      $��2��6   � 5   
   -   5         �Name$ gridCat��5      $��2��6    .+�5      �� -   5         ��Name$ drawingCanvas��5      $��369,211,363,154q�6,   
���   � J� Opacity$
 0.48Q�6X    J� Clip 5      B� 5      $����M200,1 L200,1 L210,2 L220,5 L225,6 L230,7 L233,8 L240,11 L242,11 L254,16 L257,21 L257,22 L268,40 L288,60 L320,79 L380,92 L430,91 L472,80 L478,105 L478,120 L478,140 L475,159 L535,218 L545,240 L540,260 L532,265 L529,270 L500,280 L480,280 L470,280 L410,265 L400,255 L395,258 L396,300 L402,310 L408,324 L405,335 L400,340 L380,346 L350,348 L330,345 L330,345 L300,325 L300,325 L270,285 L235,286 L234,295 L245,310 L245,320 L237,330 L220,337 L200,337 L180,332 L149,306 L135,278 L108,291 L104,305 L112,321 L104,338 L81,345 L55,345 L30,335 L13,310 L2,275 L2,250 L8,223 L18,205 L24,193 L22,153 L23,123 L35,90 L70,50 L90,30 L140,5 L156,0C�6#   5      5      � 5   
   -   5         �Name$ progressBarTimer��5      $��20��5      $	��640��5       � Maximum$	 100Q�5        � Value$	 100Q�5!      
��� � �$��Center=�5#      $	��Top=�5$      $��	0,311,0,0q�5%      $��1��6)   �� 5'   
   -   5         ��Name$ lbMatchStatus��5'      .   (TripasDeGatoCliente.Properties.Resources	   lbTurn#��Z	 5(      $��Center=�5)      $��	0,335,0,0q�5*      $	��Top=�5+      $��36(�5,      $	��488��6   $��Center=�5-      $��Center=�5.      $��82��5/      ���	#FFEFE8CE$��Cooper Black)�51      $��1��6*   �� 53   
   -   5        
 ��Name$
 btnBack��53         globalBtnBack#��Z 54      $
��Left=�55      $	��Top=�56      $	��150��57      $��50��58      $��	63,30,0,0q�59      $��16(�5:      $
��Bold"�5;      ��5=      �� 5>       �� EndPoint$	 0,1&�6&   .��5?      �  � Color$ 	#FFDBB277��6#   � 5@      $ 	#FF9A663F��6#    � Offset$ 1Q�65   5A      ��5C      �� 5D       �� 
TargetType" ��6   .�5E      ��  �� Property � �� �� Value 5F      �� 5G       �� 
StartPoint$	 0,0&�62   $	 0,1&�6C   .��5H   "   � $ 	#FFDBB277��6/   $	 0.0Q�6A   � 5I   "   $ 	#FF15031D��6/   $	 1.0Q�6A   5J      5L      �� 5M       � ��
 �����63   �� 5N       � ��
 ���� 64   �� 5O       � ��$ 0q�68   �� 5P       � ��$
 Bold"�63   �� 5Q       �@J�Effect 5R      3  -System.Windows.Media.Effects.DropShadowEffect  5S         Color$ Black��6/      ShadowDepth$ 5Q�6=      
BlurRadius$ 10Q�6M   5U      �� 5V       � �� 5W      �� 5X       �� 
TargetType" ��6.   .R�5Y   "   � .+�5Z   &   ��  �� CornerRadius$ 15��6-   #��z��6?   ._�5[   *   �� $��Center=�6;   $��Center=�6X   5\   '   5]   #   5^      5`       �� Triggers 5a      P� 5b       P� Property �@J�IsMouseOver P� Value . . �5c      ��  � �� 5d   "   �� 5e   &   $	 0,0&�6:   $	 0,1&�6K   .��5f   *   � $ 	#FFDBB277��67   $	 0.0Q�6I   � 5g   *   $ 	#FF967A51��67   $	 1.0Q�6I   5h   '   5j      �� 5k       �@J�Effect 5l   "     5m   &   $ 	#FF99633D��67   $ 10Q�6I   $ 15Q�6Z   5o      5p      5r      5t      5u      5v      