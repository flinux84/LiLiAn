using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures {
    /* List free rooms in a department */

    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spAvailableRoomsInDepartment(string departmentName) {

        SqlParameter departmentParameter = new SqlParameter("@departmentName", SqlString.Null);
        departmentParameter.Value = departmentName;
        departmentParameter.Direction = ParameterDirection.Input;

        string procedureText =
            @"
            SELECT *
            FROM
                (SELECT Room.roomID, Room.numOfBeds, (Room.numOfBeds - COUNT(*)) AS numFreeBeds, Department.departmentName
                FROM Room
                JOIN Patient ON Patient.roomID = Room.roomID
                JOIN Department On Department.departmentID = Room.departmentID
                GROUP BY Room.roomID, Department.departmentName, Room.numOfBeds) AS NumFreeTable
            WHERE NumFreeTable.numFreeBeds > 0 AND (departmentName = @departmentName);
            ";

        using (SqlConnection connection = new SqlConnection("context connection=true")) {
            connection.Open();
            SqlCommand command = new SqlCommand(procedureText, connection);
            command.Parameters.Add(departmentParameter);
            SqlDataReader reader = command.ExecuteReader();
            SqlContext.Pipe.Send(reader);
        }
    }
}

