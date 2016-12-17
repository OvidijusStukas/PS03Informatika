CREATE TABLE IF NOT EXISTS UserRole
(
  UserRoleId    INT           NOT NULL AUTO_INCREMENT,
  UserRoleName  NVARCHAR(50)  NOT NULL,

  CONSTRAINT PK_UserRole__UserRoleId    PRIMARY KEY (UserRoleId),
  CONSTRAINT UQ_UserRole__UserRoleName  UNIQUE      (UserRoleName)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Shop
(
  ShopId        INT           NOT NULL AUTO_INCREMENT,
  Country       NVARCHAR(60)  NOT NULL,
  City          NVARCHAR(30)  NOT NULL,
  Street        NVARCHAR(60)  NOT NULL,
  StreetNumber  VARCHAR(10)   NOT NULL,
  ZipCode       VARCHAR(20)   NOT NULL,
  Currency      NVARCHAR(30)  NOT NULL,

  CONSTRAINT PK_Shop__ShopId PRIMARY KEY (ShopId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS User
(
  UserId      INT           NOT NULL AUTO_INCREMENT,
  UserRoleId  INT           NOT NULL,
  ShopId      INT           NULL,
  UserName    NVARCHAR(60)  NOT NULL,
  Password    VARCHAR(60)   NOT NULL,
  Email       VARCHAR(254)  NOT NULL,
  Name        NVARCHAR(60)  NOT NULL,
  LastName    NVARCHAR(60)  NOT NULL,
  Address     NVARCHAR(512) NOT NULL,
  IsActive    BIT           NOT NULL,

  CONSTRAINT PK_User__UserId     PRIMARY KEY (UserId),
  CONSTRAINT UQ_User__UserName   UNIQUE      (UserName),
  CONSTRAINT FK_User__UserRoleId FOREIGN KEY (UserRoleId) REFERENCES UserRole(UserRoleId),
  CONSTRAINT FK_User__ShopId     FOREIGN KEY (ShopId)     REFERENCES Shop(ShopId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS persistent_logins (
  series    NVARCHAR(64) NOT NULL,
  token     NVARCHAR(64) NOT NULL,
  username  NVARCHAR(64) NOT NULL,
  last_used TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,


  CONSTRAINT `pk__persistent_logins__series` PRIMARY KEY (`series`)
) CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS CarConfigurationIndex
(
  CarConfigurationIndexId INT           NOT NULL AUTO_INCREMENT,
  Name                    NVARCHAR(120) NOT NULL,

  CONSTRAINT PK_CarConfigurationIndex__CarConfigurationIndexId PRIMARY KEY (CarConfigurationIndexId),
  CONSTRAINT UQ_CarConfigurationIndex__Name                    UNIQUE      (Name)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS CarConfigurationPosition
(
  CarConfigurationPositionId INT            NOT NULL AUTO_INCREMENT,
  CarConfigurationIndexId    INT            NOT NULL,
  Name                       NVARCHAR(120)  NOT NULL,
  Value                      NVARCHAR(2000) NOT NULL,

  CONSTRAINT PK_CarConfigurationPosition__CarConfigurationPositionId   PRIMARY KEY (CarConfigurationPositionId),
  CONSTRAINT FK_CarConfigurationPosition__CarConfigurationIndexId      FOREIGN KEY (CarConfigurationIndexId) REFERENCES CarConfigurationIndex(CarConfigurationIndexId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Car
(
  CarId              INT            NOT NULL AUTO_INCREMENT,
  ShopId             INT            NOT NULL,
  BrandId            INT            NOT NULL,
  ModelId            INT            NOT NULL,
  Year               INT            NOT NULL,
  Price              DECIMAL(19, 2) NOT NULL,
  DistanceTraveled   BIGINT         NOT NULL,
  FuelTypeId         INT            NOT NULL,
  ChassisTypeId      INT            NOT NULL,
  WorkingCapacity    DECIMAL(5, 2)  NOT NULL,
  TransmissionTypeId INT            NOT NULL,
  Power              INT            NOT NULL,
  WheelPositionId    INT            NOT NULL,
  SeatNumber         INT            NOT NULL,
  DoorNumber         INT            NOT NULL,
  Color              NVARCHAR(30)   NOT NULL,
  DriveTypeId        INT            NOT NULL,
  WithDefects        BIT            NOT NULL,
  CentralLock        BIT            NOT NULL,
  AirBags            BIT            NOT NULL,
  IsSold             BIT            NOT NULL,

  CONSTRAINT PK_Car__CarId              PRIMARY KEY (CarId),
  CONSTRAINT FK_Car__ShopId             FOREIGN KEY (ShopId)             REFERENCES Shop(ShopId),
  CONSTRAINT FK_Car__BrandId            FOREIGN KEY (BrandId)            REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__ModelId            FOREIGN KEY (ModelId)            REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__FuelTypeId         FOREIGN KEY (FuelTypeId)         REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__ChassisTypeId      FOREIGN KEY (ChassisTypeId)      REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__TransmissionTypeId FOREIGN KEY (TransmissionTypeId) REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__WheelPositionId    FOREIGN KEY (WheelPositionId)    REFERENCES CarConfigurationPosition(CarConfigurationPositionId),
  CONSTRAINT FK_Car__DriveTypeId        FOREIGN KEY (DriveTypeId)        REFERENCES CarConfigurationPosition(CarConfigurationPositionId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS CarPhoto
(
  CarPhotoId INT NOT NULL AUTO_INCREMENT,
  CarId INT NOT NULL,
  Name NVARCHAR(120) NOT NULL,
  MimeType VARCHAR(254) NOT NULL,
  Data BLOB NOT NULL,
  Description NVARCHAR(2000) NOT NULL,

  CONSTRAINT PK_CarPhoto__CarPhotoId PRIMARY KEY (CarPhotoId),
  CONSTRAINT FK_CarPhoto__CarId      FOREIGN KEY (CarId) REFERENCES Car(CarId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;