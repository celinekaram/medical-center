using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WinFormsApp1
{
   public static class DBConnection
    {
       public static SqlConnection con = new SqlConnection("Data Source=DESKTOP-16N9DM3\\SQLEXPRESS;Initial Catalog=test2;Integrated Security=True");
    }
}
