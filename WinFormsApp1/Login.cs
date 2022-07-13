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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            /// trying to login 
            //1- step is to take username and password 
            string username = textBox1.Text.ToString();
            string password = textBox2.Text.ToString();

            //2- making request to database to see if users exist and the type of the user//
            //Connection String   
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-D9LP0SJ\\SQLEXPRESS;Initial Catalog=medicalCenter;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from Users where username=@username and password =@password", con);
            cmd.Parameters.AddWithValue("@username", textBox1.Text);
            cmd.Parameters.AddWithValue("@password", textBox2.Text);
            ///
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //Connection open here   
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                MessageBox.Show("Successfully loged in");

                foreach (DataRow row in dt.Rows)
                                {
                                if (row["properties"].ToString() == "a")
                                    {
                        //if admin redirect to admin form 
                        MessageBox.Show("Welcome Admin!");
                        Admin adminForm = new Admin(textBox1.Text);
                        adminForm.Show();

                                    }
                    else if (row["properties"].ToString() == "d")
                    {
                        //if user redirect to userform
                        Doctor doctorForm = new Doctor(textBox1.Text);
                        doctorForm.Show();
                    }
                    else if(row["properties"].ToString() == "c")
                                    {
                                        //if user redirect to userform
                                        Patient patientForm = new Patient(textBox1.Text);
                                        patientForm.Show();
                                    }

                                }
                                
                                this.Hide();
            }

            else
            {
                // if not a user in database can not redirect to any form// 
                MessageBox.Show("Please enter Correct Username and Password");
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Register registerForm = new Register();
            registerForm.Show();
        }
    }
}        