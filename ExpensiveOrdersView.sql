CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `littlelemondm`.`expensiveordersview` AS
    SELECT 
        `littlelemondm`.`customerdetails`.`CustomerID` AS `CustomerID`,
        `littlelemondm`.`customerdetails`.`CustomerNames` AS `CustomerName`,
        `littlelemondm`.`orders`.`OrderID` AS `OrderID`,
        `littlelemondm`.`orders`.`TotalCost` AS `Cost`,
        `littlelemondm`.`menu`.`MenuName` AS `MenuName`,
        `littlelemondm`.`menuitems`.`CourseName` AS `CourseName`,
        `littlelemondm`.`menuitems`.`StarterName` AS `StarterName`
    FROM
        (((`littlelemondm`.`customerdetails`
        JOIN `littlelemondm`.`orders` ON ((`littlelemondm`.`customerdetails`.`CustomerID` = `littlelemondm`.`orders`.`CustomerID`)))
        JOIN `littlelemondm`.`menu` ON ((`littlelemondm`.`orders`.`MenuID` = `littlelemondm`.`menu`.`MenuID`)))
        JOIN `littlelemondm`.`menuitems` ON ((`littlelemondm`.`menu`.`MenuItemID` = `littlelemondm`.`menuitems`.`MenuItemID`)))
    WHERE
        (`littlelemondm`.`orders`.`TotalCost` > 150)
    ORDER BY `littlelemondm`.`orders`.`TotalCost`