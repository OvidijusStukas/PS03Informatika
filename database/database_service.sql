CREATE TABLE IF NOT EXISTS ServiceType
(
  ServiceTypeId INT           NOT NULL AUTO_INCREMENT,
  ServiceName   NVARCHAR(120) NOT NULL,

  CONSTRAINT PK_ServiceType__ServiceTypeId PRIMARY KEY (ServiceTypeId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Service
(
  ServiceId     INT            NOT NULL AUTO_INCREMENT,
  ServiceTypeId INT            NOT NULL,
  CarId         INT            NOT NULL,
  Price         DECIMAL(19, 2) NOT NULL,
  Description   TEXT           NOT NULL,
  IsActive      BIT            NOT NULL,

  CONSTRAINT PK_Service__ServiceId     PRIMARY KEY (ServiceId),
  CONSTRAINT FK_Service__ServiceTypeId FOREIGN KEY (ServiceTypeId) REFERENCES ServiceType(ServiceTypeId),
  CONSTRAINT FK_Service__CarId         FOREIGN KEY (CarId)         REFERENCES Car(CarId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS ServiceRating
(
  ServiceRatingId INT  NOT NULL AUTO_INCREMENT,
  ServiceId       INT  NOT NULL,
  Rating          INT  NOT NULL,
  Description     TEXT NOT NULL,
  CreationDate    DATE NOT NULL,
  IsActive        BIT  NOT NULL,

  CONSTRAINT PK_ServiceRating__ServiceRatingId PRIMARY KEY (ServiceRatingId),
  CONSTRAINT FK_ServiceRating__Service         FOREIGN KEY (ServiceId) REFERENCES Service(ServiceId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS InvoiceType
(
  InvoiceTypeId INT           NOT NULL AUTO_INCREMENT,
  Name          NVARCHAR(120) NOT NULL,

  CONSTRAINT PK_InvoiceType__InvoiceTypeId PRIMARY KEY (InvoiceTypeId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Invoice
(
  InvoiceId      INT            NOT NULL AUTO_INCREMENT,
  InvoiceTypeId  INT            NOT NULL,
  CarId          INT            NOT NULL,
  Name           NVARCHAR(120)  NOT NULL,
  Number         NVARCHAR(30)   NOT NULL,
  SenderName     NVARCHAR(50)   NOT NULL,
  ReceiverName   NVARCHAR(50)   NOT NULL,
  TotalPrice     DECIMAL(19, 2) NOT NULL,
  GenerationDate DATETIME       NOT NULL,
  Status         NVARCHAR(30)   NOT NULL,

  CONSTRAINT PK_Invoice__InvoiceId     PRIMARY KEY (InvoiceId),
  CONSTRAINT FK_Invoice__InvoiceTypeId FOREIGN KEY (InvoiceTypeId) REFERENCES InvoiceType(InvoiceTypeId),
  CONSTRAINT FK_Invoice__CarId         FOREIGN KEY (CarId)         REFERENCES Car(CarId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;