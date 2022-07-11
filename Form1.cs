using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Medications
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            int rowsCount = populategrid("SELECT * FROM Medications ORDER BY med_name");
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        int populategrid(string cmd)
        {
            var select = cmd;
            SqlConnection con=new SqlConnection("
        }

    }
}
