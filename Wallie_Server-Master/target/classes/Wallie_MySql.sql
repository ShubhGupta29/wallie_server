DROP DATABASE if exists WALLIE;
CREATE DATABASE WALLIE;
USE  WALLIE;

CREATE TABLE PRODUCT(
	PRODUCT_ID INT auto_increment,
	CATEGORY VARCHAR(200) NOT NULL,
	UNAME VARCHAR(50),
	constraint PRODUCT_ID_PK primary key ( PRODUCT_ID )
);

CREATE TABLE CUSTOMER(
	USERNAME VARCHAR(50),
	EMAIL_ID VARCHAR(50),
	NAME VARCHAR(50) NOT NULL,
	PASSWORD VARCHAR(70) NOT NULL,
--	PHONE_NUMBER VARCHAR(10) NOT NULL UNIQUE,
	constraint CUSTOMER_USERNAME_PK primary key ( USERNAME )
);



ALTER TABLE PRODUCT ADD CONSTRAINT PRODUCT_USERNAME_FK FOREIGN KEY ( USERNAME ) REFERENCES CUSTOMER( USERNAME );
--ALTER TABLE PRODUCT ADD CONSTRAINT EK_SELLER_EMAIL_ID_FK FOREIGN KEY ( SELLER_EMAIL_ID ) REFERENCES EK_SELLER( EMAIL_ID );

INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1000,'Electronics - Mobile', 'tommy');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1001,'Electronics - Mobile', 'heera');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1002,'Electronics - Mobile', 'johnny');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1003,'Electronics - Mobile', 'stevo');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1004,'Electronics - Mobile', 'tommy');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1005,'Electronics - Mobile', 'tommy');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1006,'Electronics - Mobile', 'sara');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1007,'Electronics - Mobile', 'jamie');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1008,'Electronics - Mobile', 'anim');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1009,'Electronics - Mobile', 'heera');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1010,'Electronics - Laptop', 'johnny');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1011,'Electronics - Laptop','sara');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1012,'Electronics - Laptop','heera');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1013,'Electronics - Laptop', 'mary');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1014,'Electronics - Laptop', 'tommy');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1015,'Electronics - Laptop', 'mary');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1016,'Electronics - Laptop','heera');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1017,'Electronics - Laptop', 'sara');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1018,'Electronics - Laptop', 'johnny');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1019,'Electronics - Laptop', 'johnny');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1020,'Electronics - Desktop', 'tommy');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1021,'Electronics - Desktop', 'heera');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1022,'Electronics - Desktop','johnny');
INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1023,'Electronics - Desktop', 'tommy');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1024,'Neuron Xtreme DSKTP','Pentium Quad Core/4 GB DDR3/500 GB/Ubuntu - Black, 19.5 Inch Screen', 'Electronics - Desktop', 'Neuron', 32000, 5, 150, 'ken@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1025,'Surface DSKTP','NVD Tegra Quad Core/ 1GB/ Android 4.2/353.8 mm x 530.9 mm x 67 mm, 4.85 kg, 54.61 Inch Screen', 'Electronics - Desktop', 'Macrosoft', 55000, 5, 150, 'ken@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1026,'Surface Pro DSKTP','NVD Tegra Quad Core/ 1GB/ Android 4.2/Touch 353.8 mm x 530.9 mm x 67 mm, 4.85 kg, 54.61 Inch Screen', 'Electronics - Desktop', 'Macrosoft', 75000, 5, 8, 'ken@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1027,'Raptor Neon DSKTP','Core i5 (6th Gen)/4 GB DDR3/1 TB/Windows 10 Home - White, 23.8 Inch Screen', 'Electronics - Desktop', 'Raptor', 55000, 5, 2, 'ken@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1028,'Canyon JetCam',' DSLR Camera Body with Single Lens: EF-S 18-55 IS II ', 'Electronics - Camera', 'Canyon', 50000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1029,'Canyon Clix','DSLR Camera Body with Dual Lens: AF-P DX NIKKOR 18 - 55 mm f/3.5 - 5.6G VR + AF-P DX NIKKOR 70 - 300 mm f/4.5 - 6.3G ED VR 16 GB SD Card', 'Electronics - Camera', 'Canyon', 65000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1030,'Canyon clix Plus','DSLR Camera Body with Single Lens: AF-P DX NIKKOR 18-55 mm f/3.5-5.6G VR Kit ', 'Electronics - Camera', 'Canyon', 75000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1031,'Nixon TrueLife','700D DSLR Camera Body with Dual Lens: EF S18 - 55 mm IS II and EF S55 - 250 mm IS II ', 'Electronics - Camera', 'Nixon', 45000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1032,'Nixon Shot','DSLR Camera Body with Single Lens: AF-P DX', 'Electronics - Camera', 'Nixon', 52000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1033,'Nixon ProCam','DSLR Camera Body with Single Lens: EF S18-55 IS STM', 'Electronics - Camera', 'Nixon', 56000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1034,'DigiFilm InFocus','DSLR Camera Body with Lens: AF-P 18-55mm VR + AF-P DX', 'Electronics - Camera', 'DigiFilm', 35000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1035,'DigiFilm Njoy','DSLR Camera Body with AF-S DX NIK 18-105 mm F/3.5-5.6 G ED VR', 'Electronics - Camera', 'DigiFilm', 45000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1036,'DigiFilm Cynosure','77D DSLR Camera Body with Single Lens: EF-S18-135 IS USM', 'Electronics - Camera', 'DigiFilm', 43000, 5, 150, 'brad@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1037,'DigiFilm Roll','DSLR Camera Body with Dual Lens: AF-P DX Nikkor 18 - 55 MM F/3.5-5.6G VR and 70-300 MM F/4.5-6.3G ED VR', 'Electronics - Camera', 'DigiFilm', 35000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1038,'GoodLife Iron-Box','Adjustable thermostat control - Shock-proof plastic body - Non-stick sole plate', 'Electronics - Other Appliances', 'GoodLife', 5000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1039,'GoodLife Microwave Oven','Convection Microwave Oven - Black', 'Electronics - Other Appliances', 'GoodLife', 5000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1040,'JVL BT5 Bluetooth Speaker','Portable Bluetooth Mobile/Tablet Speaker', 'Electronics - Other Appliances', 'JVL', 5000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1041,'Jab 5.1 Speaker','5.1 1 Subwoofer With 5.25"Woofer Unit, 5 Satellite Speakers With Full Range Speaker Units', 'Electronics - Other Appliances', 'Jab', 5000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1042,'Aro RF JeanssM-32', 'Regular Fit Jeans for Men, size-32', 'Clothing - Men', 'ARO', 5000, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1043,'Aro RF JeanssM-34','Regular Fit Jeans for Men / Size 34 / Black', 'Clothing - Men', 'ARO', 4500, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1044,'Aro RF JeanssM-36','Regular Fit Jeans for Men / Size 36 / Navy Blue', 'Clothing - Men', 'ARO', 2500, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1045,'Aro STL JeansM-32','Denim - Stretchable Jeans for Men-32, Skinny fit', 'Clothing - Men', 'ARO', 3500, 5, 150, 'peter@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1046,'Aro STL JeansM-34','Skinny Fit stretchable Jeans for Men/Size-32', 'Clothing - Men', 'ARO', 3100, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1047,'LP FL TrouserM-32','LuiPhilipe formal trouser for men / Size-32', 'Clothing - Men', 'LuiPhilipe', 3600, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1048,'LP FL TrouserM-34','LuiPhilipe formal trouser for men / Size-34', 'Clothing - Men', 'LuiPhilipe', 5200, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1049,'TTL FL ShirtM-38','Formal shirt for men / Size-38', 'Clothing - Men', 'TUTUL', 2500, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1050,'TTL FL ShirtM-40','Formal shirt for men / Size-40', 'Clothing - Men', 'TUTUL', 2300, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1051,'TTL FL ShirtM-42','Formal shirt for men / Size-42', 'Clothing - Men', 'TUTUL', 4500, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1052,'Melanje kurti-M','Black Cotton Kurti-M', 'Clothing - Women', 'Melanje', 5000, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1053,'Beeba Palazzo-L','Royal Blue Silk pallazo-L', 'Clothing - Women', 'Beeba', 4000, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1054,'Lyfstyle Trouser-28','Cotton Trousers - 28', 'Clothing - Women', 'Lyfstyle', 6000, 5, 150, 'robert@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1055,'Dabloo Legging-M ','Cotton Legging (grey) size - M', 'Clothing - Women', 'Dabloo', 2000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1056,'Guchi Tunics-M','Denim Tunic (Olive Greeen) Medium Size', 'Clothing - Women', 'Guchi', 4000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1057,'Honee Casual Pant-M','Casual Pant - Off white, Medium size', 'Clothing - Women', 'Honee', 2000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1058,'LateenQuarters Jump Suit-M','Polyster Cotton Jump suit Navy Blue, Size - M', 'Clothing - Women', 'LateenQuarters', 4000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1059,'And Dungaree-M','Cotton Dungaree - Denim', 'Clothing - Women', 'And', 1500, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1060,'Silk crafted Saree','Black Saree with brown border, golden crafted, 5m long', 'Clothing - Women', 'Grand Silk', 5000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1061,'Cotton crafted Saree','Black Saree with red border, 5m long, golden crafted', 'Clothing - Women', 'Grand Silk', 4200, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1062,'Silk printed Saree','Red Saree, with white border and prints, 4m long', 'Clothing - Women', 'Grand Silk', 3000, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1063,'MSD wicket Keeping Gloves','Leather gloves, drill lining cuff with rubber palm.', 'Sports', 'MSD', 1500, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1064,'VSKA Cricket Bat','Jumbo Kashmir Willow Cricket Bat - Short Handle', 'Sports', 'VSKA', 2500, 5, 150, 'david@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1065,'Mess Football','Hand Stitched Ball Laminated With 3 Layers Of Polyester Cotton', 'Sports', 'Mess', 750, 3, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1066,'Nivi Volleyball','Volleyball, weight-300g', 'Sports', 'Nivi', 500, 5, 550, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1067,'SuperGrip Sports Shoes','Sports shoes with light weight and flexible and extra grip sole', 'Sports', 'SuperGrip', 4200, 5, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1068,'Hawk Fry Pan','Special Induction Base Non-Stick Fry Pan, 24cm', 'Home - Kitchen', 'Hawk', 1200, 5, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1069,'Pigi Pressure Cooker','All Outer Aluminum Pressure Cooker, 5 Litres, Silver', 'Home - Kitchen', 'PIGI', 1500, 5, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1070,'TKW Sofa Set','Sofa 3+1+1 sofa sets are usually ideal for most of the living rooms.', 'Home - Furniture', 'TKW', 50000, 5, 15, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1071,'TKW Side Table','Sheesham Wood Bed Side Cabinet (Natural Honey Finish)', 'Home - Furniture', 'TKW', 15000, 5, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1072,'Hommie Curtain','Artistic floral door curtain (Ring) - 48inch X 90inch.', 'Home - Decor', 'Hommie', 2550, 7, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1073,'RoyaleDecor Curtain','Artistic floral window curtain (Ring) ', 'Home - Decor', 'RoyaleDecor', 1550, 5, 150, 'charles@infosys.com');
--INSERT INTO PRODUCT (PRODUCT_ID, CATEGORY, UNAME) VALUES(1074,'RoyaleDecor Bed Lamp','Wooden Table Lamp Rope Style (Size: 25.4 x 17.8 x 17.8 cm)', 'Home - Decor', 'RoyaleDecor', 1089, 3, 200, 'charles@infosys.com');

INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('tommy','tom@infosys.com', 'Tom', 'Tom@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('heera','harry@infosys.com', 'Harry', 'Harry@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('johnny','john@infosys.com', 'John', 'John@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('sara','sara@infosys.com', 'Sara', 'Sara@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('mary','mariya@infosys.com', 'Mariya', 'Mariya@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('jamie','james@infosys.com', 'James', 'James@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('stevo','steve@infosys.com', 'Steve', 'Steve@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('puniy','punya@infosys.com', 'Punya', 'Punya@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('anim','animesh@infosys.com', 'Animesh', 'Animesh@123');
INSERT INTO CUSTOMER (USERNAME, EMAIL_ID, NAME, PASSWORD) VALUES ('rakkku','rakesh@infosys.com', 'Rakesh', 'Rakesh@123');


commit;


