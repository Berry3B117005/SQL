BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "movies" (
	"id"	INTEGER,
	"title"	TEXT NOT NULL,
	"director"	TEXT NOT NULL,
	"genre"	TEXT NOT NULL,
	"year"	INTEGER NOT NULL,
	"rating"	REAL CHECK("rating" >= 1.0 AND "rating" <= 10.0),
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "movies" VALUES (1,'全面啟動','克里斯多福。諾蘭','科幻',2010,8.8);
INSERT INTO "movies" VALUES (2,'教父','法蘭西斯。科波拉','犯罪',1972,9.2);
INSERT INTO "movies" VALUES (3,'駭客任務','華卓斯基姐妹','科幻',1999,8.7);
COMMIT;
