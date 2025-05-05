-- DROP TYPE
DROP TYPE IF EXISTS tipo_evento, estado_evento, estado_accion, estado_verificacion, decision_accion, gravedad_incidencia, tipo_reporte, formato_archivo, tipo_incidencia, frecuencia_generacion, tipo_alerta, estado_reporte_filtro_envio, estado_participacion_tipo, estado_programa_tipo, resultado_evaluacion_tipo, estado_comunicado, prioridad_comunicado, tipo_comunicado, estado_lectura, comprension_comunicado, modalidad_tipo, estado_induccion, estado_evaluacion, resultado_evaluacion, tipo_archivo, estadomaquinariasherramientas, estadofechainspecciones, estadodecisionesaccioncorrectiva, decisiondecisionesaccioncorrectiva, estado_usuario_enum, permiso_enum CASCADE;


-- DROP TABLE
DROP TABLE IF EXISTS usuario, eventohse, accioncorrectiva, verificacionaccionescorrectivas, decisionaccionescorrectivas, reporteincidencia, archivoreporte, reporte, reporte_capacitacion, reporte_incidencia, reporte_inspeccion, programacion_reporte, alerta_programacion, archivo_reporte, destinatario_correo, programacion_envio_automatico, programacapacitacion, sesioncapacitacion, participantecapacitacion, evaluacioncapacitacion, materialcapacitacion, comunicado, difusioncomunicado, confirmacioncomunicado, induccion, evaluacioninduccion, participanteinduccion, materialinduccion, preguntasevaluacion, posiblesrespuestas, respuestasusuarios, maquinariasherramientas, cronogramas, fechainspecciones, inspeccionesprogramadas, decisionesaccioncorrectiva, verificacionesaccioncorrectiva, evidenciasinspecciones, rol, permiso, usuarios, rol_permiso CASCADE;


-- CREATE TYPE
CREATE TYPE tipo_evento AS ENUM ('ACC', 'INC', 'CAS', 'RIE');

CREATE TYPE estado_evento AS ENUM ('ABI', 'INV', 'CER', 'REA');

CREATE TYPE estado_accion AS ENUM ('PEN', 'PRO', 'VER', 'CER');

CREATE TYPE estado_verificacion AS ENUM ('PEN', 'INV', 'CER');

CREATE TYPE decision_accion AS ENUM ('REM', 'REP', 'REA');

CREATE TYPE gravedad_incidencia AS ENUM ('LE', 'MOD', 'GRA');

CREATE TYPE tipo_Reporte AS ENUM ('CAP', 'INC', 'INS');

CREATE TYPE formato_Archivo AS ENUM ('PDF', 'EXC');

CREATE TYPE tipo_Incidencia  AS ENUM ('ACC', 'CUA', 'CON');

CREATE TYPE frecuencia_Generacion AS ENUM ('DIA', 'SEM', 'MEN');

CREATE TYPE tipo_Alerta AS ENUM ('CONF', 'REPO', 'ERRO');

CREATE TYPE estado_Reporte_Filtro_Envio AS ENUM ('ACT', 'FIN', 'PEN');

CREATE TYPE estado_participacion_tipo AS ENUM ('Asistió', 'Ausente');

CREATE TYPE estado_programa_tipo AS ENUM ('AGE', 'NAG');

CREATE TYPE resultado_evaluacion_tipo AS ENUM ('Aprobado', 'Desaprobado');

CREATE TYPE estado_comunicado AS ENUM ('ACT', 'ARC', 'ANU');

CREATE TYPE prioridad_comunicado AS ENUM ('ALT', 'MED', 'BAJ');

CREATE TYPE tipo_comunicado AS ENUM ('POL', 'ALR', 'CAM', 'INF', 'SEG', 'SAL', 'MED', 'MNT', 'CAP', 'COM', 'URG', 'INV', 'REC', 'EVT', 'ANU', 'INS', 'REP');

CREATE TYPE estado_lectura AS ENUM ('LEO', 'NLE');

CREATE TYPE comprension_comunicado AS ENUM ('SI', 'NO');

CREATE TYPE modalidad_tipo AS ENUM ('PRE', 'VIR');

CREATE TYPE estado_induccion AS ENUM ('ACT', 'FIN', 'ESP');

CREATE TYPE estado_evaluacion AS ENUM ('APR', 'NAP', 'PEN', 'FLT');

CREATE TYPE resultado_evaluacion AS ENUM ('APR', 'NAP', 'PEN');

CREATE TYPE tipo_archivo AS ENUM ('VID', 'DOC', 'INF', 'REG');

CREATE TYPE estadoMaquinariasHerramientas AS ENUM ('OPE', 'INO');

CREATE TYPE estadoFechaInspecciones AS ENUM ('ASI', 'PEN', 'REA');

CREATE TYPE estadoDecisionesAccionCorrectiva AS ENUM ('PEN', 'REA');

CREATE TYPE decisionDecisionesAccionCorrectiva AS ENUM ('REM', 'REP');

CREATE TYPE estado_usuario_enum AS ENUM ('ACT', 'INA', 'SUS');

CREATE TYPE permiso_enum AS ENUM (
  'P001','P002','P003','P004','P005','P006','P007','P008',
  'P009','P010','P011','P012','P013','P014','P015','P016',
  'P017','P018','P019','P020','P021','P022','P023','P024',
  'P025','P026','P027','P028'
);


-- CREATE TABLE
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
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

CREATE TABLE EventoHSE (
    idEvento CHAR(8) PRIMARY KEY,
    tipoEvento tipo_evento NOT NULL,
    fechaEvento DATE NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    idUsuario INTEGER NOT NULL, -- Referencia a la tabla Usuario
    estado estado_evento NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(id)
);

CREATE TABLE AccionCorrectiva (
    idAccion CHAR(8) PRIMARY KEY,
    idEvento CHAR(8) NOT NULL, -- Referencia a la tabla EventoHSE
    responsable VARCHAR(100) NOT NULL,
    descripcionAccion VARCHAR(300) NOT NULL,
    fechaCompromiso DATE NOT NULL,
    estado estado_accion NOT NULL,
    FOREIGN KEY (idEvento) REFERENCES EventoHSE(idEvento)
);

CREATE TABLE VerificacionAccionesCorrectivas (
    idVerificacion CHAR(8) PRIMARY KEY,
    idDecisionAccionesCorrectivas CHAR(8) NOT NULL, -- Referencia a la tabla DecisionAccionesCorrectivas
    idUsuario INTEGER NOT NULL, -- Referencia a la tabla Usuario
    hallazgos BOOLEAN NOT NULL,
    descripcion VARCHAR(300),
    fecha DATE NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(id)
);

CREATE TABLE DecisionAccionesCorrectivas (
    idDecisionAccionesCorrectivas CHAR(8) PRIMARY KEY,
    idInspeccion CHAR(8) NOT NULL, -- Referencia a una posible tabla de inspección
    idVerificacion CHAR(8) NOT NULL, -- Referencia a la tabla VerificacionAccionesCorrectivas
    estado estado_verificacion NOT NULL,  -- Se utilizarán los valores 'PEN', 'INV', 'CER'
    decision decision_accion NOT NULL,  -- Los valores válidos son 'REM', 'REP', 'REA'
    descripcion VARCHAR(300),
    FOREIGN KEY (idVerificacion) REFERENCES VerificacionAccionesCorrectivas(idVerificacion)
);

CREATE TABLE ReporteIncidencia (
    idReporteIncidencia CHAR(10) PRIMARY KEY,
    tipoIncidencia tipo_evento NOT NULL,
    gravedadIncidencia gravedad_incidencia NOT NULL
);

CREATE TABLE ArchivoReporte (
    idArchivoReporte CHAR(10) PRIMARY KEY,
    idReporte CHAR(10) NOT NULL, -- Referencia a la tabla ReporteIncidencia
    nombreArchivo VARCHAR(100) NOT NULL,
    formatoArchivo CHAR(4) NOT NULL,  -- Cambiado de CHAR(3) a CHAR(4) para permitir formatos como 'PDF', 'CSV', 'XLSX'
    ubicacionArchivo VARCHAR(200) NOT NULL,
    FOREIGN KEY (idReporte) REFERENCES ReporteIncidencia(idReporteIncidencia)
);

CREATE TABLE Reporte (
    id_Reporte SERIAL PRIMARY KEY,
    tipo_Reporte CHAR(3) NOT NULL,
    fecha_Generacion DATE NOT NULL,
    id_Usuario INTEGER NOT NULL REFERENCES usuarios(id),
    formato_Archivo CHAR(3) NOT NULL,
    url_Archivo VARCHAR(200) NOT NULL
);

CREATE TABLE Reporte_Capacitacion (
    id_Reporte_Capacitacion SERIAL PRIMARY KEY REFERENCES Reporte(id_Reporte),
    tema_Capacitacion VARCHAR(200) NOT NULL,
    numero_Participantes SERIAL NOT NULL CHECK ( numero_Participantes > 0)
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
    id_Usuario INTEGER NOT NULL REFERENCES usuarios(id)
);

CREATE TABLE Alerta_Programacion (
    id_Alerta SERIAL PRIMARY KEY,
    id_Programacion_Reporte_Ref SERIAL NOT NULL REFERENCES Programacion_Reporte(id_Programacion_Reporte),
    tipo_Alerta CHAR(4) NOT NULL,
    fecha_Alerta TIMESTAMP NOT NULL,
    mensaje_Alerta VARCHAR(200)
);

CREATE TABLE Archivo_Reporte (
    id_Archivo_Reporte SERIAL PRIMARY KEY,
    id_Reporte_Ref SERIAL NOT NULL REFERENCES Reporte(id_Reporte),
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
    area_Trabajo_Filtro_Envio VARCHAR(100)NOT NULL,
    fecha_Inicio_Envio DATE NOT NULL,
    fecha_Fin_Envio DATE NOT NULL,
    hora_Inicio_Envio TIME NOT NULL,
    hora_FinEnvio TIME NOT NULL,
    estado_Reporte_Filtro_Envio CHAR(3) NOT NULL,
    id_Destinatario_Ref SERIAL NOT NULL REFERENCES Destinatario_Correo(id_Destinatario)
);

CREATE TABLE ProgramaCapacitacion (
    idPrograma CHAR(8) PRIMARY KEY,
    nombrePrograma VARCHAR(100) NOT NULL,
    estado estado_programa_tipo NOT NULL,
    año INTEGER CHECK (año >= 2000 AND año <= 2100)
);

CREATE TABLE SesionCapacitacion (
    idSesion CHAR(8) PRIMARY KEY,
    idPrograma CHAR(8) NOT NULL,
    fechaSesion DATE NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    modalidad VARCHAR(15) NOT NULL,
    FOREIGN KEY (idPrograma) REFERENCES ProgramaCapacitacion(idPrograma)
);

CREATE TABLE ParticipanteCapacitacion (
    idParticipacionC CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL,
    idUsuario CHAR(8) NOT NULL,
    estado estado_participacion_tipo NOT NULL,
    FOREIGN KEY (idSesion) REFERENCES SesionCapacitacion(idSesion)
);

CREATE TABLE EvaluacionCapacitacion (
    idEvaluacion CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL,
    idUsuario CHAR(8) NOT NULL,
    puntaje DECIMAL(5,2) NOT NULL,
    resultado resultado_evaluacion_tipo NOT NULL,
    FOREIGN KEY (idSesion) REFERENCES SesionCapacitacion(idSesion)
);

CREATE TABLE MaterialCapacitacion (
    idMaterial CHAR(8) PRIMARY KEY,
    idSesion CHAR(8) NOT NULL,
    nombreArchivo VARCHAR(100) NOT NULL,
    urlArchivo VARCHAR(256) NOT NULL,
    FOREIGN KEY (idSesion) REFERENCES SesionCapacitacion(idSesion)
);

CREATE TABLE Comunicado (
    idComunicado SERIAL PRIMARY KEY,
    tituloComunicado VARCHAR(100) NOT NULL,
    contenido TEXT NOT NULL,
    fechaComunicado TIMESTAMP NOT NULL,
    idUsuario CHAR(8) NOT NULL, -- Usuario de rol Gerencia
    archivoAdjunto VARCHAR(255),
    estado estado_comunicado NOT NULL,
    prioridad prioridad_comunicado NOT NULL,
    tipoComunicado tipo_comunicado NOT NULL,
    subidoOneDrive BOOLEAN DEFAULT FALSE
);

CREATE TABLE DifusionComunicado (
    idDifusion SERIAL PRIMARY KEY,
    idComunicado INT NOT NULL,
    idUsuario CHAR(8) NOT NULL,       -- Usuario que difunde (Supervisor HSE)
    idDestinatario CHAR(8) NOT NULL,  -- Usuario que recibe (Trabajador)
    fechaEnvio TIMESTAMP NOT NULL,
    FOREIGN KEY (idComunicado) REFERENCES Comunicado(idComunicado)
);

CREATE TABLE ConfirmacionComunicado (
    idConfirmacion SERIAL PRIMARY KEY,
    idDifusion INT NOT NULL,
    idUsuario CHAR(8) NOT NULL, -- Usuario que confirma (debe ser igual a idDestinatario)
    fechaConfirmacion TIMESTAMP NOT NULL,
    estadoLectura estado_lectura NOT NULL,
    comprension comprension_comunicado NOT NULL,
    FOREIGN KEY (idDifusion) REFERENCES DifusionComunicado(idDifusion)
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
    id_Induccion INTEGER NOT NULL,
    FOREIGN KEY (id_Induccion) REFERENCES Induccion(id)
);

CREATE TABLE ParticipanteInduccion (
    id SERIAL PRIMARY KEY,
    estado_eval estado_evaluacion,
    id_Usuario INTEGER NOT NULL,
    id_Induccion INTEGER NOT NULL,
    id_evalInduc INTEGER,
    FOREIGN KEY (id_Usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_Induccion) REFERENCES Induccion(id),
    FOREIGN KEY (id_evalInduc) REFERENCES EvaluacionInduccion(id)
);

CREATE TABLE MaterialInduccion (
    id SERIAL PRIMARY KEY,
    nombreArchivo VARCHAR(255) NOT NULL,
    tipoArchivo tipo_archivo,
    urlArchivo VARCHAR(255),
    id_Induccion INTEGER NOT NULL,
    FOREIGN KEY (id_Induccion) REFERENCES Induccion(id)
);

CREATE TABLE PreguntasEvaluacion (
    id SERIAL PRIMARY KEY,
    enunciado TEXT NOT NULL,
    id_evaluacion INTEGER NOT NULL,
    FOREIGN KEY (id_evaluacion) REFERENCES EvaluacionInduccion(id)
);

CREATE TABLE PosiblesRespuestas (
    id SERIAL PRIMARY KEY,
    textoRespuesta VARCHAR(500) NOT NULL,
    esCorrecta BOOLEAN NOT NULL,
    id_pregunta INTEGER NOT NULL,
    FOREIGN KEY (id_pregunta) REFERENCES PreguntasEvaluacion(id)
);

CREATE TABLE RespuestasUsuarios (
    id SERIAL PRIMARY KEY,
    seleccionTexto VARCHAR(1000),
    id_participante INTEGER NOT NULL,
    id_pregunta INTEGER NOT NULL,
    id_respuesta INTEGER NOT NULL,
    FOREIGN KEY (id_participante) REFERENCES ParticipanteInduccion(id),
    FOREIGN KEY (id_pregunta) REFERENCES PreguntasEvaluacion(id),
    FOREIGN KEY (id_respuesta) REFERENCES PosiblesRespuestas(id)
);

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
    idCronograma INT NOT NULL,
    idMaquinariaHerramienta INT NOT NULL,
    estado estadoFechaInspecciones NOT NULL,
    dia INT,
    FOREIGN KEY (idCronograma) REFERENCES Cronogramas(id),
    FOREIGN KEY (idMaquinariaHerramienta) REFERENCES MaquinariasHerramientas(id)
);

CREATE TABLE InspeccionesProgramadas (
    id SERIAL PRIMARY KEY,
    idFechaInspeccion INT NOT NULL UNIQUE,
    idUsuario INTEGER NOT NULL,
    hallazgos BOOLEAN NOT NULL,
    descripcion VARCHAR(1000),
    fecha TIMESTAMP NOT NULL,
    FOREIGN KEY (idFechaInspeccion) REFERENCES FechaInspecciones(id),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(id)  
);

CREATE TABLE DecisionesAccionCorrectiva (
    id SERIAL PRIMARY KEY,
    idInspeccion INT NULL,
    idVerificacion INT NULL,
    estado estadoDecisionesAccionCorrectiva NOT NULL,
    decision decisionDecisionesAccionCorrectiva NULL,
    descripcion VARCHAR(1000) NULL,
    fecha TIMESTAMP NULL,
    FOREIGN KEY (idInspeccion) REFERENCES InspeccionesProgramadas(id),
    -- CHECK: al menos uno de los dos campos debe ser NOT NULL
    CHECK (
         (idInspeccion IS NOT NULL)::int
          + (idVerificacion IS NOT NULL)::int
          = 1
    )
);

CREATE TABLE VerificacionesAccionCorrectiva (
    id SERIAL PRIMARY KEY,
    idDecisionAccionCorrectiva INT NOT NULL,
    idUsuario INTEGER NOT NULL,
    hallazgos BOOLEAN NOT NULL,
    descripcion VARCHAR(1000),
    fecha TIMESTAMP NOT NULL,
    FOREIGN KEY (idDecisionAccionCorrectiva) REFERENCES DecisionesAccionCorrectiva(id),
    FOREIGN KEY (idUsuario) REFERENCES usuarios(id) 
);

CREATE TABLE EvidenciasInspecciones (
    id SERIAL PRIMARY KEY,
    video    VARCHAR(100) NOT NULL,
    foto     VARCHAR(100) NOT NULL,
    idInspeccion   INT NULL,
    idVerificacion INT NULL,
    FOREIGN KEY (idInspeccion)   REFERENCES InspeccionesProgramadas(id),
    FOREIGN KEY (idVerificacion) REFERENCES VerificacionesAccionCorrectiva(id),
    -- CHECK: al menos uno de los dos campos debe ser NOT NULL
    CHECK (
         (idInspeccion IS NOT NULL)::int
          + (idVerificacion IS NOT NULL)::int
          = 1
    )
);

CREATE TABLE rol (
    id SERIAL     PRIMARY KEY,
    nombreRol     VARCHAR(15)       NOT NULL,
    descripcion   VARCHAR(50)
);

CREATE TABLE permiso (
    id    SERIAL           PRIMARY KEY,
    nombrePermiso VARCHAR(40)       NOT NULL,
    descripcion   VARCHAR(80),
    tipoPermiso   permiso_enum      NOT NULL
);


CREATE TABLE rol_permiso (
    id_rol_permiso   SERIAL PRIMARY KEY,
    idRol            INTEGER  NOT NULL REFERENCES rol(id)      ON DELETE CASCADE,
    idPermiso        INTEGER  NOT NULL REFERENCES permiso(id)   ON DELETE CASCADE
);
