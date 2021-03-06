INSERT INTO Usuario (nombreUsuario, Correo, Passwd, Puntos) VALUES
	('Pablo', 'correoP@gmail.com', '123456', 3000),
	('Carlos', 'correoC@gmail.com', '123456', 200),
	('Bece', 'correoB@gmail.com', '123456', 2000),
	('Javi', 'correoJ@gmail.com', '123456', 2000),
	('Mateos', 'correoM@gmail.com', '123456', 0);

INSERT INTO Juego (nombreJuego, Categoria, Pegi, Instalador, nivelesRecompensa, Licencia, Precio, Estado) VALUES
	('GTA5', 'Violencia Drogas', 18, '/usuario/partidas', '5,10,15,20', 43627819, 40, 1),
	('Battlefield 2042', 'Guerra Disparos', 18, '/usuario/partidas', '10,25,50', 39484879, 60, 1),
	('Grid 2', 'Conduccion', 8, '/usuario/partidas', '5,25,100', 4893204, 20, 1),
	('FIFA22', 'Deportes', 6, '/usuario/partidas', '10,20,30,40,50', 9867431, 60,1),
	('Far Cry 6', 'Aventura Violencia', 18, '/usuario/partidas', '20,40', 986453231, 60,1),
	('Cyberpunk 2077', 'Aventura Violencia', 18, '/usuario/partidas', '25,50,100', 7434321, 80,1);

INSERT INTO Partida (idPartida, Fecha, horaGuardado, horasJugadas, estadoMaquina, nombreJuego, Creador) VALUES
	('1', '2021-09-24', '16:23:32', 4, 'estado.dat', 'GTA5', 'Pablo'),
	('2', '2021-06-04', '13:12:11', 2, 'estado.dat', 'GTA5', 'Carlos'),
	('3', '2021-04-14', '18:25:36', 1, 'estado.dat', 'Battlefield 2042', 'Bece'),
	('4', '2021-11-13', '16:46:33', 6, 'estado.dat', 'Grid 2', 'Javi'),
	('5', '2021-07-25', '14:22:27', 12, 'estado.dat', 'Far Cry 6', 'Pablo'),
	('6', '2021-04-11', '11:56:48', 45, 'estado.dat', 'Battlefield 2042', 'Carlos'),
	('7', '2021-08-27', '14:31:13', 2, 'estado.dat', 'Cyberpunk 2077', 'Bece'),
	('8', '2021-09-26', '12:16:06', 100, 'estado.dat', 'FIFA22', 'Javi');

INSERT INTO Amigos (nombreUsuario1, nombreUsuario2) VALUES
	('Pablo', 'Bece'),
	('Pablo', 'Javi'),
	('Javi', 'Bece');

INSERT INTO Tiene (idPartida, nombreUsuario) VALUES
	('1', 'Pablo'),
	('1', 'Bece'),
	('2', 'Carlos'),
	('3', 'Bece'),
	('3', 'Javi'),
	('4', 'Javi'),
	('5', 'Pablo'),
	('6', 'Carlos'),
	('7', 'Bece'),
	('8', 'Javi'),
	('8', 'Pablo');

INSERT INTO Compartido (nombreUsuario1, nombreUsuario2) VALUES
	('Pablo', 'Bece'),
	('Bece', 'Javi'),
	('Javi', 'Bece');

INSERT INTO Administrador (nombreUsuario, idAdmin) VALUES
	('Pablo', 'admin1'),
	('Carlos', 'admin2');

INSERT INTO UsuarioEliminado (nombreUsuario, Fecha) VALUES
	('Mateos', CURDATE());

INSERT INTO Sesion (nombreUsuario, fechaInicio, fechaFin, horaInicio, horaFin) VALUES
	('Pablo', CURDATE(), CURDATE(), '12:23:31', '15:34:12'),
	('Javi', '2021-12-24', '2021-12-24', '11:34:12', '12:12:32'),
	('Carlos', '2021-12-21', '2021-12-22', '22:12:43', '01:32:52'),
	('Bece', '2021-12-25', '2021-12-25', '16:43:32', '18:53:16');

INSERT INTO CopiaJuego (numCopia, nombreJuego, Version, directorioInstalacion, Estado, nombreUsuario, puntosGastados) VALUES
	(1, 'GTA5', '3.2', 'C:/Usuarios/Pablo/Juegos/GTA5', 'actualizable', 'Pablo', 500),
	(2, 'GTA5', '3.2', 'C:/Usuarios/Carlos/Juegos/GTA5', 'actualizable', 'Carlos', 100),
	(1, 'FIFA22', '1.3', 'C:/Usuarios/Bece/Juegos/FIFA22', 'actualizable', 'Bece', 0),
	(1, 'Battlefield 2042', '2.2', 'C:/Usuarios/Pablo/Juegos/Battlefield2042', 'jugable', 'Pablo', 200),
	(1, 'Cyberpunk 2077', '1.0', 'C:/Usuarios/Javi/Juegos/Cyberpunk2077', 'jugable', 'Javi', 0),
	(1, 'Far Cry 6', '1.1', 'C:/Usuarios/Javi/Juegos/Farcry6', 'jugable', 'Javi', 1000),
	(3, 'GTA5', '3.2', 'C:/Usuarios/Bece/Juegos/GTA5', 'jugable', 'Bece', 0),
	(2, 'Battlefield 2042', '2.2', 'C:/Usuarios/Bece/Juegos/Battlefield2042', 'jugable', 'Bece', 0),
	(2, 'FIFA22', '1.3', 'C:/Usuarios/Javi/Juegos/FIFA22', 'jugable', 'Javi', 0),
	(2, 'Cyberpunk 2077', '1.0', 'C:/Usuarios/Bece/Juegos/Cyberpunk2077', 'jugable', 'Bece', 0),
	(2, 'Far Cry 6', '1.1', 'C:/Usuarios/Bece/Juegos/Farcry6', 'jugable', 'Bece', 0);

INSERT INTO JuegoCompartido (numCopia, nombreJuego, nombreAmigo) VALUES
	(3, 'GTA5', 'Pablo'),
	(2, 'Battlefield 2042', 'Pablo'),
	(2, 'FIFA22', 'Bece'),
	(2, 'Cyberpunk 2077', 'Javi'),
	(2, 'Far Cry 6', 'Javi');

