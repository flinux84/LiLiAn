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
        SqlContext.Pipe.Send("This is my CLR SP Test crazy shit test CLR object stored procedure");
        // Put your code here
    }
}
