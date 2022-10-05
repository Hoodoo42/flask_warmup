INSERT INTO author (name, date_of_birth) VALUES('Emery Jones', '1982-03-04'), ('Kristof Monk', '1974-10-24'), ('Kyla Joy', '1999-09-14');
INSERT INTO book (author_id, title, page_length, release_date, copies_sold) VALUES(1, 'Beyond the candlewick', 623, '2019-02-23', 1500), 
(1, 'The chase and the edge', 900, '2020-12-23', 1420), (1, 'Where the wise go', 428, '2017-04-13', 1730), (2, 'The cracks in the cup', 232, '2014-05-12', 190), 
(2, 'The puprle eyes', 436, '2019-11-18', 865), (2, 'All the pages', 123, '2020-09-21', 150), (3, 'Another brick in the bank', 320, '2019-04-23', 1543), 
(3, 'The cats tail', 1908, '1974-05-14', 4503), (3, 'Another one will fall', 2309, '2018-04-16', 1900), (1, 'The swim', 542, '2019-07-23', 1733);


SELECT name, title FROM author INNER JOIN book ON author_id = author.id;

SELECT name, COUNT(author_id) 
FROM author a INNER JOIN book b ON author_id = a.id
GROUP BY a.id;

SELECT title, release_date, page_length, copies_sold
FROM book b 
ORDER BY copies_sold Desc LIMIT 1;

SELECT a.name, SUM(copies_sold)
FROM author a  INNER JOIN book b ON b.author_id = a.id 
GROUP BY a.id;

CALL get_name_and_title; 
CALL get_number_of_books; 
CALL most_sold;
CALL top_seller;