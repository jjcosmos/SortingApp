   M S B A M L   `   `   `  ���� E  ASortingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:SortingApp
SortingApp      SortingApp.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:SortingApp       � Title$  Sorting App 0.9.5��$	��350��$	��525�� � WindowStartupLocation$ CenterScreen=�.��� $��0,0,0,-4q�.+��� $
��Left=�$��
127,20,0,0q�$
��Wrap=�$-��'1. Select the number of groups you want��$	��Top=��� -    ��Name$ 	Go_Button��$	��Go!��$
��Left=�$��127,266,0,-37q�$	��Top=�$��75���� -   $ openfile��$��	load file��$
��Left=�$��25,266,0,-37q�$	��Top=�$��75���� -    ��Name$ 	CheckBox1��$��Keep Extras Separate��$
��Left=�$��
25,139,0,0q�$	��Top=��� -    ��Name$ 
TextBlock1��$
��Left=�$��264,229,0,0q�$
��Wrap=�$	��Top=�$	��196��$��57���� $
��Left=�$��
25,168,0,0q�$
��Wrap=�$Q��K(Choose this option if you want to keep  leftover names in a separate pool)��$	��Top=�$��72��$	��131���� -    ��Name$ Slider��$	��258�� � Value$ 10Q� �� Orientation$ 
Horizontal=�$
��Left=� �� IsSnapToTickEnabled . 	 �� TickPlacement$	 BottomRight=�
 �� AutoToolTipPlacement$
 BottomRight=� �� TickFrequency$ 1Q� �� AutoToolTipPrecision$ 2�� �� IsDirectionReversed .   �� IsMoveToPointEnabled .  $��202,87,0,135q� � Maximum$ 18Q��� $
��Left=�$��
127,53,0,0q�$
��Wrap=�$0��*2. Enter the period number and hit "enter"��$	��Top=�$	��267���� -    ��Name$	 TB1��$
��Left=�$��23��$��
127,87,0,0q� �� TextWrapping$
 Wrap=�$��10��$	��Top=�$��54���� -   $ 	PeriodBox��$
��Left=�$��23��$��259,172,0,0q�$
 Wrap=�$	��Top=�$	��128�� J� RenderTransformOrigin$ 0.5,0.5&�.��z�V� .~��� �� ��  �� Angle$ -0.143Q�T� .���� $
��Left=�$��256,143,0,0q�$
��Wrap=�$��Enter the period # below��$	��Top=�$��20��$	��169���� $
��Left=�$��	38,87,0,0q�$
��Wrap=�$��# of groups��$	��Top=��� $
��Left=�$��25,245,0,-12q�$
��Wrap=�$��Advanced Options��$	��Top=�$	��116���� ���	#FFF4F4F5$
��Left=�$��64��
���   �$	��Top=�$	��236��$��
10,240,0,0q� K� ZIndex$ -1���� -   $ Go_Button_Copy��$	��Go!��$
��Left=�$��411,173,0,0q�$	��Top=�$��75��