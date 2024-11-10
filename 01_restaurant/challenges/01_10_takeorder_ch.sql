-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT 
Customers.CustomerID,
Customers.FirstName,
Customers.LastName
FROM Customers
WHERE Customers.Address = '6939 Elka Place'

INSERT INTO Orders (CustomerID, OrderDate)
VALUES ('70', '2022-09-20 14:00:00')

DELETE FROM Orders WHERE OrderID = '1001'

SELECT *
FROM Orders 
WHERE CustomerID = '70'

-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie

SELECT *
FROM Dishes 
WHERE Name LIKE ('%Mini Cheeseburgers%')
OR Name LIKE ('%House Salad%')
OR Name LIKE ('%Tropical Blue Smoothie%')


INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4),
VALUES (1001, 7),
VALUES (1001, 20)

SELECT * 
FROM Dishes 
LEFT JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrderID = '1001'

SELECT SUM(Price)
FROM Dishes 
LEFT JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrderID = '1001'




