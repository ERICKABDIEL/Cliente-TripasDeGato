   M S B A M L   `   `   `  ����N  JTripasDeGatoCliente, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:TripasDeGatoCliente.ViewsTripasDeGatoCliente.Views  5      O,clr-namespace:TripasDeGatoCliente.PropertiesTripasDeGatoCliente.Properties  5      /    )TripasDeGatoCliente.Views.SelectLobbyView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:TripasDeGatoCliente.Views     5      :p,clr-namespace:TripasDeGatoCliente.Properties     5        N� Title$  SelectLobbyView��5
       � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value&   System.Windows.Controls.DataGrid �� 
TargetType �� CornerRadius �� Triggers P� Property	 P� Value��%�  '        '  B    '�� A    �� 5   
   "  6   .�5      ��  � �� �#D8C3A56+   �� 5       � �� �#6B44236+   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ Georgia)�6+   �� 5       � �� �#C9A97C6,   �� 5       � ��$ 0,0,0,1q�60   �� 5       � ��$ Center=�6;   5      �� 5   
   "  6   .�5      ��  � ��
 ���� 6+   �� 5       �@ GridLinesVisibility$
 None=�64   �� 5       �@ RowBackground �#F4E2D46.   �� 5        �@ AlternatingRowBackground �#E8D1B569   5      �� 5   
   " ��6   .�5      ��  � ��$ Georgia)�6+   �� 5        � ��$
 Bold"�6+   �� 5!       � �� �#6B44236+   �� 5"       � �� �#D8C3A56+   �� 5#       � �� �#C9A97C6,   �� 5$       � ��$ 2q�60   �� 5%       � ��$	 5,2q�6(   �� 5&       � ��$ 5q�6'   �� 5'       � ��$ Center=�64   �� 5(       � ��$ Center=�62   �� 5)       � ��$ 75��6&   �� 5*       � ��$ 30��6'   �� 5+       � �� 5,      �� 5-      " ��6&   .R�5.      �� #��z��6!   #��z��5/   !   #��z��50   !   $ 8��51   !   ._�52      �� $��Center=�6/   $��Center=�6L   53      54      56       57      P� 58       �@J�IsMouseOver	 . . �59      ��  � �� �#E2B49763   5:      P� 5;       � ��	 . . �5<      ��  � �� �#B98A6F63   5=      5?      5@      .��5B      � .+�5C   
   �� $'��!\Images\BackgroundSelectLobby.png��6   $
��Fill=�5D      $��2��5E        5G   
   -   5        
  Name$
 gridLobbyData��5G         AutoGenerateColumns .  $��60,10,542,160q�5I      $��1��5J         HeadersVisibility$ Column=�5K         ColumnHeaderHeight$ 30Q�5L         	RowHeight$ 30Q�5M      
���   �   
IsReadOnly .    Columns 5P      0  *System.Windows.Controls.DataGridTextColumn  5Q      .   (TripasDeGatoCliente.Properties.Resources   
headerCode,  &System.Windows.Controls.DataGridColumn   Header# Z 6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6i   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6P   �� *Code+6i     5R         headerGameName# Z 6%   $ * 6q    6T   �� *
GameName+6q     5S         headerNodes# Z 6%   $ * 6o    6Q   �� *	NodeCount+6o     5T         headerPlayers# Z 6%   $ * 6u    6S   �� *Players.Count+6u   5V      �� 5X   
   -   5         ��Name$ btnBack��5X         globalBtnBack#��Z 5Y      $
��Left=�5Z      $��881,298,0,0q�5[      $	��Top=�5\      $��1��5^      $��43��5_      $	��144��5`      �� 5a   
   -   5        $ btnJoinGame��5a         btnJoinGame#��Z 5b      $
��Left=�5c      $��881,239,0,0q�5d      $	��Top=�5e      $��1��5g      $	��144��5h      $��44��5i      �� 5j   
   -   5        $ 	btnSearch��5j         	btnSearch#��Z 5k      $
��Left=�5l      $��598,139,0,0q�5m      $	��Top=�5n      $	��144��5p      $��44��5q      �� 5r   
   -   5         ��Name$ lbCodeLobby��5r         globalLbEnterCodeLobby#��Z 5s      $
��Left=�5t      $	��Top=�5u      $��Center=�5v      $��Center=�5w      $��
60,132,0,0q�5x      $��55��5y      $	��226��5z      
�������$��18(�5|      $��Rockwell Extra Bold)�5}      �� 5~   
   -   5         ��Name$ txtCodeLobby��5~      $
��Left=�5      $��336,144,0,0q�5�       �� TextWrapping$
 Wrap=�5�      $	��Top=�5�      $	��199��5�      $��30��5�      
�������$��Rockwell Extra Bold)�5�      $��18(�5�      $��Center=�5�      $��Center=�5�        �� 	MaxLength$  6��5�      ��5�      Z� 5�      ! � RowDefinitions! 5�   
   �� 5�      $	��76* �6   �� 5�      $
��149* �6   5�      5�      