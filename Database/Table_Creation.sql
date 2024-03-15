CREATE TABLE Director (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

DROP TABLE Director

CREATE TABLE Platform (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

INSERT INTO `shows`.`platform` (`ID`, `Name`) VALUES ('1', 'AmazonPrime');
INSERT INTO `shows`.`platform` (`ID`, `Name`) VALUES ('2', 'Netflix');

-- Create table for Cast
CREATE TABLE Casting (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

DROP TABLE Casting

-- Create table for Type
CREATE TABLE Category (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(255) NOT NULL
);

DROP TABLE Category
-- Create table for Show
CREATE TABLE Shows (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Country VARCHAR(255),
    Release_Year YEAR,
    Duration VARCHAR(255),
    Rating VARCHAR(255)
);

DROP TABLE Shows

CREATE TABLE Full_Show (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_Show INT,
    ID_Director INT,
    ID_Platform INT,
    ID_Cast INT,
    ID_Type INT,
    FOREIGN KEY (ID_Show) REFERENCES Shows(ID),
    FOREIGN KEY (ID_Director) REFERENCES Director(ID),
    FOREIGN KEY (ID_Platform) REFERENCES Platform(ID),
    FOREIGN KEY (ID_Cast) REFERENCES Casting(ID),
    FOREIGN KEY (ID_Type) REFERENCES Category(ID)
);


ALTER TABLE Full_Show
ADD FOREIGN KEY (ID_Director) REFERENCES Director(ID),
ADD FOREIGN KEY (ID_Platform) REFERENCES Platform(ID),
ADD FOREIGN KEY (ID_Cast) REFERENCES Casting(ID),
ADD FOREIGN KEY (ID_Type) REFERENCES Category(ID),
ADD FOREIGN KEY (ID_Show) REFERENCES Shows(ID);


ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_1;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_2;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_3;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_4;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_5;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_6;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_7;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_8;
ALTER TABLE Full_Show DROP FOREIGN KEY full_show_ibfk_9;