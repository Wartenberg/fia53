DROP DATABASE IF EXISTS EMMA;
CREATE DATABASE EMMA;
USE EMMA;

DROP TABLE IF EXISTS Artikel;
DROP TABLE IF EXISTS Bestand;
DROP TABLE IF EXISTS Bestellung;
DROP TABLE IF EXISTS Posten;
DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Mitarbeiter;

CREATE TABLE Person (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Vorname VARCHAR(45),
	Name VARCHAR(45),
	Geburtsdatum DATE,
	Str VARCHAR(45),
	Hnr VARCHAR(7),
	Plz CHAR(5),
	Ort VARCHAR(45)
) ENGINE = InnoDB;

CREATE TABLE Mitarbeiter (
	ID INT NOT NULL PRIMARY KEY,
	Benutzername VARCHAR(45) NOT NULL,
	Passwort VARCHAR(45) NOT NULL,
	Status ENUM('Hilfskraft', 'Personal', 'Chef') NOT NULL,
	FOREIGN KEY (ID) REFERENCES Person(ID) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Artikel (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(45),
	Preis DOUBLE
) ENGINE = InnoDB;

CREATE TABLE Bestand (
	fiArtikel INT NOT NULL,
	RegalNummer INT,
	PlatzNummer INT,
	Menge INT,
	FOREIGN KEY (fiArtikel) REFERENCES Artikel(ID) ON DELETE CASCADE
) ENGINE = InnoDB;


CREATE TABLE Bestellung (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fiPerson INT NOT NULL,
	fiMitarbeiter INT NOT NULL,
	wiederkehrend INT,
	ausfuehrung DATE,
	FOREIGN KEY (fiPerson) REFERENCES Person(ID) ON DELETE CASCADE,
	FOREIGN KEY (fiMitarbeiter) REFERENCES Mitarbeiter(ID) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE Posten (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fiArtikel INT NOT NULL,
	fiBestellung INT NOT NULL,
	MENGE INT,
	FOREIGN KEY (fiArtikel) REFERENCES Artikel(ID) ON DELETE CASCADE,
	FOREIGN KEY (fiBestellung) REFERENCES Bestellung(ID) ON DELETE CASCADE
) ENGINE = InnoDB;



INSERT INTO Artikel (Name, Preis) VALUES
("Apfel", 0.36),
("Birne", 0.41),
("Bananen", 1.29),
("Schokolade", 2.32),
("Kakao", 1.83),
("Milch", 0.23),
("Honig", 0.43),
("Brot", 1.23),
("Mega Hero Zeitschrift", 2.49);

INSERT INTO Bestand (fiArtikel, RegalNummer, Platznummer, Menge) VALUES
(4, 2, 1, 7),
(5, 2, 1, 23),
(1, 1, 1, 3),
(7, 2, 1, 4),
(4, 2, 1, 8),
(6, 2, 1, 3),
(7, 2, 1, 11),
(8, 2, 1, 6),
(1, 1, 1, 4),
(2, 2, 1, 14),
(4, 2, 1, 4),
(2, 1, 1, 7),
(5, 2, 1, 9),
(7, 2, 1, 21),
(3, 1, 1, 6);

INSERT INTO Person (Vorname, Name, Geburtsdatum, Str, Hnr, Plz, Ort) VALUES
("Fritz", "Baumgart", "1993-20-04", "Herbst Straße", "2a", "48290", "Köln"),
("Norbert", "Bügelbrett", "2001-03-01", "Brüggen Straße", "2a", "32390", "Köln"),
("Anna", "Weg", "1995-05-03", "Orbit Allee", "2a", "43490", "Köln"),
("Rudolf", "Gather", "1986-02-04", "Troisdorfer Straße", "2a", "43230", "Köln"),
("Arnold", "Black", "1991-05-08", "Zentralen Straße", "2a", "48340", "Köln"),
("Emma", "Rich", "1987-03-02", "Luxenburger Straße", "32", "48340", "Köln");

INSERT INTO Mitarbeiter (ID, Benutzername, Passwort, Status) VALUES
(6, "Emmentaler", "ÖlRz@ABC!", "Chef"),
(1, "Fritz", "Baumgart", "Hilfskraft"),
(2, "Norbert", "iLQzJaYK", "Hilfskraft"),
(4, "Rudi", "nasenbluten", "Personal");

INSERT INTO Bestellung (fiPerson, fiMitarbeiter, wiederkehrend, ausfuehrung) VALUES
(3, 6, null, null),
(3, 6, null, null),
(5, 2, null, null),
(5, 1, null, null);

INSERT INTO Posten (fiArtikel, fiBestellung, Menge) VALUES
(1, 1, 12),
(2, 1, 3),
(1, 2, 8),
(1, 3, 4),
(1, 4, 2);
