using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Common_Login : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Common/Registration.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from UserDetail_tb where Username='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["userid"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("~/Student/Student_Home.aspx");
        }
        else
        {
            string str1 = "select * from Admin_tb where Username='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'";
            DataSet ds1 = dm.For_Access(str1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Session["adminid"] = ds1.Tables[0].Rows[0][0].ToString();
                Response.Redirect("~/Admin/Admin_Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid...')</script>");
            }
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Common/Forgot_Password.aspx");
    }
}