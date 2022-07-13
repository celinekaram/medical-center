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
       public static SqlConnection con = new SqlConnection("Data Source=DESKTOP-D9LP0SJ\\SQLEXPRESS;Initial Catalog=medical center;Integrated Security=True");
    }
}
