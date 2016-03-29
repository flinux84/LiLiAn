using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ddlDb_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(ddlDb.SelectedValue))
        {
            var dbPath = Server.MapPath(@"\App_Data\Database1.mdf");
            var scon = "Data Source=85.24.164.27;Initial Catalog=Hospital_LiLiAn;Persist Security Info=True;User ID=sa;Password=isabell";
            var cmd = "select * from " + ddlDb.SelectedValue;

            var dt = new DataTable();
            var da = new SqlDataAdapter(cmd, scon);
            da.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}