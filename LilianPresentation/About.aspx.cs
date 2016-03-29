using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source = 85.24.164.27; Initial Catalog = Hospital_LiLiAn; Persist Security Info = True; User ID = sa; Password = isabell");

        conn.Open();

        SqlCommand cmd = new SqlCommand("spDoctorsBornAfter", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@bornAfterParameter", BornAfterTxt.Text);
                
        //var dt = new DataTable();
        
        //GridView3.DataSource = dt;
        //GridView3.DataBind();
    }
}