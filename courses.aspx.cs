using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class courses : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=YASH-PC\SQLEXPRESS; Initial Catalog=school; Integrated Security=true;");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from courses", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        repeater1.DataSource = ds;
        repeater1.DataBind();
    }
}