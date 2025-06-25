-- 1. Attrition Rate by Department
SELECT 
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(LeftCompany = 'Yes') AS EmployeesLeft,
    ROUND((SUM(LeftCompany = 'Yes') / COUNT(*)) * 100, 2) AS AttritionRate
FROM 
    employee_attrition
GROUP BY 
    Department;

-- ---------------------------------------------------

-- 2. Average Age, Tenure, and Salary (Left vs. Stayed)
SELECT 
    LeftCompany,
    ROUND(AVG(Age), 1) AS AvgAge,
    ROUND(AVG(Tenure), 2) AS AvgTenure,
    ROUND(AVG(Salary), 0) AS AvgSalary
FROM 
    employee_attrition
GROUP BY 
    LeftCompany;

-- ---------------------------------------------------

-- 3. Monthly Attrition Trend
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

-- ---------------------------------------------------

-- 4. Avg Salary and Attrition Rate by Department
SELECT 
    Department,
    ROUND(AVG(Salary), 0) AS AvgSalary,
    ROUND(SUM(LeftCompany = 'Yes') / COUNT(*) * 100, 2) AS AttritionRate
FROM 
    employee_attrition
GROUP BY 
    Department;
