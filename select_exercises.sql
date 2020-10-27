use codeup_test_db;

SELECT 'The name of all albums by Pink Floyd.' AS '';

select * from albums where artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS '';

select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select genre from albums where name = 'Nevermind';

select name from albums
where release_date between 1990 and 1999;

select name from albums
where sales < 20;

select name from albums where genre = 'Rock';
