/* User: 1803982879 Password: mypassword */
DROP DATABASE 1803982879_dub16;

CREATE DATABASE 1803982879_dub16;

USE 1803982879_dub16;

CREATE TABLE Medlimur(
ID INT(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
nafn VARCHAR(255),
kennitala CHAR(10) UNIQUE KEY,
simi CHAR(7)
);

CREATE TABLE Vidburdur(
ID INT(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
heiti VARCHAR(255),
dagsetning DATE
);

CREATE TABLE Admin(
ID INT(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
medlimur_ID INT(3) NOT NULL,
FOREIGN KEY (medlimur_ID) REFERENCES Medlimur(ID)
);

CREATE TABLE Skraning(
ID INT(3) PRIMARY KEY AUTO_INCREMENT NOT NULL,
vidburdur_id INT(3) NOT NULL,
medlimur_id INT(3) NOT NULL,
FOREIGN KEY (vidburdur_id) REFERENCES Vidburdur(ID),
FOREIGN KEY (medlimur_ID) REFERENCES Medlimur(ID)
);

/* Sample gögn */
INSERT INTO Vidburdur(heiti, dagsetning)
VALUES
('Íspartý', '2015-11-25'),
('Star Wars Bíóferð', '2015-12-7'),
('JólaLAN', '2015-12-27');

INSERT INTO Medlimur(nafn, kennitala, simi)
VALUES
('Guðni Natan Gunnarsson', '1803982879', '6952452');

INSERT INTO Admin(medlimur_ID)
VALUES
(1);

INSERT INTO Skraning(vidburdur_id, medlimur_id)
VALUES
(1, 1);