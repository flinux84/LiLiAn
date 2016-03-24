CREATE TABLE [dbo].[Treatment]
(
	[treatmentID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [primaryTreatment] NVARCHAR(50) NOT NULL, 
    [secondaryTreatment] NVARCHAR(50) NULL
)
