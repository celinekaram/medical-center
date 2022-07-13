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

namespace WinFormsApp1
{
    public partial class Admin : Form
    {
        public Admin(string username)
        {
            InitializeComponent();

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D9LP0SJ\\SQLEXPRESS;Initial Catalog=medicalCenter;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select department_name, floor_nb from Departements", con);
        }
    }
}
