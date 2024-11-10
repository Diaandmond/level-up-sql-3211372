-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT *
FROM Customers
WHERE FirstName = 'Sam'
AND LastName = 'McAdams'

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com')

DELETE FROM Customers
WHERE CustomerID = 103

SELECT *
FROM Reservations 
WHERE Date = '2022-08-12 18:00:00'

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (102, '2022-08-12 18:00:00', 5)