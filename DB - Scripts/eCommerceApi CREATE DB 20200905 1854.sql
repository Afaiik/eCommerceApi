﻿--
-- Script was generated by Devart dbForge Studio 2019 for SQL Server, Version 5.8.127.0
-- Product home page: http://www.devart.com/dbforge/sql/studio
-- Script date 5/9/2020 18:54:51
-- Server version: 15.00.2070
--


SET DATEFORMAT ymd
SET ARITHABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET NUMERIC_ROUNDABORT, IMPLICIT_TRANSACTIONS, XACT_ABORT OFF
GO

USE eCommerceApi
GO

IF DB_NAME() <> N'eCommerceApi' SET NOEXEC ON
GO

--
-- Create table [dbo].[UserType]
--
PRINT (N'Create table [dbo].[UserType]')
GO
CREATE TABLE dbo.UserType (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  Alias varchar(50) NOT NULL,
  CONSTRAINT PK_UserType_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[User]
--
PRINT (N'Create table [dbo].[User]')
GO
CREATE TABLE dbo.[User] (
  Id int IDENTITY,
  Email varchar(50) NOT NULL,
  Username varchar(30) NOT NULL,
  Password varchar(30) NOT NULL,
  UserTypeId int NOT NULL,
  StateId int NOT NULL,
  CompanyId int NOT NULL,
  PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[sysdiagrams]
--
PRINT (N'Create table [dbo].[sysdiagrams]')
GO
CREATE TABLE dbo.sysdiagrams (
  name sysname NOT NULL,
  principal_id int NOT NULL,
  diagram_id int IDENTITY,
  version int NULL,
  definition varbinary(max) NULL,
  PRIMARY KEY CLUSTERED (diagram_id),
  CONSTRAINT UK_principal_name UNIQUE (principal_id, name)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Create table [dbo].[State]
--
PRINT (N'Create table [dbo].[State]')
GO
CREATE TABLE dbo.State (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  CONSTRAINT PK_State_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Review]
--
PRINT (N'Create table [dbo].[Review]')
GO
CREATE TABLE dbo.Review (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  Comment varchar(250) NOT NULL,
  Stars int NOT NULL,
  ProductId int NOT NULL,
  StateId int NOT NULL,
  UserId int NOT NULL,
  CONSTRAINT PK_Review_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[ResourceType]
--
PRINT (N'Create table [dbo].[ResourceType]')
GO
CREATE TABLE dbo.ResourceType (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  CONSTRAINT PK_ResourceType_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Purchase]
--
PRINT (N'Create table [dbo].[Purchase]')
GO
CREATE TABLE dbo.Purchase (
  Id int IDENTITY,
  Description varchar(200) NOT NULL,
  ProductDetailId int NOT NULL,
  OrderId int NOT NULL,
  Quantity int NOT NULL,
  UnitPrice decimal(9, 2) NOT NULL,
  CONSTRAINT PK_Purchase_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[ProductSize]
--
PRINT (N'Create table [dbo].[ProductSize]')
GO
CREATE TABLE dbo.ProductSize (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  CONSTRAINT PK_ProductSize_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[ProductResource]
--
PRINT (N'Create table [dbo].[ProductResource]')
GO
CREATE TABLE dbo.ProductResource (
  Id int IDENTITY,
  Description varchar(50) NULL,
  Picture varbinary(max) NULL,
  ProductId int NOT NULL,
  ResourceTypeId int NOT NULL,
  CONSTRAINT PK_ProductResource_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Create table [dbo].[ProductDetail]
--
PRINT (N'Create table [dbo].[ProductDetail]')
GO
CREATE TABLE dbo.ProductDetail (
  Id int IDENTITY,
  Stock int NOT NULL,
  Color varchar(50) NOT NULL,
  ProductSizeId int NOT NULL,
  ProductId int NOT NULL,
  CONSTRAINT PK_ProductDetail_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Product]
--
PRINT (N'Create table [dbo].[Product]')
GO
CREATE TABLE dbo.Product (
  Id int IDENTITY,
  Description varchar(100) NOT NULL,
  Price decimal(9, 2) NOT NULL,
  StateId int NOT NULL,
  CompanyId int NOT NULL,
  CONSTRAINT PK_Product_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[PaymentMethod]
--
PRINT (N'Create table [dbo].[PaymentMethod]')
GO
CREATE TABLE dbo.PaymentMethod (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  CONSTRAINT PK_PaymentMethod_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[MenuItems]
--
PRINT (N'Create table [dbo].[MenuItems]')
GO
CREATE TABLE dbo.MenuItems (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  Icon varchar(100) NOT NULL,
  Href varchar(100) NOT NULL,
  MenuId int NOT NULL,
  CONSTRAINT PK_MenuItems_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Menu]
--
PRINT (N'Create table [dbo].[Menu]')
GO
CREATE TABLE dbo.Menu (
  Id int IDENTITY,
  CompanyId int NOT NULL,
  AccentColor varchar(50) NOT NULL,
  CONSTRAINT PK_Menu_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Log]
--
PRINT (N'Create table [dbo].[Log]')
GO
CREATE TABLE dbo.Log (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  Observation varchar(50) NULL,
  UserId int NULL,
  CompanyId int NULL,
  ProductId int NULL,
  OrderId int NULL,
  ReviewId int NULL,
  CONSTRAINT PK_Log_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Discount]
--
PRINT (N'Create table [dbo].[Discount]')
GO
CREATE TABLE dbo.Discount (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  [Percent] int NOT NULL,
  ProductId int NOT NULL,
  Active bit NOT NULL,
  CONSTRAINT PK_Discount_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Company]
--
PRINT (N'Create table [dbo].[Company]')
GO
CREATE TABLE dbo.Company (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  FantasyName varchar(50) NOT NULL,
  StateId int NOT NULL,
  PhoneNumber varchar(50) NULL,
  AlternativePhonenumber varchar(50) NULL,
  Email varchar(50) NULL,
  AlternativeEmail varchar(50) NULL,
  InstagramUsername varchar(50) NULL,
  FacebookUsername varchar(50) NULL,
  CONSTRAINT PK_Company_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[AppParameter]
--
PRINT (N'Create table [dbo].[AppParameter]')
GO
CREATE TABLE dbo.AppParameter (
  Id int IDENTITY,
  Description varchar(50) NOT NULL,
  IntValue int NULL,
  StringValue varchar(200) NULL,
  CONSTRAINT PK_AppParameter_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

--
-- Create table [dbo].[Order]
--
PRINT (N'Create table [dbo].[Order]')
GO
CREATE TABLE dbo.[Order] (
  Id int IDENTITY,
  StateId int NOT NULL,
  UserId int NOT NULL,
  PaymentMethodId int NOT NULL,
  CONSTRAINT PK_Order_Id PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--
-- Create function [dbo].[fn_diagramobjects]
--
GO
PRINT (N'Create function [dbo].[fn_diagramobjects]')
GO

	CREATE OR ALTER FUNCTION dbo.fn_diagramobjects() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
-- 
-- Dumping data for table [Order]
--
PRINT (N'Dumping data for table [Order]')
-- Table eCommerceApi.dbo.[Order] does not contain any data (it is empty)
-- 
-- Dumping data for table [User]
--
PRINT (N'Dumping data for table [User]')
SET IDENTITY_INSERT dbo.[User] ON
GO
INSERT dbo.[User](Id, Email, Username, Password, UserTypeId, StateId, CompanyId) VALUES (1006, 'mail@mail.com', 'KiKiram', '123456', 1, 13, 1)
GO
SET IDENTITY_INSERT dbo.[User] OFF
GO
-- 
-- Dumping data for table AppParameter
--
PRINT (N'Dumping data for table AppParameter')
-- Table eCommerceApi.dbo.AppParameter does not contain any data (it is empty)
-- 
-- Dumping data for table Company
--
PRINT (N'Dumping data for table Company')
SET IDENTITY_INSERT dbo.Company ON
GO
INSERT dbo.Company(Id, Description, FantasyName, StateId, PhoneNumber, AlternativePhonenumber, Email, AlternativeEmail, InstagramUsername, FacebookUsername) VALUES (1, 'NoLimits', 'No Limits Clothing', 13, '2235309579', NULL, 'mail@mail.com', NULL, 'Af4ik_', NULL)
GO
SET IDENTITY_INSERT dbo.Company OFF
GO
-- 
-- Dumping data for table Discount
--
PRINT (N'Dumping data for table Discount')
-- Table eCommerceApi.dbo.Discount does not contain any data (it is empty)
-- 
-- Dumping data for table Log
--
PRINT (N'Dumping data for table Log')
-- Table eCommerceApi.dbo.Log does not contain any data (it is empty)
-- 
-- Dumping data for table Menu
--
PRINT (N'Dumping data for table Menu')
-- Table eCommerceApi.dbo.Menu does not contain any data (it is empty)
-- 
-- Dumping data for table MenuItems
--
PRINT (N'Dumping data for table MenuItems')
-- Table eCommerceApi.dbo.MenuItems does not contain any data (it is empty)
-- 
-- Dumping data for table PaymentMethod
--
PRINT (N'Dumping data for table PaymentMethod')
-- Table eCommerceApi.dbo.PaymentMethod does not contain any data (it is empty)
-- 
-- Dumping data for table Product
--
PRINT (N'Dumping data for table Product')
-- Table eCommerceApi.dbo.Product does not contain any data (it is empty)
-- 
-- Dumping data for table ProductDetail
--
PRINT (N'Dumping data for table ProductDetail')
-- Table eCommerceApi.dbo.ProductDetail does not contain any data (it is empty)
-- 
-- Dumping data for table ProductResource
--
PRINT (N'Dumping data for table ProductResource')
-- Table eCommerceApi.dbo.ProductResource does not contain any data (it is empty)
-- 
-- Dumping data for table ProductSize
--
PRINT (N'Dumping data for table ProductSize')
-- Table eCommerceApi.dbo.ProductSize does not contain any data (it is empty)
-- 
-- Dumping data for table Purchase
--
PRINT (N'Dumping data for table Purchase')
-- Table eCommerceApi.dbo.Purchase does not contain any data (it is empty)
-- 
-- Dumping data for table ResourceType
--
PRINT (N'Dumping data for table ResourceType')
-- Table eCommerceApi.dbo.ResourceType does not contain any data (it is empty)
-- 
-- Dumping data for table Review
--
PRINT (N'Dumping data for table Review')
-- Table eCommerceApi.dbo.Review does not contain any data (it is empty)
-- 
-- Dumping data for table State
--
PRINT (N'Dumping data for table State')
SET IDENTITY_INSERT dbo.State ON
GO
INSERT dbo.State(Id, Description) VALUES (13, 'Testing2')
GO
SET IDENTITY_INSERT dbo.State OFF
GO
-- 
-- Dumping data for table sysdiagrams
--
PRINT (N'Dumping data for table sysdiagrams')
SET IDENTITY_INSERT dbo.sysdiagrams ON
GO
EXEC(N'INSERT dbo.sysdiagrams(name, principal_id, diagram_id, version, definition) VALUES (N''Diagram_0'', 1, 1, 1, 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000E00000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF11000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D000000FEFFFFFFFEFFFFFF10000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF020000000000000000000000000000000000000000000000000000000000000030B8E8B5AB72D6010F000000800300000000000044006400730058004D004C00530074007200650061006D00000000000000000000000000000000000000000000000000000000000000000000000000000000001A000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000002000000AF1600000000000053006300680065006D00610020005500440056002000440065006600610075006C00740000000000000000000000000000000000000000000000000000000000260002010100000003000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000001E00000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C000201FFFFFFFF04000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000001000000E2020000000000003C6464733E3C6469616772616D20666F6E74636C7369643D227B37374432433932442D373737392D313144382D393037302D3030303635423834304439437D22206D6F75736569636F6E636C7369643D227B30424533353230342D384639312D313143452D394445332D3030414130303442423835317D222064656661756C746C61796F75743D224D534444532E52656374696C696E656172222064656661756C746C696E65726F7574653D224D534444532E52656374696C696E656172222076657273696F6E3D223722206E6578746F626A6563743D223322207363616C653D22313030222070616765627265616B616E63686F72783D2230222070616765627265616B616E63686F72793D2230222070616765627265616B73697A65783D2230222070616765627265616B73697A65793D223022207363726F6C6C6C6566743D222D3235343422207363726F6C6C746F703D222D35393634222067726964783D22313530222067726964793D2231353022206D617267696E783D223530303022206D617267696E793D223530303022207A6F6F6D3D2'
+ N'237302220783D2232323134362220793D22313630363022206261636B636F6C6F723D222D32313437343833363433222064656661756C7470657273697374656E63653D223322205072696E74506167654E756D626572734D6F64653D223322205072696E744D617267696E546F703D223022205072696E744D617267696E426F74746F6D3D2236333522205072696E744D617267696E4C6566743D223022205072696E744D617267696E52696768743D223022206D61727175656573656C656374696F6E6D6F64653D223122206D6F757365706F696E7465723D22302220736E6170746F677269643D223122206175746F74797065616E6E6F746174696F6E3D2231222073686F777363726F6C6C626172733D223122207669657770616765627265616B733D22302220646F6E6F74666F726365636F6E6E6563746F7273626568696E647368617065733D2231223E3C666F6E743E3C646473786D6C6F626A65637473747265616D777261707065722062696E6172793D22303030303038303033303030303030303030303230303030222F3E3C2F666F6E743E3C6D6F75736569636F6E3E3C646473786D6C6F626A65637473747265616D777261707065722062696E6172793D2236633734303030303030303030303030222F3E3C2F6D6F75736569636F6E3E3C2F6469616772616D3E3C6C61796F75746D616E616765723E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D227363685F6C6162656C735F76697369626C65222076616C75653D22302220766172747970653D223131222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746D616E616765723E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D225461626C6522206C6566743D2231343730302220746F703D222D31353022206C6F676963616C69643D22312220636F6E74726F6C69643D223122206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D22313139383222206865696768743D223534383022206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2232313433333431323038303030303030636532653030303036383135303030303738353633343132303730303030303031343031303030303534303036313030363230303663303036353030303030303030303038303366303030303830336639623961396133656331633063303365383338323032336630303030383033663030303038303366643063663466336664376436353633666536653536353366303030303830336630303030383033663030303038303366663366323732336639653964316433663030303038303366303030303030303030313030303030303031303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030306630336630303030303030303030303030303030663831363663356630303030303030303030303030303030663431373663356632306233366335663730323433343236373032343334323630323030303030303032303030303030303030303030303030303030303030306330343066353235303030303030303030323030303030303030303030303030303030303030343030303030303030303030303061383431303030303938633130303030303034303030303030303030303030303030303030303030303030303030303030303030303030303030303030343030303030303035303030303030353430303030303032633030303030303263303030303030326330303030303033633030303030303030303030303030303030303030303032323239303030306633313030303030303030303030303032643031303030303037303030303030306330303030303030373030303030303163303130303030303630393030303036323037303030303439303230303030646630323030303066653031303030306563303430303030353630343030303039343032303030303536303430303030373330353030303063303033303030303030303030303030303130303030303038383136303030303138306330303030303030303030303030333030303030303033303030303030303230303030303030323030303030303163303130303030663530613030303030303030303030303031303030303030333931333030303037613035303030303030303030303030'
+ N'30313030303030303031303030303030303230303030303030323030303030303163303130303030303630393030303030313030303030303030303030303030333931333030303033343033303030303030303030303030303030303030303030303030303030303032303030303030303230303030303031633031303030303036303930303030303030303030303030303030303030306365326530303030363831353030303030303030303030303030303030303030306430303030303030363030303030303036303030303030316330313030303037333035303030306661303530303030646530333030303036353034303030303339303330303030373835363334313230343030303030303534303030303030303130303030303030313030303030303062303030303030303030303030303030313030303030303032303030303030303330303030303030343030303030303035303030303030303630303030303030373030303030303038303030303030303930303030303030613030303030303034303030303030363430303632303036663030303030303036303030303030353430303631303036323030366330303635303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22342220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22362C302C3238342C302C313339352C31322C313533302C312C3939302C352C313132352C372C3832352220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C646473636F6E74726F6C20636F6E74726F6C70726F6769643D227B36323341433037352D324337372D343837332D383833442D3933304234333634423442437D2220746F6F6C7469703D225573657222206C6566743D22302220746F703D223022206C6F676963616C69643D22322220636F6E74726F6C69643D223222206D617374657269643D2230222068696E74313D2230222068696E74323D2230222077696474683D22313232343622206865696768743D223635373722206E6F726573697A653D223022206E6F6D6F76653D223022206E6F64656661756C74617474616368706F696E74733D223022206175746F647261673D2230222075736564656661756C7469646473686170653D2230222073656C65637461626C653D2231222073686F7773656C656374696F6E68616E646C65733D22302220616C6C6F776E756467696E673D223122206973616E6E6F746174696F6E3D22302220646F6E746175746F6C61796F75743D2230222067726F7570636F6C6C61707365643D2230222074616273746F703D2231222076697369626C653D22312220736E6170746F677269643D2231223E3C636F6E74726F6C3E3C646473786D6C6F626A65637473747265616D696E6974777261707065722062696E6172793D2232313433333431323038303030303030643632663030303062313139303030303738353633343132303730303030303031343031303030303535303037333030363530303732303030303030303030303030303030303030393838303434323663636438373432353030303030303030303030303030303030303030303030303030303030303030303030303030343030303030303030303030363036663430303030303030303030303030333334303030303030303030303030306630336630303030303030303030303030303030303030303030303030313030303030303031303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030306630336630303030303030303030303030303030663831363663356630303030303030303030303030303030663431373663356632306233366335666538643837343235653864383734323530323030303030303032303030303030303030303030303030303030303030306330333666353235303030303030303030323030303030303030303030303030303030303030343030303030303030303030303061383431303030303938633130303030303034303'
+ N'030303030303030303030303030303030303030303030303030303030303030303030303030303030343030303030303035303030303030353430303030303032633030303030303263303030303030326330303030303033633030303030303030303030303030303030303030303032323239303030303665313330303030303030303030303032643031303030303037303030303030306330303030303030373030303030303163303130303030303630393030303036323037303030303439303230303030646630323030303066653031303030306563303430303030353630343030303039343032303030303536303430303030373330353030303063303033303030303030303030303030303130303030303038383136303030303933306530303030303030303030303030343030303030303034303030303030303230303030303030323030303030303163303130303030663530613030303030303030303030303031303030303030333931333030303037613035303030303030303030303030303130303030303030313030303030303032303030303030303230303030303031633031303030303036303930303030303130303030303030303030303030303339313330303030333430333030303030303030303030303030303030303030303030303030303030323030303030303032303030303030316330313030303030363039303030303030303030303030303030303030303064363266303030306231313930303030303030303030303030303030303030303064303030303030303630303030303030363030303030303163303130303030373330353030303066613035303030306465303330303030363530343030303033393033303030303738353633343132303430303030303035323030303030303031303030303030303130303030303030623030303030303030303030303030303130303030303030323030303030303033303030303030303430303030303030353030303030303036303030303030303730303030303030383030303030303039303030303030306130303030303030343030303030303634303036323030366630303030303030353030303030303535303037333030363530303732303030303030222F3E3C2F636F6E74726F6C3E3C6C61796F75746F626A6563743E3C646473786D6C6F626A3E3C70726F7065727479206E616D653D224163746976655461626C65566965774D6F6465222076616C75653D22342220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A30222076616C75653D22342C302C3238342C302C323331302C312C313839302C352C313236302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A31222076616C75653D22322C302C3238342C302C323830352220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A32222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A33222076616C75653D22322C302C3238342C302C323331302220766172747970653D2238222F3E3C70726F7065727479206E616D653D225461626C65566965774D6F64653A34222076616C75653D22362C302C3238342C302C313339352C31322C313533302C312C3939302C352C313132352C372C3832352220766172747970653D2238222F3E3C2F646473786D6C6F626A3E3C2F6C61796F75746F626A6563743E3C73686170652067726F7570736861706569643D2230222067726F75706E6F64653D2230222F3E3C2F646473636F6E74726F6C3E3C2F6464733E0D0A00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEFFFFFF02000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
+ N'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF010005000000000000000C0000000100000005000000070000004E61BC0000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200B09DE2B5AB72D601020200001048450000000000000000000000000000000000E80100004400610074006100200053006F0075007200630065003D0045004D004D00530041004E0042004F004F004B00350034005C00530051004C0045005800500052004500530053003B0049006E0069007400690061006C00200043006100740061006C006F0067003D00650043006F006D006D0065007200630065004100700069003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B0043006F006E006E006500630074002000540069006D0065006F00750074003D00330030003B0054007200750073007400530065007200760065007200430065007200740069006600690063006100740065003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000226000C0000005400610062006C006500000008000000640062006F000000000224000A0000005500730065007200000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D000000000000000000000000000000000000000000000000000000000000000000010005000000000000000C0000000100000005000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000D0000001A000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214)')
GO
SET IDENTITY_INSERT dbo.sysdiagrams OFF
GO
-- 
-- Dumping data for table UserType
--
PRINT (N'Dumping data for table UserType')
SET IDENTITY_INSERT dbo.UserType ON
GO
INSERT dbo.UserType(Id, Description, Alias) VALUES (1, 'Testing1', 'TestingUserType')
GO
SET IDENTITY_INSERT dbo.UserType OFF
GO

USE eCommerceApi
GO

IF DB_NAME() <> N'eCommerceApi' SET NOEXEC ON
GO

--
-- Create foreign key [FK_Company_State] on table [dbo].[Company]
--
PRINT (N'Create foreign key [FK_Company_State] on table [dbo].[Company]')
GO
ALTER TABLE dbo.Company
  ADD CONSTRAINT FK_Company_State FOREIGN KEY (StateId) REFERENCES dbo.State (Id)
GO

--
-- Create foreign key [FK_Menu_Company] on table [dbo].[Menu]
--
PRINT (N'Create foreign key [FK_Menu_Company] on table [dbo].[Menu]')
GO
ALTER TABLE dbo.Menu
  ADD CONSTRAINT FK_Menu_Company FOREIGN KEY (CompanyId) REFERENCES dbo.Company (Id)
GO

--
-- Create foreign key [FK_MenuItems_Menu] on table [dbo].[MenuItems]
--
PRINT (N'Create foreign key [FK_MenuItems_Menu] on table [dbo].[MenuItems]')
GO
ALTER TABLE dbo.MenuItems
  ADD CONSTRAINT FK_MenuItems_Menu FOREIGN KEY (MenuId) REFERENCES dbo.Menu (Id)
GO

--
-- Create foreign key [FK_User_Company] on table [dbo].[User]
--
PRINT (N'Create foreign key [FK_User_Company] on table [dbo].[User]')
GO
ALTER TABLE dbo.[User]
  ADD CONSTRAINT FK_User_Company FOREIGN KEY (CompanyId) REFERENCES dbo.Company (Id)
GO

--
-- Create foreign key [FK_User_State] on table [dbo].[User]
--
PRINT (N'Create foreign key [FK_User_State] on table [dbo].[User]')
GO
ALTER TABLE dbo.[User]
  ADD CONSTRAINT FK_User_State FOREIGN KEY (StateId) REFERENCES dbo.State (Id)
GO

--
-- Create foreign key [FK_User_UserType] on table [dbo].[User]
--
PRINT (N'Create foreign key [FK_User_UserType] on table [dbo].[User]')
GO
ALTER TABLE dbo.[User]
  ADD CONSTRAINT FK_User_UserType FOREIGN KEY (UserTypeId) REFERENCES dbo.UserType (Id)
GO

--
-- Create foreign key [FK_Order_PaymentMethod] on table [dbo].[Order]
--
PRINT (N'Create foreign key [FK_Order_PaymentMethod] on table [dbo].[Order]')
GO
ALTER TABLE dbo.[Order]
  ADD CONSTRAINT FK_Order_PaymentMethod FOREIGN KEY (PaymentMethodId) REFERENCES dbo.PaymentMethod (Id)
GO

--
-- Create foreign key [FK_Order_State] on table [dbo].[Order]
--
PRINT (N'Create foreign key [FK_Order_State] on table [dbo].[Order]')
GO
ALTER TABLE dbo.[Order]
  ADD CONSTRAINT FK_Order_State FOREIGN KEY (StateId) REFERENCES dbo.State (Id)
GO

--
-- Create foreign key [FK_Order_User] on table [dbo].[Order]
--
PRINT (N'Create foreign key [FK_Order_User] on table [dbo].[Order]')
GO
ALTER TABLE dbo.[Order]
  ADD CONSTRAINT FK_Order_User FOREIGN KEY (UserId) REFERENCES dbo.[User] (Id)
GO

--
-- Create foreign key [FK_Product_Company] on table [dbo].[Product]
--
PRINT (N'Create foreign key [FK_Product_Company] on table [dbo].[Product]')
GO
ALTER TABLE dbo.Product
  ADD CONSTRAINT FK_Product_Company FOREIGN KEY (CompanyId) REFERENCES dbo.Company (Id)
GO

--
-- Create foreign key [FK_Product_State] on table [dbo].[Product]
--
PRINT (N'Create foreign key [FK_Product_State] on table [dbo].[Product]')
GO
ALTER TABLE dbo.Product
  ADD CONSTRAINT FK_Product_State FOREIGN KEY (StateId) REFERENCES dbo.State (Id)
GO

--
-- Create foreign key [FK_Discount_Product] on table [dbo].[Discount]
--
PRINT (N'Create foreign key [FK_Discount_Product] on table [dbo].[Discount]')
GO
ALTER TABLE dbo.Discount
  ADD CONSTRAINT FK_Discount_Product FOREIGN KEY (ProductId) REFERENCES dbo.Product (Id)
GO

--
-- Create foreign key [FK_Review_Product] on table [dbo].[Review]
--
PRINT (N'Create foreign key [FK_Review_Product] on table [dbo].[Review]')
GO
ALTER TABLE dbo.Review
  ADD CONSTRAINT FK_Review_Product FOREIGN KEY (ProductId) REFERENCES dbo.Product (Id)
GO

--
-- Create foreign key [FK_Review_State] on table [dbo].[Review]
--
PRINT (N'Create foreign key [FK_Review_State] on table [dbo].[Review]')
GO
ALTER TABLE dbo.Review
  ADD CONSTRAINT FK_Review_State FOREIGN KEY (StateId) REFERENCES dbo.State (Id)
GO

--
-- Create foreign key [FK_Review_User] on table [dbo].[Review]
--
PRINT (N'Create foreign key [FK_Review_User] on table [dbo].[Review]')
GO
ALTER TABLE dbo.Review
  ADD CONSTRAINT FK_Review_User FOREIGN KEY (UserId) REFERENCES dbo.[User] (Id)
GO

--
-- Create foreign key [FK_Log_Company] on table [dbo].[Log]
--
PRINT (N'Create foreign key [FK_Log_Company] on table [dbo].[Log]')
GO
ALTER TABLE dbo.Log
  ADD CONSTRAINT FK_Log_Company FOREIGN KEY (CompanyId) REFERENCES dbo.Company (Id)
GO

--
-- Create foreign key [FK_Log_Order] on table [dbo].[Log]
--
PRINT (N'Create foreign key [FK_Log_Order] on table [dbo].[Log]')
GO
ALTER TABLE dbo.Log
  ADD CONSTRAINT FK_Log_Order FOREIGN KEY (OrderId) REFERENCES dbo.[Order] (Id)
GO

--
-- Create foreign key [FK_Log_Product] on table [dbo].[Log]
--
PRINT (N'Create foreign key [FK_Log_Product] on table [dbo].[Log]')
GO
ALTER TABLE dbo.Log
  ADD CONSTRAINT FK_Log_Product FOREIGN KEY (ProductId) REFERENCES dbo.Product (Id)
GO

--
-- Create foreign key [FK_Log_Review] on table [dbo].[Log]
--
PRINT (N'Create foreign key [FK_Log_Review] on table [dbo].[Log]')
GO
ALTER TABLE dbo.Log
  ADD CONSTRAINT FK_Log_Review FOREIGN KEY (ReviewId) REFERENCES dbo.Review (Id)
GO

--
-- Create foreign key [FK_Log_User] on table [dbo].[Log]
--
PRINT (N'Create foreign key [FK_Log_User] on table [dbo].[Log]')
GO
ALTER TABLE dbo.Log
  ADD CONSTRAINT FK_Log_User FOREIGN KEY (UserId) REFERENCES dbo.[User] (Id)
GO

--
-- Create foreign key [FK_ProductDetail_Product] on table [dbo].[ProductDetail]
--
PRINT (N'Create foreign key [FK_ProductDetail_Product] on table [dbo].[ProductDetail]')
GO
ALTER TABLE dbo.ProductDetail
  ADD CONSTRAINT FK_ProductDetail_Product FOREIGN KEY (ProductId) REFERENCES dbo.Product (Id)
GO

--
-- Create foreign key [FK_ProductDetail_ProductSize] on table [dbo].[ProductDetail]
--
PRINT (N'Create foreign key [FK_ProductDetail_ProductSize] on table [dbo].[ProductDetail]')
GO
ALTER TABLE dbo.ProductDetail
  ADD CONSTRAINT FK_ProductDetail_ProductSize FOREIGN KEY (ProductSizeId) REFERENCES dbo.ProductSize (Id)
GO

--
-- Create foreign key [FK_Purchase_Order] on table [dbo].[Purchase]
--
PRINT (N'Create foreign key [FK_Purchase_Order] on table [dbo].[Purchase]')
GO
ALTER TABLE dbo.Purchase
  ADD CONSTRAINT FK_Purchase_Order FOREIGN KEY (OrderId) REFERENCES dbo.[Order] (Id)
GO

--
-- Create foreign key [FK_Purchase_ProductDetail] on table [dbo].[Purchase]
--
PRINT (N'Create foreign key [FK_Purchase_ProductDetail] on table [dbo].[Purchase]')
GO
ALTER TABLE dbo.Purchase
  ADD CONSTRAINT FK_Purchase_ProductDetail FOREIGN KEY (ProductDetailId) REFERENCES dbo.ProductDetail (Id)
GO

--
-- Create foreign key [FK_ProductResource_Product] on table [dbo].[ProductResource]
--
PRINT (N'Create foreign key [FK_ProductResource_Product] on table [dbo].[ProductResource]')
GO
ALTER TABLE dbo.ProductResource
  ADD CONSTRAINT FK_ProductResource_Product FOREIGN KEY (ProductId) REFERENCES dbo.Product (Id)
GO

--
-- Create foreign key [FK_ProductResource_ResourceType] on table [dbo].[ProductResource]
--
PRINT (N'Create foreign key [FK_ProductResource_ResourceType] on table [dbo].[ProductResource]')
GO
ALTER TABLE dbo.ProductResource
  ADD CONSTRAINT FK_ProductResource_ResourceType FOREIGN KEY (ResourceTypeId) REFERENCES dbo.ResourceType (Id)
GO
SET NOEXEC OFF
GO