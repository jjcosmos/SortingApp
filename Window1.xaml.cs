using System;
using System.Collections.Generic;
using System.Data;
using System.Dynamic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SortingApp
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        List<string> Names;
        List<StringWrapper> wrapperList;
        private double myNumGroups;
        List<string> groupDesignations;
        List<string> extras;
        bool mySeparate;
        //List<string> shuffledGroups;
        private static Random rng = new Random();
        Window2 win2;

        public Window1(List<string> names, double numGroups, bool separate)
        {
            
            mySeparate = separate;
            extras = new List<string>();
            Names = names;
            myNumGroups = numGroups;
            InitializeComponent();
            DataGrid1.Columns.Clear();
            groupDesignations = new List<string>();
            shuffleGroups();
            //DataGrid1 = new DataGrid();
            buildListGroups();
            buildTable(groupDesignations);
            addNames();
            if(myNumGroups > Names.Count)
            {
                MessageBox.Show("Error: Number of groups cannot exceed the ammount of entries. Please close the window and try again");
            }
            if (mySeparate)
            {
                win2 = new Window2(extras);
                win2.Topmost = true;
                win2.Show();
            }
            DataGrid1.FontSize = 24;
            SliderMain.Value = DataGrid1.FontSize;


        }

        private void SliderMain_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (DataGrid1 != null)
            {
                //MessageBox.Show(SliderMain.Value.ToString());
                DataGrid1.FontSize = (int)SliderMain.Value;
                DataGrid1.UpdateDefaultStyle();
                DataGrid1.CanUserResizeColumns = true;


                foreach (DataGridColumn c in DataGrid1.Columns)
                    c.Width = c.MinWidth;

                // Update your DG's source here

                foreach (DataGridColumn c in DataGrid1.Columns)
                {
                    c.Width = DataGridLength.Auto; 
                }
                
                DataGrid1.RowHeight = Double.NaN;
            }
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            if(win2 != null)
                win2.Close();
   
        }

        private void buildListGroups()
        {
            //groupDesignations = new List<string>();
            //numnames%numGroups
            
            for (int i = 1; i < myNumGroups+1; i++)
            {
                groupDesignations.Add(i.ToString());
            }

            for (int i = Names.Count - ((Names.Count) % (int)myNumGroups); i < Names.Count; i++)
            {
                extras.Add(Names[i]);
            }
        }

        private void addNames()
        {
            int temp;
            if (mySeparate)
            {
                temp = Names.Count / (int)myNumGroups;
            }
            else
                temp = Names.Count / (int)myNumGroups +1;
            int count =0;
            for (int i = 0; i < temp; i++)
            {
                DataGridTextColumn c = new DataGridTextColumn();
                c.Width = 80;
                try { c.Header = Names[i]; }
                catch(Exception e)
                {
                    //MessageBox.Show("The file requested does not exist or is blank. please check your directories and try again");
                    
                    throw new Exception("The file requested does not exist or is blank. please check your directories and try again.");
                    
                }
                    
                c.Binding = new Binding(Names[i]);

                dynamic row = new ExpandoObject();

                for (int j = 0; j < groupDesignations.Count; j++)
                {
                    if (count < Names.Count)
                    {
                        ((IDictionary<String, Object>)row)[groupDesignations[j].Replace(' ', '_')] = Names[count];
                        count++;
                    }
                }

                DataGrid1.Items.Add(row);
                
                
            }
        }

        private void shuffleGroups()
        {
            int n = Names.Count;
            while (n > 1)
            {
                n--;
                int k = rng.Next(n + 1);
                string value = Names[k];
                Names[k] = Names[n];
                Names[n] = value;
            }
        }
        public void buildTable(List<string> headers)
        {
            DataGrid1.Columns.Clear();
            foreach (string header in headers)
            {
                DataGridTextColumn c = new DataGridTextColumn();
                c.Width = 80;
                c.Header = header;
                c.Binding = new Binding(header.Replace(' ', '_'));
                DataGrid1.Columns.Add(c);
            }
            
            
            
        }

        private void convertToWrapper()
        {
            wrapperList = new List<StringWrapper>();
            foreach (var item in Names)
            {
                StringWrapper temp = new StringWrapper();
                temp.Value = item;
                wrapperList.Add(temp);
            }
        }

        private void Logo_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://jasoncosmos.wixsite.com/sortingapp");
        }

        private void info_button_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("https://jasoncosmos.wixsite.com/sortingapp");
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }

    public class StringWrapper
    {
        public string Value { get; set; }
    }
}
