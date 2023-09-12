CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `littlelemondm`.`itemview` AS
    SELECT 
        `littlelemondm`.`menu`.`MenuName` AS `MenuName`
    FROM
        `littlelemondm`.`menu`
    WHERE
        `littlelemondm`.`menu`.`MenuID` IN (SELECT 
                `littlelemondm`.`orders`.`MenuID`
            FROM
                `littlelemondm`.`orders`
            WHERE
                (`littlelemondm`.`orders`.`Quantity` > 2))