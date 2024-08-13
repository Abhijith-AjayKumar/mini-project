using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_View_book_Register : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select Booking_tb.Id as bookingId,Booking_tb.Date,Booking_tb.Status,Book_tb.* from Booking_tb inner join Book_tb on Book_tb.Id=Booking_tb.BookId where BuyerId='" + Session["userid"].ToString() + "'";

            DataSet ds = dm.For_Access(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds;
                DataList1.DataBind();

            }
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "update booking_tb set Status='Returned', Return_Date='" + DateTime.Now + "' where BuyerId='" + Session["userid"] + "'";
        int r = dm.For_Execution(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Book Return sucessfully')</script>"); 
        }
    }
}