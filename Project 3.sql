




-- Display all columns for all customers
SELECT * FROM [SalesLT].[Customer]

-- Display Specific fields - customer name fields
SELECT Title, FirstName, MiddleName, LastName, Suffix
FROM SalesLT.Customer;


-- =================================================================================================

-- Concatanating text with the text input

SELECT 'My name is ' + FirstName AS Introduction
FROM SalesLT.Customer
ORDER BY FirstName;

--Retrieve customer name, sales person and phone number

SELECT 
      [Title]
      ,[FirstName]
      ,[SalesPerson]
      ,[Phone]
      
  FROM [SalesLT].[Customer]


-- =================================================================================================

-- Customer Companies
SELECT CAST(CustomerID AS varchar) + ': ' + CompanyName AS CustomerCompany
FROM SalesLT.Customer;


--Sales Order Revisions
SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision,
	   CONVERT(nvarchar(30), OrderDate, 102) AS OrderDate
FROM SalesLT.SalesOrderHeader;




