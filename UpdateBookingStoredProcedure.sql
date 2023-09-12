CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(in BookingIDInput int, in BookingDateInput date)
BEGIN
update Bookings
set BookingID=BookingIDInput, Date=BookingDateInput
where BookingID=BookingIDInput or BookingID=Null;

select concat("Booking ", BookingIDInput, " updated") as "Confirmation";
END