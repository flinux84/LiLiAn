using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spNotHospitalizedDiagnosedTreatment ()
    {
        string sqlselect = @"SELECT CONCAT(P.firstName, P.lastName) AS 'Full Name',
                            P.medicalSymptom AS 'Patients symptoms',
                            P.birthDate AS 'Date of birth',
                            P.medicalSymptom AS 'Patients symptoms',
                            Dia.diagnoseName AS Diagnose,
                            T.primaryTreatment AS 'Primary Treatment',
                            T.secondaryTreatment AS 'Secondary Treatment'
                            FROM Patient AS P
                            RIGHT OUTER JOIN Treatment AS T ON P.treatmentID = T.treatmentID
                            LEFT OUTER JOIN Diagnose AS Dia ON P.diagnoseID = Dia.diagnoseID
                            WHERE P.roomID IS NULL AND P.diagnoseID IS NOT NULL;";

        using (SqlConnection connection = new SqlConnection("context connection=true"))
        {
            connection.Open();
            SqlCommand command = new SqlCommand(sqlselect, connection);
            SqlDataReader r = command.ExecuteReader();
            SqlContext.Pipe.Send(r);
        }
    }
}
