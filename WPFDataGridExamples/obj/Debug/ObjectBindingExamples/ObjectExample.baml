   M S B A M L   `   `   `  ����N  JWPFDataGridExamples, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WPFDataGridExamplesWPFDataGridExamples  5      '    !WPFDataGridExamples.ObjectExample   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      1local!clr-namespace:WPFDataGridExamples    5      6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5        � Title$0  *Northwind Customer via Layered Application��5      $	��300��68   $	��600��6E    � 	Resources 5         CustomerDataProvider S� 
ObjectType4   .WPFDataGridExamples.CustomerObjectDataProvider  	Customers S� 
MethodName��%\   &	        &	      S� 5
   
   "  6:   S� 5   
   "  6/   $ GetCustomers��6f   5      .��5      ]� .+�5   
   )  #Microsoft.Windows.Controls.DataGrid  -   5        $��dataGrid��5   Q      AutoGenerateColumns .  ��6   ��  �� Source# [    Columns 5      3  -Microsoft.Windows.Controls.DataGridTextColumn  5      -   5        IDColumn��/  )Microsoft.Windows.Controls.DataGridColumn   Header$ 
CustomerID��5   :      
IsReadOnly . 4  .Microsoft.Windows.Controls.DataGridBoundColumn	   Binding	 6`   �� 
 �� Path$
 ID�  5      $ CompanyName��6(   	 6=   �� $
 CompanyName�  5      $ ContactName��6(   	 6=   �� $
 ContactName�5      5      5      