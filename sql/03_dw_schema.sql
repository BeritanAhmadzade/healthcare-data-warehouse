-- Data Warehouse Schema
CREATE TABLE DimPatient(
	Patientkey INT PRIMARY KEY,
	PatientID INT,
	FullName VARCHAR(100),
	Gender VARCHAR(10)
);

CREATE TABLE DimDoctor(
	DoctorKey INT PRIMARY KEY,
	DoctorID INT,
	FullName VARCHAR(100),
	Specialty VARCHAR(100)
);

CREATE TABLE DimDepartment (
	DepartmentKey INT PRIMARY KEY,
	DepartmentID INT,
	DepartmentName VARCHAR(100)
);

CREATE TABLE DimDate(
	DateKey INT PRIMARY KEY,
	FullDate DATE,
	Year INT,
	Month INT
);

CREATE TABLE FactAppointments (
	AppointmentsKey INT PRIMARY KEY,
	PatientKey INT,
	DoctorKey INT,
	DateKey INT,
	status VARCHAR(20)
);

CREATE TABLE FactBilling(
	BiilKey INT PRIMARY KEY,
	AppointmentKey INT,
	DateKey INT,
	Amount DECIMAL(10,2)
);
