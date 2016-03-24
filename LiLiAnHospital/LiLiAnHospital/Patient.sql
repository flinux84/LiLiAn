CREATE TABLE [dbo].[Patient]
(
	[patientID] INT NOT NULL PRIMARY KEY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [medicalSymptom] NVARCHAR(100) NULL, 
    [roomID] INT NULL, 
    [diagnoseID] INT NULL, 
    [birthDate] DATE NOT NULL, 
    [controlNumber] NCHAR(4) NOT NULL
)
