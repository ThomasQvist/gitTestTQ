   M S B A M L   `   `   `  ����N  JWPFDataGridExamples, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WPFDataGridExamplesWPFDataGridExamples  5      /    )WPFDataGridExamples.ValidationByException   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      1local!clr-namespace:WPFDataGridExamples    5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � Title$  Validation Example��5      $	��300��6    $	��300��6-    � 	Resources 5         PersonDataSource S� 
ObjectType*   $WPFDataGridExamples.PersonDataSource 
 People S� ObjectInstance S� 
MethodName �� 
TargetType �� Triggers P� Property P� Value	 �� Property
 �� Value �� RelativeSource �� Path  CellEditStyle  RowStyle,  &Microsoft.Windows.Controls.DataGridRow �� Padding � ToolTip �� AncestorType��%  &	        &	      7   '�� @     &	     &	 !    S� 5   
   "  66   S� 5   
   8   $ 	GetPeople��6_   �� 5   
   " ��6    5      P� 5       �@=�HasError . . �5      �� 	 �@�ToolTip
 5      ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5      �� 5   
   " ��6&   .�5      �� 	 � ��$
 0q�60   �� 5      	 � ��$
 0q�6(    5      P� 5       �@=�HasError . . �5      �� 	 �@�ToolTip
 5      ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5       5"      �� 5%   
   "  6!   .�5&      �� 	 �@ ValidationErrorTemplate
 5'      �� 5(      .R�5)      � .+�5*      A� $��12��6&   $��12��61   
���  ��
���   �$	��0.5��6W   �� 5+      $
��Bold"�6(   $ 4,0,0,0q�6:   $��0q�6L   $	��Top=�6W   
�������$��!��6�    5,   (   ��  �� *FindAncestor+"  $) #(Validation.Errors)[0].ErrorContent�5.      5/      51      52      54      .��56      ]�  � DataContext 6   ��  �� Source# [ .+�58   
   �� $��Bottom=�6   $��Detaljer��6+   $��5q�6>   .��59      � -   5         �Name$ Details��59      $��5q�6$    � ColumnDefinitions 5:      �� 5;      �� 5<       � RowDefinitions 5>      �� 5?      �� 5@      .+�5C      �� $��RIGTIGTLANGT��6   �� 5D      $��1��6   ��6*   �� $
 Name� �� ValidatesOnExceptions . �� 5F      $��1��6   $
��Age:��6)   �� 5G      $��1��6   $��1��6(   ��68   �� $	 Age� . 5H      5I      )  #Microsoft.Windows.Controls.DataGrid  5K   
   -   5        $��dataGrid��5K         AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�6B   ��5L      ��    RowValidationRules 5M      ,   &WPFDataGridExamples.RowDummyValidation  5N         Columns 5P      3  -Microsoft.Windows.Controls.DataGridTextColumn  5Q      /  )Microsoft.Windows.Controls.DataGridColumn   Header$
 Name��6(   4  .Microsoft.Windows.Controls.DataGridBoundColumn   EditingElementStyle# [ 66      Binding 5R   (   �� $
 Name� .   5S      $	 Age��6(   # [ 65    5T   (   �� $	 Age� . 5V      5X      5Y      