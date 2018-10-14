using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand check;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();

        string str1 = "select * from site_identity";
        SqlCommand sel = new SqlCommand(str1, con);
        SqlDataReader dr1 = sel.ExecuteReader();
        if (dr1.Read())
        {
            favicon.Attributes["href"] = dr1[2].ToString();
        }
        dr1.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from user_login where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
        check = new SqlCommand(str, con);
        SqlDataReader dr = check.ExecuteReader();
        if (dr.Read())
        {
            if (RememberMe.Checked==true)
            {
                Response.Cookies["user"].Value = dr[0].ToString();
                Response.Redirect("home.aspx");
            }
            else
            {
                Session["Name"] = dr[0];
                Response.Redirect("home.aspx");
            }
        }
        else
        {
            label1.Text = "!!!Username and Password didn't match";
        }
        dr.Close();
    }
}