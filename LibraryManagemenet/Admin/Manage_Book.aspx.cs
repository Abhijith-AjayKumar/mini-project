using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Manage_Book : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str = "select * from Book_tb";
            DataSet ds = dm.For_Access(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = "select * from Book_tb where Id='"+ GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.For_Access(str);
        if(ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = ds.Tables[0].Rows[0][0].ToString();
            txtname.Text = ds.Tables[0].Rows[0][1].ToString();
            txttype.Text = ds.Tables[0].Rows[0][2].ToString();
            txtauthor.Text = ds.Tables[0].Rows[0][3].ToString();
            txtdescript.Text = ds.Tables[0].Rows[0][4].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][5].ToString();
            txtnc.Text = ds.Tables[0].Rows[0][6].ToString();
        }
        Panel1.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "~/Admin/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));
            Image1.ImageUrl = path;
        }
        string str = "update Book_tb set Name='" + txtname.Text + "',Type='" + txttype.Text + "',Author='" + txtauthor.Text + "',Description='" + txtdescript.Text + "',C_photo='" + Image1.ImageUrl + "',Copy_no='" + txtnc.Text + "' where id='"+ Label1.Text+"'";
        int r = dm.For_Execution(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Book Updated added sucessfully')</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string str = "delete from Book_tb where Id='" +Label1.Text+ "'";
        int r = dm.For_Execution(str);
        if (r > 0)
        {
            Response.Write("<script>alert('deleted')</script>");
        }
    }
}