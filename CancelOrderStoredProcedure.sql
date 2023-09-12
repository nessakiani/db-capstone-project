CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(in OrderInput int)
BEGIN
delete from Orders
where OrderID = OrderInput;

select (concat("Order", OrderInput, " is cancelled")) as "Confirmation";

END