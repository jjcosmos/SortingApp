   M S B A M L   `   `   `  ����E  ASortingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:SortingApp
SortingApp  5   	       SortingApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:SortingApp     5   	     � Title$  Sorting App 0.9.5��5	   	   $	��350��6#   $	��525��60    � WindowStartupLocation$ CenterScreen=�6<   .��5
      � $��0,0,0,-4q�6   .+�5   
   �� $
��Left=�6   $��
127,20,0,0q�6/   $
��Wrap=�6C   $-��'1. Select the number of groups you want��6W   $	��Top=�6�   �� 5   
   -   5         ��Name$ 	Go_Button��5      $	��Go!��6$   $
��Left=�62   $��127,266,0,-37q�6M   $	��Top=�6d   $��75��6|   6�   �� 5   
   -   5        $ openfile��5      $��	load file��6#   $
��Left=�67   $��25,266,0,-37q�6R   $	��Top=�6h   $��75��6�   6�   �� 5   
   -   5         ��Name$ 	CheckBox1��5      $��Keep Extras Separate��6&   $
��Left=�6E   $��
25,139,0,0q�6`   $	��Top=�6t   �� 5   
   -   5         ��Name$ 
TextBlock1��5      $
��Left=�6(   $��264,229,0,0q�6C   $
��Wrap=�6X   $	��Top=�6l   $	��196��6�   $��57��6�   �� 5   
   $
��Left=�6   $��
25,168,0,0q�6/   $
��Wrap=�6C   $Q��K(Choose this option if you want to keep  leftover names in a separate pool)��6W   $	��Top=�6�   $��72��6�   $	��131��6�   �� 5   
   -   5         ��Name$ Slider��5      $	��258��6!    � Value$ 10Q�6-    �� Orientation$ 
Horizontal=�68   $
��Left=�6Q    �� IsSnapToTickEnabled . 	 �� TickPlacement$	 BottomRight=�5   $   
 �� AutoToolTipPlacement$
 BottomRight=�5   	    �� TickFrequency$ 1Q�6,    �� AutoToolTipPrecision$ 2��5   	    �� IsDirectionReversed .   �� IsMoveToPointEnabled .  $��202,87,0,135q�5   &    � Maximum$ 18Q�6_   �� 5   
   $
��Left=�6   $��
127,53,0,0q�6/   $
��Wrap=�6C   $0��*2. Enter the period number and hit "enter"��6W   $	��Top=�6�   $	��267��6�   �� 5   
   -   5         ��Name$	 TB1��5      $
��Left=�6   $��23��6:   $��
127,87,0,0q�6F    �� TextWrapping$
 Wrap=�6Z   $��10��6n   $	��Top=�6x   $��54��6�   6�   �� 5   
   -   5        $ 	PeriodBox��5      $
��Left=�6%   $��23��6@   $��259,172,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��128��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   .��6�   z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.143Q�6&   T� 5      5      .��5    '   5!      �� 5"   
   $
��Left=�6   $��256,143,0,0q�6/   $
��Wrap=�6D   $��Enter the period # below��6X   $	��Top=�6x   $��20��6�   $	��169��6�   �� 5#   
   $
��Left=�6   $��	38,87,0,0q�6/   $
��Wrap=�6B   $��# of groups��6V   $	��Top=�6i   �� 5$   
   $
��Left=�6   $��25,245,0,-12q�6/   $
��Wrap=�6E   $��Advanced Options��6Y   $	��Top=�6q   $	��116��6�   �� 5%   
   ���	#FFF4F4F5$
��Left=�6%   $��64��6@   
���   �$	��Top=�6[   $	��236��6s   $��
10,240,0,0q�6    K� ZIndex$ -1��6�   �� 5&   
   -   5        $ Go_Button_Copy��5&      $	��Go!��6)   $
��Left=�67   $��411,173,0,0q�6R   $	��Top=�6g   $��75��6   6�   5)      5*      