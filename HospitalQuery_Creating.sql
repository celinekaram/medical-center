--CREATE TABLE Departements(
--dep_id INT,
--sup_id INT,
--departement_name VARCHAR(50),
--floor_nb INT,
--PRIMARY KEY(dep_id),
--)

--CREATE TABLE Position(
--pos_type VARCHAR(20),
--PRIMARY KEY(pos_type),
--)

--CREATE TABLE Employee(
--emp_id INT,
--pos_type VARCHAR(20),
--emp_name VARCHAR(50),
--emp_nb INT,
--cost_of_consultation INT,
--availble_time TIME,
--salary INT,
--dep_id INT,
--PRIMARY KEY(emp_id),
--FOREIGN KEY(dep_id) REFERENCES Departements(dep_id),
--FOREIGN KEY(pos_type) REFERENCES Position(pos_type),
--)



--CREATE TABLE Patients(
--patient_id INT,
--patient_name VARCHAR(50),
--patient_nb INT,
--patient_address VARCHAR(100),
--sex VARCHAR(1),
--date_of_birth DATE,
--injury_type VARCHAR(200),
--PRIMARY KEY(patient_id),
--)

--CREATE TABLE Rooms(
--room_id INT,
--floor_nb INT,
--dep_id INT,
--PRIMARY KEY(room_id),
--FOREIGN KEY(dep_id) REFERENCES Departements(dep_id),
--)

--CREATE TABLE Suppliers(
--supplier_id INT,
--supplier_name VARCHAR(50),
--PRIMARY KEY(supplier_id),
--)

--CREATE TABLE Medications(
--med_name VARCHAR(50),
--supplier_id INT,
--PRIMARY KEY(med_name),
--FOREIGN KEY(supplier_id) REFERENCES Suppliers(supplier_id),
--)

--ALTER TABLE Departements
--ADD FOREIGN KEY(sup_id) REFERENCES Employee(emp_id);

--CREATE TABLE Users(
--	username VARCHAR(50) PRIMARY KEY,
--	password VARCHAR(50),
--	properties VARCHAR(1), --'a' for admin, 'd' for doctor, 'c' for client
--);


----7/11/22 additions:

----DELETE OLD TABLE "Appointments" using the graphical interface
----Medical center's business hours: from 9 to 16
----DATE - format YYYY-MM-DD ex: 2022-07-09
----added a check constraint (CHK)  to limit the value range to the duration of an appointment: 30 min
--constraints (Doctor, date and start time) unique, (room, date, and start time) unique, (patient, date and start time) unique


--CREATE TABLE Appointment (
--    doctor_id INT,
--	patient_id INT,
--	room_id INT,
--    app_date DATE NOT NULL,
--    StartTime time(0) NOT NULL,
--    EndTime time(0) NOT NULL,
--	CONSTRAINT PK_Appointment PRIMARY KEY (doctor_id, app_date, StartTime),
--	CONSTRAINT CHK_THIRTYMIN CHECK (DATEDIFF(MINUTE, StartTime, EndTime)=30),
--    CONSTRAINT CHK_StartTime_BusinessHours CHECK (DATEPART(HOUR, StartTime) > = 9 AND DATEPART(HOUR, StartTime) < = 16),
--    CONSTRAINT CHK_EndTime_BusinessHours CHECK (DATEPART(HOUR, EndTime) > = 9 AND DATEPART(HOUR, DATEADD(SECOND, -1, EndTime)) < = 16),
--	UNIQUE(room_id, app_date, StartTime),
--	UNIQUE(patient_id, app_date, StartTime),
--	FOREIGN KEY(doctor_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
--	FOREIGN KEY(patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
--	FOREIGN KEY(room_id) REFERENCES Rooms(room_id) ON DELETE SET NULL,
--);

--CREATE TABLE DoctorSchedule(
--	Date_schedule Date, 
--	dr_id INT,
--	availableFrom Time(0),
--	availableTo Time(0),
--	PRIMARY KEY(dr_id, availableFrom, Date_schedule),
--	FOREIGN KEY(dr_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
--	CONSTRAINT THIRTYMIN CHECK (DATEDIFF(MINUTE, availableFrom, availableTo)=30),
--    CONSTRAINT StartTime_BusinessHours CHECK (DATEPART(HOUR, availableFrom) > = 9 AND DATEPART(HOUR, availableFrom) < = 16),
--    CONSTRAINT EndTime_BusinessHours CHECK (DATEPART(HOUR, availableTo) > = 9 AND DATEPART(HOUR, DATEADD(SECOND, -1, availableTo)) < = 16),
--);
