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

        private void button1_Click(object sender, EventArgs e)
        {


            Registration();

        }


        void Registration()
        {
            //1- step is to take username and password 
            string username = textBox1.Text.ToString();
            string password = textBox2.Text.ToString();
            bool isadmin = false;

            //2- making request to database to see if users exist and the type of the user//
            //Connection String   
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-16N9DM3\\SQLEXPRESS;Initial Catalog=test2;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Users values(@p1,@p2,@p3)", con);
            cmd.Parameters.AddWithValue("@p1", textBox1.Text);
            cmd.Parameters.AddWithValue("@p2", textBox2.Text);
            cmd.Parameters.AddWithValue("@p3", isadmin);

            //Connection open here   
            con.Open();
            int i = 0;
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
                Client clientForm = new Client(textBox1.Text);
                clientForm.Show();
            }
            else
                MessageBox.Show("bad request try again later !1");
            //////////////////////////////////////////
        }

    }
}
