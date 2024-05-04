CREATE DATABASE ucp;
USE ucp;

-- Q:1
CREATE TABLE patient(
	PatienTID VARCHAR (15) PRIMARY KEY,
	Name VARCHAR (15),
	Age int,
	Gender VARCHAR(5),
	Address VARCHAR(20),
	Disease VARCHAR(10),
	DoctorID VARCHAR(15)
);
-- ___Q:2

ALTER TABLE patient
MODIFY Gender CHAR;
-- __Q:3

CREATE TABLE doctor(
DoctorID VARCHAR(15) PRIMARY KEY,
Name VARCHAR (15),
Age int,
Gender CHAR,
Address varchar(20)
);
-- __Q:4

ALTER TABLE doctor
ADD COLUMN DoctorWard VARCHAR(15);
-- ____Q:5

ALTER TABLE patient
ADD CONSTRAINT FK_patient_doctor FOREIGN KEY(DoctorID) REFERENCES doctor(DoctorID);

-- _Q:6

CREATE TABLE lab(
	LabID VARCHAR (15),
	TestDate DATE,
	TestAmount VARCHAR(20),
	PatientID VARCHAR(15),
	DoctorID VARCHAR(15)
);

-- __Q:7

ALTER TABLE lab
ADD CONSTRAINT FK_lab_doctor FOREIGN KEY(DoctorID) REFERENCES doctor(DoctorID);

-- ___Q:8

ALTER TABLE lab
ADD CONSTRAINT FK_lab_patient FOREIGN KEY(PatientID) REFERENCES patient(PatientID);

-- ___Q:9

ALTER TABLE lab
CHANGE COLUMN TestAmount Amount VARCHAR(10);

-- ___Q:10

ALTER TABLE lab
MODIFY  Amount DOUBLE;

-- ___Q:11

ALTER TABLE lab
ADD LabNo VARCHAR(10);

-- ___Q:12

CREATE TABLE HospitalRoom(
	RoomID VARCHAR (15) PRIMARY KEY,
	RoomAllocationDate DATE,
	RoomType VARCHAR(20),
	RoomStatus VARCHAR(5)
);

-- ___Q:13

CREATE TABLE PatientBill(
	BillID VARCHAR (15) PRIMARY KEY,
	BillDate DATE,
	Amount VARCHAR(20),
	PatientID VARCHAR(15)
);

-- _Q:14

ALTER TABLE PatientBill
ADD CONSTRAINT FK_PatientBill_patient FOREIGN KEY (PatientID) REFERENCES patient(PatientID);

-- _Q:15

ALTER TABLE HospitalRoom
RENAME  TO Room;








