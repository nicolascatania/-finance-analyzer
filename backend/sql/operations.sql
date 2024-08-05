Use finance_analyzer

Select * from users

Select u.u_id, u.u_name, p.p_id,p.p_description, p.p_total_price from users u JOIN Purchases p on u.u_id = p.u_id
Order by (u.u_id)

SELECT u.u_id, u.u_name, SUM(p.p_total_price) AS total_purchases
FROM users u
JOIN Purchases p ON u.u_id = p.u_id
GROUP BY u.u_id, u.u_name
ORDER BY u.u_id;

ALTER PROCEDURE GetTotalSpentByUser
    @UserID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    -- Use ISNULL to return 0 if no records are found
    SELECT ISNULL(SUM(p.p_total_price), 0) AS TotalSpent
    FROM Purchases p
    WHERE p.u_id = @UserID
      AND p.p_date BETWEEN @StartDate AND @EndDate;
END;


EXEC GetTotalSpentByUser @UserID = 1, @StartDate = '2024-12-01', @EndDate = '2024-12-31';

