insert into CustomerDetails (CustomerID, CustomerNames, ContactDetails)
values
	(1, "Nessa", "nessk@gmail.com"),
    (2, "Isabelle", "isabelle@gmail.com"),
    (3, "Polina", "polina@gmail.com");

insert into Bookings (BookingID, Date, TableNumber, StaffID, CustomerID)
values
	(1, '2022-10-10', 5, Null, 1),
    (2, '2022-11-12', 3, Null, 3),
    (3, '2022-10-11', 2, Null, 2),
    (4, '2022-10-13', 2, Null, 1);