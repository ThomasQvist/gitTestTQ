   M S B A M L   `   `   `  ����  WPFDataGridExamples0    *WPFDataGridExamples.CompleteStylingExample   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � Title$  Styling Example��5      $	��300��6   $	��600��6*    � WindowStyle$
 None=�66    � 	Resources 5      7  1System.Windows.Data.XmlNamespaceMappingCollection   map 
� Prefix
 
� Uri  
FlickrFeed � Source � XPath  FlickrGroupedFeed �� Source �� Source	 �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription
   PropertyName)  #Microsoft.Windows.Controls.DataGrid �� 
TargetType �� Property �� Value  SelectedBrush �� 
StartPoint �� EndPoint � Offset � Color  RolloverBrush  
GlassBrush,  &Microsoft.Windows.Controls.DataGridRow �� Triggers P� Property P� Value-  'Microsoft.Windows.Controls.DataGridCell �� 
TargetType �� Padding J� SnapsToDevicePixels   FocusBorderBrushKey@  :Microsoft.Windows.Controls.Primitives.DataGridColumnHeader �� CornerRadius �� ContentStringFormat �� ContentStringFormat E� 
StartPoint �� Point �� Triggers �� 
TargetNameJ  DMicrosoft.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  GroupContainerStyle  9� 
IsExpanded! � ColumnDefinitions" � RowDefinitions# �� Orientation$ �� Path	% �� X1	& �� X2' �� Stretch  RowHeaderStyle=  7Microsoft.Windows.Controls.Primitives.DataGridRowHeader  ExpanderToggleButton( �Name) � OverridesDefaultStyle* d� 	IsChecked+ �� Mode, �� RelativeSource- �� ElementName��%2  &	        &	 _     &	 	    7  '  `    &	 �    &	 >    &	 �    '  �    7  7  '      7  '  0    7  '  e    &	     &	 �    &	 �    '9� 6    7    5   
   
� 5	      $ media��6"   $# http://search.yahoo.com/mrss/?�61   5
      � 5   
   $d ^http://api.flickr.com/services/feeds/photos_public.gne?tags=juggling&lang=en-us&format=rss_200?�5      $$ //item[string-length(title)>0]��5      �� 5   
    6:   �� 8   	 5        5      $
 author��6+   5      �� 5   
   "  6   .�5      ��  � ��
 �   �6+   5      �� 5   
   $	 0,0&�64   $	 0,1&�6E   .��5      � $ 0Q�6   $ #767474��6&   � 5      $ 1Q�6   $ #A1A1A1��6&   5      �� 5    
   $	 0,0&�64   $	 0,1&�6E   .��5!      � $ 0Q�6   $ #FEB74B��6&   � 5"      $ 1Q�6   $ #F19201��6&   5#      �� 5%   
   $	 0,0&�61   $	 1,0&�6B   .��5&      � $ 0Q�6   $ 	#66ffffff��6&   � 5'      $ 0Q�6   $ 	#36FFFFFF��6&   � 5(      $ 1Q�6   $ 	#B5EBE7E7��6&   5)      �� 5,   
   "  6   .�5-      ��  � ��
 �����6+   �� 5.       � �� �#4140406+   �� 5/       � ��$ 0,1,0,1q�60   �� 50       � �� �#6161616,    51      P� 52       �@J�IsMouseOver . . �53      ��  � ��8   63   54      P� 55       �@ 
IsSelected . . �56      ��  � ��8  63   57      59      �� 5<   
   "  61   .�5=      ��  � ��
 ���� 6+   �� 5>       � ��
 ���� 6,   �� 5?       � ��$ 0q�60   �� 5@       � �� 5A      �� 5B      "  6&   .R�5C      �� $ 5q�6!   #��z��6.   #��z��5D      #��z��5E       . ._�5G      �� # z 6/   5H      5I      5K       5L      P� 5M       �@J�IsKeyboardFocusWithin . . �5N      ��  � ��# �  64   5O      P� 5P       �@ 
IsSelected . . �5Q      ��  � ��8   63   5R      5T      �� 5W   
   "  6   .�5X      ��  � ��$ Center=�69   �� 5Y       � ��
 �����6+   �� 5Z       � �� 5[      �� 5\      "  6&   .R�5]      � .+�5^      �� $��
MainBorder��6$   $��2,2,2,0q�66   $ 8,8,0,0��6P   $��0,0,1,0q�6g   ���#5FACE7���#2F73B2._�5_   !   � .+�5a   &   �� $��GradientBorder��6E   $	��Top=�6-   $��10��6[   $ 7,7,0,0��6g   ���#D994668��  6�   �� 5b   &   $��3q�67   $��Center=�6B   $��Center=�6_   #��z��6z   # z 5c   7   #��z��6s   5d   #   5e      F� 5f      $��UpArrow��6#   
�������$��Right=�6?   $��Center=�5g   #   $��0,2,7,0q�6>   $y�Hidden=�6O   ��5h   "   B� 5i   &   .��5j   *   E� $	 0,0&�65   .��5k   .   �� $	 7,0&�6:   �� 5l   .   $ 3.5,6&�6:   �� 5m   .   $	 0,0&�6:   5n   +   5o   '   5q      F� 5r      $��	DownArrow��6#   
�������$��Right=�6A   $��Center=�5s   #   $��0,2,7,0q�6>   $y�Hidden=�6O   ��5t   "   B� 5u   &   .��5v   *   E� $	 0,6&�65   .��5w   .   �� $	 7,6&�6:   �� 5x   .   $ 3.5,0&�6:   �� 5y   .   $	 0,6&�6:   5z   +   5{   '   5}      5~       5      P� 5�       �@ SortDirection$ 
DescendingX�6?   . �5�   "   �� $ UpArrow��6)    � y�$ Hidden=�6T   �� 5�   "   $ 	DownArrow��6)    � y�$ Visible=�6V   5�      P� 5�       �@ SortDirection$ 	AscendingX�6?   . �5�   "   �� $ 	DownArrow��6)    � y�$ Hidden=�6V   �� 5�   "   $ UpArrow��6)    � y�$ Visible=�6T   5�      5�      5�      5�      �� 5�   
   "  6C   .�5�      ��  � �� 5�      �� 5�      "  6&   .R�5�      � .+�5�      �� 5�      5�      5�      5�      �� 5�   
   " ��6,   .�5�      ��  � �� 5�      �� 5�      " ��6&   .R�5�      9�   . ���#414040��5�      � 5�   "   ! 5�   &   �� 5�   *   $
��Auto �6;   �� 5�   *   " 5�   &   �� 5�   *   .+�5�   &   �� $# 
Horizontal=�61   
�������$��0,0,10,0q�6g   .+�5�   *   �� ��64   �� $
$ Name��� 5�   *   $�� has uploaded ��64   �� 5�   *   $
��Bold"�64   ��6F   �� $$ 	ItemCount��� 5�   *   $�� photos��64   5�   '   �� 5�   &   $��1��6+    . $% 0��6W   $& 1��6^   $
' Fill=�6e   
��� ���$��1��6�   5�   #   .��5�      �� 5�      5�      5�      5�      �� 5�   
   "  6'   .�5�      ��  � �� �#A1A1A16+   5�      �� 5�   
   " d�67   .R�5�      �� 
���   �._�5�      F� $��Arrow��6   
�������$��Center=�61   $��Center=�6N   "����        � 	=  	= � z     	5�      5�       5�      P� 5�       �@d�	IsChecked$
 trueY�6/   . �5�      �� $ Arrow��6    � ��" ��     	= � 	=     � z  	= 	6@   5�      5�      �� 5�   
   " 9�6   .�5�      ��  � �� 5�      �� 5�      " 9�6&   .R�5�      � " 5�      �� 5�   "   $
��Auto �60   �� 5�   "   $( 
ContentRow��60   $��0 �6B   .+�5�      �� $��Border��6%   $��0��63   
���   �._�5�   "   � ! 5�   &   �� 5�   *   $��20 �6;   �� 5�   *   $��* �6;   .+�5�   &   d� ) . 8��  * 63   �� $$ 
IsExpanded�$+ TwoWay=�, �� *TemplatedParent+5�   J   �� 5�   &   $��1��67   $��4q�6G   $��Header��6R   ��. 6i   5�   #   5�      �� 5�      $��Content��6%   $��1��65   
������ $��0q�6[   ._�5�   "   �� $��3,0,0,0q�63   5�      5�       5�      P� 5�       �@9�
IsExpanded . . �5�   "   �� $ 
ContentRow��6)    6S   �� $- Content��$$ DesiredHeight� � ��5�      5�      5�      5�      5�      .��5�      � . �� XmlNamespaceManager#. [  6   .+�5�   
     -   5        $��dataGrid��5�      /   AutoGenerateColumns/ .  0   SelectionMode$0 Extended=�5�      1   GridLinesVisibility$
1 None=�60   2   RowHeaderStyle#2 [ 6K   3   HeadersVisibility$3 Column=�5�   Y   4   RowDetailsVisibilityMode$4 VisibleWhenSelected=�5�      5 �� SelectedIndex$5 0��6G   ��5�      �� # [ 6 �� 
GroupStyle6 5�      (	  "System.Windows.Controls.GroupStyle	  5�      7 	  ContainerStyle#7 [ 6   8 	  Panel8 5�      �� 5�      .R�5�      A
  ;Microsoft.Windows.Controls.Primitives.DataGridRowsPresenter
  5�      5�      9   RowDetailsTemplate9 5�      �� 5      .R�5     �� $��Stretch=�6   $ 5��6;   
���   �$��5q�6_   $ 5q�6l   ._�5     �� $# 
Horizontal=�6%   .+�5     �� $��2q�6%   $ 2��69   
�������._�5     �� $��60��6R   $��60��6]   ��6$   �� : �� XPath$: media:thumbnail/@url��6]   5  #   �� 5     $# Vertical=�6)   $��5q�6@   .+�5  "   �� ���#509CD5$��20(�6A   $	��300��6O   $
��Wrap=�6[   ��6p   �� $: media:category��5     5	     5
     5     ;   Columns; 5     3  -Microsoft.Windows.Controls.DataGridTextColumn  5     /  )Microsoft.Windows.Controls.DataGridColumn<   Header$< Title��6(   =   Width8  2Microsoft.Windows.Controls.DataGridLengthConverter$	= 150 6W   4  .Microsoft.Windows.Controls.DataGridBoundColumn>   Binding> 67   �� $: title��6W     5     $< 	Published��6(   > 6;   �� $: pubDate��  5     $< Author��6(   ?   CanUserSort? .  $= * 6s   > 6L   �� $: media:credit��6s   5     5     5     