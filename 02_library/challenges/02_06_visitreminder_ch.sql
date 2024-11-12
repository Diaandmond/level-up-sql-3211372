-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT 
Patrons.FirstName, 
Patrons.LastName, 
Patrons.Email,
COUNT(Loans.BookID) AS Loaned_books
FROM Loans
LEFT JOIN Patrons ON Loans.PatronID = Patrons.PatronID
LEFT JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Patrons.FirstName, 
Patrons.LastName, 
Patrons.Email
ORDER BY Loaned_books
LIMIT 5