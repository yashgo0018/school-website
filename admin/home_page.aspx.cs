using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_home_page : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand upd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
        string query = "select * from home_slider";
        SqlDataAdapter adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        //repeater1.DataSource = ds;
        //repeater1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(FileUpload1.FileName);
        string filepath = "~/upload/slider/" + filename;
        FileUpload1.SaveAs(Server.MapPath(filepath));
        string query = "insert into home_slider values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + filepath + "')";
        upd = new SqlCommand(query, con);
        upd.ExecuteNonQuery();
        Response.Redirect("~/admin/home_page.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "insert into home_services values('" + TextBox4.Text + "', '" + TextBox5.Text + "')";
        upd = new SqlCommand(query, con);
        upd.ExecuteNonQuery();
        Response.Redirect("~/admin/home_page.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string query = "insert into home_services values('" + TextBox4.Text + "', '" + TextBox5.Text + "')";
        upd = new SqlCommand(query, con);
        upd.ExecuteNonQuery();
        Response.Redirect("~/admin/home_page.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        string query = "insert into home_services values('" + TextBox4.Text + "', '" + TextBox5.Text + "')";
        upd = new SqlCommand(query, con);
        upd.ExecuteNonQuery();
    }
}