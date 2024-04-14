--CREATE DATABASE Employee_Payroll_Backup
 
 CREATE TABLE Work_Location(
  Location_Id VARCHAR(25),
  Location VARCHAR(25),
  Number_Of_Employees INT,
  City VARCHAR(25),
  CONSTRAINT Loc_PK PRIMARY KEY (Location_Id)
  );

  CREATE TABLE Department(
	Department_Id VARCHAR(25),
	Department_Name VARCHAR(30),
	CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
  );

CREATE TABLE Employee(
  Employee_Id VARCHAR(25),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  Location_ID VARCHAR(25),
  CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id),
  FOREIGN KEY (Location_Id)
        REFERENCES Work_Location(Location_Id)
		);

CREATE TABLE History_Employee(
  Employee_Id VARCHAR(25),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  Location_ID VARCHAR(25),
  Action varchar(25),
  Time_stamp DATETIME,
  UpdatedBy nvarchar(50)
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id),
  FOREIGN KEY (Location_Id)
        REFERENCES Work_Location(Location_Id)
		);

  
  CREATE TABLE AccountDetails(
  Account_Id VARCHAR(25),
  Bank_Name VARCHAR(50),
  Account_Number VARCHAR(50),
  Employee_Id VARCHAR(25),
  CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );

  CREATE TABLE Salary(
  Salary_Id INT,
  Gross_Salary INT,
  Hourly_Pay INT,
  State_Tax INT,
  Federal_Tax INT,
  Account_Id VARCHAR(25),
  CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
  FOREIGN KEY (Account_Id)
        REFERENCES ACCOUNTDETAILS(Account_Id)
  );
  
  CREATE TABLE Project(
  Project_Id VARCHAR(25),
  Project_Name VARCHAR(50),
  Project_Description VARCHAR(50),
  CONSTRAINT Project_PK PRIMARY KEY (Project_Id)
  );

  CREATE TABLE DepartmentProject(
  Department_Id VARCHAR(25),
  Project_Id VARCHAR(25),
  CONSTRAINT DEPTPROJECT_PK PRIMARY KEY (Department_Id,Project_Id),
  FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id),
  FOREIGN KEY (Project_Id)
        REFERENCES Project(Project_Id)
  );

  CREATE TABLE Education(
  Education_Id VARCHAR(25),
  Employee_Id VARCHAR(25),
  Degree VARCHAR(30),
  Graduation_Year INT,
  CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  
  
  CREATE TABLE Attendance(
  Attendance_Id VARCHAR(25),
  Hours_Worked INT,
  CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
  );
  
  CREATE TABLE Employee_Attendance(
  Employee_Id VARCHAR(25),
  Attendance_Id VARCHAR(25),
  CONSTRAINT DEPARTMENTPROJECT_PK PRIMARY KEY (Employee_Id,Attendance_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id),
  FOREIGN KEY (Attendance_Id)
        REFERENCES Attendance(Attendance_Id)
  );
  

  ALTER TABLE Employee
  ADD Department_Id VARCHAR(25)
        REFERENCES Department(Department_Id)
