   M S B A M L   `   `   `  ����N  JWPFDataGridExamples, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WPFDataGridExamplesWPFDataGridExamples  5   	   2    ,WPFDataGridExamples.DataSetValidationExample   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      1local!clr-namespace:WPFDataGridExamples    5   	   6my-http://schemas.microsoft.com/wpf/2008/toolkit  5   .     � Title$  Window1��6   $	��300��6   $	��300��6"    � 	Resources 5         	Customers S� 
ObjectType.   (WPFDataGridExamples.CustomerDataProvider S� 
MethodName # BasicRowValidationErrorTemplate-  'Microsoft.Windows.Controls.DataGridCell �� 
TargetType �� Triggers P� Property P� Value �� Property	 �� Value
 �� RelativeSource �� Path,  &Microsoft.Windows.Controls.DataGridRow��%�  &	        &	 0     '      '  �    S� 5   
   "  6/   $ GetCustomers��6`   �� 5   
   .R�5      ]� ��. .+�5      �� $��Right=�6   
������$��14(�6K   $
��Bold"�6Y   *6n   �� 5      
������$��2q�62   ._�5      �� $��adornerPlaceholder��60   6L   5      5      5      �� 5   
   "  6    5      P� 5       �@=�HasError . . �5      ��  �@�ToolTip	 60   �� 
 �� *Self+$) #(Validation.Errors)[0].ErrorContent�5      5      �� 5   
   "  6   .�5      ��  � ��$		 150��6*    5      P� 5        �@=�HasError . . �5!      ��  �@�ToolTip	 60   �� 
 �� *Self+$) #(Validation.Errors)[0].ErrorContent�5"      5$      5'      .��5(      ]� .+�5)   
   )  #Microsoft.Windows.Controls.DataGrid  -   5        $��dataGrid��5)   Q      AutoGenerateColumns .  ��6   ��  �� Source# [     RowValidationRules 5+      +   %WPFDataGridExamples.DataRowValidation  5,      ,  &System.Windows.Controls.ValidationRule   ValidationStep$ UpdatedValue=�6*      Columns 5.      3  -Microsoft.Windows.Controls.DataGridTextColumn  5/      -   5        IDColumn��/  )Microsoft.Windows.Controls.DataGridColumn   Header$ 
CustomerID��5/   :      
IsReadOnly . 4	  .Microsoft.Windows.Controls.DataGridBoundColumn 	  Binding 50      �� 51      $ 
CustomerID�6"    �� ValidationRules 52        53   "   $ UpdatedValue=�6:   55      57        58      $ CompanyName��6(    59      �� 5:      $ CompanyName�6"    5;        5<   "   $ UpdatedValue=�6:   5>      5@        5A      $ ContactName��6(    5B      �� 5C      $ ContactName�6"    5D        5E   "   $ UpdatedValue=�6:   5G      5I      5K      5L      5M      