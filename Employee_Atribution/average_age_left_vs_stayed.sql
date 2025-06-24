SELECT 
    LeftCompany,
    ROUND(AVG(Age), 1) AS AvgAge,
    ROUND(AVG(Tenure), 2) AS AvgTenure,
    ROUND(AVG(Salary), 0) AS AvgSalary
FROM 
    employee_attrition
GROUP BY 
    LeftCompany;
