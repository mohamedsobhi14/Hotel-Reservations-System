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

CREATE TABLE RoomReservation(
	Number INT,
    Rasnumber INT,
    PRIMARY KEY pk_RoomReservation (Number,Rasnumber),
    FOREIGN KEY fk_RoomReservation_Room (Number)
		REFERENCES rooms (Number),
	FOREIGN KEY fk_RoomReservation_Reservation (Rasnumber)
		REFERENCES reservations (Rasnumber)
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


