CREATE TABLE [TicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL);

CREATE TABLE [BusTicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [CityOrIntercity] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Name], [Address], [PhoneNumber]) REFERENCES [TicketProvider]([ID], [Name], [Address], [PhoneNumber]));

CREATE TABLE [CinemaTicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [Score] INTEGER NOT NULL, 
  FOREIGN KEY([ID], [Name], [Address], [PhoneNumber]) REFERENCES [TicketProvider]([ID], [Name], [Address], [PhoneNumber]));

CREATE TABLE [HotelTicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [HotelClass] TEXT, 
  [RoomCount] INTEGER NOT NULL, 
  FOREIGN KEY([ID], [Name], [Address], [PhoneNumber]) REFERENCES [TicketProvider]([ID], [Name], [Address], [PhoneNumber]));

CREATE TABLE [PlaneTicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [InternationalOrNational] TEXT NOT NULL, 
  FOREIGN KEY([ID], [Name], [Address], [PhoneNumber]) REFERENCES [TicketProvider]([ID], [Name], [Address], [PhoneNumber]));

CREATE TABLE [TrainTicketProvider](
  [ID] INTEGER PRIMARY KEY NOT NULL UNIQUE, 
  [Name] TEXT NOT NULL, 
  [Address] TEXT NOT NULL, 
  [PhoneNumber] INTEGER NOT NULL, 
  [TrainClass] TEXT, 
  FOREIGN KEY([ID], [Name], [Address], [PhoneNumber]) REFERENCES [TicketProvider]([ID], [Name], [Address], [PhoneNumber]));

