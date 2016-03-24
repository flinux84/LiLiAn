CREATE TABLE [dbo].[Patient]
(
	[patientID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL,
	[birthDate] DATE NOT NULL, 
    [controlDigits] NCHAR(4) NOT NULL,
    [medicalSymptom] NVARCHAR(100) NULL, 
    [roomID] INT NULL, 
    [diagnoseID] INT NULL, 
    [treatmentID] INT NULL, 
    CONSTRAINT [FK_Patient_Room] FOREIGN KEY ([roomID]) REFERENCES [Room]([roomID]), 
    CONSTRAINT [FK_Patient_Diagnose] FOREIGN KEY ([diagnoseID]) REFERENCES [Diagnose]([diagnoseID]), 
    CONSTRAINT [FK_Patient_Treatment] FOREIGN KEY ([treatmentID]) REFERENCES [Treatment]([treatmentID])
)
