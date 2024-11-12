-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT BookID, Title, Author, Published,
COUNT(BookID) AS books_available
FROM Books
WHERE Title LIKE '%Dracula%';

SELECT *
FROM Loans
LEFT JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title LIKE '%racula%'
AND Loans.ReturnedDate IS NULL;

SELECT 
COUNT(BookID) - 
(SELECT COUNT(LoanID) AS loaned 
FROM Loans LEFT JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title LIKE '%racula%'
AND Loans.ReturnedDate IS NULL) AS books_available
FROM Books
WHERE Title LIKE '%Dracula%';
