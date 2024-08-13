using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Booking_History : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select Booking_tb.Id as bookingId,Booking_tb.Date,Booking_tb.Status,Booking_tb.Return_Date,Book_tb.Id as bid,Book_tb.Name as bname,Book_tb.Type,Book_tb.Author,Book_tb.Description,Book_tb.C_photo,UserDetail_tb.* from Booking_tb inner join Book_tb on Book_tb.Id=Booking_tb.BookId inner join UserDetail_tb on UserDetail_tb.Id=Booking_tb.BuyerId";
        DataSet ds = dm.For_Access(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}