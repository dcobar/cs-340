
INSERT INTO unit (name)
VALUES ("Fiora"),
("Dorcas"),
("Eliwood"),
("Erk"),
("Florina"),
("Guy"),
("Hawkeye"),
("Hector"),
("Kent"),
("Legault"),
("Lyn"),
("Matthew"),
("Oswin"),
("Rebecca"),
("Sain"),
("Serra"),
("Will");


INSERT INTO startingClass (sClass)
VALUES ("Pegasus Knight"),
("Fighter"),
("Lord"),
("Mage"),
("Myrmidon"),
("Berserker"),
("Knight"),
("Archer"),
("Cleric"),
("Cavalier"),
("Theif");

INSERT INTO weaponTypes (wTypes)
VALUES ("Sword"),
("Lance"),
("Axe"),
("Bow"),
("Anima"),
("Staff");


INSERT INTO promotion(promotion)
VALUES ("Falcon Knight"),
("Warrior"),
("Great Lord"),
("Paladin"),
("Assassin"),
("General"),
("Sniper"),
("Bishop"),
("Sage"),
("Sword Master");


INSERT INTO items(items)
VALUES ("Vulnarary"),
("Javalin"),
("Steel Axe"),
("Hand Axe"),
("Rapier"),
("Killing Edge"),
("Killer Axe"),
("Wolf Beil"),
("Iron Lance"),
("Iron Sword"),
("Steel Sword"),
("Lock Pick"),
("Heal"),
("Fire"),
("Iron Bow");


INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Fiora"),
       (SELECT id FROM startingClass WHERE sClass = "Pegasus Knight"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Dorcas"),
       (SELECT id FROM startingClass WHERE sClass = "Fighter"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Eliwood"),
       (SELECT id FROM startingClass WHERE sClass = "Lord"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Erk"),
       (SELECT id FROM startingClass WHERE sClass = "Mage"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Florina"),
       (SELECT id FROM startingClass WHERE sClass = "Pegasus Knight"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Guy"),
       (SELECT id FROM startingClass WHERE sClass = "Myrmidon"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Hawkeye"),
       (SELECT id FROM startingClass WHERE sClass = "Berserker"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Kent"),
       (SELECT id FROM startingClass WHERE sClass = "Cavalier"));
	   
INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Legault"),
       (SELECT id FROM startingClass WHERE sClass = "Theif"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Lyn"),
       (SELECT id FROM startingClass WHERE sClass = "Lord"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Matthew"),
       (SELECT id FROM startingClass WHERE sClass = "Theif"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Oswin"),
       (SELECT id FROM startingClass WHERE sClass = "Knight"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Rebecca"),
       (SELECT id FROM startingClass WHERE sClass = "Archer"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Sain"),
       (SELECT id FROM startingClass WHERE sClass = "Cavalier"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Serra"),
       (SELECT id FROM startingClass WHERE sClass = "Cleric"));

INSERT INTO unit_startingClass (unit_id, startingClass_id)
VALUES ((SELECT id FROM unit WHERE name = "Will"),
       (SELECT id FROM startingClass WHERE sClass = "Archer"));  

	   
	   
	   
	   
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Pegasus Knight"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Lance"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Fighter"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Axe"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Lord"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Sword"));

INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Lord"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Axe"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Lord"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Lance"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Mage"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Anima"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Myrmidon"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Sword"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Berserker"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Axe"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Cavalier"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Lance"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Cavalier"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Sword"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Theif"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Sword"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Knight"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Lance"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Archer"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Bow"));
	   
INSERT INTO startingClass_weaponTypes (startingClass_id, weaponTypes_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Cleric"),
       (SELECT id FROM weaponTypes WHERE wTypes = "Staff"));   
	   
	   
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Pegasus Knight"),
       (SELECT id FROM promotion WHERE promotion = "Falcon Knight"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Fighter"),
       (SELECT id FROM promotion WHERE promotion = "Warrior"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Lord"),
       (SELECT id FROM promotion WHERE promotion = "Great Lord"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Mage"),
       (SELECT id FROM promotion WHERE promotion = "Sage"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Myrmidon"),
       (SELECT id FROM promotion WHERE promotion = "Sword Master"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Knight"),
       (SELECT id FROM promotion WHERE promotion = "General"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Archer"),
       (SELECT id FROM promotion WHERE promotion = "Sniper"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Cleric"),
       (SELECT id FROM promotion WHERE promotion = "Bishop"));
	   
INSERT INTO startingClass_promotion (startingClass_id, promotion_id)
VALUES ((SELECT id FROM startingClass WHERE sClass = "Theif"),
       (SELECT id FROM promotion WHERE promotion = "Assassin"));
	   
	   
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Florina"),
       (SELECT id FROM items WHERE items = "Javalin"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Florina"),
       (SELECT id FROM items WHERE items = "Iron Lance"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Florina"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Dorcas"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Dorcas"),
       (SELECT id FROM items WHERE items = "Hand Axe"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Eliwood"),
       (SELECT id FROM items WHERE items = "Rapier"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Eliwood"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Erk"),
       (SELECT id FROM items WHERE items = "Fire"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Guy"),
       (SELECT id FROM items WHERE items = "Killing Edge"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Guy"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Hawkeye"),
       (SELECT id FROM items WHERE items = "Killer Axe"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Hector"),
       (SELECT id FROM items WHERE items = "Wolf Beil"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Hector"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Kent"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Kent"),
       (SELECT id FROM items WHERE items = "Iron Lance"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Kent"),
       (SELECT id FROM items WHERE items = "Iron Sword"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Legault"),
       (SELECT id FROM items WHERE items = "Steel Sword"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Legault"),
       (SELECT id FROM items WHERE items = "Lock Pick"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Lyn"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Lyn"),
       (SELECT id FROM items WHERE items = "Iron Sword"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Matthew"),
       (SELECT id FROM items WHERE items = "Iron Sword"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Matthew"),
       (SELECT id FROM items WHERE items = "Lock Pick"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Oswin"),
       (SELECT id FROM items WHERE items = "Iron Lance"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Oswin"),
       (SELECT id FROM items WHERE items = "Javalin"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Rebecca"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Rebecca"),
       (SELECT id FROM items WHERE items = "Iron Bow"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Sain"),
       (SELECT id FROM items WHERE items = "Iron Lance"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Serra"),
       (SELECT id FROM items WHERE items = "Heal"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Serra"),
       (SELECT id FROM items WHERE items = "Vulnarary"));
	   
INSERT INTO unit_items(unit_id, items_id)
VALUES ((SELECT id FROM unit WHERE name = "Will"),
       (SELECT id FROM items WHERE items = "Iron Bow"));
	   
