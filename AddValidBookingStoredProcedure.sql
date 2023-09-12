CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(in InputDate date, in InputTableNumber int)
BEGIN
start transaction;

if exists (
	select *
    from Bookings
    where Date=InputDate and TableNumber=InputTableNumber)
then
    set @BookingStatus = concat("Table", InputTableNumber, " is already booked - booking cancelled");
    commit;
else 
	insert into Bookings (BookingID, Date, TableNumber)
	values (floor(rand(3)), InputDate, InputTableNumber);
    commit;
end if;

END