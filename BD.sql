
use Administracion
Drop table Usuario
Create table Usuario (
	Nombre varchar(100) not null,
	Contra varchar(50) not null,
	Rol varchar(20) not null,
	Carne int not null,
	FechaNac date not null,
	Correo varchar(50) not null primary key,
	Telefono int not null
);

create procedure logueo @usuario varchar(50), @password varchar(50) As Begin Select * From Usuario where @usuario = Correo And @password = Contra End;
create procedure crearUsuario @nombre varchar(100), @Contra varchar(50), @Rol varchar(20), @Carne int, @FechaNac date, @correo varchar(50), @telefono int As Begin Insert into Usuario values(@nombre,@Contra,@Rol,@Carne,@FechaNac,@correo,@telefono) End;
create procedure existenciaUsuario @usuario varchar(50) As Begin Select * From Usuario where @usuario = Correo End;
INSERT INTO Usuario VALUES('Administrador', '12345', 'Administrador', 1,'1998-07-10', 'joshuafranco98@gmail.com', 50505050);
Select * From Usuario

Create table Salon(
	IDSalon int identity (1,1) not null primary key,
	Edificio varchar(20) not null,
	Numero int not null,
	Estado varchar(20) not null
);
