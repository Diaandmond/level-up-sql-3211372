-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT 
Loans.DueDate,
Books.Title,
Patrons.FirstName, 
Patrons.LastName, 
Patrons.Email
FROM Loans
LEFT JOIN Patrons ON Loans.PatronID = Patrons.PatronID
LEFT JOIN Books ON Loans.BookID = Books.BookID
WHERE DueDate = '2022-07-13'
AND ReturnedDate IS NULL