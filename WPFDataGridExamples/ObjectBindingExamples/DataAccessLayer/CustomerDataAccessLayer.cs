using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WPFDataGridExamples.NorthwindDataSetTableAdapters;
using System.Collections.ObjectModel;
using System.Data;
using System.Collections.Specialized;
using System.ComponentModel;

namespace WPFDataGridExamples.DataAccessLayer
{
    /// <summary>
    /// A DAL class for managing the lifecycle of CustomerDataObject objects. This DAL implementation
    /// uses a DataSet for persisting to the database.
    /// </summary>
    public class CustomerDataAccessLayer : ICustomerDataAccessLayer
    {
        private CustomersTableAdapter adapter;

        public CustomerDataAccessLayer()
        {
            NorthwindDataSet dataset = NorthWindDataProvider.NorthwindDataSet;

            // populate the typed data set
            adapter = new CustomersTableAdapter();
            adapter.Fill(NorthWindDataProvider.NorthwindDataSet.Customers);
        }

        #region ICustomerDataAccessLayer Members

        /// <summary>
        /// Return all the persistent customers
        /// </summary>
        public List<CustomerDataObject> GetCustomers()
        {
            // populate an array of objects from the typed dataset
            List<CustomerDataObject>  customers = new List<CustomerDataObject>();

            // populate our collection of customer objhects from the dataset
            foreach (DataRow row in NorthWindDataProvider.NorthwindDataSet.Customers.Rows)
            {
                customers.Add(BusinessObjectFromDataRow(row));
            }

            return customers;
        }

        /// <summary>
        /// Updates or adds the given customer
        /// </summary>
        public void UpdateCustomer(CustomerDataObject customer)
        {
            // find the row which this data object maps to
            NorthwindDataSet.CustomersRow customerRow = NorthWindDataProvider.NorthwindDataSet.Customers.FindByCustomerID(customer.ID);

            // if we cannot find this customer - it must be a new instance
            if (customerRow == null)
            {
                // create a new row and populate the columns
                customerRow = NorthWindDataProvider.NorthwindDataSet.Customers.NewCustomersRow();
                DataRowFromBusinessObject(customerRow, customer);

                // add it to the table
                NorthWindDataProvider.NorthwindDataSet.Customers.Rows.Add(customerRow);
            }
            else
            {
                // map changes
                DataRowFromBusinessObject(customerRow, customer);
            }

            // use the table adapter to write to the database
            adapter.Update(NorthWindDataProvider.NorthwindDataSet.Customers);
        }

        /// <summary>
        /// Delete the given customer
        /// </summary>
        public void DeleteCustomer(CustomerDataObject customer)
        {
            // find the row which this data object maps to
            NorthwindDataSet.CustomersRow customerRow = NorthWindDataProvider.NorthwindDataSet.Customers.FindByCustomerID(customer.ID);

            // remove this object
            customerRow.Delete();

            // use the table adapter to write to the database
            adapter.Update(NorthWindDataProvider.NorthwindDataSet.Customers);            
        }

        #endregion

        #region data mapping from business objects to datarows

        private CustomerDataObject BusinessObjectFromDataRow(DataRow row)
        {
            NorthwindDataSet.CustomersRow customerRow = row as NorthwindDataSet.CustomersRow;
            return(new CustomerDataObject()
            {
                ID = customerRow.CustomerID,
                CompanyName = customerRow.CompanyName,
                ContactName = customerRow.ContactName
            });
        }

        private void DataRowFromBusinessObject(NorthwindDataSet.CustomersRow row, CustomerDataObject dataObject)
        {
            row.CustomerID = dataObject.ID;
            row.ContactName = dataObject.ContactName;
            row.CompanyName = dataObject.CompanyName;
        }

        #endregion
    }

    
}
