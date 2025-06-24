SELECT 
    DATE_FORMAT(LastWorkingDate, '%Y-%m') AS Month,
    COUNT(*) AS EmployeesLeft
FROM 
    employee_attrition
WHERE 
    LeftCompany = 'Yes'
GROUP BY 
    Month
ORDER BY 
    Month;
