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

namespace medications_test_1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            
             populategrid("SELECT *FROM Medications");
       
           // radioButton3.Checked = true;
        }
        void populategrid(string cmd)
        {
            var select = cmd;
            SqlConnection con = new SqlConnection("Data Source=PSYCHEE\\SQLEXPRESS;Initial Catalog=Medical Center;Integrated Security=True");
            var dataAdapter = new SqlDataAdapter(select, con);
            DataTable dtRecord = new DataTable();
            dataAdapter.Fill(dtRecord);
            dataGridView1.DataSource = dtRecord;
        }
       
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}