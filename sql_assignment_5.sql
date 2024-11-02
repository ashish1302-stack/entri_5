use assignments;
CREATE TABLE Country_1 (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

INSERT INTO Country_1 (Id, Country_name, Population, Area)
VALUES
(1, 'USA', 331000000, 9834000),
(2, 'India', 1393000000, 3287000),
(3, 'Canada', 38000000, 9985000),
(4, 'UK', 67000000, 243000),
(5, 'Australia', 25600000, 7692000),
(6, 'Germany', 83000000, 357000),
(7, 'France', 67000000, 551000),
(8, 'Italy', 60000000, 301000),
(9, 'Brazil', 213000000, 8516000),
(10, 'Japan', 125000000, 377975);

CREATE TABLE Persons_1 (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 1),
    Country_Id INT,
    Country_name VARCHAR(50)
);

INSERT INTO Persons_1 (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(1, 'Ashly', 'Thomas', 35000, 4.5, 1, 'USA'),
(2, 'Jibin', 'Joy', 42000, 4.2, 2, 'India'),
(3, 'Goshal', 'Jay', 28000, 3.8, 3, 'Canada'),
(4, 'Richu', 'Zach', 31000, 4.7, 4, 'UK'),
(5, 'Mebin', 'Joby', 23000, 3.9, 5, 'Australia'),
(6, 'Jonhy', 'John', 45000, 4.8, 1, 'USA'),
(7, 'Gopika', 'Anil', 37000, 4.1, 6, 'Germany'),
(8, 'George', 'Mamen', 29000, 3.7, 7, 'France'),
(9, 'Justin', 'Jose', 33000, 4.0, 8, 'Italy'),
(10, 'Mariya', 'Sam', 26000, 4.6, 9, 'Brazil');

select*from persons_1;

select left(Country_name,3) as Firstthree from country_1;

select CONCAT(Fname, ' ', Lname) AS FullName FROM Persons_1;

select COUNT(DISTINCT Country_name) AS Unique_Country_Count from Persons_1;

Select MAX(Population) as Max_Population from Country_1;

select MIN(Population) as Min_Population from Persons_1;

INSERT INTO Persons_1 (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
(11, 'Ashly', NULL, 35000, 4.3, 5, 'Australia'),
(12, 'Jibin', NULL, 42000, 3.9, 3, 'Canada');

select * from persons_1;

SELECT COUNT(Lname) AS CountLname FROM Persons_1;

SELECT COUNT(*) AS TotalRows FROM Persons_1;

SELECT Population FROM Country_1 LIMIT 3;

SELECT * FROM Country_1 ORDER BY RAND() LIMIT 3;

SELECT * FROM Persons_1 ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS TotalPopulation FROM Persons_1 GROUP BY Country_name;

SELECT Country_name FROM Persons_1 GROUP BY Country_name HAVING SUM(Population) > 50000;

SELECT Country_name, COUNT(*) AS TotalPersons, AVG(Rating) AS AvgRating
FROM Persons_1
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY AvgRating ASC;

