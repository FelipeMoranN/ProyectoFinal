CREATE TABLE Paciente (
  IDPaciente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  DNI CHAR(8) NULL,
  Direccion VARCHAR(30) NULL,
  Sexo CHAR(1) NULL,
  EstadoCivil CHAR(1) NULL,
  Grupo_Sanguineo CHAR(4) NULL,
  PRIMARY KEY(IDPaciente)
);

CREATE TABLE Empleado (
  IDEmpleado INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cargo VARCHAR(30) NULL,
  Nombre VARCHAR(30) NULL,
  Apellido VARCHAR(30) NULL,
  PRIMARY KEY(IDEmpleado)
);

CREATE TABLE Historial_Medico (
  IDHM INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Paciente_IDPaciente INTEGER UNSIGNED NOT NULL,
  Emfermedades VARCHAR(50) NULL,
  Peso NUMERIC(6,3) NULL,
  Talla NUMERIC(6,3) NULL,
  Observaciones VARCHAR(50) NULL,
  Fecha_Inicio DATE NULL,
  Fecha_Fin DATE NULL,
  PRIMARY KEY(IDHM, Paciente_IDPaciente)
);

CREATE TABLE Tratamiento (
  IDTratamiento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Historial_Medico_Paciente_IDPaciente INTEGER UNSIGNED NOT NULL,
  Historial_Medico_IDHM INTEGER UNSIGNED NOT NULL,
  Empleado_IDEmpleado INTEGER UNSIGNED NOT NULL,
  Medicinas VARCHAR(60) NULL,
  Dieta VARCHAR(60) NULL,
  Medico VARCHAR(30) NULL,
  PRIMARY KEY(IDTratamiento)
);

CREATE TABLE Factura (
  IDFactura INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tratamiento_IDTratamiento INTEGER UNSIGNED NOT NULL,
  Monto NUMERIC(6,2) NULL,
  Numero INTEGER UNSIGNED NULL,
  Fecha DATE NULL,
  PRIMARY KEY(IDFactura)
);
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL auto_increment,
  `usuario` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY  (`idusuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;



INSERT INTO `usuario` VALUES (1, 'felipe', '121314');


