CREATE TABLE [dbo].[Farmaceutical]
(
	[farmaceuticalID] INT NOT NULL PRIMARY KEY, 
    [farmaceuticalName] NVARCHAR(50) NOT NULL, 
    [brand] NVARCHAR(50) NOT NULL, 
    [manufacturer] NVARCHAR(50) NOT NULL, 
    [medicalUse] NVARCHAR(50) NOT NULL, 
    [patent] DATE NOT NULL
)
