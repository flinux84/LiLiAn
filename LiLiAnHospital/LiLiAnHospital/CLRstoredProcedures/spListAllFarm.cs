using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void ListAllFarm ()
    {
        string storedProcedure =
            @"SELECT brand
            FROM Farmaceutical
            WHERE brand='Complera';";

        SqlCommand sq = new SqlCommand(storedProcedure);
        SqlContext.Pipe.ExecuteAndSend(sq);
        
        //SqlDataReader reader = sq.ExecuteReader();
        //using(reader) {
        //    while (reader.Read())
        //        SqlContext.Pipe.Send(reader.GetSqlValue(0).ToString());
        //}
        // Put your code here
    }
}
