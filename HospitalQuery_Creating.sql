CREATE TABLE Departements(
dep_id INT IDENTITY(1,1) PRIMARY KEY,
sup_id INT,
departement_name VARCHAR(50),
floor_nb INT,
)

CREATE TABLE Employee(
emp_id INT IDENTITY(1,1) PRIMARY KEY,
emp_name VARCHAR(50),
emp_username VARCHAR(50),
emp_nb INT,
cost_of_consultation INT,
salary INT,
dep_id INT,
room_nb INT,
FOREIGN KEY(dep_id) REFERENCES Departements(dep_id),
)

CREATE TABLE Patients(
patient_id INT IDENTITY(1,1) PRIMARY KEY,
patient_username VARCHAR(50),
patient_name VARCHAR(50),
patient_nb INT,
patient_address VARCHAR(100),
sex VARCHAR(1),
date_of_birth DATE,
)

CREATE TABLE Suppliers(
supplier_id INT,
supplier_name VARCHAR(50),
PRIMARY KEY(supplier_id),
)

CREATE TABLE Medications(
med_name VARCHAR(50),
supplier_id INT,
quantity INT,
price_in_LBP INT,
PRIMARY KEY(med_name),
FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id),
)

CREATE TABLE Users(
	username VARCHAR(50) PRIMARY KEY,
	password VARCHAR(50),
	properties VARCHAR(1), --'a' for admin, 'd' for doctor, 'c' for client
);

CREATE TABLE Appointments(
    doctor_id INT,
	patient_id INT,
	DayOfWeek VARCHAR(10),
    StartTime time(0) NOT NULL,
    EndTime time(0) NOT NULL,
	CONSTRAINT PK_Appointments PRIMARY KEY (doctor_id, DayOfWeek, StartTime),
    CONSTRAINT CHECK_ONEHOUR CHECK (DATEDIFF(HOUR, StartTime, EndTime)=1),
	CONSTRAINT CHECK_StartTime_BusinessHours CHECK (DATEPART(HOUR, StartTime) > = 11 AND DATEPART(HOUR, StartTime) < = 16),
    CONSTRAINT CHECK_EndTime_BusinessHours CHECK (DATEPART(HOUR, EndTime) > = 11 AND DATEPART(HOUR, DATEADD(SECOND, -1, EndTime)) < = 16),
	UNIQUE(patient_id, DayOfWeek, StartTime),
	FOREIGN KEY(doctor_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
	FOREIGN KEY(patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE
);
