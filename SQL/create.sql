/*	The music database contains only a single table, the Music table	*/

/*	Music Table	*/
CREATE TABLE MUSIC (_ID		BIGINT	 		PRIMARY KEY NOT NULL AUTO_INCREMENT,	/*	Song ID								*/
					TITLE	VARCHAR(255)	NOT NULL,								/*	Song Title	(Max. 255 Characters)	*/
					ARTIST	VARCHAR(255)	NOT NULL,								/*	Artist(s)	(Max. 255 Characters)	*/
					YEAR	INTEGER			NOT NULL);								/*	Year		32-bit signed integer	*/