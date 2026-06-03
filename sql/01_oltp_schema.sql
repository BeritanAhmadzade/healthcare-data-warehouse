-- OLTP Schema
USE HealthcareDW;
GO
create table Departments(
	DepartmentID int primary key,
	DepartmentName varchar(100) not null
);
create table Doctors (
	DoctorID int primary key,
	FullName varchar(100) not null,
	Specialty varchar(100),
	DepartmentID int  not null,
	foreign key (DepartmentID)
	references Departments(DepartmentID)
);
create table Patients(
	PatientID int primary key,
	FullName varchar(100) not null,
	gender varchar(10),
	BirthDate Date
);
create table Appointments(
	AppointmentID int primary key,
	PatientID int not null,
	DoctorID int not null,
	AppointmentDate Date not null,
	Status Varchar (20),
	
	foreign key(PatientID)
	references Patients(PatientID),

	foreign key(DoctorID)
	references Doctors(DoctorID)
);
create table Billing(
	BillID int primary key,
	AppointmentID int not null,
	Amount decimal(10,2),

	foreign key (AppointmentID)
	references Appointments (AppointmentID)
);
