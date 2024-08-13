using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Datamanipulation
/// </summary>
public class Datamanipulation
{
    SqlConnection con;
    public Datamanipulation()
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\abhijith\source\repos\LibraryManagemenet\LibraryManagemenet\App_Data\Database.mdf;Integrated Security=True");
    }
    public int For_Execution(string str)
    {
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        return (r);
    }
    public DataSet For_Access(string str)
    {
        SqlDataAdapter adpt = new SqlDataAdapter(str,con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
        return (ds);
    }
}