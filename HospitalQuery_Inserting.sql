--INSERT INTO Departements VALUES (1,NULL,'Emergency',1);
--UPDATE Departements
--SET sup_id=1
--WHERE dep_id=1;

--INSERT INTO Departements VALUES (2,NULL,'Coronary',2);
--INSERT INTO Departements VALUES (3,NULL,'General surgery',3);
--INSERT INTO Departements VALUES (4,NULL,'Radiology',3);
--INSERT INTO Departements VALUES (5,NULL,'Neurology',4);
--INSERT INTO Departements VALUES (6,NULL,'Pediatric',4);

--UPDATE Departements
--SET sup_id=2
--WHERE dep_id=2;

--UPDATE Departements
--SET sup_id=3
--WHERE dep_id=3;

--UPDATE Departements
--SET sup_id=4
--WHERE dep_id=4;

--UPDATE Departements
--SET sup_id=5
--WHERE dep_id=5;

--UPDATE Departements
--SET sup_id=6
--WHERE dep_id=6;

--INSERT INTO Departements VALUES (7,NULL,'Stomach',7);
--UPDATE Departements
--SET sup_id=7
--WHERE dep_id=7;
--INSERT INTO Departements VALUES (8,NULL,'Plastic surgery',8);
--UPDATE Departements
--SET sup_id=8
--WHERE dep_id=8;
--INSERT INTO Departements VALUES (9,NULL,'Respiratory',9);
--UPDATE Departements
--SET sup_id=9
--WHERE dep_id=9;



--INSERT INTO Position VALUES('Doctor');
--INSERT INTO Position VALUES('Nurse');
--INSERT INTO Position VALUES('CEO');
--INSERT INTO Position VALUES('Receptionist');
--INSERT INTO Position VALUES('General manager');
--INSERT INTO Position VALUES('Technician');



--INSERT INTO Employee VALUES(1,'Doctor','Celine',71000000,50,'2:00',2000,3);
--INSERT INTO Employee VALUES(2,'Doctor','Eliana',71000001,60,'3:00',2050,3);
--INSERT INTO Employee VALUES(3,'Doctor','Vahe',71000002,70,'4:00',2100,5);
--INSERT INTO Employee VALUES(4,'Doctor','Georges',71000003,50,'1:00',1900,4);
--INSERT INTO Employee VALUES(5,'Doctor','Mark',71000004,60,'5:00',2000,6);
--INSERT INTO Employee VALUES(6,'Doctor','Kevin',71000005,50,'3:00',1800,2);
--INSERT INTO Employee VALUES(7,'Doctor','Nour',71000006,55,'2:00',2050,1);
--INSERT INTO Employee VALUES(8,'Doctor','Joe',71000007,70,'1:00',2050,1);



--INSERT INTO Patients VALUES (9,'Vahe',71700001,'Bteghrine','M','12-8-2002','Broken hand');
--INSERT INTO Patients VALUES (2,'Celine',71700002,'Beirut','F','1-2-2001','Head ache');
--INSERT INTO Patients VALUES (3,'Nour',71700003,'Jounieh','F','2-3-2001','Stomach ache');
--INSERT INTO Patients VALUES (4,'Joe',71700004,'Kaslik','M','3-15-2001','Broken foot');
--INSERT INTO Patients VALUES (5,'Fouad',71700005,'Jdaideh','M','7-21-2002','Corona');
--INSERT INTO Patients VALUES (6,'Georges',71700006,'Batroun','M','2-17-2000','Asma');
--INSERT INTO Patients VALUES (7,'Eliana',71700008,'Roumieh','F','6-12-2001','Pregnant');
--INSERT INTO Patients VALUES (8,'Tatiana',71700009,'Zahle','F','1-2-2002','Head ache');



--INSERT INTO Rooms VALUES (1,1,1);
--INSERT INTO Rooms VALUES (2,1,1);
--INSERT INTO Rooms VALUES (3,1,1);
--INSERT INTO Rooms VALUES (4,2,2);
--INSERT INTO Rooms VALUES (5,2,2);
--INSERT INTO Rooms VALUES (6,2,3);
--INSERT INTO Rooms VALUES (7,2,3);
--INSERT INTO Rooms VALUES (8,3,4);
--INSERT INTO Rooms VALUES (9,3,5);
--INSERT INTO Rooms VALUES (10,3,6);
--INSERT INTO Rooms VALUES (11,3,7);
--INSERT INTO Rooms VALUES (12,4,8);
--INSERT INTO Rooms VALUES (13,4,9);

--INSERT INTO Users VALUES ('Kevin','12345','a');
--INSERT INTO Users VALUES ('Celine','1234','d');
--INSERT INTO Users VALUES ('Vahe','123456','c');
--INSERT INTO Users VALUES ('Fouad','123','d');
--INSERT INTO Users VALUES ('Eliana','54321','c');
--INSERT INTO Users VALUES ('Karny','543','c');
--INSERT INTO Users VALUES ('Georges','5454','c');
--INSERT INTO Users VALUES ('Cyril','9786','d');
--INSERT INTO Users VALUES ('Nour','4568','c');
--INSERT INTO Users VALUES ('Tatiana','9156','c');
--INSERT INTO Users VALUES ('Marc Hage','7979','d');
--INSERT INTO Users VALUES ('Ronaldo','8256','d');
--INSERT INTO Users VALUES ('Joe','1245','c');
--INSERT INTO Users VALUES ('Jane','12345456','c');
--INSERT INTO Users VALUES ('Marc Hamouch','12345','c');

--INSERT INTO Suppliers VALUES(301, 'Mersaco')
--INSERT INTO Suppliers VALUES(302, 'Megapharmaplus')
--INSERT INTO Suppliers VALUES(303, 'Pharmamed')
--INSERT INTO Suppliers VALUES(304, 'AlamPharm')
--INSERT INTO Suppliers VALUES(305, 'FDC Distribution Center')
--INSERT INTO Suppliers VALUES(306, 'Alpha-Tech')

--INSERT INTO Medications VALUES('Amlodipine', 301)
--INSERT INTO Medications VALUES('Omeprazole', 301)
--INSERT INTO Medications VALUES('Sertraline', 302)
--INSERT INTO Medications VALUES('Fluoxetine', 305)
--INSERT INTO Medications VALUES('Potassium', 304)
--INSERT INTO Medications VALUES('Aspirin', 303)
--INSERT INTO Medications VALUES('Atenolol', 305)
--INSERT INTO Medications VALUES('Zolpidem', 306)
--INSERT INTO Medications VALUES('Hydroxyzine', 302)
--INSERT INTO Medications VALUES('Pyralvex', 305)
--INSERT INTO Medications VALUES('Maalox Plus', 301)
--INSERT INTO Medications VALUES('Belmazol', 303)
--INSERT INTO Medications VALUES('Betadine', 302)
--INSERT INTO Medications VALUES('Fucidine', 304)
--INSERT INTO Medications VALUES('Paracetamol', 304)
--INSERT INTO Medications VALUES('Hydrocodone', 405)
--INSERT INTO Medications VALUES('Xanax', 406)
--INSERT INTO Medications VALUES('Losartan', 406)
--INSERT INTO Medications VALUES('Antibiotics', 406)
--INSERT INTO Medications VALUES('Antihistamine', 302)
--INSERT INTO Medications VALUES('Panadol', 301)
--INSERT INTO Medications VALUES('Antihistamine', 301)
--INSERT INTO Medications VALUES('Lexotanil', 304)
--INSERT INTO Medications VALUES('Depakine', 304)
--INSERT INTO Medications VALUES('Ditrospam', 303)
--INSERT INTO Medications VALUES('Clopidogrel', 306)
--INSERT INTO Medications VALUES('Peramivir', 303)
--INSERT INTO Medications VALUES('Advil', 304)
--INSERT INTO Medications VALUES('ibuprofen', 302)
--INSERT INTO Medications VALUES('Naproxen', 302)

--INSERT INTO Appointment VALUES (1, 5, 1, '2022-09-16', '09:00:00', '09:30:00');
--INSERT INTO Appointment VALUES (2, 3, 2, '2022-09-16', '09:00:00', '9:30:00');
--INSERT INTO Appointment VALUES (5, 2, 3, '2022-09-16', '09:00:00', '9:30:00');
--INSERT INTO Appointment VALUES (2,3,2, '2022-09-17', '10:00:00', '10:30:00');
--INSERT INTO Appointment VALUES (5,2,4, '2022-09-16', '9:30:00', '10:00:00');
--INSERT INTO Appointment VALUES (1,3,2, '2022-09-16', '12:00:00', '12:30:00');
--INSERT INTO Appointment VALUES (4,7,4, '2022-09-18', '13:00:00', '13:30:00');
--INSERT INTO Appointment VALUES (5,3, 8, '2022-09-19', '11:30:00', '12:00:00');

--INSERT INTO DoctorSchedule VALUES('2022-09-16', 1, '9:30:00', '10:00:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-16', 1, '10:00:00', '10:30:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-16', 2, '11:00:00', '11:30:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-17', 4, '12:00:00', '12:30:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-17', 4, '12:30:00', '13:00:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-16', 5, '10:00:00', '10:30:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-16', 5, '11:00:00', '11:30:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-17', 5, '10:30:00', '11:00:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-17', 4, '10:30:00', '11:00:00');
--INSERT INTO DoctorSchedule VALUES('2022-09-16', 4, '11:00:00', '11:30:00');
