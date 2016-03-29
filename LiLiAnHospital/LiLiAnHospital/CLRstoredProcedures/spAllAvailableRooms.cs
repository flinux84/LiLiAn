using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    /* List all rooms with free beds  */
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spAllAvailableRooms()
    {
        string procedureText =
            @"
            SELECT *
            FROM
                (SELECT Room.roomID, Room.numOfBeds, (Room.numOfBeds - COUNT(*)) AS numFreeBeds
                FROM Room
                JOIN Patient ON Patient.roomID = Room.roomID
                GROUP BY Room.roomID, Room.numOfBeds) AS NumFreeTable
            WHERE NumFreeTable.numFreeBeds > 0;
            ";

        using (SqlConnection connection = new SqlConnection("context connection=true")) {
            connection.Open();
            SqlCommand command = new SqlCommand(procedureText, connection);
            SqlDataReader reader = command.ExecuteReader();
            SqlContext.Pipe.Send(reader);
        }
    }
}
