-- Task 2: Data Insertion and Handling Nulls

USE LibraryDB;

-- Insert Authors
INSERT INTO Authors (name, country) VALUES ('J.K. Rowling', 'UK');
INSERT INTO Authors (name, country) VALUES ('George Orwell', 'UK');
INSERT INTO Authors (name, country) VALUES ('R.K. Narayan', 'India');

-- Insert Books
INSERT INTO Books (title, genre, published_year, author_id) VALUES ('Harry Potter', 'Fantasy', 1997, 1);
INSERT INTO Books (title, genre, published_year, author_id) VALUES ('1984', 'Dystopian', 1949, 2);
INSERT INTO Books (title, genre, published_year, author_id) VALUES ('Malgudi Days', 'Fiction', 1943, 3);

-- Insert Members (with NULL email)
INSERT INTO Members (name, email) VALUES ('Anitha', NULL);
INSERT INTO Members (name, email) VALUES ('Rahul', 'rahul@example.com');

-- Insert Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES (1, 1, '2025-09-01', NULL);
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES (2, 2, '2025-09-05', '2025-09-12');

-- Update examples
UPDATE Members SET email='anitha@gmail.com' WHERE member_id=1;
UPDATE Books SET genre='Classic' WHERE published_year < 1950;

-- Delete example
DELETE FROM Loans WHERE loan_id=2;
