CREATE TABLE [dbo].[Diagnose]
(
	[diagnoseID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [diagnoseName] NVARCHAR(50) NOT NULL, 
    [farmaceuticalID] INT NOT NULL, 
    [departmentID] INT NOT NULL, 
    CONSTRAINT [FK_Diagnose_Farmaceutical] FOREIGN KEY ([farmaceuticalID]) REFERENCES [Farmaceutical]([farmaceuticalID]), 
    CONSTRAINT [FK_Diagnose_Department] FOREIGN KEY ([departmentID]) REFERENCES [Department]([departmentID])
)
