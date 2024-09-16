CREATE TABLE Vevők (
    Vevő_Id int PRIMARY KEY AUTO_INCREMENT,
    Vevő_Név VARCHAR(255),
    Vevő_Cím VARCHAR(255)
);

CREATE TABLE Termékek (
    Termék_ID INT PRIMARY KEY,
    Termék_Név VARCHAR(255),
    Kategória VARCHAR(255),
    Egységár INT
);

CREATE TABLE Eladások (
    Rendelés_ID INT,
    Vevő_Id INT,
    Termék_Id INT,
    FOREIGN KEY (Vevő_Id) REFERENCES Vevők(Vevő_Id),
    FOREIGN KEY (Termék_Id) REFERENCES Termékek(Termék_ID),
    Mennyiség INT,
    Rendelés_Dátuma DATE
);