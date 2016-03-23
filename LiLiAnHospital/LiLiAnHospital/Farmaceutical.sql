CREATE TABLE [dbo].[Farmaceutical]
(
	[farmaceuticalID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [farmaceuticalName] NVARCHAR(100) NOT NULL, 
    [brand] NVARCHAR(100) NOT NULL, 
    [manufacturer] NVARCHAR(50) NOT NULL, 
    [medicalUse] NVARCHAR(150) NOT NULL, 
    [patent] DATE NOT NULL
)
