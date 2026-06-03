-- Sample Data
insert into Departments values
(1,'Cardiology'),
(2,'Neurolgy'),
(3,'Emergency');


insert into Doctors values
(1,'Dr.Ali Rezaei','Cardiology',1),
(2,'Dr.Sara Mohammadi','Neurolgy',2),
(3,'Dr.John Smith','Emergency',3);


insert into Patints values 
(1,'Ali Ahmadi','Male','1380-05-01'),
(2,'Sara Ahmadzade','Female','1365-05-23'),
(3,'Reza Karimi','Male','1378-02-24');

insert into Appointments values 
(1,1,1,'1405-01-10','Completed'),
(2,2,2,'1405-02-22','Completed'),
(3,3,3,'1405-03-04','Canceled'),
(4,4,4,'1405-03-05','Completed');


insert into Billing values
(1,1,120.00),
(2,2,150.00),
(3,4,200.00);
