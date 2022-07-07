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

--CREATE TABLE Appointments(
--emp_id INT,
--patient_id INT,
--room_id INT,
--app_date DATE,
--PRIMARY KEY(emp_id,patient_id),
--FOREIGN KEY(emp_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
--FOREIGN KEY(patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
--FOREIGN KEY(room_id) REFERENCES Rooms(room_id) ON DELETE SET NULL,
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

--ALTER TABLE Appointments
--ADD app_time TIME;

