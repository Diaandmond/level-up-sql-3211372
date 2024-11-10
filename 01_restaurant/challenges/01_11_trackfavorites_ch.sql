-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * 
FROM Customers
WHERE FirstName = 'Cleo'

SELECT * 
FROM Dishes
WHERE Name LIKE ('%Quinoa Salmon%')

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name LIKE ('%Quinoa Salmon%'))
WHERE CustomerID = (SELECT CustomerID FROM Customers WHERE FirstName = 'Cleo' AND LastName = 'Goldwater')

SELECT * 
FROM Customers
WHERE FirstName = 'Cleo'


