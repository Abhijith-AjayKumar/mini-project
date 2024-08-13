using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Add_Book : System.Web.UI.Page
{
    Datamanipulation dm = new Datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "~/Admin/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));
            img.ImageUrl = path;
        }
        string str = "insert into Book_tb values('" + txtname.Text + "','" + txttype.Text + "','" + txtauthor.Text + "','" + txtdescription.Text + "','" + img.ImageUrl + "','" + txtcopies.Text + "')";
        int r = dm.For_Execution(str);
        if(r > 0)
        {
            Response.Write("<script>alert('Book added sucessfully')</script>");
        }
    }
}