using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;

using WPFDataGridExamples.NorthwindDataSetTableAdapters;
using System.Diagnostics;
using Microsoft.Windows.Controls;

namespace WPFDataGridExamples
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class ObjectExample : Window
    {
        public ObjectExample()
        {
            InitializeComponent();

            // handle errors from the data provider
            CustomerObjectDataProvider.PersistenceError += new PersistenceErrorHandler(customerProvider_PersistenceError);
                        
        }

        void customerProvider_PersistenceError(CustomerObjectDataProvider dataProvider, Exception e)
        {
            // if an exception occurs - display a pop-up
            MessageBox.Show(e.GetType().ToString() + " " + e.Message);
            
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dataGrid.SelectedItem == null)
            {
                IDColumn.IsReadOnly = true;
            }
            else
            {
                IDColumn.IsReadOnly = !dataGrid.SelectedItem.Equals(CollectionView.NewItemPlaceholder);
            }

        }

    }
    
}
