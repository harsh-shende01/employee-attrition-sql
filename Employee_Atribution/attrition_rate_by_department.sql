SELECT 
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(LeftCompany = 'Yes') AS EmployeesLeft,
    ROUND((SUM(LeftCompany = 'Yes') / COUNT(*)) * 100, 2) AS AttritionRate
FROM 
    employee_attrition
GROUP BY 
    Department;
