prepare GetOrderDetail
from '
	select OrderID, Quantity, TotalCost
    from Orders
    where CustomerID = ?
';