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
using System.Windows.Shapes;
using System.Reflection;

namespace WPFDataGridExamples
{
    /// <summary>
    /// Interaction logic for Menu.xaml
    /// </summary>
    public partial class Menu : Window
    {
        public Menu()
        {
            InitializeComponent();

            if (WPFDataGridExamples.Properties.Settings.Default.NorthwindConnectionString=="!! please provide your connection string !!")
            {
                ConfigWarning.Visibility = Visibility.Visible;
            }
        }

        private void ButtonClick(object sender, RoutedEventArgs e)
        {
            Button button = (Button)e.OriginalSource;

            // Create an instance of the window named
            // by the current button.
            Type type = this.GetType();
            Assembly assembly = type.Assembly;

            Window win = (Window)assembly.CreateInstance(
                type.Namespace + "." + (string)button.Tag);

            // Show the window.
            win.Show();
        }
    }
}
