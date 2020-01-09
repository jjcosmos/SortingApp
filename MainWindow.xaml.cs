using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SortingApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private string filename;
        private List<string> nameList;
        private double groupNumber;
        public bool separateExtras;
        public string period_string;

        public MainWindow()
        {
            InitializeComponent();
            separateExtras = false;
            Go_Button.IsEnabled = false;
            Go_Button_Copy.IsEnabled = false;
            filename = "period1";
            nameList = new List<string>();
            groupNumber = 10;
            //this.KeyPreview = true;


        }
        

        private void OnKeyDownHandler(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Return)
            {
                this.Button_Click(sender, e);
            }
        }

        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            if (TB1 != null)
            {
                TB1.Text = Slider.Value.ToString();
                groupNumber = Slider.Value;
                //MessageBox.Show(groupNumber.ToString());
            }
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            

            if (CheckBox1.IsChecked == true)
            {
                MessageBox.Show("Keep Extras Separate is checked");
                separateExtras = true;
            }
            else
                separateExtras = false;

            Read();
            foreach (var item in nameList)
            {
                //MessageBox.Show(item);
                //ConsoleManager.Show();
                Console.WriteLine("Item " +item+ " has been loaded");
                ConsoleManager.Hide();
            }
            Window1 win1 = new Window1(nameList, groupNumber, separateExtras);
            win1.Show();
            
        }

        private void Button2_Click(object sender, RoutedEventArgs e)
        {
            // Configure open file dialog box
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();
            //dlg.FileName = "Names"; // Default file name
            dlg.DefaultExt = ".txt"; // Default file extension
            dlg.Filter = "Text documents (.txt)|*.txt"; // Filter files by extension

            // Show open file dialog box
            Nullable<bool> result = dlg.ShowDialog();

            // Process open file dialog box results
            if (result == true)
            {
                // Open document
                filename = dlg.FileName;
                //MessageBox.Show("file: " + filename + " is loaded");
                TextBlock1.Text = "Active File: " + filename;

                if (File.Exists(filename) && File.ReadAllText(filename) == "")
                {
                    MessageBox.Show("The file " + filename + " is blank or unreadable. Please check your directories and try again");
                }
                else
                {
                    Go_Button.IsEnabled = true;
                    Go_Button_Copy.IsEnabled = true;
                }
            }

            
        }

        private void Read()
        {
            nameList = new List<string>();
            try
            {
                // Create an instance of StreamReader to read from a file.
                // The using statement also closes the StreamReader.
                using (StreamReader sr = new StreamReader(filename))
                {
                    string line;
                    
                    // Read and display lines from the file until 
                    // the end of the file is reached. 
                    while ((line = sr.ReadLine()) != null)
                    {
                        nameList.Add(line);
                        Console.WriteLine("added \"" + line + "\" to directory");
                    }
                    //temp = true;
                }
            }
            catch (Exception e)
            {

                // Let the user know what went wrong.
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);

            }

        }

        

        private void TB1_TextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            
        }

        private void TB1_TextChanged_1(object sender, TextChangedEventArgs e)
        {
            if (Slider != null)
            {
                string val = (TB1.Text != "") ? TB1.Text : "";
                if(TB1.Text != "")
                    Slider.Value = int.Parse(val);
                
            }
            
        }

        private void PeriodBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            string path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop) + "\\SortingAppData";
            filename = path+"\\period"+PeriodBox.Text+".txt";
            TextBlock1.Text = "Active File: " + filename;

            if (!File.Exists(filename) && PeriodBox.Text != "")
            {
                //MessageBox.Show("The file " + filename +  " does not exist or is blank. Please check your directories and try again");
                Go_Button_Copy.IsEnabled = false;
            }
            else if(File.Exists(filename) && File.ReadAllText(filename) == "")
            {
                //MessageBox.Show("The file " + filename + " is blank or unreadable. Please check your directories and try again");
                Go_Button_Copy.IsEnabled = false;
            }
            else if(PeriodBox.Text != "")
            {
                Go_Button_Copy.IsEnabled = true;
            }
        }

        private void PeriodBox_KeyUp(object sender, KeyEventArgs e)
        {
            if(PeriodBox.Text == "")
            {
                Go_Button_Copy.IsEnabled = false;
            }

            if (e.Key == Key.Return)
            {
                if (!File.Exists(filename) && PeriodBox.Text != "")
                {
                    MessageBox.Show("The file " + filename + " does not exist or is blank. Please check your directories and try again");
                    Go_Button_Copy.IsEnabled = false;
                }
                else if (File.Exists(filename) && File.ReadAllText(filename) == "")
                {
                    MessageBox.Show("The file " + filename + " is blank or unreadable. Please check your directories and try again");
                    Go_Button_Copy.IsEnabled = false;
                }
                else if (PeriodBox.Text != "")
                {
                    Go_Button_Copy.IsEnabled = true;
                    //this.Button2_Click(sender,e);
                    this.Button_Click(sender, e);
                }

                
            }
        }
    }


    [SuppressUnmanagedCodeSecurity]
    public static class ConsoleManager
    {
        private const string Kernel32_DllName = "kernel32.dll";

        [DllImport(Kernel32_DllName)]
        private static extern bool AllocConsole();

        [DllImport(Kernel32_DllName)]
        private static extern bool FreeConsole();

        [DllImport(Kernel32_DllName)]
        private static extern IntPtr GetConsoleWindow();

        [DllImport(Kernel32_DllName)]
        private static extern int GetConsoleOutputCP();

        public static bool HasConsole
        {
            get { return GetConsoleWindow() != IntPtr.Zero; }
        }

        /// <summary>
        /// Creates a new console instance if the process is not attached to a console already.
        /// </summary>
        public static void Show()
        {
            //#if DEBUG
            if (!HasConsole)
            {
                AllocConsole();
                InvalidateOutAndError();
            }
            //#endif
        }

        /// <summary>
        /// If the process has a console attached to it, it will be detached and no longer visible. Writing to the System.Console is still possible, but no output will be shown.
        /// </summary>
        public static void Hide()
        {
            //#if DEBUG
            if (HasConsole)
            {
                SetOutAndErrorNull();
                FreeConsole();
            }
            //#endif
        }

        public static void Toggle()
        {
            if (HasConsole)
            {
                Hide();
            }
            else
            {
                Show();
            }
        }

        static void InvalidateOutAndError()
        {
            Type type = typeof(System.Console);

            System.Reflection.FieldInfo _out = type.GetField("_out",
                System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.NonPublic);

            System.Reflection.FieldInfo _error = type.GetField("_error",
                System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.NonPublic);

            System.Reflection.MethodInfo _InitializeStdOutError = type.GetMethod("InitializeStdOutError",
                System.Reflection.BindingFlags.Static | System.Reflection.BindingFlags.NonPublic);

            Debug.Assert(_out != null);
            Debug.Assert(_error != null);

            Debug.Assert(_InitializeStdOutError != null);

            _out.SetValue(null, null);
            _error.SetValue(null, null);

            _InitializeStdOutError.Invoke(null, new object[] { true });
        }

        static void SetOutAndErrorNull()
        {
            Console.SetOut(TextWriter.Null);
            Console.SetError(TextWriter.Null);
        }
    }
}
