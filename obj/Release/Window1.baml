   M S B A M L   `   `   `  ���� E  ASortingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:SortingApp
SortingApp      SortingApp.Window1   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:SortingApp     -     �Name$  Window2�� � Title$ Sorting App 0.9.5�� � SizeToContent$ WidthAndHeight=� � WindowStartupLocation$ CenterScreen=�$��Center=�$��Center=����� *&$SystemParameters.PrimaryScreenHeight+���� *%#SystemParameters.PrimaryScreenWidth+.���  J� RenderTransformOrigin$ 0.589,0.479&�$��
0,-23,-8,0q� � ColumnDefinitions �� $
��635* ��� $
��369* ��� $	��60* ��� $��0* �.+��� $��Label��$
��Left=�$��-488,-53,50,50q�$	��Top=�$��26��$��38��&   System.Windows.Controls.DataGrid  -     Name$ 	DataGrid1��$
��Left=�$��38,75,38,38q�$	��Top=�$��3��$��24(�   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto    	RowHeight$ 50Q�	   
IsReadOnly	 . 
   MinColumnWidth$
 1Q�4  .System.Windows.Automation.AutomationProperties   Name$ Groups������ *&$SystemParameters.PrimaryScreenHeight+���� *%#SystemParameters.PrimaryScreenWidth+�� -    ��Name$
 Logo��$��4��$��Center=�$��71��$��-8,0,0,0q�$��Bottom=�$	��164��$��wordArt.PNG��$y�Hidden=��� -    ��Name$ info_button��$��4��$�� ��$��Center=�$��	-8,93,0,0q�$��Bottom=�$	��164��$��35�� J� Opacity$ 0Q� K� ZIndex$ 10���� -    ��Name$ Logo1��$��Center=�$��48,0,35.195,-4q�$
��Wrap=�$��	More Info��$��Bottom=�$��3��$��29��$��71��$��Courier New)�$
��Bold"��� -    ��Name$ 
SliderMain��$��64,28,25.6,0q�$	��Top=�$��3��$��96�� � Minimum$ 11Q� � Maximum$ 50Q�$
��Left=� � LargeChange$ 5Q��� $
��Size��$
��Left=�$��	11,23,0,0q�$	��Top=�