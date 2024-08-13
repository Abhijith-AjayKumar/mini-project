using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student_Home : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str="select * from UserDetail_tb where Id='"+Session["userid"]+"'";
        DataSet ds = dm.For_Access(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            txtname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtgender.Text = ds.Tables[0].Rows[0][2].ToString();
            txtage.Text = ds.Tables[0].Rows[0][3].ToString();
            txtaddress.Text = ds.Tables[0].Rows[0][4].ToString();
            txtmobile.Text = ds.Tables[0].Rows[0][5].ToString();
        }
    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/Profile_Edit.aspx");
    }

    
}