using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spHospitalizedDiagnosedTreatment ()
    {
        string storedProcedure =
        @"SELECT CONCAT(P.firstName, P.lastName) AS 'Full Name',
        diagnoseName AS Diagnose,
        P.roomID AS Room,
        D.departmentName AS Department,
        P.medicalSymptom AS 'Patients symptoms',
        T.primaryTreatment AS 'Primary Treatment'
        FROM Patient AS P
        RIGHT OUTER JOIN Room AS R ON P.roomID = R.roomID
        INNER JOIN Department AS D ON R.departmentID = D.departmentID
        RIGHT OUTER JOIN Treatment AS T ON P.treatmentID = T.treatmentID
        RIGHT OUTER JOIN Diagnose AS Dia ON P.diagnoseID = Dia.diagnoseID
        WHERE P.treatmentID IS NOT NULL;";

        SqlCommand sq = new SqlCommand(storedProcedure);
        SqlContext.Pipe.ExecuteAndSend(sq);
    }
}
