   M S B A M L   `   `   `  ����O  Kmscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   N JWPFDataGridExamples, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WPFDataGridExamplesWPFDataGridExamples 5   	   -   'WPFDataGridExamples.MasterDetailExample   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35I EWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=nullR NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   8x,http://schemas.microsoft.com/winfx/2006/xaml    5   	   7system&clr-namespace:System;assembly=mscorlib    5   	   1local!clr-namespace:WPFDataGridExamples    5   	   6dg-http://schemas.microsoft.com/wpf/2008/toolkit  5   	     � Title$  Master Details View��5   	   $	��600��6%   $	��600��62    � 	Resources 5	         CustomerDataProvider S� 
ObjectType.  (WPFDataGridExamples.CustomerDataProvider  	Customers S� ObjectInstance S� 
MethodName  OrdersDataProvider,  &WPFDataGridExamples.OrdersDataProvider 
 Orders S� MethodParameters �� Member��%   &	        &	      7   &	 C     &	 [     7  S� 5   
   "  6:   S� 5   
   8   $ GetCustomers��6f   S� 5   
   "  68   S� 5   
   8   $ GetOrdersByCustomer��6a    5      �� 5      $ system:String.Empty��6   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��* �6   .+�5!   
   )  #Microsoft.Windows.Controls.DataGrid  -   5        $��CustomerGrid��5!   #   $��0��6   	 �� SelectedValuePath$	 
CustomerID��5"      ��5!   7   �� 
 �� Source#
 [ 5"   5     5$   
   -   5        $��1��5$         AutoGenerateColumns . ��6#   �� #
 [    Columns 5&      3  -Microsoft.Windows.Controls.DataGridTextColumn  5'      /  )Microsoft.Windows.Controls.DataGridColumn   Header$ OrderID��6W      
IsReadOnly . 4  .Microsoft.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ OrderID�6h     5)      $ 
EmployeeID��6L    6(   �� $ 
EmployeeID�6L     5*      $ 	OrderDate��6K    6(   �� $ 	OrderDate�6K     5+      $ RequiredDate��6N    6(   �� $ RequiredDate�6N     5,      $ ShippedDate��6M    6(   �� $ ShippedDate�6M     5-      $ ShipVia��6I    6(   �� $ ShipVia�6I     5.      $ Freight��6I    6(   �� $ Freight�6I     5/      $ ShipName��6J    6(   �� $ ShipName�6J     50      $ ShipAddress��6M    6(   �� $ ShipAddress�6M     51      $ ShipCity��6J    6(   �� $ ShipCity�6J     52      $ 
ShipRegion��6L    6(   �� $ 
ShipRegion�6L     53      $ ShipPostalCode��6P    6(   �� $ ShipPostalCode�6P     54      $ ShipCountry��6M    6(   �� $ ShipCountry�6M   56      58      59      