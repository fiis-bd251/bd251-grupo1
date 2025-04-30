-- =====================================
-- ELIMINACIÓN DE TIPOS ENUM
-- =====================================
DROP TYPE IF EXISTS estado_usuario_enum CASCADE;
DROP TYPE IF EXISTS permiso_enum CASCADE;
DROP TYPE IF EXISTS estado_participacion_tipo CASCADE;
DROP TYPE IF EXISTS estado_programa_tipo CASCADE;
DROP TYPE IF EXISTS resultado_evaluacion_tipo CASCADE;
DROP TYPE IF EXISTS estado_usuario_enum CASCADE;
DROP TYPE IF EXISTS permiso_enum CASCADE;
DROP TYPE IF EXISTS modalidad_tipo CASCADE;
DROP TYPE IF EXISTS estado_induccion CASCADE;
DROP TYPE IF EXISTS resultado_evaluacion CASCADE;
DROP TYPE IF EXISTS estado_evaluacion CASCADE;
DROP TYPE IF EXISTS tipo_archivo CASCADE;
DROP TYPE IF EXISTS estadoMaquinariasHerramientas CASCADE;
DROP TYPE IF EXISTS estadoFechaInspecciones CASCADE;
DROP TYPE IF EXISTS estadoDecisionesAccionCorrectiva CASCADE;
DROP TYPE IF EXISTS decisionDecisionesAccionCorrectiva CASCADE;
DROP TYPE IF EXISTS tipo_evento CASCADE;
DROP TYPE IF EXISTS estado_evento CASCADE;
DROP TYPE IF EXISTS estado_accion CASCADE;
DROP TYPE IF EXISTS estado_verificacion CASCADE;
DROP TYPE IF EXISTS decision_accion CASCADE;
DROP TYPE IF EXISTS gravedad_incidencia CASCADE;

-- =====================================
-- ELIMINACIÓN DE TABLAS
-- =====================================
DROP TABLE IF EXISTS RespuestasUsuarios CASCADE;
DROP TABLE IF EXISTS PosiblesRespuestas CASCADE;
DROP TABLE IF EXISTS PreguntasEvaluacion CASCADE;
DROP TABLE IF EXISTS MaterialInduccion CASCADE;
DROP TABLE IF EXISTS ParticipanteInduccion CASCADE;
DROP TABLE IF EXISTS EvaluacionInduccion CASCADE;
DROP TABLE IF EXISTS Induccion CASCADE;
DROP TABLE IF EXISTS EvidenciasInspecciones CASCADE;
DROP TABLE IF EXISTS VerificacionesAccionCorrectiva CASCADE;
DROP TABLE IF EXISTS DecisionesAccionCorrectiva CASCADE;
DROP TABLE IF EXISTS InspeccionesProgramadas CASCADE;
DROP TABLE IF EXISTS FechaInspecciones CASCADE;
DROP TABLE IF EXISTS Cronogramas CASCADE;
DROP TABLE IF EXISTS MaquinariasHerramientas CASCADE;
DROP TABLE IF EXISTS MaterialCapacitacion CASCADE;
DROP TABLE IF EXISTS EvaluacionCapacitacion CASCADE;
DROP TABLE IF EXISTS ParticipanteCapacitacion CASCADE;
DROP TABLE IF EXISTS SesionCapacitacion CASCADE;
DROP TABLE IF EXISTS ProgramaCapacitacion CASCADE;
DROP TABLE IF EXISTS Archivo_Reporte CASCADE;
DROP TABLE IF EXISTS Reporte_Inspeccion CASCADE;
DROP TABLE IF EXISTS Reporte_Incidencia CASCADE;
DROP TABLE IF EXISTS Reporte_Capacitacion CASCADE;
DROP TABLE IF EXISTS Reporte CASCADE;
DROP TABLE IF EXISTS Alerta_Programacion CASCADE;
DROP TABLE IF EXISTS Programacion_Reporte CASCADE;
DROP TABLE IF EXISTS Programacion_Envio_Automatico CASCADE;
DROP TABLE IF EXISTS Destinatario_Correo CASCADE;
DROP TABLE IF EXISTS rol_permiso CASCADE;
DROP TABLE IF EXISTS permiso CASCADE;
DROP TABLE IF EXISTS rol CASCADE;
DROP TABLE IF EXISTS Usuario CASCADE;
DROP TABLE IF EXISTS EventoHSE CASCADE;
DROP TABLE IF EXISTS AccionCorrectiva CASCADE;
DROP TABLE IF EXISTS VerificacionAccionesCorrectivas CASCADE;
DROP TABLE IF EXISTS DecisionAccionesCorrectivas CASCADE;
DROP TABLE IF EXISTS ReporteIncidencia CASCADE;
DROP TABLE IF EXISTS ArchivoReporte CASCADE;

-- =====================================
-- CREACIÓN DE TIPOS ENUM
-- =====================================
CREATE TYPE estado_usuario_enum AS ENUM ('ACT', 'INA', 'SUS');
CREATE TYPE permiso_enum AS ENUM (
  'P001','P002','P003','P004','P005','P006','P007','P008',
  'P009','P010','P011','P012','P013','P014','P015','P016',
  'P017','P018','P019','P020','P021','P022','P023','P024',
  'P025','P026','P027','P028'
);
CREATE TYPE estado_participacion_tipo AS ENUM ('Asistió', 'Ausente');
CREATE TYPE estado_programa_tipo AS ENUM ('Activo', 'Inactivo', 'En pausa');
CREATE TYPE resultado_evaluacion_tipo AS ENUM ('Aprobado', 'Desaprobado', 'Pendiente');
CREATE TYPE modalidad_tipo AS ENUM ('Presencial', 'Virtual', 'Híbrido');
CREATE TYPE estado_induccion AS ENUM ('Planificado', 'En curso', 'Completado', 'Cancelado');
CREATE TYPE resultado_evaluacion AS ENUM ('Aprobado', 'Desaprobado', 'Pendiente');
CREATE TYPE estado_evaluacion AS ENUM ('Completado', 'Pendiente', 'En progreso');
CREATE TYPE tipo_archivo AS ENUM ('PDF', 'DOCX', 'XLSX', 'PPTX', 'JPEG', 'PNG', 'MP4');
CREATE TYPE estadoMaquinariasHerramientas AS ENUM ('Operativo', 'En mantenimiento', 'Dañado', 'Retirado');
CREATE TYPE estadoFechaInspecciones AS ENUM ('Pendiente', 'Completado', 'Atrasado', 'Cancelado');
CREATE TYPE estadoDecisionesAccionCorrectiva AS ENUM ('Pendiente', 'En progreso', 'Completado', 'Rechazado');
CREATE TYPE decisionDecisionesAccionCorrectiva AS ENUM ('Reparar', 'Reemplazar', 'Retirar', 'Mantener');
CREATE TYPE tipo_evento AS ENUM ('Incidente', 'Accidente', 'Casi accidente', 'Observación');
CREATE TYPE estado_evento AS ENUM ('Reportado', 'En investigación', 'Cerrado');
CREATE TYPE estado_accion AS ENUM ('Pendiente', 'En progreso', 'Completado', 'Atrasado');
CREATE TYPE estado_verificacion AS ENUM ('Pendiente', 'Investigando', 'Cerrado');
CREATE TYPE decision_accion AS ENUM ('Reparar', 'Reemplazar', 'Retirar');
CREATE TYPE gravedad_incidencia AS ENUM ('Baja', 'Media', 'Alta', 'Crítica');

-- =====================================
-- CREACIÓN DE TABLAS UNIFICADAS
-- =====================================

CREATE TABLE rol (
    id SERIAL PRIMARY KEY,
    nombreRol VARCHAR(15) NOT NULL,
    descripcion VARCHAR(50)
);

CREATE TABLE permiso (
    id SERIAL PRIMARY KEY,
    nombrePermiso VARCHAR(40) NOT NULL,
    descripcion VARCHAR(80),
    tipoPermiso permiso_enum NOT NULL
);

CREATE TABLE rol_permiso (
    id_rol_permiso SERIAL PRIMARY KEY,
    idRol INTEGER NOT NULL REFERENCES rol(id) ON DELETE CASCADE,
    idPermiso INTEGER NOT NULL REFERENCES permiso(id) ON DELETE CASCADE
);

CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    primNombre VARCHAR(20) NOT NULL,
    apellidoPaterno VARCHAR(15) NOT NULL,
    apellidoMaterno VARCHAR(15),
    contrasena VARCHAR(10) NOT NULL,
    telefono VARCHAR(12),
    estado estado_usuario_enum NOT NULL,
	correo VARCHAR(50) NOT NULL,
    fechaNacimiento DATE,
    dni VARCHAR(8) UNIQUE NOT NULL,
    fechaIncorporacion DATE,
    id_Rol INTEGER
);

CREATE TABLE Reporte (
    id_Reporte SERIAL PRIMARY KEY,
    tipo_Reporte CHAR(3) NOT NULL,
    fecha_Generacion DATE NOT NULL,
    id_Usuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario),
    formato_Archivo CHAR(3) NOT NULL,
    url_Archivo VARCHAR(200) NOT NULL
);

CREATE TABLE Reporte_Capacitacion (
    id_Reporte_Capacitacion SERIAL PRIMARY KEY REFERENCES Reporte(id_Reporte),
    tema_Capacitacion VARCHAR(200) NOT NULL,
    numero_Participantes INTEGER NOT NULL CHECK (numero_Participantes > 0)
);

CREATE TABLE Reporte_Incidencia (
    id_Reporte_Incidencia SERIAL PRIMARY KEY REFERENCES Reporte(id_Reporte),
    tipo_Incidencia CHAR(3) NOT NULL,
    gravedad_Incidencia CHAR(3) NOT NULL
);

CREATE TABLE Reporte_Inspeccion (
    id_Reporte_Inspeccion SERIAL PRIMARY KEY REFERENCES Reporte(id_Reporte),
    area_Inspeccionada VARCHAR(100) NOT NULL,
    cumplimiento_Normativa BOOLEAN NOT NULL
);


CREATE TABLE Programacion_Reporte (
    id_Programacion_Reporte SERIAL PRIMARY KEY,
    fecha_Generacion_Inicial DATE NOT NULL,
    hora_Generacion_Inicial TIME NOT NULL,
    frecuencia_Generacion CHAR(3) NOT NULL,
    area_Trabajo VARCHAR(100) NOT NULL,
    descripcion_Actividad VARCHAR(200) NOT NULL,
    tipo_Reporte_Programado CHAR(3) NOT NULL,
    nombre_Reporte_Generado VARCHAR(100) NOT NULL,
    fecha_Proxima_Ejecucion DATE NOT NULL,
    hora_Proxima_Ejecucion TIME NOT NULL,
    id_Usuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario)
);

CREATE TABLE Alerta_Programacion (
    id_Alerta SERIAL PRIMARY KEY,
    id_Programacion_Reporte_Ref INTEGER NOT NULL REFERENCES Programacion_Reporte(id_Programacion_Reporte),
    tipo_Alerta CHAR(4) NOT NULL,
    fecha_Alerta TIMESTAMP NOT NULL,
    mensaje_Alerta VARCHAR(200)
);

CREATE TABLE Archivo_Reporte (
    id_Archivo_Reporte SERIAL PRIMARY KEY,
    id_Reporte_Ref INTEGER NOT NULL REFERENCES Reporte(id_Reporte),
    nombre_Archivo VARCHAR(100) NOT NULL,
    formato_Archivo CHAR(3) NOT NULL,
    ubicacion_Archivo VARCHAR(200) NOT NULL
);

CREATE TABLE Destinatario_Correo (
    id_Destinatario SERIAL PRIMARY KEY,
    direccion_Correo VARCHAR(100) NOT NULL UNIQUE,
    nombre_Destinatario VARCHAR(100) NOT NULL
);

CREATE TABLE Programacion_Envio_Automatico (
    id_Programacion_Envio SERIAL PRIMARY KEY,
    frecuencia_Envio CHAR(3) NOT NULL,
    area_Trabajo_Filtro_Envio VARCHAR(100) NOT NULL,
    fecha_Inicio_Envio DATE NOT NULL,
    fecha_Fin_Envio DATE NOT NULL,
    hora_Inicio_Envio TIME NOT NULL,
    hora_FinEnvio TIME NOT NULL,
    estado_Reporte_Filtro_Envio CHAR(3) NOT NULL,
    id_Destinatario_Ref INTEGER NOT NULL REFERENCES Destinatario_Correo(id_Destinatario)
);

CREATE TABLE ProgramaCapacitacion (
    idPrograma CHAR(8) PRIMARY KEY,
    nombrePrograma VARCHAR(100) NOT NULL,
    estado estado_programa_tipo NOT NULL,
    año INTEGER CHECK (año >= 2000 AND año <= 2100)
);

CREATE TABLE SesionCapacitacion (
    idSesion CHAR(8) PRIMARY KEY,
    idPrograma CHAR(8) NOT NULL REFERENCES ProgramaCapacitacion(idPrograma),
    fechaSesion DATE NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    modalidad VARCHAR(15) NOT NULL
);

CREATE TABLE ParticipanteCapacitacion (
    idParticipacionC CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL REFERENCES SesionCapacitacion(idSesion),
    idUsuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario),
    estado estado_participacion_tipo NOT NULL
);

CREATE TABLE EvaluacionCapacitacion (
    idEvaluacion CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL REFERENCES SesionCapacitacion(idSesion),
    idUsuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario),
    puntaje DECIMAL(5,2) NOT NULL,
    resultado resultado_evaluacion_tipo NOT NULL
);

CREATE TABLE MaterialCapacitacion (
    idMaterial CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL REFERENCES SesionCapacitacion(idSesion),
    nombreArchivo VARCHAR(100) NOT NULL,
    urlArchivo VARCHAR(256) NOT NULL
);

CREATE TABLE Induccion (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion VARCHAR(1000),
    fechainicio DATE NOT NULL,
    fechafinal DATE NOT NULL,
    modalidad modalidad_tipo NOT NULL,
    estado estado_induccion NOT NULL,
    lugar VARCHAR(255) NOT NULL
);

CREATE TABLE EvaluacionInduccion (
    id SERIAL PRIMARY KEY,
    puntaje INTEGER CHECK (puntaje >= 0 AND puntaje <= 20),
    resultado resultado_evaluacion,
    id_Induccion INTEGER NOT NULL REFERENCES Induccion(id)
);

CREATE TABLE ParticipanteInduccion (
    id SERIAL PRIMARY KEY,
    estado_eval estado_evaluacion,
    id_Usuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario),
    id_Induccion INTEGER NOT NULL REFERENCES Induccion(id),
    id_evalInduc INTEGER REFERENCES EvaluacionInduccion(id)
);

CREATE TABLE MaterialInduccion (
    id SERIAL PRIMARY KEY,
    nombreArchivo VARCHAR(255) NOT NULL,
    tipoArchivo tipo_archivo,
    urlArchivo VARCHAR(255),
    id_Induccion INTEGER NOT NULL REFERENCES Induccion(id)
);

CREATE TABLE PreguntasEvaluacion (
    id SERIAL PRIMARY KEY,
    enunciado TEXT NOT NULL,
    id_evaluacion INTEGER NOT NULL REFERENCES EvaluacionInduccion(id)
);

CREATE TABLE PosiblesRespuestas (
    id SERIAL PRIMARY KEY,
    textoRespuesta VARCHAR(500) NOT NULL,
    esCorrecta BOOLEAN NOT NULL,
    id_pregunta INTEGER NOT NULL REFERENCES PreguntasEvaluacion(id)
);

CREATE TABLE RespuestasUsuarios (
    id SERIAL PRIMARY KEY,
    seleccionTexto VARCHAR(1000),
    id_participante INTEGER NOT NULL REFERENCES ParticipanteInduccion(id),
    id_pregunta INTEGER NOT NULL REFERENCES PreguntasEvaluacion(id),
    id_respuesta INTEGER NOT NULL REFERENCES PosiblesRespuestas(id)
);

BEGIN;

CREATE TABLE MaquinariasHerramientas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    estado estadoMaquinariasHerramientas NOT NULL,
    descripcion VARCHAR(300)
);

CREATE TABLE Cronogramas (
    id SERIAL PRIMARY KEY,
    mes INT NOT NULL CHECK (mes BETWEEN 1 AND 12),
    anio INT NOT NULL CHECK (anio BETWEEN 1900 AND 9999)
);

CREATE TABLE FechaInspecciones (
    id SERIAL PRIMARY KEY,
    idCronograma INT NOT NULL REFERENCES Cronogramas(id),
    idMaquinariaHerramienta INT NOT NULL REFERENCES MaquinariasHerramientas(id),
    estado estadoFechaInspecciones NOT NULL,
    dia TIMESTAMP
);

CREATE TABLE InspeccionesProgramadas (
    id SERIAL PRIMARY KEY,
    idFechaInspeccion INT NOT NULL UNIQUE REFERENCES FechaInspecciones(id),
    idUsuario INT NOT NULL REFERENCES Usuario(id_Usuario),
    hallazgos BOOLEAN NOT NULL,
    descripcion VARCHAR(1000),
    fecha TIMESTAMP NOT NULL
);

CREATE TABLE DecisionesAccionCorrectiva (
    id SERIAL PRIMARY KEY,
    idInspeccion INT NULL REFERENCES InspeccionesProgramadas(id),
    idVerificacion INT NULL,
    estado estadoDecisionesAccionCorrectiva NOT NULL,
    decision decisionDecisionesAccionCorrectiva NOT NULL,
    descripcion VARCHAR(1000),
    fecha TIMESTAMP NULL,
    CHECK (
        (idInspeccion IS NOT NULL)::int
        + (idVerificacion IS NOT NULL)::int
        = 1
    )
);

CREATE TABLE VerificacionesAccionCorrectiva (
    id SERIAL PRIMARY KEY,
    idDecisionAccionCorrectiva INT NOT NULL REFERENCES DecisionesAccionCorrectiva(id),
    idUsuario INT NOT NULL REFERENCES Usuario(id_Usuario),
    hallazgos BOOLEAN NOT NULL,
    descripcion VARCHAR(1000),
    fecha TIMESTAMP NOT NULL
);

ALTER TABLE DecisionesAccionCorrectiva
ADD CONSTRAINT fk_verificacion
FOREIGN KEY (idVerificacion) REFERENCES VerificacionesAccionCorrectiva(id);

CREATE TABLE EvidenciasInspecciones (
    id SERIAL PRIMARY KEY,
    video VARCHAR(100) NOT NULL,
    foto VARCHAR(100) NOT NULL,
    idInspeccion INT NULL REFERENCES InspeccionesProgramadas(id),
    idVerificacion INT NULL REFERENCES VerificacionesAccionCorrectiva(id),
    CHECK (
        (idInspeccion IS NOT NULL)::int
        + (idVerificacion IS NOT NULL)::int
        = 1
    )
);

COMMIT;

CREATE TABLE EventoHSE (
    idEvento CHAR(8) PRIMARY KEY,
    tipoEvento tipo_evento NOT NULL,
    fechaEvento DATE NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    idUsuario INTEGER NOT NULL REFERENCES Usuario(id_Usuario),
    estado estado_evento NOT NULL
);

CREATE TABLE AccionCorrectiva (
    idAccion CHAR(8) PRIMARY KEY,
    idEvento CHAR(8) NOT NULL REFERENCES EventoHSE(idEvento),
    responsable VARCHAR(100) NOT NULL,
    descripcionAccion VARCHAR(300) NOT NULL,
    fechaCompromiso DATE NOT NULL,
    estado estado_accion NOT NULL
);