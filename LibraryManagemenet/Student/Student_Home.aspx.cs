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
        string str = "select * from UserDetail_tb where Id='" + Session["userid"] + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/Student_Profile.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/Lib_Books.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/View_book_Register.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/Booking_History.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Student/B_Change_password.aspx");
    }
}