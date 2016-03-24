CREATE TABLE [dbo].[Room]
(
	[roomID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [departmentID] INT NOT NULL, 
    [numOfBeds] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_Room_Department] FOREIGN KEY ([departmentID]) REFERENCES [Department]([departmentID])
)
