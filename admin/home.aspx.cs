using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class admin_home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand upd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.FileName);
        string filepath = "~/upload/logo/" + filename.Split('.')[0] + ".ico";
        FileUpload1.SaveAs(Server.MapPath(filepath));
        string query = "update site_identity set logo='" + filepath + "'";
        upd = new SqlCommand(query, con);
        upd.ExecuteNonQuery();
        Response.Redirect("home.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "update site_identity set sitetitle='" + TextBox1.Text + "'";
        upd = new SqlCommand(str, con);
        upd.ExecuteNonQuery();
        Response.Redirect("home.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "update site_identity set tagline='" + TextBox2.Text + "'";
        upd = new SqlCommand(str, con);
        upd.ExecuteNonQuery();
        Response.Redirect("home.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "update site_identity set tagline=";
        Response.Redirect("home.aspx");
    }
}