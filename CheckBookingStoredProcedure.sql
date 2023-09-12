CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(in InputDate date, in InputTableNumber int)
BEGIN
set @BookingStatus = concat("Table", InputTableNumber, " is already booked");

select @BookingStatus as "Booking Status"
where exists (
	select *
    from Bookings
    where Date=InputDate and TableNumber=InputTableNumber
);
END