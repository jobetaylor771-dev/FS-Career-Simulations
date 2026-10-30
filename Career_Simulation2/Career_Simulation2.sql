---Question 1: Create a database and three seperate tables 

---Question 1.a Create a Database named employee 
/* For this question I clicked on the 'Connections' icon and from there clicked on the 'SQLITE' icon
 and from there I created a path to my class folder on my desktop. With this I named the database 
 employee.db
 */

---Question 1.b Data Science Table 
/* For this question I downloaded the .CSV table to my desktop, and then from there right clicked
on the 'employee.db' icon scrolled to 'import data', used source form .CSV, browsed my destop for the data_science_team
file and completed the upload....However, I was having a difficult time assigning the Primary and Foreign Keys so I 
dropped the tables and manually entered the data */

DROP TABLE IF EXISTS data_science_team;
CREATE TABLE data_science_team (
    EMP_ID TEXT PRIMARY KEY,
    FIRST_NAME TEXT,
    LAST_NAME TEXT,
    GENDER TEXT,
    ROLE TEXT,
    DEPT TEXT,
    EXP INTEGER,
    COUNTRY TEXT,
    CONTINENT TEXT
);

INSERT INTO data_science_team
(EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT)
VALUES
('E005', 'Eric', 'Hoffman', 'M', 'LEAD DATA SCIENTIST', 'FINANCE', 11, 'USA', 'NORTH AMERICA'),
('E010', 'William', 'Butler', 'M', 'LEAD DATA SCIENTIST', 'AUTOMOTIVE', 12, 'FRANCE', 'EUROPE'),
('E052', 'Dianna', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 6, 'CANADA', 'NORTH AMERICA'),
('E057', 'Dorothy', 'Wilson', 'F', 'SENIOR DATA SCIENTIST', 'HEALTHCARE', 9, 'USA', 'NORTH AMERICA'),
('E204', 'Karene', 'Nowak', 'F', 'SENIOR DATA SCIENTIST', 'AUTOMOTIVE', 8, 'GERMANY', 'EUROPE'),
('E245', 'Nian', 'Zhen', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 6, 'CHINA', 'ASIA'),
('E260', 'Roy', 'Collins', 'M', 'SENIOR DATA SCIENTIST', 'RETAIL', 7, 'INDIA', 'ASIA'),
('E403', 'Steve', 'Hoffman', 'M', 'ASSOCIATE DATA SCIENTIST', 'FINANCE', 4, 'USA', 'NORTH AMERICA'),
('E478', 'David', 'Smith', 'M', 'ASSOCIATE DATA SCIENTIST', 'RETAIL', 3, 'COLOMBIA', 'SOUTH AMERICA'),
('E505', 'Chad', 'Wilson', 'M', 'ASSOCIATE DATA SCIENTIST', 'HEALTHCARE', 5, 'CANADA', 'NORTH AMERICA'),
('E532', 'Claire', 'Brennan', 'F', 'ASSOCIATE DATA SCIENTIST', 'AUTOMOTIVE', 3, 'GERMANY', 'EUROPE'),
('E620', 'Katrina', 'Allen', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 2, 'INDIA', 'ASIA'),
('E640', 'Jenifer', 'Jhones', 'F', 'JUNIOR DATA SCIENTIST', 'RETAIL', 1, 'COLOMBIA', 'SOUTH AMERICA');

SELECT * FROM data_science_team;

---Question 1.c Employee Record Table 
CREATE TABLE emp_record_table (
    EMP_ID TEXT PRIMARY KEY,
    FIRST_NAME TEXT,
    LAST_NAME TEXT,
    GENDER TEXT,
    ROLE TEXT,
    DEPT TEXT,
    EXP INTEGER,
    COUNTRY TEXT,
    CONTINENT TEXT,
    SALARY INTEGER,
    EMP_RATING INTEGER,
    MANAGER_ID TEXT,
    PROJ_ID TEXT,
    FOREIGN KEY (MANAGER_ID)
        REFERENCES emp_record_table(EMP_ID),
    FOREIGN KEY (PROJ_ID)
        REFERENCES proj_table(PROJECT_ID)
);

CREATE TABLE emp_record_table (
    EMP_ID TEXT PRIMARY KEY,
    FIRST_NAME TEXT,
    LAST_NAME TEXT,
    GENDER TEXT,
    ROLE TEXT,
    DEPT TEXT,
    EXP INTEGER,
    COUNTRY TEXT,
    CONTINENT TEXT,
    SALARY INTEGER,
    EMP_RATING INTEGER,
    MANAGER_ID TEXT,
    PROJ_ID TEXT,
    FOREIGN KEY (MANAGER_ID)
        REFERENCES emp_record_table(EMP_ID),
    FOREIGN KEY (PROJ_ID)
        REFERENCES proj_table(PROJECT_ID)
);

INSERT INTO emp_record_table VALUES
('E001','Arthur','Black','M','PRESIDENT','ALL',20,'USA','NORTH AMERICA',16500,5,NULL,NULL),
('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA',8500,3,'E103','P105'),
('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE',9000,2,'E428','P204'),
('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA',5500,5,'E083','P103'),
('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA',7700,1,'E083','P302'),
('E083','Patrick','Voltz','M','MANAGER','HEALTHCARE',15,'USA','NORTH AMERICA',9500,5,'E001',NULL),
('E103','Emily','Grove','F','MANAGER','FINANCE',14,'CANADA','NORTH AMERICA',10500,4,'E001',NULL),
('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE',7500,5,'E428','P204'),
('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA',6500,2,'E583','P109'),
('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA',7000,3,'E583',NULL),
('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA',5000,3,'E103','P105'),
('E428','Pete','Allen','M','MANAGER','AUTOMOTIVE',14,'GERMANY','EUROPE',11000,4,'E001',NULL),
('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA',4000,4,'E583','P109'),
('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA',5000,2,'E083','P103'),
('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE',4300,1,'E428','P204'),
('E583','Janet','Hale','F','MANAGER','RETAIL',14,'COLOMBIA','SOUTH AMERICA',10000,2,'E001',NULL),
('E612','Tracy','Norris','F','MANAGER','RETAIL',13,'INDIA','ASIA',8500,4,'E001',NULL),
('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA',3000,1,'E612','P406'),
('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA',2800,4,'E612','P406');

SELECT * FROM emp_record_table;

---Question 1.d 
CREATE TABLE proj_table (
    PROJECT_ID TEXT PRIMARY KEY,
    PROJ_NAME TEXT,
    DOMAIN TEXT,
    START_DATE TEXT,
    CLOSURE_DATE TEXT,
    DEV_QTR TEXT,
    STATUS TEXT
);

INSERT INTO proj_table
(PROJECT_ID, PROJ_NAME, DOMAIN, START_DATE, CLOSURE_DATE, DEV_QTR, STATUS)
VALUES
('P103', 'Drug Discovery', 'HEALTHCARE', '2021-04-06', '2021-06-20', 'Q1', 'DONE'),
('P105', 'Fraud Detection', 'FINANCE', '2021-04-11', '2021-06-25', 'Q1', 'DONE'),
('P109', 'Market Basket Analysis', 'RETAIL', '2021-04-12', '2021-06-30', 'Q1', 'DELAYED'),
('P204', 'Supply Chain Management', 'AUTOMOTIVE', '2021-07-15', '2021-09-28', 'Q2', 'WIP'),
('P302', 'Early Detection of Lung Cancer', 'HEALTHCARE', '2021-10-08', '2021-12-18', 'Q3', 'YTS'),
('P406', 'Customer Sentiment Analysis', 'RETAIL', '2021-07-09', '2021-09-24', 'Q2', 'WIP');

SELECT * FROM proj_table;


---Question 2: Create an ER table
/* To ensure that er_diagram would actually be conneccted I had to 
add Primary and Foreign keys below is the code for that */

---Question 3
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    DEPT AS DEPARTMENT
FROM emp_record_table;

---Question 4.a: Employee Rating Less Than 2: 
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    DEPT,
    EMP_RATING
FROM emp_record_table
WHERE EMP_RATING < 2;

---Question 4.b: Employee Rating Greater Than 4:
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    DEPT,
    EMP_RATING
FROM emp_record_table
WHERE EMP_RATING > 4;

---Question 4.c: Employee Rating Between 2 and 4:
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    DEPT,
    EMP_RATING
FROM emp_record_table
WHERE EMP_RATING BETWEEN 2 AND 4
ORDER BY EMP_RATING;

---Question 5 Concatenate First and Last Name
SELECT
    FIRST_NAME || ' ' || LAST_NAME AS NAME
FROM emp_record_table
WHERE DEPT = 'FINANCE';

---Question 6 Employees With Leadership Positions
SELECT
    EMP_ID,
    FIRST_NAME,
    ROLE,
    DEPT
FROM emp_record_table
WHERE ROLE IN ('MANAGER', 'PRESIDENT', 'CEO');

---Question 7 Healtcare & Finance Union
SELECT *
FROM emp_record_table
WHERE DEPT = 'HEALTHCARE'

UNION

SELECT *
FROM emp_record_table
WHERE DEPT = 'FINANCE'

ORDER BY DEPT, EMP_ID;

---Question 8 Max. Employee Rating for the Department
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    ROLE,
    DEPT AS DEPARTMENT,
    EMP_RATING,
    MAX(EMP_RATING) OVER (
        PARTITION BY DEPT
    ) AS MAX_DEPT_RATING
FROM emp_record_table
ORDER BY DEPT, EMP_ID;

---Question 9 Minimum and Maximum Salaries 
SELECT
    ROLE,
    MIN(SALARY) AS MIN_SALARY,
    MAX(SALARY) AS MAX_SALARY
FROM emp_record_table
GROUP BY ROLE
ORDER BY ROLE;

---Question 10 Rank Based on Experience 
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    EXP,
    RANK() OVER (ORDER BY EXP DESC) AS EXPERIENCE_RANK
FROM emp_record_table
ORDER BY EXPERIENCE_RANK;

---Question 11 Employees with Salary > $6000
CREATE VIEW High_Salary_Employees AS
SELECT *
FROM emp_record_table
WHERE SALARY > 6000;

SELECT *
FROM High_Salary_Employees;

---Question 12 Employes with Expereince > 10 year
SELECT *
FROM emp_record_table
WHERE EMP_ID IN (
    SELECT EMP_ID
    FROM emp_record_table
    WHERE EXP > 10
);

---Question 13 Standard of Selection
SELECT
    ds.EMP_ID,
    ds.FIRST_NAME,
    ds.EXP,
    ds.ROLE AS ASSIGNED_PROFILE,
    CASE
        WHEN ds.EXP <= 2 THEN 'JUNIOR DATA SCIENTIST'
        WHEN ds.EXP > 2 AND ds.EXP <= 5 THEN 'ASSOCIATE DATA SCIENTIST'
        WHEN ds.EXP > 5 AND ds.EXP <= 10 THEN 'SENIOR DATA SCIENTIST'
        WHEN ds.EXP > 10 AND ds.EXP <= 12 THEN 'LEAD DATA SCIENTIST'
        WHEN ds.EXP > 12 AND ds.EXP <= 16 THEN 'MANAGER'
        ELSE 'OUTSIDE DEFINED STANDARD'
    END AS STANDARD_PROFILE,
    CASE
        WHEN UPPER(ds.ROLE) = (
            CASE
                WHEN ds.EXP <= 2 THEN 'JUNIOR DATA SCIENTIST'
                WHEN ds.EXP <= 5 THEN 'ASSOCIATE DATA SCIENTIST'
                WHEN ds.EXP <= 10 THEN 'SENIOR DATA SCIENTIST'
                WHEN ds.EXP <= 12 THEN 'LEAD DATA SCIENTIST'
                WHEN ds.EXP <= 16 THEN 'MANAGER'
                ELSE 'OUTSIDE DEFINED STANDARD'
            END
        ) THEN 'MATCH'
        ELSE 'MISMATCH'
    END AS PROFILE_CHECK
FROM data_science_team ds
ORDER BY ds.EXP;

---Question 14 Calculated Bonus 
SELECT
    EMP_ID,
    FIRST_NAME,
    LAST_NAME,
    SALARY,
    EMP_RATING,
    SALARY * 0.05 * EMP_RATING AS BONUS
FROM emp_record_table
ORDER BY EMP_ID;

---Question 15 Average Salary Distribution
SELECT
    CONTINENT,
    COUNTRY,
    AVG(SALARY) AS AVG_SALARY
FROM emp_record_table
GROUP BY CONTINENT, COUNTRY
ORDER BY CONTINENT, COUNTRY;