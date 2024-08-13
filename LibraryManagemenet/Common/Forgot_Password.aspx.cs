using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Common_Forgot_Password : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }

    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from UserDetail_tb where Username='" + TextBox1.Text + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            MultiView1.SetActiveView(View2);

        }
        else
        {
            Label1.Text = "Invalued Username";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "select * from UserDetail_tb where Name='" + TextBox2.Text + "' and Phone='"+TextBox3.Text+ "' and Username='" + TextBox1.Text + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            MultiView1.SetActiveView(View3);

        }
        else
        {
            Label1.Text = "Invalid Try Again";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "select * from UserDetail_tb  where Name='" + TextBox2.Text + "' and Phone='" + TextBox3.Text + "' and Username='" + TextBox1.Text + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (TextBox4.Text == TextBox5.Text)
            {
                string up = "update UserDetail_tb set Password='" + TextBox5.Text + "' where Name='" + TextBox2.Text + "' and Phone='" + TextBox3.Text + "' and Username='" + TextBox1.Text + "'";
                int r = dm.For_Execution(up);
                if (r > 0)
                {
                    Response.Write("<script>alert('Password Updated')</script>");
                    
                }
            }
            else
            {
                Response.Write("<script>alert('Confirm Password Wrong')</script>");
            }

        }
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Common/Login.aspx");
    }
}