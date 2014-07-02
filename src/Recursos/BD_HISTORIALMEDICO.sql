CREATE TABLE Usuario (
  idUsuario INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  Usuario VARCHAR(30) NULL,
  Pass VARCHAR(30) NULL,
  PRIMARY KEY(idUsuario)
);

CREATE TABLE Paciente (
  idPaciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Usuario_idUsuario INTEGER(11) UNSIGNED NOT NULL,
  Nombre VARCHAR(30) NULL,
  Apellido VARCHAR(30) NULL,
  DNI INTEGER(8) UNSIGNED NULL,
  Telefono INTEGER(9) UNSIGNED NULL,
  Direccion VARCHAR(40) NULL,
  Edad INTEGER(2) UNSIGNED NULL,
  Sexo CHAR(2) NULL,
  EstadoCivil CHAR(3) NULL,
  PRIMARY KEY(idPaciente, Usuario_idUsuario)
);

CREATE TABLE Historial_Medico (
  idHistorial_Medico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Paciente_Usuario_idUsuario INTEGER(11) UNSIGNED NOT NULL,
  Paciente_idPaciente INTEGER UNSIGNED NOT NULL,
  Enfermedades  VARCHAR(40) NULL,
  Peso  NUMERIC(6,2) NULL,
  Talla NUMERIC(6,2) NULL,
  Fecha_Inicio DATE NULL,
  Fecha_final DATE NULL,
  PRIMARY KEY(idHistorial_Medico, Paciente_Usuario_idUsuario, Paciente_idPaciente)
);

CREATE TABLE Empleado (
  IDEmpleado INTEGER(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  Usuario_idUsuario INTEGER(11) UNSIGNED NOT NULL,
  Nombre VARCHAR(30) NULL,
  Apellido VARCHAR(30) NULL,
  Telefono INT(9) NULL,
  Direccion VARCHAR(40) NULL,
  Edad INTEGER(11) UNSIGNED NULL,
  Sexo CHAR(1) NULL,
  EstadoCivil CHAR(2) NULL,
  GrupoSanguineo CHAR(4) NULL,
  PRIMARY KEY(IDEmpleado, Usuario_idUsuario)
);

CREATE TABLE Tratamiento (
  idTratamiento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Empleado_Usuario_idUsuario INTEGER(11) UNSIGNED NOT NULL,
  Historial_Medico_idHistorial_Medico INTEGER UNSIGNED NOT NULL,
  Empleado_IDEmpleado INTEGER(11) UNSIGNED NOT NULL,
  Medicinas VARCHAR(50) NULL,
  Dieta VARCHAR(50) NULL,
  Medico VARCHAR(50) NULL,
  PRIMARY KEY(idTratamiento)
);

CREATE TABLE Factura (
  idFactura INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tratamiento_idTratamiento INTEGER UNSIGNED NOT NULL,
  Monto NUMERIC(6,2) NULL,
  Numero INTEGER UNSIGNED NULL,
  Fecha DATE NULL,
  PRIMARY KEY(idFactura)
);


