using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand sel;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from home_slider", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }
}