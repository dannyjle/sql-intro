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