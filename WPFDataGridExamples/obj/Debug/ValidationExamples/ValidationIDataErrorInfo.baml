   M S B A M L   `   `   `  ����N  JWPFDataGridExamples, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WPFDataGridExamplesWPFDataGridExamples  5      2    ,WPFDataGridExamples.ValidationIDataErrorInfo   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      1local!clr-namespace:WPFDataGridExamples    5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � Title$  Validation Example��5      $	��300��6    $	��300��6-    � 	Resources 5         AppointmentDataSource S� 
ObjectType/   )WPFDataGridExamples.AppointmentDataSource  Appointments S� ObjectInstance S� 
MethodName �� 
TargetType �� Triggers P� Property P� Value	 �� Property
 �� Value �� RelativeSource �� Path  RowStyle,  &Microsoft.Windows.Controls.DataGridRow��%K  &	        &	      7   '�� F     &	     S� 5
   
   "  6;   S� 5   
   8   $ GetAppointments��6j   �� 5   
   " ��6    5      P� 5       �@=�HasError . . �5      �� 	 �@�ToolTip
 60   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5      �� 5   
   "  6!    5      P� 5       �@=�HasError . . �5      �� 	 � ��$
 1q�68   �� 5      	 � ��

 �  ��64   �� 5      	 �@�ToolTip
 60   ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5      5       .��5"      ]�  � DataContext 6   ��  �� Source# [ .+�5?   
   )  #Microsoft.Windows.Controls.DataGrid  -   5        $��dataGrid��5?         AutoGenerateColumns .  $ �� IsSynchronizedWithCurrentItem$
 TrueY�6C      RowStyle# [ 5@      ��6<   ��    RowValidationRules 5A      3   -WPFDataGridExamples.RowDataInfoValidationRule  5B      ,  &System.Windows.Controls.ValidationRule   ValidationStep$ UpdatedValue=�62      Columns 5D      3  -Microsoft.Windows.Controls.DataGridTextColumn  5E      /  )Microsoft.Windows.Controls.DataGridColumn   Header$
 Name��6(   4  .Microsoft.Windows.Controls.DataGridBoundColumn   Binding 5F      �� 5G      $
 Name�6"    �� ValidationRules 5H      4	   .WPFDataGridExamples.CellDataInfoValidationRule	  5I   "   $ UpdatedValue=�6C   5K      5M        5N      $	 Age��6(    5O      �� 5P      $	 Age�6"    5Q      	  5R   "   $ UpdatedValue=�6C   5T      5V        5W      $ Start��6(    67   �� $ 	StartTime�  5X      $	 End��6(    65   �� $ EndTime�5Z      5\      5]      