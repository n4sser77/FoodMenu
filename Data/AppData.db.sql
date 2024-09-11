BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "DishIngredients" (
	"DishId"	INTEGER NOT NULL,
	"IngredientId"	INTEGER NOT NULL,
	CONSTRAINT "PK_DishIngredients" PRIMARY KEY("DishId","IngredientId"),
	CONSTRAINT "FK_DishIngredients_Dishes_DishId" FOREIGN KEY("DishId") REFERENCES "Dishes"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_DishIngredients_Ingredients_IngredientId" FOREIGN KEY("IngredientId") REFERENCES "Ingredients"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Dishes" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"ImageUrl"	TEXT NOT NULL,
	"Price"	REAL NOT NULL,
	CONSTRAINT "PK_Dishes" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Ingredients" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	CONSTRAINT "PK_Ingredients" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
	"MigrationId"	TEXT NOT NULL,
	"ProductVersion"	TEXT NOT NULL,
	CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY("MigrationId")
);
INSERT INTO "DishIngredients" ("DishId","IngredientId") VALUES (1,1),
 (1,2),
 (2,3),
 (2,4),
 (3,1),
 (3,2),
 (3,5),
 (4,6),
 (4,7),
 (4,8);
INSERT INTO "Dishes" ("Id","Name","ImageUrl","Price") VALUES (1,'Margheritta','https://upload.wikimedia.org/wikipedia/commons/c/c8/Pizza_Margherita_stu_spivack.jpg',7.5),
 (2,'Shawarma','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/%D0%A8%D0%B0%D1%83%D1%80%D0%BC%D0%B0_6.jpg/450px-%D0%A8%D0%B0%D1%83%D1%80%D0%BC%D0%B0_6.jpg',4.5),
 (3,'Pepperoni Pizza','https://upload.wikimedia.org/wikipedia/commons/9/9a/Pepperoni_pizza.jpg',8.0),
 (4,'Caesar Salad','https://upload.wikimedia.org/wikipedia/commons/4/4b/Caesar_salad_%281%29.jpg',5.5);
INSERT INTO "Ingredients" ("Id","Name") VALUES (1,'Tomato Sauce'),
 (2,'Mozzarella'),
 (3,'Chicken'),
 (4,'Garlic Sauce'),
 (5,'Pepperoni'),
 (6,'Lettuce'),
 (7,'Caesar Dressing'),
 (8,'Parmesan Cheese');
INSERT INTO "__EFMigrationsHistory" ("MigrationId","ProductVersion") VALUES ('20240911081317_Initial migration','8.0.8'),
 ('20240911091042_Update migration','8.0.8');
COMMIT;
