   M S B A M L   `   `   `  ����E  ASortingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:SortingApp
SortingApp  5   	       SortingApp.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:SortingApp     5   	   -   5          �Name$  Window2��5   	    � Title$ Sorting App 0.9.5��5	   	    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6�   $��Center=�6�   $��Center=�6�   ��6#   �� *&$SystemParameters.PrimaryScreenHeight+��6[   �� *%#SystemParameters.PrimaryScreenWidth+.��5
      �  J� RenderTransformOrigin$ 0.589,0.479&�6   $��
0,-23,-8,0q�6/    � ColumnDefinitions 5   
   �� 5      $
��635* �6   �� 5      $
��369* �6   �� 5      $	��60* �6   �� 5      $��0* �6   .+�5   
   �� $��Label��6   $
��Left=�6    $��-488,-53,50,50q�6;   $	��Top=�6S   $��26��6k   $��38��6w   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	DataGrid1��5      $
��Left=�6&   $��38,75,38,38q�6y   $	��Top=�6�   $��3��6�   $��24(�6�      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6�      	RowHeight$ 50Q�6  	   
IsReadOnly	 . 
   MinColumnWidth$
 1Q�63  4  .System.Windows.Automation.AutomationProperties   Name$ Groups��6F  ��6A   �� *&$SystemParameters.PrimaryScreenHeight+��6�   �� *%#SystemParameters.PrimaryScreenWidth+6F  �� 5   
   -   5         ��Name$
 Logo��5      $��4��6   $��Center=�62   $��71��6O   $��-8,0,0,0q�6[   $��Bottom=�6m   $	��164��6�   $��wordArt.PNG��6�   $y�Hidden=�6�   �� 5   
   -   5         ��Name$ info_button��5      $��4��6@   $�� ��6T   $��Center=�6_   $��	-8,93,0,0q�6|   $��Bottom=�6�   $	��164��6�   $��35��6�    J� Opacity$ 0Q�6�    K� ZIndex$ 10��6�   �� 5   
   -   5         ��Name$ Logo1��5      $��Center=�6#   $��48,0,35.195,-4q�6@   $
��Wrap=�6X   $��	More Info��6l   $��Bottom=�6}   $��3��6�   $��29��6�   $��71��6�   $��Courier New)�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ 
SliderMain��5      $��64,28,25.6,0q�6%   $	��Top=�6;   $��3��6S   $��96��6g    � Minimum$ 11Q�6�    � Maximum$ 50Q�6�   $
��Left=�6�    � LargeChange$ 5Q�6�   �� 5   
   $
��Size��6   $
��Left=�6   $��	11,23,0,0q�6:   $	��Top=�6M   5      5      