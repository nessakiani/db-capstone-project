use littlelemondm;

select * from OrdersView;

select * from expensiveordersview;

select * from itemview;

CALL GetMaxQuantity();

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

call CancelOrder(5);