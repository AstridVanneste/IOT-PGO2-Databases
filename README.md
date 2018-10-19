# IOT-PGO2-Databases

## Muziek Database (SQL)
### Schema

- MySQL Server

| Column       | \_ID | TITLE        | ARTIST       | YEAR     |
|:------------ |:---:|:------------:|:------------:|:--------:|
| **Datatype** | INT | VARCHAR(255) | VARCHAR(255) | INT      |


## Prepared Queries
The SQL folder contains a number of prepared queries.
Each field that needs to be filled in a query is replaced by a '?' character.

### [seach_by_exact_title.sql](SQL/search_by_exact_title.sql)
**Returns**: (\_ID, TITLE, ARTIST, YEAR) for every row where TITLE is equal to '?'.

### [search_by_artist](SQL/search_by_artist.sql)
**Returns**: (\_ID, TITLE, ARTIST, YEAR) for every row where ARTIST contains '?'.

## Vote Database (NoSQL)

- MongoDB
- Document Database
