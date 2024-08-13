using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Booking_History : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select Booking_tb.*,Book_tb.Name,Book_tb.C_photo from Booking_tb inner join Book_tb on Book_tb.Id=Booking_tb.BookId where Booking_tb.BuyerId='" + Session["userid"].ToString() + "'";
        DataSet ds = dm.For_Access(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}