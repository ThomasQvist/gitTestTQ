using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WPFDataGridExamples.NorthwindDataSetTableAdapters;
using System.Data;

namespace WPFDataGridExamples
{
    /// <summary>
    /// Provides a singleton instance of the NorthwindDataSet
    /// </summary>
    public class NorthWindDataProvider
    {
        private static NorthwindDataSet northwindDataSet;

        public static NorthwindDataSet NorthwindDataSet
        {
            get
            {
                if (northwindDataSet==null)
                {
                    northwindDataSet = new NorthwindDataSet();                    
                }
                return NorthWindDataProvider.northwindDataSet;
            }          
        }
    }

    /// <summary>
    /// A source of Northwind Customer objects
    /// </summary>
    public class CustomerDataProvider
    {
        private CustomersTableAdapter adapter;

        public CustomerDataProvider()
        {
            NorthwindDataSet dataset = NorthWindDataProvider.NorthwindDataSet;

            adapter = new CustomersTableAdapter();
            adapter.Fill(NorthWindDataProvider.NorthwindDataSet.Customers);

            dataset.Customers.CustomersRowChanged += new NorthwindDataSet.CustomersRowChangeEventHandler(CustomersRowModified);
            dataset.Customers.CustomersRowDeleted += new NorthwindDataSet.CustomersRowChangeEventHandler(CustomersRowModified);
        }

        void CustomersRowModified(object sender, NorthwindDataSet.CustomersRowChangeEvent e)
        {
            adapter.Update(NorthWindDataProvider.NorthwindDataSet.Customers);
        }

        public DataView GetCustomers()
        {
            return NorthWindDataProvider.NorthwindDataSet.Customers.DefaultView;
        }
    }

    /// <summary>
    /// A source of Northwind Orders objects
    /// </summary>
    public class OrdersDataProvider
    {
        public OrdersTableAdapter adapter;

        public OrdersDataProvider()
        {
            NorthwindDataSet dataset = NorthWindDataProvider.NorthwindDataSet;

            adapter = new OrdersTableAdapter();
            adapter.Fill(dataset.Orders);

            AddRowChangeHandlers();
        }

        private void AddRowChangeHandlers()
        {
            NorthwindDataSet dataset = NorthWindDataProvider.NorthwindDataSet;
            dataset.Orders.OrdersRowChanged += new NorthwindDataSet.OrdersRowChangeEventHandler(OrderRowModified);
            dataset.Orders.OrdersRowDeleted += new NorthwindDataSet.OrdersRowChangeEventHandler(OrderRowModified);
        }
               
        void OrderRowModified(object sender, NorthwindDataSet.OrdersRowChangeEvent e)
        {
            adapter.Update(NorthWindDataProvider.NorthwindDataSet.Orders);
        }

        public DataView GetOrders()
        {
            return NorthWindDataProvider.NorthwindDataSet.Orders.DefaultView;
        }

        /// <summary>
        /// Obtains all the orders for the given customer.
        /// </summary>
        public DataView GetOrdersByCustomer(string customerId)
        {
            if (customerId == null || customerId == string.Empty)
            {
                return null;
            }

            DataView view = NorthWindDataProvider.NorthwindDataSet.Orders.DefaultView;
            view.RowFilter = string.Format("CustomerID='{0}'", customerId);
            return view;
        }

    }
}
