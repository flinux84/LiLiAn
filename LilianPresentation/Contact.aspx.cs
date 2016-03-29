using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : Page
{
    System.Text.StringBuilder stringbuilder = new System.Text.StringBuilder();

    protected void Page_Load(object sender, EventArgs e)
    {
        GetTreatments();
        GetDoctors();

    }
    protected void GetTreatments()
    {
        SqlConnection conn = new SqlConnection(@"Data Source = 85.24.164.27; Initial Catalog = Hospital_LiLiAn; Persist Security Info = True; User ID = sa; Password = isabell");

        conn.Open();

        SqlCommand cmd = new SqlCommand("spNumOfPatientsPerTreatment", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        conn.InfoMessage += new SqlInfoMessageEventHandler(cn_InfoMessage);

        

        cmd.ExecuteNonQuery();
        TextBox.TextMode = TextBoxMode.MultiLine;
        TextBox.Text = stringbuilder.ToString();
    }

    protected void GetDoctors() {
        //SqlConnection conn = new SqlConnection(@"Data Source = 85.24.164.27; Initial Catalog = Hospital_LiLiAn; Persist Security Info = True; User ID = sa; Password = isabell");

        //conn.Open();

        //SqlCommand cmd = new SqlCommand("spDoctorsBornAfter", conn);
        //cmd.CommandType = CommandType.StoredProcedure;
        //SqlParameter sqlp = new SqlParameter("@bornAfterDate", SqlDbType.Date);
        
        

        //cmd.ExecuteNonQuery();


        
    }

    void cn_InfoMessage(object sender, SqlInfoMessageEventArgs e)
    {
        stringbuilder.AppendLine(e.Message);
    }

}