using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spNumOfPatientsPerTreatment ()
    {
        string sqlselect = @"DECLARE @treatments INT
                            DECLARE @numOfPatients INT
                            DECLARE @counter INT
                            DECLARE @treatmentName NVARCHAR(50)

                            SET @treatments = (SELECT MAX(treatmentID) FROM Treatment)
                            SET @counter = 1

                            WHILE @counter <= @treatments
	                            BEGIN
		                            SET @treatmentName = (SELECT Treatment.primaryTreatment FROM Treatment WHERE Treatment.treatmentID = @counter)
		                            SET @numOfPatients = (SELECT COUNT(*) FROM Patient WHERE Patient.treatmentID = @counter)
		                            PRINT @treatmentName + ' treatment for ' + CAST(@numOfPatients AS VARCHAR(3)) + ' patients'
		                            SET @counter += 1
	                            END;";

        using (SqlConnection connection = new SqlConnection("context connection=true"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand(sqlselect, connection);
            SqlContext.Pipe.ExecuteAndSend(command);
            //SqlDataReader r = command.ExecuteReader();
            //SqlContext.Pipe.Send(r);
        }
    }
}
