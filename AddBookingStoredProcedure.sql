CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(
	in BookingIDInput int,
    in CustomerIDInput int,
    in DateInput date,
    in TableNumberInput int
)
BEGIN
if not exists (
	select *
    from Bookings
    where BookingID=BookingIDInput
)
then
	insert into Bookings (BookingID, CustomerID, Date, TableNumber)
	values (BookingIDInput, CustomerIDInput, DateInput, TableNumberInput);
end if;

select "New booking added" as "Confirmation";
END