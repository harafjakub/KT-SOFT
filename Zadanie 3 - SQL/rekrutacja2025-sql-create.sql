-- 1. Tabela działów
CREATE TABLE Departments (
    DepartmentID   INT         PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- 2. Tabela pracowników
CREATE TABLE Employees (
    EmployeeID  INT       PRIMARY KEY,
    FirstName   VARCHAR(50) NOT NULL,
    LastName    VARCHAR(50) NOT NULL,
    DepartmentID INT      NOT NULL,
    ManagerID   INT       NULL,
    Salary      DECIMAL(10,2) NOT NULL,
    HireDate    DATE      NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ManagerID)    REFERENCES Employees(EmployeeID)
);

-- 3. Tabela projektów
CREATE TABLE Projects (
    ProjectID   INT       PRIMARY KEY,
    ProjectName VARCHAR(150) NOT NULL,
    StartDate   DATE     NOT NULL,
    EndDate     DATE     NULL
);

-- 4. Tabela przypisań pracownik–projekt (wiele do wielu)
CREATE TABLE EmployeeProjects (
    EmployeeID INT NOT NULL,
    ProjectID  INT NOT NULL,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID)  REFERENCES Projects(ProjectID)
);
