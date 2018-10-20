/*	The music database contains only a single table, the Music table	*/

/* Create a Database to work with */
CREATE DATABASE MUSIC_DB;

/* Set the Music DB to be the active DB */
USE MUSIC_DB;

/* Clean up any leftovers */
DROP TABLE IF EXISTS MUSIC;

/*	Create the music table	*/
CREATE TABLE MUSIC (_ID		BIGINT	 		PRIMARY KEY NOT NULL AUTO_INCREMENT,	/*	Song ID								*/
					TITLE	VARCHAR(255)	NOT NULL,								/*	Song Title	(Max. 255 Characters)	*/
					ARTIST	VARCHAR(255)	NOT NULL,								/*	Artist(s)	(Max. 255 Characters)	*/
					YEAR	INTEGER			NOT NULL);								/*	Year		32-bit signed integer	*/