-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT DISTINCT
Books.Barcode,
Books.Title,
Books.Author
FROM Books
WHERE Books.Published BETWEEN 1890 AND 1899
AND (BookID NOT IN (SELECT BookID FROM Loans WHERE Loans.ReturnedDate IS NULL))
ORDER BY Books.Title