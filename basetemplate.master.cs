using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class basetemplate : System.Web.UI.MasterPage
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
        SqlCommand id = new SqlCommand("select * from site_identity", con);
        SqlDataReader dr = id.ExecuteReader();
        if (dr.Read())
        {
            Image1.ImageUrl = dr[2].ToString();
            favicon.Attributes["href"] = dr[2].ToString();
        }
        dr.Close();
        
    }
}