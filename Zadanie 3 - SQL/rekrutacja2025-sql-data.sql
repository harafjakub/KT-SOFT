-- Wczytanie działów
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
 (1, 'HR'),
 (2, 'IT'),
 (3, 'Sales');

-- Wczytanie pracowników
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, ManagerID, Salary,   HireDate) VALUES
 (1, 'Anna',      'Nowak',       1, NULL,     250000.00, '2018-03-01'),
 (2, 'Piotr',     'Zieliński',   2, 1,        150000.00, '2019-07-15'),
 (3, 'Marta',     'Wiśniewska',  2, 2,        120000.00, '2020-01-20'),
 (4, 'Tomasz',    'Wójcik',      2, 2,        110000.00, '2021-05-10'),
 (5, 'Agnieszka', 'Kowalczyk',   3, 1,        140000.00, '2019-11-05'),
 (6, 'Michał',    'Lewandowski', 3, 5,        100000.00, '2020-08-12'),
 (7, 'Katarzyna', 'Dąbrowska',   1, 1,        130000.00, '2021-02-28'),
 (8, 'Paweł',     'Kamiński',    1, 7,         90000.00, '2022-04-01'),
 (9, 'Łukasz',    'Kozłowski',    3, 5,         95000.00, '2022-06-15'),
 (10,'Dorota',    'Jankowska',   2, 2,        115000.00, '2023-01-10');

-- Wczytanie projektów
INSERT INTO Projects (ProjectID, ProjectName,        StartDate,   EndDate) VALUES
 (1, 'Website Redesign',    '2024-01-15', '2024-06-30'),
 (2, 'Mobile App',          '2024-02-01', NULL),
 (3, 'Data Analysis',       '2023-11-01', '2024-03-31');

-- Przypisania pracowników do projektów
INSERT INTO EmployeeProjects (EmployeeID, ProjectID) VALUES
 (2, 1), (3, 1), (4, 1),
 (2, 2), (6, 2), (7, 2),
 (5, 3), (9, 3), (10, 3);
