using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spGetAvailableRoomsInDepartment ()
    {
        string procedureCode =
            @"
            SELECT roomNumber as Room.roomID
            FROM Room
                JOIN 
            WHERE
            ";

        // Put your code here
    }
}
