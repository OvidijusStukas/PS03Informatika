DELIMITER $$

DROP PROCEDURE IF EXISTS Usp__Generate_Invoices;

CREATE PROCEDURE Usp__Generate_Invoices()
  BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS services
    AS
      (
        SELECT S.*
        FROM Service S
          INNER JOIN Car C ON C.CarId = S.CarId
        WHERE S.IsActive
              AND NOT EXISTS
        (
          SELECT 1
          FROM Invoice I
          WHERE I.CarId = C.CarId
        )
      );

    CREATE TEMPORARY TABLE IF NOT EXISTS invoices
    AS
      (
        SELECT
            1 AS 'InvoiceTypeId'
          ,  C.CarId
          , 'INV' AS 'Name'
          , COALESCE(CONVERT((SELECT Number FROM Invoice ORDER BY InvoiceId DESC LIMIT 1), SIGNED INTEGER), 0) + 1 AS 'Number'
          , CONCAT(Shop.Country, ' ', Shop.City, ' ', Shop.Street, ' ', Shop.StreetNumber) AS 'SenderName'
          , CONCAT(Reciever.Name, ' ', Reciever.LastName) AS 'ReceiverName'
          , COALESCE((SELECT SUM(price) FROM services WHERE CarId = C.CarId), 0) + C.Price AS 'TotalPrice'
          , CURDATE() AS 'GenerationDate'
          , 'Neapmokėta' AS 'Status'
        FROM Car C
          INNER JOIN User Reciever ON Reciever.UserId = C.UserId
          INNER JOIN Shop Shop ON Shop.ShopId = C.ShopId
        WHERE C.IsSold = 1
      );

    INSERT INTO Invoice (InvoiceTypeId, CarId, Name, Number, SenderName, ReceiverName, TotalPrice, GenerationDate, Status)
      SELECT *
      FROM invoices
      WHERE TotalPrice > 0;
  END $$;

DELIMITER ;