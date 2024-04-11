BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "People" (
	"Employee_ID"	NUMERIC,
	"Name"	TEXT NOT NULL,
	"Sex"	TEXT,
	"Address"	TEXT,
	PRIMARY KEY("Employee_ID")
);
CREATE TABLE IF NOT EXISTS "Meals" (
	"Trip_ID"	INTEGER NOT NULL,
	"Meal Type"	TEXT,
	"Total_Cost"	TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS "Lodging" (
	"Trip_ID"	INTEGER,
	"Type"	TEXT,
	"Total_Cost"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Traveller" (
	"Trip_ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	PRIMARY KEY("Trip_ID")
);
CREATE TABLE IF NOT EXISTS "Insurance" (
	"Trip_ID"	INTEGER,
	"Type"	TEXT NOT NULL,
	"Total_Cost"	INTEGER NOT NULL,
	PRIMARY KEY("Trip_ID")
);
CREATE TABLE IF NOT EXISTS "Incidentals" (
	"Trip_ID"	INTEGER,
	"Type"	TEXT,
	"Total_Cost"	INTEGER NOT NULL,
	PRIMARY KEY("Trip_ID")
);
CREATE TABLE IF NOT EXISTS "Travel_Arranger" (
	"Trip_ID"	INTEGER,
	"Vendor"	TEXT,
	"Purpose"	TEXT,
	"Employee_ID"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Department" (
	"ID"	INTEGER,
	"Name"	TEXT NOT NULL,
	"Employee_ID"	INTEGER,
	PRIMARY KEY("ID")
);
CREATE TABLE IF NOT EXISTS "Supervisor" (
	"Employee_ID"	INTEGER NOT NULL,
	"Approval_Status"	TEXT NOT NULL,
	"Supervisor_ID"	INTEGER NOT NULL,
	"Trip_ID"	INTEGER NOT NULL
);
INSERT INTO "People" ("Employee_ID","Name","Sex","Address") VALUES (1,'Kirti','F','Green Street'),
 (2,'Aatmic','M','Springfield'),
 (3,'Jolin','F','Champaign'),
 (4,'Vaibhavi','F','First St'),
 (5,'Junsong','M','Urbana');
INSERT INTO "Meals" ("Trip_ID","Meal Type","Total_Cost") VALUES (12,'Breakfast','450'),
 (11,'Breakfast','100'),
 (11,'Dinner','300'),
 (12,'Dinner','400'),
 (12,'Lunch','400');
INSERT INTO "Lodging" ("Trip_ID","Type","Total_Cost") VALUES (11,'Texas"',300);
INSERT INTO "Traveller" ("Trip_ID","Name") VALUES (11,'Kirti'),
 (12,'Aatmic');
INSERT INTO "Incidentals" ("Trip_ID","Type","Total_Cost") VALUES (12,'House Keeping Tip"',50);
INSERT INTO "Travel_Arranger" ("Trip_ID","Vendor","Purpose","Employee_ID") VALUES (11,'Self','Personal Trip',1),
 (11,'UIUC','Conference',1),
 (11,'UIUC','Industrial Visit',1),
 (12,'UIUC','Industrial Visit',2),
 (12,'Self','Personal',2);
INSERT INTO "Department" ("ID","Name","Employee_ID") VALUES (122,'Analytics',1),
 (123,'Sales',2);
INSERT INTO "Supervisor" ("Employee_ID","Approval_Status","Supervisor_ID","Trip_ID") VALUES (1,'Yes',5,11),
 (2,'Yes',3,12),
 (2,'No',5,12),
 (1,'Yes',5,11),
 (1,'Yes',5,11),
 (1,'Yes',5,11),
 (1,'No',5,11);
COMMIT;
