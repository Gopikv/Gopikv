CREATE TABLE SourceCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    LoanAmount DECIMAL(18,2),
    Status VARCHAR(20),
    UpdatedDate DATE
);

CREATE TABLE TargetCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    LoanAmount DECIMAL(18,2),
    Status VARCHAR(20),
    UpdatedDate DATE
);
