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
    public partial class Register : Form
    {
        public Register()
        {
            InitializeComponent();
        }


        private void button1_Click_1(object sender, EventArgs e)
        {

            Registeration();
        }
        void Registeration()
        {
            //1- step is to take username and password 
            string username = textBox1.Text.ToString();
            string password = textBox2.Text.ToString();
            string property = "c";
            //MODIFY DATASOURCE
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D9LP0SJ\\SQLEXPRESS;Initial Catalog=medicalCenter;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Users values(@p1,@p2,@p3)", con);
            cmd.Parameters.AddWithValue("@p1", textBox1.Text);
            cmd.Parameters.AddWithValue("@p2", textBox2.Text);
            cmd.Parameters.AddWithValue("@p3", property);
            int i = 0;
            con.Open();
            try
            {
                i = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                MessageBox.Show("choose another username (same username exists)");
            }
            con.Close();
            if (i > 0)
            {
                MessageBox.Show("Registration successfully completed !!");
            }
            else
                MessageBox.Show("bad request try again later !");
        }
    }
}