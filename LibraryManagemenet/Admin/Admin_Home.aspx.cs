using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Admin_Home : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from Admin_tb where Id='" + Session["adminid"] + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Add_Book.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Common/Login.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Manage_Book.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Manage_buyer.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Booking_History.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/View_Return_Books.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/A_Change_Password.aspx");
    }
}
