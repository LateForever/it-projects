DROP DATABASE IF EXISTS wedkowanie;
CREATE DATABASE wedkowanie;
USE wedkowanie;

CREATE TABLE Ryby (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazwa TEXT,
    wystepowanie TEXT,
    style_zycia INT
);

CREATE TABLE Okres_ochronny (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Ryby_id INT,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    od_miesiaca INT,
    do_miesiaca INT,
    wymiar_ochronny INT
);

CREATE TABLE Lowisko (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Ryby_id INT,
    FOREIGN KEY (Ryby_id) REFERENCES Ryby(id),
    akwen TEXT,
    wojewodztwo TEXT,
    rodzaj INT
);