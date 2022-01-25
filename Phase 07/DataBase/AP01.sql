CREATE TABLE [Bank Card](
  [CardSerial] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [AcountOwnerName] TEXT NOT NULL, 
  [ExpirationDate] DATE NOT NULL);

CREATE TABLE [Bill](
  [Name] TEXT NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [PurchaseDeadline] DATE NOT NULL);

CREATE TABLE [Receipt](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [SourceCard] INTEGER NOT NULL, 
  [BankInquireNumber] INTEGER NOT NULL);

CREATE TABLE [BillReceipt](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [SourceCard] INTEGER NOT NULL, 
  [BankInquireNumber] INTEGER NOT NULL, 
  [BillType] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount], [SourceCard], [BankInquireNumber]) REFERENCES [Receipt]([ID], [Date], [Amount], [SourceCard], [BankInquireNumber]));

CREATE TABLE [CreditChargeBill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount]) REFERENCES [Receipt]([ID], [Date], [Amount]));

CREATE TABLE [Electiricity Bill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Amount] INTEGER NOT NULL, 
  [Abonman] INTEGER NOT NULL, 
  [PurchaseDeadline] DATE NOT NULL, 
  FOREIGN KEY([Amount], [ID], [PurchaseDeadline]) REFERENCES [Bill]([Amount], [ID], [PurchaseDeadline]));

CREATE TABLE [Gas Bill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Amount] INTEGER NOT NULL, 
  [Abonman] INTEGER NOT NULL, 
  [PurchaseDeadline] DATE NOT NULL, 
  FOREIGN KEY([ID], [Amount], [PurchaseDeadline]) REFERENCES [Bill]([ID], [Amount], [PurchaseDeadline]));

CREATE TABLE [InsuranceReceipt](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [SourceCard] INTEGER NOT NULL, 
  [BankInquireNumber] INTEGER NOT NULL, 
  [InsuranceType] TEXT NOT NULL, 
  [DueDate] DATE NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount], [SourceCard], [BankInquireNumber]) REFERENCES [Receipt]([ID], [Date], [Amount], [SourceCard], [BankInquireNumber]));

CREATE TABLE [InternetPackageBill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [PackageType] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount]) REFERENCES [Receipt]([ID], [Date], [Amount]));

CREATE TABLE [Mobile Phone Bill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [PhoneNumber] INTEGER NOT NULL, 
  [PurchaseDeadline] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  FOREIGN KEY([ID], [PurchaseDeadline], [Amount]) REFERENCES [Bill]([ID], [PurchaseDeadline], [Amount]));

CREATE TABLE [MoneyTransferBill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [DestinationCard] INTEGER NOT NULL, 
  [DestinationCardOwner] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount]) REFERENCES [Receipt]([ID], [Date], [Amount]));

CREATE TABLE [TicketBill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [TicketType] TEXT NOT NULL, 
  [TicketDate] DATE NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount]) REFERENCES [Receipt]([ID], [Date], [Amount]));

CREATE TABLE [User](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [PhoneNumber] INTEGER NOT NULL);

CREATE TABLE [ViolationFeeBill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Date] DATE NOT NULL, 
  [Amount] INTEGER NOT NULL, 
  [Car] TEXT NOT NULL, 
  [ViolationLocation] TEXT NOT NULL, 
  [ViolationDate] DATE NOT NULL, 
  [ViolationType] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Date], [Amount]) REFERENCES [Receipt]([ID], [Date], [Amount]));

CREATE TABLE [Water Bill](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Amount] INTEGER NOT NULL, 
  [Abonman] INTEGER NOT NULL, 
  [PurchaseDeadline] DATE NOT NULL, 
  FOREIGN KEY([ID], [Amount], [PurchaseDeadline]) REFERENCES [Bill]([ID], [Amount], [PurchaseDeadline]));

