using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_View_Return_Books : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from Booking_tb where Status='Returned'";
        DataSet ds = dm.For_Access(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select UserDetail_tb.Name,UserDetail_tb.Phone,Book_tb.Name as bookname,Book_tb.Copy_no,Booking_tb.* from Booking_tb inner join Book_tb on Book_tb.Id=Booking_tb.BookId inner join UserDetail_tb on UserDetail_tb.Id=Booking_tb.BuyerId where Booking_tb.Id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Access(str);
        if(ds.Tables[0].Rows.Count>0)
        {
            Label2.Text = ds.Tables[0].Rows[0][0].ToString();
            Label3.Text = ds.Tables[0].Rows[0][1].ToString();
            Label4.Text = ds.Tables[0].Rows[0][2].ToString();
            Label9.Text = ds.Tables[0].Rows[0][3].ToString();
            Label8.Text = ds.Tables[0].Rows[0][4].ToString();
            Label5.Text = ds.Tables[0].Rows[0][5].ToString();
            Label1.Text = ds.Tables[0].Rows[0][6].ToString();
            Label6.Text = ds.Tables[0].Rows[0][7].ToString();
            Label7.Text = ds.Tables[0].Rows[0][9].ToString();
        }
        Panel1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string var = Label9.Text;
        int val = Convert.ToInt32(var)+1;
        string str = "update Book_tb set Copy_no='" + val +"' where Id='" + GridView1.SelectedRow.Cells[1].Text + "'";
        int r = dm.For_Execution(str);
        if(r>0)
        {
            
        }
    }
}