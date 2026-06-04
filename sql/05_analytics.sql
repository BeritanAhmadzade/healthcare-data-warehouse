-- Analytical Queries
SELECT 
	d.FullName,
	COUNT(*) AS TotalAppointments
FROM FactAppointments f
JOIN DimDoctor d
	ON f.DoctorKey=d.DoctorKey
GROUP BY d.FullName;

SELECT 
	Gender,
	Count(*) AS TotalPatients
From DimPatient
GROUP BY Gender;

SELECT
	dd.Year,
	dd.Month,
	Count(*) AS Total Appointments
FROM FactAppointments f
JOIN DimDate dd
	ON f.DateKey=dd.DateKey
GROUP BY 
	dd.Year,
	dd.Month
ORDER BY
	dd.Year,
	dd.Month;

SELECT
    SUM(Amount) AS TotalRevenue
FROM FactBilling;

SELECT
    dep.DepartmentName,
    SUM(b.Amount) AS Revenue
FROM FactBilling b
JOIN FactAppointments a
    ON b.AppointmentKey = a.AppointmentKey
JOIN DimDoctor doc
    ON a.DoctorKey = doc.DoctorKey
JOIN DimDepartment dep
    ON doc.DoctorID = dep.DepartmentKey
GROUP BY dep.DepartmentName;


SELECT TOP 1
	d.FullName,
	COUNT(*) AS TotalAppointments
FROM FactAppointments f
JOIN DimDoctor d
	ON f.DoctorKey=d.DoctorKey
GROUP BY d.FullName
ORDER BY TotalAppointments DESC;
