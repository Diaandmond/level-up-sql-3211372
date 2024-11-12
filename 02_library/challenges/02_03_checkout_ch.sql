-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'

SELECT BookID FROM Books WHERE Barcode = '2855934983' OR Barcode = '4043822646'


INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate, ReturnedDate)
VALUES ((SELECT BookID FROM Books WHERE Barcode = '2855934983'),
        (SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
        '2022-08-25','2022-09-08', NULL),
        ((SELECT BookID FROM Books WHERE Barcode = '4043822646'),
        (SELECT PatronID FROM Patrons WHERE Email = 'jvaan@wisdompets.com'),
        '2022-08-25','2022-09-08', NULL)

SELECT 
Loans.LoanID,
Books.BookID,
Patrons.PatronID,
Loans.LoanDate,
Loans.DueDate,
Loans.ReturnedDate,
Patrons.FirstName, 
Patrons.LastName, 
Patrons.Email,
Books.Title,
Books.Author,
Books.Published,
Books.Barcode
FROM Loans
LEFT JOIN Patrons ON Loans.PatronID = Patrons.PatronID
LEFT JOIN Books ON Loans.BookID = Books.BookID
WHERE Patrons.FirstName ='Jack'
AND Patrons.LastName ='Vaan'
AND (Books.Barcode = '2855934983'
OR Books.Barcode = '4043822646')