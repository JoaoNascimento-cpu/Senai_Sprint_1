CREATE DATABASE petshop;

USE petshop;
CREATE TABLE Veterinarian
(
	idVeterinarian INT PRIMARY KEY IDENTITY,
	VeterinarianName VARCHAR(100) NOT NULL,
);
CREATE TABLE [Type]
(
	idType INT PRIMARY KEY IDENTITY,
	Spicie VARCHAR(100) NOT NULL,
);
CREATE TABLE _Owner
(
	idOwner INT PRIMARY KEY IDENTITY,
	OwnerName VARCHAR(100) NOT NULL,
);
CREATE TABLE Pet
(
	idPet INT PRIMARY KEY IDENTITY,
	idType INT FOREIGN KEY REFERENCES Type(idType),
	idOwner INT FOREIGN KEY REFERENCES Owner(idOwner),
);
CREATE TABLE Clinic
(
	idClinic INT PRIMARY KEY IDENTITY,
	idVeterinarian INT FOREIGN KEY REFERENCES Veterinarian(idVeterinarian),
	idPet  INT FOREIGN KEY REFERENCES Pet(idPet),
	ClinicName VARCHAR(100) NOT NULL,
);