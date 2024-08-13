using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Common_Registration : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into UserDetail_tb values('" + txtname.Text + "','" + txtgender.Text + "','" + txtage.Text + "','" + txtaddress.Text + "','" + txtmobile.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "')";
        int r = dm.For_Execution(str);
        if(r>0)
        {
            Response.Redirect("~/Common/Login.aspx");
        }
    }
}