using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spListDepartments()
    {
        using (SqlConnection connection = new SqlConnection("context connection=true"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM Department", connection);
            SqlContext.Pipe.ExecuteAndSend(command);
        }
    }
}
