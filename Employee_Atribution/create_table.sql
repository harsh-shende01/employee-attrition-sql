CREATE TABLE  (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Age INT,
    Tenure FLOAT,
    Salary INT,
    LeftCompany ENUM('Yes', 'No'),
    LastWorkingDate DATE
);
