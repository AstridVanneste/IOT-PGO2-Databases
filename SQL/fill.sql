BULK INSERT MUSIC FROM 'Music.csv' WITH
(
	FIRSTROW = 1,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n',
);