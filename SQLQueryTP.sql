create database AlumnosDB;

use AlumnosDB;

CREATE TABLE Alumnos
(
	idAlumno int identity (1,1) not null,
	Nombre nvarchar(50) not null,
	Apellido nvarchar(50) not null,
	DNI int not null,
	Email nvarchar(80) not null,
	Turno nvarchar(20) not null,
	primary key (idAlumno)
);

CREATE TABLE Comentarios
(
	idComentario int identity (1,1) not null,
	Apellido nvarchar(50) not null,
	DNI int not null,
	Comentario nvarchar(1500) not null,
	primary key (idComentario),
);

select * from Alumnos;
select * from Comentarios;
