using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public partial class StoredProcedures
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void spDoctorsBornAfter(DateTime? bornAfterDate)
    {
        SqlParameter bornAfterParameter = new SqlParameter();
        bornAfterParameter.IsNullable = true;
        bornAfterParameter.DbType = DbType.Date;
        bornAfterParameter.Value = bornAfterDate;
        bornAfterParameter.ParameterName = "@bornAfterDate";
        
        string procedureText =
            @"
            IF @bornAfterDate IS NULL
            BEGIN
                SET @bornAfterDate = '1978-02-02'
            END
            SELECT CONCAT(Doctor.firstName,Doctor.lastName) AS fullName, Doctor.birthDate, YEAR(SYSDATETIME()) - YEAR(Doctor.birthDate) AS age
            FROM Doctor
            WHERE Doctor.birthDate > @bornAfterDate
            ORDER BY age;
            ";

        using (SqlConnection connection = new SqlConnection("context connection=true")) {
            connection.Open();
            SqlCommand command = new SqlCommand(procedureText, connection);
            
            command.Parameters.Add(bornAfterParameter);
            
            SqlDataReader reader = command.ExecuteReader();
            SqlContext.Pipe.Send(reader);
        }
    }
}
