-- shows all the dbs 
show databases; 
-- creates and deletes the db
create database my_db; 
drop database my_db;

-- to set what db to use 
USE my_db;

-- what db is in use now
select database();

-- creations of a table
create table coffee(
 beans varchar(50),
 location varchar(50),
 quantity int);
 
-- details of the table 
show columns from coffee; 
desc coffee;			  

-- shows every table in the db
show tables;

-- deletes the table with name coffee
drop table coffee;

-- inserting data into the table 
insert into coffee (
beans,location, quantity)
values ('classic', 'north', 50);

insert into coffee (
beans,location, quantity)
values ('bitter', 'south', 10),
	   ('strong', 'east' , 36);
       
insert into people values ("Tina", "Belcher", 13);
insert into people(fist_name,last_name,age) values 
("Linda", "Belcher", 45),
("Phillip","Frond",38),
("Calvin", " Fischoeder", 70);
select * from people;
desc people;

-- showing all the data of the table
select * from coffee;

-- test table
create table people ( fist_name varchar(20), last_name varchar(20), age int);


-- for 'john's' you have to type 'john\'s'
-- default values
create table dogs ( name varchar(20) default 'dogo', age int default 99);
insert into dogs values ();
select * from dogs;

-- null values in a table
insert into dogs values (null, null);

-- primary key as id
create table cats2 ( id int primary key,
 name varchar(20),
 age int);
 
 -- primary key second option
 create table cats2 ( id int,
 name varchar(20),
 age int,
 primary key (id));
 
insert into cats2 values (1, 'bibi2' , 4);
select * from cats2;
desc cats2;

-- auto increment primary key
create table cats3 ( id int auto_increment, name varchar(20), age int,primary key(id));
insert into cats3 (name,age) values('bibaki',2);
select * from cats3;
desc cats3;

-- test
create table Employees (
id int auto_increment primary key,
last_name varchar(100) not null,
first_name varchar(100) not null,
middle_name varchar(100),
age int not null,
current_status varchar(100) not null default 'employed');

desc Employees;
insert into Employees (first_name, last_name, age) values ('John','Wick',45);
select last_name from Employees;

-- as
select age as years from people where age >30;

-- update
update cats3 set name= 'meow' where name = 'bibaki';

-- delete
 delete from cats3 where id=4;

-- test
use shirts_db;
create table shirts(shirt_id int auto_increment primary key, article varchar(30),color varchar(30), shirt_size varchar(10),last_worn int);
insert into shirts (article, color, shirt_size, last_worn)values ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

insert into shirts (article, color, shirt_size, last_worn)values ('polo shirt', 'purple', 'M', 50);

SELECT article, color from shirts;

select article, color, shirt_size, last_worn from shirts where shirt_size='M';

update shirts set shirt_size='L' where article='polo shirt';

select article, shirt_size from shirts where article='polo shirt';

select * from shirts;

update shirts set last_worn=0 where last_worn=15;

update shirts set shirt_size='XS', color='off white' where color='white';

delete from shirts where last_worn=200;

delete from shirts where article='tank top';

delete from shirts;

drop table shirts;

create database book_shop;

use book_shop;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;

-- concat
select concat (author_fname,' ', author_lname) from books;

-- concat with spaceing
select concat_ws('_' , author_fname, author_lname) from books;

-- substring object, from, to
select substring('Hello world', 1, 3);
select substring( title, 1, 15) from books;

SELECT 
    CONCAT_WS('_',
            SUBSTR(author_lname, 1, 1),
            author_lname) AS author
FROM
    books;

-- replace from, the, to 
select replace('llllooooeee', 'o','a');

select * from books;

select replace(title, ' ', '-') from books;

-- reverse

select reverse('elo');

select concat_ws(' ', author_lname, reverse(author_lname)) from books;

-- lenght in bytes
select length(title) from books;

-- char lenght in number of characters
select char_length(title) from books;

-- lower case upper case
select upper(title) from books;
select lower(title) from books;

-- insert str, from, replace, with
select insert('hello you', 6 , 3, ' there');

-- left right 
select left('helobroo',4);

select right('helobroo',4);

-- repeat str, times
-- select repeat('helo',3);

-- trim
select trim('     helo     ');

-- leading both trailing
select trim(both'.' from '..................helo......');

-- test
select reverse(upper('Why does my cat look at me wiht such hatred?'));

select replace(title, ' ', '->') as title from books;

select author_lname as forwards, reverse(author_lname) as backwards from books;

select concat_ws(' ',upper(author_fname),upper(author_lname)) as 'full name in caps' from books;

select concat_ws(' was releaced in ', title, released_year) as blurb from books;

select title as title, char_length(title) as 'character count' from books;

SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
    CONCAT_WS(',', author_lname, author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;

INSERT INTO books
(title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
('fake_book', 'Freida', 'Harris', 2001, 287, 428),
('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- distinct
select distinct author_lname from books;

select distinct concat(author_fname,author_lname) from books;

select distinct author_fname,author_lname, released_year from books;

select * from books;

-- order by desc
select book_id, title, author_fname from books order by author_fname;
-- 1==book_id, 2==title, 3==author_fname order by 2 (2==title)
select book_id, title, author_fname from books order by 2;

select concat(author_fname,author_lname) as authors from books order by authors;

select book_id, title, author_fname from books order by 2,3;

-- order (title, author_fname, released_year) released_year is the third ,by limit from row, to +3 
select title, author_fname, released_year from books order by 3 limit 5,3;

-- like '%xx%' there is inside
select book_id, title, author_fname from books where title like '%the%';

-- '___' has 3 characters
-- '%x' ends with x
-- 'x%' starts with x
-- '_a_' something a something
-- % \% % has % in it
-- % \_ % has _ in it
select book_id, title, author_fname from books where author_fname like '___';

-- test
select * from books;

select title from books where title like '%stories%';

select title,pages from books order by pages desc limit 1;

select concat(title,' - ',released_year) as summary from books order by released_year desc limit 3;

select title, author_lname from books where author_lname like '% %';

select title,released_year,stock_quantity from books order by stock_quantity limit 3;

select title, author_lname from books order by 2,1;

SELECT 
    CONCAT('MY FAVORITE AUTHOR IS ',
            UPPER(author_fname),
            UPPER(author_lname),
            '!') AS yell
FROM
    books
ORDER BY author_lname;

-- count
select count(*) from books;

select count(author_fname) from books;

-- distinct count
select count(distinct author_fname) from books;

select count(distinct released_year) from books;

select count(*) from books where title like '%the%';

-- group by
select author_lname, count(*) from books group by author_lname ;

-- min max
select min(released_year) from books;

select max(pages) from books;

SELECT 
    MIN(author_lname)
FROM
    books;

select title, pages from books order by pages desc limit 1;

-- subquery
select title, pages from books where pages = (select max(pages) from books);

select title, pages, released_year from books where released_year = (select min(released_year) from books);


select author_lname, author_fname, count(*) from books group by author_lname, author_fname;

select concat(author_lname,' ', author_fname) as author , count(*) as 'number of books' from  books group by author;

select author_lname, author_fname,
 min(released_year),
 max(released_year),
 max(pages) 
 from books group by author_lname, author_fname ;

-- sum
select author_lname, sum(pages) from books group by author_lname;

select author_lname,count(*), sum(pages) from books group by author_lname;

-- avg
select avg(released_year) from books;

select released_year, avg(stock_quantity), count(*) from books group by released_year;

-- test 
select count(*) as 'number of books' from books;

select released_year,count(*) as 'number of books' from books group by released_year;

select sum(stock_quantity) from books;

select concat(author_lname,' ', author_fname) as author, avg(released_year) from books group by author;

select concat(author_lname,' ', author_fname) as author from books where pages=(select max(pages) from books);

select released_year as 'year', count(*) as '# books', avg(pages) as 'avg pages'  from books group by released_year order by released_year ;

-- date, current_date(), curtime(), now()
use my_db;

select * from people;

insert into people (first_name, last_name, age, birth) values ('Maria','Lucy', 10,'1916-02-11');

insert into people (first_name, last_name, age, birth) values ('Mario','Lucky', 0,current_date());

-- day
select birth, day(birth) from people;

-- SELECT 
--     birthdate,
--     DAY(birthdate),
--     DAYOFWEEK(birthdate),
--     DAYOFYEAR(birthdate)
-- FROM people;
--  
-- SELECT 
--     birthdate,
--     MONTHNAME(birthdate),
--     YEAR(birthdate)
-- FROM people;

-- DATE_FORMAT
-- SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;


-- date difference
select datediff(curdate(),birth) from people;

-- add date date_add, date_sub
select date_add('2025-02-01',interval 1 year);

select birth, date_add(birth, interval 18 year) from people;

select timediff(curtime(), '10:00:00');

select now() - interval 20 year;

select year(birth + interval 21 year) from people;

show databases;
use book_shop;

-- not equal !=
select * from books where released_year!=2017;

select title, author_lname from books where author_lname!='Gaiman';

-- not like
select * from books where title not like '% %';
select * from books where title not like '%e%';

select author_fname, title from books where author_fname not like 'da%';
select author_fname, title from books where author_fname  like 'da%';

-- > GREATER than
select title, released_year from books where released_year>2005;
select * from books where pages > 200 order by pages;

select title, released_year from books where released_year<2000 order by released_year desc;

-- LOGICAL AND 
select * from books where author_lname='Eggers' and released_year >2010;

select author_lname, title, released_year from books where author_lname='Eggers' or released_year >2010;

select author_lname, title, released_year, pages from books where pages<200 or released_year >2010;

-- between
select author_lname, title, released_year, pages from books where released_year between 2010 and 2020;

-- not between
select title, pages from books where pages not between 100 and 200 order by pages;


use my_db;
select * from people;

select birth from people where year(birth) between 2000 and 2010;

-- cast
select birth from people where year(birth) between year(cast('2000-01-01' as date)) and year(cast('2020-01-01' as date));

-- in
select title, author_lname from books where author_lname not in ('Lahiri','Gaiman') order by author_lname;

-- % MOD
select title, released_year from books where released_year > 2002 and released_year % 2 =1;

-- case 
select title, released_year,
case when released_year >2000 then 'mil' else 'old' 
end as good 
 from books order by released_year;

select title, stock_quantity,
case
when stock_quantity between 0 and 10 then '*'
when stock_quantity between 11 and 30 then '**'
when stock_quantity <=50 then '***'
when stock_quantity between 51 and 60 then '****'
else '*****'
end as '**'
from books order by stock_quantity;

-- is null
-- select * from books where released_year is null;


-- test
select title, released_year from books where released_year <1980;

select * from books where author_lname = 'Eggers' or author_lname= 'Chabon';

select * from books where released_year > 2000 and author_lname= 'Lahiri';

select * from books where pages between 100 and 200;

select * from books where author_lname like 'C%' or author_lname like 'S%';

select title, author_lname,
 case 
when title like '%stories%' then 'Short Stories'
when title like 'Just Kids' or title like 'A Heartbreaking Work of Staggering Genius'  then 'Memoir'
-- when title like 'A Heartbreaking Work of Staggering Genius' then 'Memoir'
else 'Novel'
end as 'TYPE'
from books;

select author_fname, author_lname,
concat(count(*),
case
when  count(*) > 1 then' books'
else ' book'
end) as COUNT
from books group by author_lname, author_fname;


-- unique
CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);


INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');

-- check 
create table users( 
username varchar(20) not null,
age int check (age>0) not null);

insert into users  values ('john', 0);

CREATE TABLE palindromes (
  word VARCHAR(100) CHECK(REVERSE(word) = word)
);

-- constrain
create table users2( 
username varchar(20) not null,
age int, constraint age_not_negative check (age>0));

insert into users2 values ('johnsnow',3);

-- 2 constraints
CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
 
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

-- alter table 
select * from camp;
desc camp;
-- alter table add column
alter table companies add column phone varchar(10);

alter table companies add column employee_count int not null;

-- drop column
alter table companies drop column employee_count;

-- rename table
rename table companies to comp;

-- rename column
alter table camp rename column phone to number;

-- modify columns
alter table camp modify name varchar(100) default 'unknown';

-- change both column name and data
alter table camp change number phone int;

-- add constraint
alter table camp drop constraint pos_numb;
alter table camp add constraint pos_numb check (phone>=1234567890 and phone <=9999999999);
insert into camp (phone,address) value (1234567899,'aaa');
insert into camp (phone,address) value (1134567899,'aaa');

-- primary keys
create table customers(id int primary key auto_increment,
fname varchar(50),lname varchar(50), email varchar(50));

create table orders (
id int primary key auto_increment,
order_date date,
amount decimal(8,2),
customer_id int,foreign key (customer_id) references customers(id)
);


INSERT INTO customers (fname, lname, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

select * from customers;
select * from orders;

insert into orders (order_date, amount ,customer_id) values ('2026-01-09',10,3);

select id from customers where lname='George';
select * from customers where id=1;
select * from orders where customer_id=1;

-- cross join
select * from customers,orders;

-- inner join or join is the same
select * from customers join orders on customers.id=orders.customer_id;

select fname, lname, order_date, amount from customers inner join orders on customers.id=orders.customer_id;

-- inner join group by order by
select fname, lname, sum(amount) as total from customers join orders on customers.id=orders.customer_id group by  fname, lname order by total;


-- left join
select fname, lname , order_date , amount from customers left join orders on customers.id=orders.customer_id ;

select fname, lname, ifnull(sum(amount),0) as total from customers left join orders on customers.id=orders.customer_id group by fname, lname;

-- right join
select fname, lname , order_date , amount from customers right join orders on customers.id=orders.customer_id ;


-- test
 create table students (
 id int primary key auto_increment,
 first_name varchar(50)
 );

create table papers(
title varchar(50),
grade int,
student_id int,
foreign key (student_id) references students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from students;
select * from papers;


select first_name, title,grade from students s  join papers p on s.id=p.student_id order by grade desc;

select first_name, title,grade from students s left join papers p on s.id=p.student_id;

select first_name, ifnull((title),'MISSING'),ifnull((grade),0) from students s left join papers p on s.id=p.student_id;

select first_name, ifnull(avg(grade),0) as average from students s  left join papers p on s.id=p.student_id group by first_name order by average desc;

select first_name, ifnull(avg(grade),0) as average, 
case
when ifnull(avg(grade),0) > 75 then 'PASSING'
else 'FAILLING'
END AS passing_status
from students s  left join papers p on s.id=p.student_id group by first_name order by average desc;

-- many to many
create table reviewers(
id int primary key auto_increment,
fname varchar(50) not null,
lname varchar(50) not null
);

create table series(
id int primary key auto_increment,
title varchar(50),
released_year year,
genre varchar(100)
);

create table reviews(
id int primary key auto_increment,
rating decimal(2,1),
series_id int,
reviewer_id int,
foreign key (series_id) references series(id),
foreign key (reviewer_id) references reviewers(id)
);


INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

INSERT INTO reviewers (fname, lname) VALUES
('Thomas', 'Stoneman'),
('Wyatt', 'Skaggs'),
('Kimbra', 'Masters'),
('Domingo', 'Cortes'),
('Colt', 'Steele'),
('Pinkie', 'Petit'),
('Marlon', 'Crafford');

INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);


select title, rating from series s join reviews r on s.id=r.series_id limit 15;

-- round
select title, round(avg(rating),2) as rating from series s join reviews r on s.id=r.series_id group by s.title  order by rating;

select fname,lname,rating from reviewers s join reviews r on s.id=r.reviewer_id ;

select title from series left join reviews on series.id=reviews.series_id where rating is null;


select genre, avg(rating) as avg_rating  from series join reviews on series.id=reviews.series_id group by genre;

-- IF 
SELECT 
    fname,lname,
    IFNULL(COUNT(rating), 0) AS 'COUNT',
    IFNULL(MIN(rating), 0) AS 'MIN',
    IFNULL(MAX(rating), 0) AS 'MAX',
    IFNULL(AVG(rating), 0) AS 'AVG',
    CASE                                                --  IF(COUNT(rating) > 0,'ACTIVE','INACTIVE') AS status
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY fname , lname;


SELECT 
    title, rating, CONCAT(fname,' ', lname) AS reviewer
FROM
    series
         JOIN
    reviews ON series.id = reviews.series_id
        JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 

INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);


-- over
select department,salary, avg(salary) over(), MIN(salary) OVER(),
    MAX(salary) OVER()from employees;


    
SELECT 
    department, avg(salary)
FROM
    employees group by department;


-- partition by
SELECT 
    emp_no, 
    department, 
    salary, 
    AVG(salary) OVER(PARTITION BY department) AS dept_avg,
    AVG(salary) OVER() AS company_avg
FROM employees;

-- over order by
select emp_no, 
    department, 
    salary, 
    sum(salary) over(partition by department order by salary desc) as rolling ,
    sum(salary) over(partition by department) as total 
    from employees;

select emp_no, 
    department, 
    salary, 
    min(salary) over(partition by department order by salary desc ) as rolling ,
    sum(salary) over(partition by department) as total 
    from employees;

-- rank row number
select emp_no, 
    department, 
    salary, 
	row_number() over( partition by department order by salary desc) as total,
    rank() over( order by salary desc) as overal
    from employees order by department;

-- dense rank doesnt skip lines
select emp_no, 
    department, 
    salary, 
	row_number() over( partition by department order by salary desc) as total,
    dense_rank() over( order by salary desc) as overal
    from employees order by overal;

-- ntile
select emp_no, 
    department, 
    salary, 
    ntile(4) over( partition by department order by salary desc) as depart_salary_fragments,
        ntile(4) over( order by salary desc) as salary_fragments
    from employees;

-- first value
select emp_no, 
    department, 
    salary, 
first_value(emp_no) over(order by salary desc) as order_s,
first_value(emp_no) over(partition by department  order by salary desc) as order_s
 from employees;

-- lag
select emp_no, 
    department, 
    salary, 
salary-lag(salary) over(order by salary desc)  as order_s
 from employees;

-- lead
select emp_no, 
    department, 
    salary, 
salary-lead(salary) over(order by salary desc)  as order_s
 from employees;


-- views
select title,released_year,genre,rating,fname,lname from series
join reviews on series.id=reviews.series_id
join reviewers on reviewers.id=reviews.reviewer_id;

create view full_series as 
select title,released_year,genre,rating,fname,lname from series
join reviews on series.id=reviews.series_id
join reviewers on reviewers.id=reviews.reviewer_id;


select * from full_series;

select genre, avg(rating) from full_series group by genre;

select * from full_series where released_year = 2000 ;

-- cand delete not updatable
delete from full_series where released_year = 2000;

-- altering view/ replace
create or replace view full_series as 
select title,released_year,genre,fname,lname from series
join reviews on series.id=reviews.series_id
join reviewers on reviewers.id=reviews.reviewer_id;

alter view full_series as 
select title,released_year,genre,rating,fname,lname from series
join reviews on series.id=reviews.series_id
join reviewers on reviewers.id=reviews.reviewer_id;

-- drop views
drop view full_series;

-- having
select title, avg(rating) from full_series group by title;

select title, avg(rating), count(rating)
from full_series group by title having count(rating) >2 ;

-- with rollup avg of all table
select title, avg(rating) from full_series group by title with rollup;

select title, count(rating) from full_series group by title with rollup;

-- like decimal
select released_year, title, TRUNCATE(avg(rating),2) from full_series group by released_year,title with rollup;

select @@GLOBAL.sql_mode;
select @@session.sql_mode;

-- enables delete
SET SQL_SAFE_UPDATES = 1;
delete from papers where grade=60;


use book_shop;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255),
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id)
);

insert into users (username) values ('Mike'),('John'),('Mary');
insert into photos (image_url,user_id) values 
('/1hy34',1),
('/213as',3),
('/cu1u4',2);

insert into comments (comment_text,user_id,photo_id) values 
('meow',1,2),
('good',3,1),
('whaat!',3,1);

CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id)
        REFERENCES users (id),
    FOREIGN KEY (photo_id)
        REFERENCES photos (id),
    PRIMARY KEY (user_id , photo_id)
);

insert into likes ( user_id,photo_id) values (1,2),(2,1),(3,3);


CREATE TABLE follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id, followee_id),
    CHECK (follower_id <> followee_id)
);

insert into follows (follower_id, followee_id) values 
(1,2),(2,1),(2,3);

insert into follows (follower_id, followee_id) values (1,1);

CREATE TABLE tags (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);
CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

select username, count(*) as num from users
 join comments on users.id= comments.user_id 
 group by comments.user_id having num= (select count(*) from comments);

select count(*) from users  left join comments on users.id= comments.user_id where comments.user_id is null;

select 
(select count(*) from users  left join comments on users.id= comments.user_id where comments.user_id is null)/100 + 
(SELECT COUNT(*) FROM (
    SELECT users.id
    FROM users
    JOIN comments ON users.id = comments.user_id
    GROUP BY users.id
    HAVING COUNT(DISTINCT comments.photo_id) = (SELECT COUNT(*) FROM photos)
) AS photo_superfans)/100;


SELECT id, username 
FROM users 
WHERE id NOT IN (SELECT user_id FROM comments WHERE user_id IS NOT NULL);

select count(*) from photos;

select username, count(*) as num from users
 join likes on users.id= likes.user_id 
 group by likes.user_id having num= (select count(*) from photos);

select tag_name, count(tag_id) as most from tags  
join photo_tags on tags.id=photo_tags.tag_id 
group by tag_name order by most desc limit 5;

select username,created_at from users order by created_at limit 5;

select dayname((created_at)) as 'day', count(*) as total from users group by day order by total desc;

select username from users left join photos on users.id=photos.user_id where user_id is null;

select users.username, users.id, photos.image_url, count(likes.photo_id) as most from photos 
join users on users.id=photos.user_id 
join likes on likes.photo_id=photos.id 
group by photos.id, users.username order by most desc limit 1;

select ((select count(*) from photos)/(select count(*) from users));



create table user1( username varchar(100), age int);

delimiter $$
create trigger adult
before insert on user1 for each row 
begin
if new.age<18 then
signal sqlstate'45000'
set message_text='must be an adult';
end if;
end;
$$
delimiter ;

insert into user1 values ('john', 9);


delimiter $$
create trigger self_follow
before insert on follows for each row 
begin
if new.follower_id=new.followee_id then
signal sqlstate'45000'
set message_text='cant self follow';
end if;
end;
$$
delimiter ;

-- before insert on follows for each row 
-- befor - after
-- insert - delete
-- if statment then OR insert into values -- insert into set


show triggers;
drop trigger self_follow;


SELECT @@session.sql_mode;
SELECT @@GLOBAL.sql_mode;
