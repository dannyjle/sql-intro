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