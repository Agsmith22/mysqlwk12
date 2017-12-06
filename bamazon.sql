CREATE DATABASE bamazon_db;

USE bamazon_db;


CREATE TABLE Products (

ItemID int AUTO_INCREMENT, 

ProductName varchar(50) NOT NULL,
 
DepartmentName varchar(50) NOT NULL,

 Price VARCHAR(30) NOT NULL, 
 
 StockQuantity int NOT NULL, 
 
 PRIMARY KEY(ItemID) );
 





INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("DJI Spark Quadcopter", "toys", 399.99, 36);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Presto Belgian Waffle Maker", "Home, Garden & Tools", 24.47, 54);

INSERT INTO Products (productName, departmentName, price, stockQuantity)
 VALUES ("Puppy Play Pen", "Pets", 34.99, 7);
 
INSERT INTO Products (productName, departmentName, price, stockQuantity)
 VALUES ("Cards Against Humanity", "Toys", 15.99, 75);
 
INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Monopoly - The Classic Edition", "Toys, Kids & Baby", 21.97, 80);

INSERT INTO Products (productName, departmentName, price, stockQuantity)
 VALUES ("Converse Chuck Taylors", "Clothing, Shoes & Jewelry", 63.26, 17);
 
INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Nike Tech Fleece", "Clothing, Shoes & Jewelry", 99.00, 7);

INSERT INTO Products (productName, departmentName, price, stockQuantity) 
VALUES ("Coco Butter", "Beauty, Health & Grocery", 225.00, 3116);

INSERT INTO Products (productName, departmentName, price, stockQuantity)
 VALUES ("Fuji xt-2", "Electronics & Computers", 1400.99, 47);
 
INSERT INTO Products (productName, departmentName, price, stockQuantity)
 VALUES ("apple watch", "Electronics & Computers", 385.99, 24274);
 

SELECT * FROM Products;

