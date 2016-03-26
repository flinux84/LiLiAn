using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spNotHospitalizedNoDiagnoseOrTreatment ()
    {
        string sqlselect = @"SELECT CONCAT(P.firstName, P.lastName) AS 'Full Name',
                            P.medicalSymptom AS 'Patients symptoms',
                            P.birthDate AS 'Date of birth'
                            FROM Patient AS P
                            WHERE P.roomID IS NULL AND (P.diagnoseID IS NULL OR P.treatmentID IS NULL);";

        using (SqlConnection connection = new SqlConnection("context connection=true"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand(sqlselect, connection);
            SqlDataReader r = command.ExecuteReader();
            SqlContext.Pipe.Send(r);
        }
    }
}