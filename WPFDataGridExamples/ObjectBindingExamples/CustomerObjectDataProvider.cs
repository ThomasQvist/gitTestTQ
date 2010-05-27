using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using WPFDataGridExamples.NorthwindDataSetTableAdapters;
using System.Data;
using System.Collections.Specialized;
using WPFDataGridExamples.DataAccessLayer;
using WPFDataGridExamples.ObjectBindingExamples;
using System.ComponentModel;

namespace WPFDataGridExamples
{
    public delegate void PersistenceErrorHandler(CustomerObjectDataProvider dataProvider, Exception e);

    public class CustomerObjectDataProvider
    {
        ICustomerDataAccessLayer dataAccessLayer;

        public CustomerObjectDataProvider()
        {
            dataAccessLayer = new CustomerDataAccessLayer();
        }

        public CustomerUIObjects GetCustomers()
        {
            // populate our list of customers from the data access layer
            CustomerUIObjects customers = new CustomerUIObjects();

            List<CustomerDataObject> customerDataObjects = dataAccessLayer.GetCustomers();
            foreach (CustomerDataObject customerDataObject in customerDataObjects)
            {
                // create a business object from each data object
                customers.Add(new CustomerUIObject(customerDataObject));
            }

            customers.ItemEndEdit += new ItemEndEditEventHandler(CustomersItemEndEdit);
            customers.CollectionChanged += new NotifyCollectionChangedEventHandler(CustomersCollectionChanged);

            return customers;
        }

        void CustomersCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Remove)
            {
                try
                {
                    foreach (object item in e.OldItems)
                    {
                        CustomerUIObject customerObject = item as CustomerUIObject;

                        // use the data access layer to delete the wrapped data object
                        dataAccessLayer.DeleteCustomer(customerObject.GetDataObject());
                    }
                }
                catch (Exception ex)
                {
                    if (PersistenceError != null)
                    {
                        PersistenceError(this, ex);
                    }
                }
            }
        }

        void CustomersItemEndEdit(IEditableObject sender)
        {
            CustomerUIObject customerObject = sender as CustomerUIObject;

            try
            {
                // use the data access layer to update the wrapped data object
                dataAccessLayer.UpdateCustomer(customerObject.GetDataObject());
            }
            catch (Exception ex)
            {
                if (PersistenceError != null)
                {
                    PersistenceError(this, ex);
                }
            }
        }

        public static event PersistenceErrorHandler PersistenceError;
    }

}
