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
    public partial class MasterDetailExample : Window
    {
        public MasterDetailExample()
        {
            InitializeComponent();
        }

        private void CustomerGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataGrid grid = sender as DataGrid;

            // pass the customer ID to our Orders datasource via the ObjectDataProvider
            ObjectDataProvider orderProvider = this.FindResource("Orders") as ObjectDataProvider;
            orderProvider.MethodParameters[0] = grid.SelectedValue;
        }

        private void DataGrid_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {
            // drill down from DataGridRow, through row view to our order row
            DataGridRow dgRow = e.Row;
            DataRowView rowView = dgRow.Item as DataRowView;
            NorthwindDataSet.OrdersRow orderRow = rowView.Row as NorthwindDataSet.OrdersRow;

            // set the foreign key to the customer ID
            orderRow.CustomerID = CustomerGrid.SelectedValue as string;
        }

    }

}
