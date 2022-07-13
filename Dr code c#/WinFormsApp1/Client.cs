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
    public partial class Client : Form
    {
        public Client(String username)
        {
            InitializeComponent();
            label2.Text = username;
            int rowsCount=populategrid("SELECT *FROM film ORDER BY name");
            label4.Text = rowsCount.ToString();
            radioButton2.Checked = true;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        int populategrid(string cmd)
        {
            var select =  cmd;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-16N9DM3\\SQLEXPRESS;Initial Catalog=test2;Integrated Security=True");
            var dataAdapter = new SqlDataAdapter(select, con);

            DataTable dtRecord = new DataTable();
            dataAdapter.Fill(dtRecord);
            dataGridView1.DataSource = dtRecord;
            return dtRecord.Rows.Count;
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
                populategrid("SELECT *FROM film ORDER BY Date_release");
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
                populategrid("SELECT *FROM film ORDER BY name");
        }
    }

  
}
