   M S B A M L   `   `   `  ����  WPFDataGridExamples(    "WPFDataGridExamples.StylingExample   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � Title$  StylingExample��5      $	��300��6   $	��600��6)    � 	Resources 5      7  1System.Windows.Data.XmlNamespaceMappingCollection   map 
� Prefix
 
� Uri  
FlickrFeed � Source � XPath  FlickGroupedFeed �� Source �� Source �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription	   PropertyName  ColumnHeaderGripperStyle
 �� 
TargetType �� Property �� Value �� 
TargetType �� Padding   ColumnHeaderLeftGripperStyle �� BasedOn  HeaderStyle@  :Microsoft.Windows.Controls.Primitives.DataGridColumnHeader5  /Microsoft.Windows.Controls.DataGridHeaderBorder   SortDirection   SortDirection J� IsMouseOver   	IsHovered   	IsPressed   CanUserSort   IsClickable   SeparatorVisibility   SeparatorVisibility   SeparatorBrush   SeparatorBrush J� SnapsToDevicePixels n�Name E� 
StartPoint �� Point �� Triggers  P� Property! P� Value" �� 
TargetName  GroupContainerStyle# 9� 
IsExpanded$ �� Path��%�  &	        &	 _     &	     7  &	 [    &	 v    7  &	 �    7  7  &	 �	      5   
   
� 5	      $ media��6"   $# http://search.yahoo.com/mrss/?�61   5
      � 5   
   $_ Yhttp://api.flickr.com/services/feeds/photos_public.gne?tags=cat&lang=en-us&format=rss_200?�5      $$ //item[string-length(title)>0]��5      �� 5   
    69   �� 8    5        5      $	 author��6+   5      �� 5   
   "
 n�61   .�5      ��  � ��$ 8��6&   �� 5       � ��
 ���� 6+   �� 5       �@�Cursor$ SizeWE��6'   �� 5       � �� 5      �� 5      " n�6&   .R�5      �� # z��6!   #��z��6E   5      5      5!      5"      �� 5$   
   8   "
 n�6j   .�5%      ��  � ��$ 8��6&   �� 5&       � ��
 ���� 6+   �� 5'       �@�Cursor$ SizeWE��6'   �� 5(       � �� 5)      �� 5*      " n�6&   .R�5+      �� $��Border��6o   # z��6!   #��z��6E   50      51      53      54      �� 56   
   "
  6$   .�57      ��  � ��$ Center=�69   �� 58       � ��
 �����6+   �� 59       � �� 5:      �� 5;      "  6&   .R�5<      � .+�5=        # z 66   # z 5>   &   # z��5?   &   # z 5@   &   #��z��5A   &   #��z��5B   &   #��z��5C   &   # z��5D   &   # z 5E   &   # z 5F   &   ._�5G   "   �� # z 63   #��z��5H   #   #��z��5I   #   5J      n� 5L      $ PART_LeftHeaderGripper��6$   $
��Left=�5M   $   8��  5N   $   n� 5O      $ PART_RightHeaderGripper��6$   $��Right=�5P   $   8�� 5Q   $   F� 5S      $��UpArrow��6#   
���   �$��Right=�6?   $��Center=�6[   $��0,0,7,0q�6v   $y�Hidden=�6�   ��5T   "   B� 5U   &   .��5V   *   E� $	 0,0&�65   .��5W   .   �� $	 6,0&�6:   �� 5X   .   $	 3,5&�6:   �� 5Y   .   $	 0,0&�6:   5Z   +   5[   '   5]      F� 5^      $��	DownArrow��6#   
���   �$��Right=�6A   $��Center=�6]   $��0,0,7,0q�6x   $y�Hidden=�6�   ��5_   "   B� 5`   &   .��5a   *   E� $	 0,5&�65   .��5b   .   �� $	 6,5&�6:   �� 5c   .   $	 3,0&�6:   �� 5d   .   $	 0,5&�6:   5e   +   5f   '   5h      5i       5j      P� 5k        �@ SortDirection$! 
DescendingX�6?   . �5l   "   �� $" UpArrow��6)    � y�$ Hidden=�6T   �� 5m   "   $" 	DownArrow��6)    � y�$ Visible=�6V   5n      P� 5o        �@ SortDirection$! 	AscendingX�6?   . �5p   "   �� $" 	DownArrow��6)    � y�$ Hidden=�6V   �� 5q   "   $" UpArrow��6)    � y�$ Visible=�6T   5r      5t      5v      5w      �� 5y   
   "
 ��6,   .�5z      ��  � �� 5{      �� 5|      " ��6&   .R�5}      9� # .  ��5~      ]� 5   "   .+�5�   &   �� ��60   �� $
$ Name��� 5�   &   $�� has ��60   �� 5�   &   $
��Bold"�60   ��6B   �� $$ 	ItemCount��� 5�   &   $�� photos��60   5�   #   .��5�      �� 5�      5�      5�      5�      5�      .��5�      � % �� XmlNamespaceManager#% [  6   .+�5�   
   )  #Microsoft.Windows.Controls.DataGrid  -   5        $��dataGrid��5�      &   AutoGenerateColumns& .  '   ColumnHeaderStyle#' [ 5�      (   SelectionMode$( Extended=�5�      )   RowDetailsVisibilityMode$) VisibleWhenSelected=�5�      * �� SelectedIndex$* 0��6G   ��5�      �� # [ + �� 
GroupStyle+ 5�      (  "System.Windows.Controls.GroupStyle  5�      ,   ContainerStyle#, [ 6   -   Panel- 5�      �� 5�      .R�5�      A  ;Microsoft.Windows.Controls.Primitives.DataGridRowsPresenter  5�      5�      .   RowDetailsTemplate. 5�      �� 5�      .R�5�      �� / �� Orientation$/ 
Horizontal=�6!   $��5q�6:   .+�5�      �� $��60��6N   $��60��6Y   ��6    �� 0 �� XPath$0 media:thumbnail/@url��6Y   �� 5�      $/ Vertical=�6%   $��5q�6<   .+�5�      �� 
�����_�$��20(�6?   $	��400��6M   $
��Wrap=�6Y   ��6n   �� $0 media:category��5�      5�      5�      1   Columns1 5�      3  -Microsoft.Windows.Controls.DataGridTextColumn  5�      /	  )Microsoft.Windows.Controls.DataGridColumn2 	  Header$2 Title��6(   3 	  Width8
  2Microsoft.Windows.Controls.DataGridLengthConverter$	3 150
 6W   4  .Microsoft.Windows.Controls.DataGridBoundColumn4   Binding4 67   �� $0 title��6W     5�      $2 	Published��6(   4 6;   �� $0 pubDate��  5�      $2 Author��6(   5 	  CanUserSort5 .  $3 *
 6t   4 6M   �� $0 media:credit��6t   5�      5�      5�      