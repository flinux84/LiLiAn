using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spHospitalizedNoDiagnoseOrTreatment ()
    {
        string sqlselect = @"SELECT CONCAT(P.firstName, P.lastName) AS 'Full Name',
        P.roomID AS Room,
        D.departmentName AS Department,
        P.medicalSymptom AS 'Patients symptoms',
        diagnoseName AS Diagnose,
        T.primaryTreatment AS 'Primary Treatment'
        FROM Patient AS P
        RIGHT OUTER JOIN Room AS R ON P.roomID = R.roomID
        INNER JOIN Department AS D ON R.departmentID = D.departmentID
        LEFT OUTER JOIN Treatment AS T ON P.treatmentID = T.treatmentID
        LEFT OUTER JOIN Diagnose AS Dia ON P.diagnoseID = Dia.diagnoseID
        WHERE P.diagnoseID IS NULL OR P.treatmentID IS NULL;";

        SqlCommand sq = new SqlCommand(sqlselect);
        SqlContext.Pipe.ExecuteAndSend(sq);
    }
}
