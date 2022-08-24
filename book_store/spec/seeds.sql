-- Write your SQL seed here. 

-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE books RESTART IDENTITY; -- replace with your own table title.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO books (id, title, author_name) VALUES('1', 'Nineteen forty three', 'Stephen Queen');
INSERT INTO books (id, title, author_name) VALUES('2', 'Matilda', 'Cannot remember');

-- psql -h 127.0.0.1 book_store_test < seeds.sql