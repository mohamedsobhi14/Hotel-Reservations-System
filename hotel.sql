DROP DATABASE IF EXISTS Hotel;

CREATE DATABASE Hotel ;
use Hotel;


CREATE TABLE guests (
    `id`         INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Fname` VARCHAR (50),
    `Lname` VARCHAR (50),
    `Phone` VARCHAR (50),
    `Address` VARCHAR (50),
    `Email`    VARCHAR (50),
    `Passwords` VARCHAR (50)
    
);

CREATE TABLE rooms (
    `Number`       INT PRIMARY KEY,
    `Level` VARCHAR (50),
    `Style` VARCHAR (50),
    `View` VARCHAR (50),
    `Beds` INT,
    `Smoking`   VARCHAR (50)
  
);



CREATE TABLE reservations (
    `Rasnumber`         INT PRIMARY KEY,
    `CheckIn` VARCHAR (50),
    `CheckOut` VARCHAR (50)
 
);

CREATE TABLE GuestReservation (
	id INT,
    Rasnumber INT,
    PRIMARY KEY pk_GuestReservation (id, Rasnumber),
    FOREIGN KEY fk_GuestReservation (id)
		REFERENCES guests (id),
	FOREIGN KEY fk_GuestReservation_Reservation (Rasnumber)
		REFERENCES reservations (Rasnumber)
);


CREATE TABLE RoomReservation(
	Number INT,
    Rasnumber INT,
    PRIMARY KEY pk_RoomReservation (Number,Rasnumber),
    FOREIGN KEY fk_RoomReservation_Room (Number)
		REFERENCES rooms (Number),
	FOREIGN KEY fk_RoomReservation_Reservation (Rasnumber)
		REFERENCES reservations (Rasnumber)
);

INSERT INTO guests (`id, ` Fname, `Lname, `Phone, `Address, `Email`, Passwords`) VALUES (null, "Mohamed", "Ahmed","(+20) 01009033357","5 street alhoaze","mohamed900@gmail.com","mohahed2020")
INSERT INTO guests (`id, ` Fname, `Lname, `Phone, `Address, `Email`, Passwords`) VALUES (null, "Maher", "Ahmed","(+20) 01128637757","Tanta","maher_1080@gmail.com","AHMED##12")
INSERT INTO guests (`id, ` Fname, `Lname, `Phone, `Address, `Email`, Passwords`) VALUES (null, "Mahmoud", "Hassen","(+20) 01225498922","Alex","mahmoudhassen289@gmail.com","passwords2020")
INSERT INTO Rooms (`Number, ` level`, `style`, `view`, `beds`) VALUES ("512", "high", "single", "the sea", "only bed")
INSERT INTO Rooms (`Number, ` level`, `style`, `view`, `beds`) VALUES ("444", "high", "double", "the sea", "2 beds")
INSERT INTO Reservations (`Resnumber`, `Check in`, `checkout`) VALUES ("210","Monday 20/10/2019","Friday 25/10/2019")

UPDATE Guests SET Fname = "Youssef", Lname= "Ali", Email="youssefali231@gmail.com" WHERE id=’200`;
UPDATE Guests SET Fname = "Nabil" , Lname="Ahmed", Email="nabilahmed556@gmail.com" WHERE id=’210`;	                                                    
UPDATE Guests SET Fname = "Mohamed", Lname="Ali", Email="mohamedali56@gmail.com" WHERE	id=’212`;
UPDATE Guests SET Fname = "Khalid", Lname="Mohamed", Email="khalidmohamed500@gmail.com" WHERE id=’216`;
UPDATE Guests SET Fname = "Mustafa", Lname="Mahmoud", Email="mustafamahmoud040@gmail.com" WHERE id=’220`;

DELETE FROM Guests WHERE Fname="Ahmed "; 
DELETE FROM Guests WHERE Fname="Mohamed ";
DELETE FROM Guests WHERE Lname="Ali";
DELETE FROM Guests WHERE Lname="Mahmoud";
DELETE FROM Rooms WHERE Level="low";
