﻿CREATE TABLE [dbo].[Nurse]
(
	[nurseID] INT NOT NULL PRIMARY KEY, 
    [birthDate] DATE NOT NULL, 
	[controlDigits] NCHAR(4) NOT NULL,
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [departmentID] INT NOT NULL, 
    CONSTRAINT [FK_Nurse_Department] FOREIGN KEY ([departmentID]) REFERENCES [Department]([departmentID]) 
    
)
