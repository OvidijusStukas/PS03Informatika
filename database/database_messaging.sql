CREATE TABLE IF NOT EXISTS ChatGroup
(
  ChatGroupId     INT           NOT NULL AUTO_INCREMENT,
  Name            NVARCHAR(120) NOT NULL,
  CreationDate    DATE          NOT NULL,
  LastMessageDate DATETIME      NULL,
  IsActive        BIT           NOT NULL,

  CONSTRAINT PK_ChatGroup__ChatGroupId PRIMARY KEY (ChatGroupId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Participant
(
  ParticipantId   INT          NOT NULL AUTO_INCREMENT,
  ChatGroupId     INT          NOT NULL,
  UserId          INT          NOT NULL,
  IpAddress       NVARCHAR(30) NOT NULL,
  LastMessageDate DATETIME     NULL,
  IsBlocked       BIT          NOT NULL,
  Email           VARCHAR(254) NOT NULL,

  CONSTRAINT PK_Participant__ParticipantId PRIMARY KEY (ParticipantId),
  CONSTRAINT FK_Participant__UserId        FOREIGN KEY (UserId)      REFERENCES User(UserId),
  CONSTRAINT FK_Participant__ChatGroupId   FOREIGN KEY (ChatGroupId) REFERENCES ChatGroup(ChatGroupId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS Message
(
  MessageId     INT      NOT NULL AUTO_INCREMENT,
  ParticipantId INT      NOT NULL,
  Text          TEXT     NOT NULL,
  SendDate      DATETIME NOT NULL,
  IsDeleted     BIT      NOT NULL,

  CONSTRAINT PK_Message__MessageId     PRIMARY KEY (MessageId),
  CONSTRAINT FK_Message__ParticipantId FOREIGN KEY (ParticipantId) REFERENCES Participant(ParticipantId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS MessageItem
(
  MessageItemId INT           NOT NULL AUTO_INCREMENT,
  MessageId     INT           NOT NULL,
  MimeType      NVARCHAR(50)  NOT NULL,
  Data          BLOB          NOT NULL,
  Name          NVARCHAR(254) NOT NULL,

  CONSTRAINT PK_MessageItem__MessageItemId PRIMARY KEY (MessageItemId),
  CONSTRAINT FK_MessageItem__MessageId     FOREIGN KEY (MessageId) REFERENCES Message(MessageId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;

CREATE TABLE IF NOT EXISTS EmailMessage
(
  MessageId INT NOT NULL,
  SentDate DATETIME NOT NULL,

  CONSTRAINT FK_EmailMessage__MessageId FOREIGN KEY (MessageId) References Message(MessageId)
) CHARACTER SET UTF8 COLLATE UTF8_UNICODE_CI;