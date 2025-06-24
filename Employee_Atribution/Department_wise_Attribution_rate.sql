SELECT 
    Department,
    ROUND(AVG(Salary), 0) AS AvgSalary,
    ROUND(SUM(LeftCompany = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM 
    employee_attrition
GROUP BY 
    Department;
