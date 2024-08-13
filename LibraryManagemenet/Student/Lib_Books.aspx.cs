using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Lib_Books : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = " select * from Book_tb ";
            DataSet ds = dm.For_Access(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName=="Book")
        {
            string str = "insert into Booking_tb values('" + e.CommandArgument.ToString() + "','" + Session["userid"] + "','" + DateTime.Now + "','pending','"+null+"')";
            int r = dm.For_Execution(str);
            if (r > 0)
            {
                HiddenField hidden = (HiddenField)e.Item.FindControl("HiddenField1");
                int sr = Convert.ToInt32(hidden.Value)-1;
                string update = "update Book_tb set Copy_no='" + sr.ToString() + "' where Id='" + e.CommandArgument.ToString() + "'";
                int s = dm.For_Execution(update);
                if (s > 0)
                {
                    Response.Write("<script>alert('Booked sucessfully')</script>");
                }
            }
        }
    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
    }
}