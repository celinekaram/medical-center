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
    public partial class DrList : Form
    {
        public DrList()
        {
            InitializeComponent();
            int rowsCount = populategrid("SELECT salary FROM Employee WHERE pos_type='Doctor' ORDER BY emp_name");
            radioButton3.Checked = true;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        int populategrid(string cmd)
        {
            var select = cmd;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D9LP0SJ\\SQLEXPRESS;Initial Catalog=medicalCenter;Integrated Security=True");
            var dataAdapter = new SqlDataAdapter(select, con);

            DataTable dtRecord = new DataTable();
            dataAdapter.Fill(dtRecord);
            dataGridView1.DataSource = dtRecord;
            return dtRecord.Rows.Count;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
                populategrid("SELECT emp_name, salary FROM Employee WHERE pos_type='Doctor' ORDER BY salary DESC");
        }

        private void radioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton3.Checked == true)
                populategrid("SELECT emp_name, salary FROM Employee WHERE pos_type='Doctor' ORDER BY emp_name");
        }
    }
}
