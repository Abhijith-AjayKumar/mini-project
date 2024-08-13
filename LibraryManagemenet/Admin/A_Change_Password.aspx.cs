using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_A_Change_Password : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from Admin_tb where Id='" + Session["adminid"] + "' and  Password='" + TextBox1.Text + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                string up = "update Admin_tb set Password='" + TextBox3.Text + "' where Id='" + Session["adminid"] + "'";
                int r = dm.For_Execution(up);
                if (r > 0)
                {
                    //  Response.Write("<script>alert('Password Updated')</script>");
                    Response.Redirect("~/Admin/Admin_Home.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Confirm Password Wrong')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('Wrong Password')</script>");
        }
    }
}