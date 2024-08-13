using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Profile_Edit : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            data();
        }
    }
    
    public void data()
    {
        string str = "select * from UserDetail_tb where ID='" + Session["userid"] + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtgender.Text = ds.Tables[0].Rows[0][2].ToString();
            txtage.Text = ds.Tables[0].Rows[0][3].ToString();
            txtaddress.Text = ds.Tables[0].Rows[0][4].ToString();
            txtmobile.Text = ds.Tables[0].Rows[0][5].ToString();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "update UserDetail_tb set Name='" + txtname.Text + "',Gender='" + txtgender.Text + "',Age='" + txtage.Text + "',Address='" + txtaddress.Text + "',Phone='" + txtmobile.Text + "' where Id='" + Session["userid"] + "'";
        int r = dm.For_Execution(str);
        if (r > 0)
        {
            data();
            Response.Redirect("~/Student/Student_Profile.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "delete from UserDetail_tb where Id='" + Session["userid"] + "'";
        int r = dm.For_Execution(str);
        if(r>0)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Common/Login.aspx?");
        }
    }
}