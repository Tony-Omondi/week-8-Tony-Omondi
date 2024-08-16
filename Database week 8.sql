-- create database week_8_database;
-- use week_8_database;

-- CREATE TABLE Regions (
--     RegionID INT PRIMARY KEY,
--     RegionName VARCHAR(100),
--     Population INT,
--     AverageIncome DECIMAL(10,2)
-- );

-- CREATE TABLE Schools (
--     SchoolID INT PRIMARY KEY,
--     SchoolName VARCHAR(100),
--     RegionID INT,
--     InfrastructureQuality VARCHAR(50),
--     TeacherStudentRatio DECIMAL(3,2),
--     FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
-- );

-- CREATE TABLE Teachers (
--     TeacherID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Qualification VARCHAR(50),
--     ExperienceYears INT,
--     SchoolID INT,
--     FOREIGN KEY (SchoolID) REFERENCES Schools(SchoolID)
-- );

-- CREATE TABLE Students (
--     StudentID INT PRIMARY KEY,
--     Name VARCHAR(100),
--     Age INT,
--     Gender VARCHAR(10),
--     PerformanceScore DECIMAL(5,2),
--     SchoolID INT,
--     FOREIGN KEY (SchoolID) REFERENCES Schools(SchoolID)
-- );

-- CREATE TABLE Resources (
--     ResourceID INT PRIMARY KEY,
--     ResourceName VARCHAR(100),
--     Quantity INT,
--     SchoolID INT,
--     FOREIGN KEY (SchoolID) REFERENCES Schools(SchoolID)
-- );
-- INSERT INTO Regions (RegionID, RegionName, Population, AverageIncome)
-- VALUES 
-- (1, 'Urban North', 1500000, 50000.00),
-- (2, 'Rural South', 300000, 15000.00),
-- (3, 'Urban East', 1200000, 48000.00),
-- (4, 'Rural West', 400000, 18000.00),
-- (5, 'Urban Central', 1700000, 52000.00);
-- INSERT INTO Schools (SchoolID, SchoolName, RegionID, InfrastructureQuality, TeacherStudentRatio)
-- VALUES 
-- (1, 'North City High', 1, 'Excellent', 1.5),
-- (2, 'South Valley School', 2, 'Poor', 3.0),
-- (3, 'Eastside Academy', 3, 'Good', 2.0),
-- (4, 'Westfield Primary', 4, 'Fair', 2.8),
-- (5, 'Central Park School', 5, 'Excellent', 1.8);
-- INSERT INTO Teachers (TeacherID, Name, Qualification, ExperienceYears, SchoolID)
-- VALUES 
-- (1, 'John Doe', 'B.Ed', 10, 1),
-- (2, 'Jane Smith', 'M.Ed', 5, 2),
-- (3, 'Alice Johnson', 'B.Ed', 8, 3),
-- (4, 'Bob Brown', 'M.Ed', 12, 4),
-- (5, 'Clara Davis', 'PhD', 7, 5);
-- INSERT INTO Students (StudentID, Name, Age, Gender, PerformanceScore, SchoolID)
-- VALUES 
-- (1, 'Michael Lee', 15, 'Male', 85.5, 1),
-- (2, 'Sarah Wong', 14, 'Female', 78.0, 2),
-- (3, 'Robert Green', 16, 'Male', 92.0, 3),
-- (4, 'Linda White', 13, 'Female', 67.5, 4),
-- (5, 'David Black', 15, 'Male', 88.0, 5),
-- (6, 'Emily Clark', 16, 'Female', 81.0, 1),
-- (7, 'Kevin Harris', 14, 'Male', 72.5, 2),
-- (8, 'Sophia Turner', 15, 'Female', 89.0, 3),
-- (9, 'George King', 13, 'Male', 66.0, 4),
-- (10, 'Olivia Scott', 14, 'Female', 90.0, 5);
-- INSERT INTO Resources (ResourceID, ResourceName, Quantity, SchoolID)
-- VALUES 
-- (1, 'Textbooks', 1000, 1),
-- (2, 'Textbooks', 300, 2),
-- (3, 'Textbooks', 800, 3),
-- (4, 'Textbooks', 400, 4),
-- (5, 'Textbooks', 1200, 5),
-- (6, 'Computers', 150, 1),
-- (7, 'Computers', 20, 2),
-- (8, 'Computers', 100, 3),
-- (9, 'Computers', 40, 4),
-- (10, 'Computers', 180, 5);
SELECT SchoolName, TeacherStudentRatio, AVG(PerformanceScore) AS AveragePerformance
FROM Schools
JOIN Students ON Schools.SchoolID = Students.SchoolID
GROUP BY SchoolName, TeacherStudentRatio;
SELECT RegionName, MIN(PerformanceScore) AS LowestScore, MAX(PerformanceScore) AS HighestScore
FROM Students
JOIN Schools ON Students.SchoolID = Schools.SchoolID
JOIN Regions ON Schools.RegionID = Regions.RegionID
GROUP BY RegionName;
SELECT RegionName, MIN(PerformanceScore) AS LowestScore, MAX(PerformanceScore) AS HighestScore
FROM Students
JOIN Schools ON Students.SchoolID = Schools.SchoolID
JOIN Regions ON Schools.RegionID = Regions.RegionID
GROUP BY RegionName;


