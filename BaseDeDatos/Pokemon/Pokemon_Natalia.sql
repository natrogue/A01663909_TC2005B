-- Natalia Rodriguez Guevara

CREATE DATABASE PokemoNat;
USE PokemoNat;

SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;
SET autocommit=0;



CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Puntos INT,
    Correo_electronico VARCHAR(255),
    Contraseña VARCHAR(255),
    Fecha_registro DATE
);


CREATE TABLE Baraja (
    ID_Baraja INT PRIMARY KEY,
    ID_Usuario INT,
    Numero_Cartas INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);


CREATE TABLE Carta (
    ID_Carta INT PRIMARY KEY,
    ID_Baraja INT,
    Nombre VARCHAR(255),
    Tipo VARCHAR(50),
    Descripcion TEXT,
    Poder INT,
    Nivel_rareza VARCHAR(50),
    Energia INT,
    FOREIGN KEY (ID_Baraja) REFERENCES Baraja(ID_Baraja)
);


CREATE TABLE Habilidad (
    ID_Habilidad INT PRIMARY KEY,
    ID_Carta INT,
    Nombre VARCHAR(255),
    Efecto TEXT,
    FOREIGN KEY (ID_Carta) REFERENCES Carta(ID_Carta)
);


CREATE TABLE Logro (
    ID_Logro INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Puntos INT,
    Descripcion TEXT
);


CREATE TABLE Partida (
    ID_Partida INT PRIMARY KEY,
    ID_Usuario_A INT,
    ID_Usuario_B INT,
    ID_Baraja INT,
    Resultado VARCHAR(50),
    Fecha_hora DATETIME,
    Duracion TIME
);

-- Algo tengo mal con esta tabla porque no me deja insertar datos, tiene que ver con el ID_usuario, pero no se :(
CREATE TABLE Turno (
    ID_Turno INT PRIMARY KEY,
    ID_Partida INT,
    ID_Usuario INT,
    ID_Carta INT,
    ID_Baraja INT,
    Accion VARCHAR(255),
    Resultado VARCHAR(255),
    FOREIGN KEY (ID_Partida) REFERENCES Partida(ID_Partida),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Carta) REFERENCES Carta(ID_Carta),
    FOREIGN KEY (ID_Baraja) REFERENCES Baraja(ID_Baraja)
);



CREATE TABLE Compra (
    ID_Compra INT PRIMARY KEY,
    ID_Usuario INT,
    ID_Carta INT,
    Precio DECIMAL(10, 2),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Carta) REFERENCES Carta(ID_Carta)
);


CREATE TABLE Evento (
    ID_Evento INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Fecha DATE
);


