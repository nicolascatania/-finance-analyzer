USE finance_analyzer;

-- Get all the money spent by a user in a certain period of time (this week, any month, year, etc)
ALTER PROCEDURE GetTotalSpentByUser
    @UserID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT ISNULL(SUM(p.PurchaseTotalPrice), 0) AS TotalSpent
    FROM Purchases p
    WHERE p.UserID = @UserID
      AND p.PurchaseDate BETWEEN @StartDate AND @EndDate;
END;

-- Execution example
EXEC GetTotalSpentByUser @UserID = 21, @StartDate = '2024-01-01', @EndDate = '2024-12-31';

-- Get user information
Create PROCEDURE GetUserDetails
    @UserID INT
AS
BEGIN
    SELECT u.UserID, u.UserName, u.UserEmail, u.UserPassword
    FROM Users u
    WHERE u.UserID = @UserID;
END;

-- Execution example
EXEC GetUserDetails @UserID = 21;

-- Get top N movements of a specific user
CREATE PROCEDURE GetLastNMovements
    @UserID INT,
    @TopN INT
AS
BEGIN
    SELECT TOP (@TopN) p.PurchaseID, p.PurchaseDate, p.PurchaseDescription, p.PurchaseTotalPrice
    FROM Purchases p
    WHERE p.UserID = @UserID
    ORDER BY p.PurchaseDate DESC;
END;

-- Execution example
EXEC GetLastNMovements @UserID = 21, @TopN = 5;

-- Get total spent for all categories by a user (COUNTING ALL PURCHASES)
CREATE PROCEDURE GetTotalExpensesByCategory
    @UserID INT
AS
BEGIN
    SELECT c.CategoryID, c.CategoryName, ISNULL(SUM(p.PurchaseTotalPrice), 0) AS TotalSpent
    FROM Categories c
    LEFT JOIN Purchases p ON c.CategoryID = p.CategoryID AND p.UserID = @UserID
    WHERE c.UserID = @UserID
    GROUP BY c.CategoryID, c.CategoryName
    ORDER BY c.CategoryName;
END;

-- Execution example
EXEC GetTotalExpensesByCategory @UserID = 21;



--Get the total money spent in current month
CREATE PROCEDURE GetMonthlyExpensesForUser
    @UserID INT
AS
BEGIN
    DECLARE @StartDate DATE = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
    DECLARE @EndDate DATE = EOMONTH(GETDATE());

    SELECT
        ISNULL(SUM(p.PurchaseTotalPrice), 0) AS TotalSpent
    FROM Purchases p
    WHERE
        p.UserID = @UserID
        AND p.PurchaseDate BETWEEN @StartDate AND @EndDate;
END;


EXEC GetMonthlyExpensesForUser @UserID = 21;



--Get the total money spent in current month grouped by category
CREATE PROCEDURE GetMonthlyExpensesByCategoryForUser
    @UserID INT
AS
BEGIN

    DECLARE @StartDate DATE = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1);
    DECLARE @EndDate DATE = EOMONTH(GETDATE());

    SELECT
        c.CategoryID,
        c.CategoryName,
        ISNULL(SUM(p.PurchaseTotalPrice), 0) AS TotalSpent
    FROM Purchases p
    INNER JOIN Categories c ON p.CategoryID = c.CategoryID
    WHERE
        p.UserID = @UserID
        AND p.PurchaseDate BETWEEN @StartDate AND @EndDate
    GROUP BY
        c.CategoryID,
        c.CategoryName
    ORDER BY
        c.CategoryName;
END;


EXEC GetMonthlyExpensesByCategoryForUser @UserID = 21;
