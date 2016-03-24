﻿CREATE TABLE [dbo].[Patient]
(
	[patientID] INT NOT NULL PRIMARY KEY, 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL,
	[birthDate] DATE NOT NULL, 
    [controlDigits] NCHAR(4) NOT NULL,
    [medicalSymptom] NVARCHAR(100) NULL, 
    [roomID] INT NULL, 
    [diagnoseID] INT NULL
)
