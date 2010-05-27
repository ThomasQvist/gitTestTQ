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
    public partial class DataSetValidationExample : Window
    {
        public DataSetValidationExample()
        {
            InitializeComponent();
        }

        private void dataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            IDColumn.IsReadOnly = dataGrid.SelectedItem is DataRowView;
        }

    }

}
