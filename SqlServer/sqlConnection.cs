using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace SqlServer
{
  public  class sqlConnection
    {
        SqlConnection sqlCon;
        SqlCommand sqlCmd;
        String connection_String = "Data Source=DESKTOP-D8TV9DE\\SQLEXPRESS;Initial Catalog=DogVilla;Integrated Security=True";
        SqlDataReader sqlDatareader;



        public void AddDelUpdate(String sqlStatement)
        {

            sqlCon = new SqlConnection(connection_String);
            sqlCon.Open();


            sqlCmd = new SqlCommand(sqlStatement, sqlCon);
            sqlCmd.ExecuteNonQuery();

            sqlCon.Close();

        }

        // this code is used to in the details of a prticuar query from the table using the sql statement with the help of where clause 
        public DataTable SearchRecord(String qry)
        {
            DataTable tbl = new DataTable();


            sqlCon = new SqlConnection(connection_String);

            sqlCon.Open();
            sqlCmd = new SqlCommand(qry, sqlCon);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlCon.Close();

            return tbl;
        }




    }
}
