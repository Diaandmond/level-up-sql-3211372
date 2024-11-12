-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT
Published,
COUNT(DISTINCT (Title)) AS Book_count,
GROUP_CONCAT(DISTINCT (Title)) AS Title
FROM Books
GROUP BY Published
ORDER BY Book_count DESC;

SELECT 
COUNT(Loans.LoanID) AS Loan_count, 
Books.Title AS Book_title
FROM Loans
LEFT JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Books.Title
ORDER BY Loan_count DESC
LIMIT 5;