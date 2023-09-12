CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(in BookingIDInput int)
BEGIN
if exists (
	select *
    from Bookings
    where BookingID=BookingIDInput
)
then
	delete from Bookings
	where BookingID=BookingIDInput;
    select concat("Booking ", BookingIDInput, " cancelled") as "Confirmation";
end if;

END