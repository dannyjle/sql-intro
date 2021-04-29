

createdb MusicDatabase

pgcli MusicDatabase




CREATE TABLE "Bands" (
  "Id"	SERIAL PRIMARY KEY,
  "Name"  TEXT,
  "CountryOfOrigin"  TEXT,
  "NumberOfMembers"  INT,
  "Website" TEXT,
  "Style" TEXT,
  "IsSigned" TEXT,
  "ContactName" TEXT,
  "ContactPhoneNumber" INT
);


CREATE TABLE "Albums" (
  "Id"	SERIAL PRIMARY KEY,
  "Title"  TEXT,
  "IsExplicit"  TEXT,
  "ReleaseDate"  DATE
);

CREATE TABLE "Songs" (
  "Id"	SERIAL PRIMARY KEY,
  "TrackNumber"  INT,
  "Title"  TEXT,
  "Duration"  TIME
);

-- ADD THIS ONCE YOU HAVE INSERTED ALL BANDS
ALTER TABLE "Albums" ADD COLUMN "BandId" INTEGER NULL REFERENCES "Bands" ("Id");


-- ADD THIS ONCE YOU HAVE INSERTED ALL ALBUMS
ALTER TABLE "Songs" ADD COLUMN "AlbumId" INTEGER NULL REFERENCES "Albums" ("Id");


--INSERT INTO "Bands" ("Name",  "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber")
--VALUES ( '', '', , '', '', '', '',);

--INSERT INTO "Albums" ("Title",  "IsExplicit", "ReleaseDate", "BandId")
--VALUES ( '', '', '',);

--INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
--VALUES ( , '', '00:0:', );



INSERT INTO "Bands" ("Name",  "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber")
VALUES ( 'Little Mix', 'England', 3, 'little-mix.com', 'Pop', 'Yes', 'Samantha Cox', 5555);

-- ADD BandId TO ALL ALBUMS
INSERT INTO "Albums" ("Title",  "IsExplicit", "ReleaseDate", "BandId")
VALUES ( 'Confetti', 'No', '11/06/2020', 1);

-- ADD AlbumId TO ALL SONGS
INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 1, 'Break Up Song', '00:03:20', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 2, 'Holiday', '00:03:33', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 3, 'Sweet Melody', '00:03:33', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 4, 'Confetti', '00:02:47', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 5, 'Happiness', '00:03:17', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 6, 'Not a Pop Song', '00:02:59', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 7, 'Nothing But My Feelings', '00:02:42', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 8, 'Gloves Up', '00:02:47', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 9, 'A Mess (Happy 4 U)', '00:03:29', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 10, 'My Love Wont Let You Down', '00:02:54', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 11, 'Rendezvous', '00:02:56', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 12, 'If You Want My Love', '00:02:40', 1);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 13, 'Breathe', '00:03:29', 1);




INSERT INTO "Bands" ("Name",  "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber")
VALUES ( 'Ariana Grande', 'USA', 1, 'arianagrande.com', 'Pop/R&B', 'Yes', 'Scooter Braun', 666);



INSERT INTO "Albums" ("Title",  "IsExplicit", "ReleaseDate", "BandId")
VALUES ( 'Positions', 'Yes', '10/30/2020', 2);



INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 1, 'Just like Magic', '00:02:29', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 2, 'Off the Table (with the Weeknd)', '00:03:59', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 3, 'Safety Net (ft. Ty Dolla Sign)', '00:03:28', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 4, 'West Side', '00:02:12', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 5, 'Positions', '00:02:52', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 6, 'Obvious', '00:02:28', 2);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 7, 'POV', '00:03:21', 2);





INSERT INTO "Bands" ("Name",  "CountryOfOrigin", "NumberOfMembers", "Website", "Style", "IsSigned", "ContactName", "ContactPhoneNumber")
VALUES ( 'BLACKPINK', 'Korea', 4, 'blackpinkofficial.com', 'K-Pop', 'No', 'YG Entertainment', 7777);




INSERT INTO "Albums" ("Title",  "IsExplicit", "ReleaseDate", "BandId")
VALUES ( 'The Album', 'Yes', '10/02/2020', 3);




INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 1, 'How You Like That', '00:03:01', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 2, 'Ice Cream (with Selena Gomez)', '00:02:56', 3 );

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 3, 'Pretty Savage', '00:03:19', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 4, 'Bet You Wanna (ft. Cardi B)', '00:02:39', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 5, 'Lovesick Girls', '00:03:12', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 6, 'Crazy Over You', '00:02:41', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 7, 'Love to Hate Me', '00:02:49', 3);

INSERT INTO "Songs" ("TrackNumber",  "Title", "Duration", "AlbumId")
VALUES ( 8, 'You Never Know', '00:03:49', 3);


-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 

createdb CompanyDatabase

pgcli CompanyDatabase

CompanyDatabase> CREATE TABLE "Employees" (
................ "FullName" TEXT,
................ "Salary" INT,
................ "JobPosition" TEXT,
................ "PhoneExtension" INT,
................ "IsPartTime" TEXT
................ );

INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Danny', 90000, 'Executive Assistant', 7, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Karl', 30000, 'Gardener', 5, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Chad', 10000, 'Swim Instructor', 19, 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Brent', 70000, 'Publicist', 2, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Tiffany', 15000, 'Baby Sitter', 40, 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Dalena', 40000, 'Makeup Artist', 10, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Lazy Larry', 45000, 'Cook', 4, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Bob', 10000, 'Cook', 14, 'Yes');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Michael ', 25000, 'Driver', 1, 'No');

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Graham', 5000, 'Dog Trainer', 32, 'Yes');

SELECT * FROM "Employees";

SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = 'No'; 

INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Austin', 450, 'Software Developer', 47, 'Yes');

UPDATE "Employees" SET "Salary" = '500' WHERE "JobPosition" = 'Cook';

DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);

CREATE TABLE "Departments" (
  "Id"  SERIAL PRIMARY KEY,
  "DepartmentName"  TEXT,
  "Building"  TEXT
);

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

CREATE TABLE "Products" (
  "Id"	SERIAL PRIMARY KEY,
  "Price"  DECIMAL,
  "Name"  TEXT,
  "Description"  TEXT,
  "QuantityInStock"  INT
);

CREATE TABLE "Orders" (
  "Id"	SERIAL PRIMARY KEY,
  "OrderNumber"  TEXT,
  "DatePlaced"  DATE,
  "Email"  TEXT
);

CREATE TABLE "ProductOrders" (
  "Id"       SERIAL PRIMARY KEY,
  "ProductId"  INTEGER REFERENCES "Products" ("Id"),
  "OrderId"  INTEGER REFERENCES "Orders" ("Id"),
  "OrderQuantity" INT
);

INSERT INTO "Departments" ("DepartmentName",  "Building" )
VALUES ('Development', 'Main');

INSERT INTO "Departments" ("DepartmentName",  "Building" )
VALUES ('Marketing', 'North');

INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tim Smith', 40000, 'Programmer', 123, 'No', 1);

INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Barbara Ramsey', 80000, 'Manager', 234, 'No', 1);

INSERT INTO "Employees" ("FullName",  "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
VALUES ('Tom Jones', 32000, 'Admin', 456, 'Yes', 2);

INSERT INTO "Products" ("Price",  "Name", "Description", "QuantityInStock")
VALUES (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products" ("Price",  "Name", "Description", "QuantityInStock")
VALUES (99.99, 'Flowbee', 'Perfect for haircuts', 3);

INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email")
VALUES ('X529', '01/01/2020 4:55PM', 'person@example.com');

INSERT INTO "ProductOrders" ("ProductId", "OderID", "OrderQuantity") 
VALUES (1, 1, 3);

INSERT INTO "ProductOrders" ("ProductId", "OrderId", "OrderQuantity") 
VALUES (2, 1, 2); 

SELECT *
FROM "Employees"
JOIN "Departments" ON "Departments"."Id" = "Employees"."DepartmentId"
WHERE "Building" = 'North Side'

SELECT *
FROM "Employees"
JOIN "Departments" ON "Departments"."Id" = "Employees"."DepartmentId"
WHERE "Building" = 'East Side'

SELECT *
FROM "Employees"
JOIN "Departments" ON "Departments"."Id" = "Employees"."DepartmentId"
WHERE "Building" = 'Main'

SELECT *
FROM "ProductOrders"
JOIN "Products" ON "Products"."Id" = "ProductOrders"."ProductId"
WHERE "ProductId" = 2

SELECT *
FROM "ProductOrders"
JOIN "Products" ON "Products"."Id" = "ProductOrders"."ProductId"
JOIN "Orders" ON "Orders"."Id" = "ProductOrders"."OrderId"
WHERE "Name" = 'Flowbee'





