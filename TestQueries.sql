use littlelemondm;

select * from OrdersView;

select * from expensiveordersview;

select * from itemview;

CALL GetMaxQuantity();

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

call CancelOrder(5);

select * from Bookings;

call CheckBooking("2022-11-12", 3);

call AddValidBooking("2022-12-17", 6);

select * from Bookings;

call AddBooking(9, 3, "2022-12-30", 4);

call UpdateBooking(9, "2022-12-17");

call CancelBooking(9);