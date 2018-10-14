using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_admin : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand sel;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Browser.Cookies)
        {
            if (Request.Cookies["user"] != null)
            {
                Label3.Text = Request.Cookies["user"].Value;
            }
            else if (Session["Name"] != null)
            {
                Label3.Text = Session["Name"].ToString(); 
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
        string str = "select * from site_identity";
        sel = new SqlCommand(str, con);
        SqlDataReader dr = sel.ExecuteReader();
        if (dr.Read()){
            Label1.Text = dr[0].ToString();
            Label2.Text = dr[1].ToString();
            Image1.ImageUrl = dr[2].ToString();
            favicon.Attributes["href"] = dr[2].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Name"] = null;
        if (Request.Cookies["user"] != null)
        {
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(-1);
        }
        Response.Redirect("~/home.aspx");
    }
}
