# IOT-PGO2-Databases

## Muziek Database (SQL)

- MySQL Server

The SQL database is set up in such a way that no incomplete rows can be inserted, when adding a new row, every field needs to be present (except for the \_ID field, this will be determined by the SQL server).

### Schema

| Column       | \_ID   | TITLE        | ARTIST       | YEAR     |
|:------------ |:------:|:------------:|:------------:|:--------:|
| **Datatype** | BIGINT | VARCHAR(255) | VARCHAR(255) | INT      |

#### \_ID
The ID of a song.  
A signed integer number between -9223372036854775808 and 9223372036854775807 (-2^63, 2^63 - 1)(both inclusive).  
This ID is unique for every song, the SQL database is set to use this as the primary key for each song, and to auto-increment the number for every row that is inserted.  

#### TITLE
The title of a song.  
This is a string between 0 and 255 characters long.  

#### ARTIST
The artist(s) of a song.  
This is a string between 0 and 255 characters long.  
When a song has multiple artists (listed as 'X and Y'), they will be separated by a comma (',').  
When a song has one artist featuring another (listed as 'X feat. Y'), they will be separated by a plus sign ('+').  
Combinations of these two are possible, the 'featuring' operator takes precendence over the 'and' operator.  

##### Examples:
[Promises, By Calvin Harris & Sam Smith](https://www.ultratop.be/nl/song/1b4a55/Calvin-Harris-&-Sam-Smith-Promises): "Calvin Harris,Sam Smith"  
[Spiegel, By Tourist LeMC ft. Raymond Van Het Groenewoud](https://www.ultratop.be/nl/song/1b7d65/Tourist-LeMC-feat.-Raymond-van-het-Groenewoud-Spiegel): "Tourist LeMC+Raymond Van Het Groenewoud"  
[Electricity, By Silk City & Dua Lipa ft. Diplo & Mark Ronson](https://www.ultratop.be/nl/song/1b5934/Silk-City-&-Dua-Lipa-feat.-Diplo-&-Mark-Ronson-Electricity): "Silk City,Dua Lipa+Diplo,Mark Ronson"  


#### YEAR
This is the year the song was first released.  
This is a signed integer number between -2147483648 and 2147483647 (-2^32, 2^32 - 1)(both inclusive).  
This year is relative to 0 B.C. on the Gregorian Calendar (So Jesus was born in the year '0', Neil Armstrong landed on the moon in '1969' and SQL first appeared in '1974').  

## Prepared Queries
The SQL folder contains a number of prepared queries.  
Each field that needs to be filled in a query is replaced by a '?' character.  

### [seach_by_exact_title.sql](SQL/search_by_exact_title.sql)
_Returns_: (\_ID, TITLE, ARTIST, YEAR) for every row where TITLE is equal to '?'.  
_Parameters_: A string equal to the TITLE of the song you're looking for.

### [search_by_artist.sql](SQL/search_by_artist.sql)
_Returns_: (\_ID, TITLE, ARTIST, YEAR) for every row where ARTIST contains '?'.  
_Parameters_: (Part of) the name of an artist you're looking for.

## Vote Database (NoSQL)

- MongoDB
- Document Database
