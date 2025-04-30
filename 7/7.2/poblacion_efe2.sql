

-- POBLAMIENTO DE DATOS MÓDULO 3:

-- Usuario
INSERT INTO Usuarios (primNombre, apellidoPaterno, apellidoMaterno, contrasena, telefono, estado, fechaNacimiento, dni, codigo, fechaIncorporacion, id_Rol) VALUES
('Juan', 'Pérez', 'Ramírez', 'clave123', '987654321', TRUE, '1990-01-15', '12345678', 'U001', '2022-01-01', 1),
('Ana', 'Lopez', 'García', 'pass456', '976543210', TRUE, '1988-05-22', '22345679', 'U002', '2022-03-01', 2),
('Luis', 'Gonzales', 'Martínez', '1234abcd', '912345678', TRUE, '1992-08-10', '32345670', 'U003', '2022-06-15', 3),
('Carla', 'Romero', 'Flores', 'admin789', '923456789', TRUE, '1995-11-05', '42345671', 'U004', '2022-07-10', 4),
('Pedro', 'Sánchez', 'Rojas', 'clave000', '934567890', TRUE, '1993-04-17', '52345672', 'U005', '2023-01-20', 3),
('Lucía', 'Castillo', 'Delgado', 'lucia123', '945678901', TRUE, '1991-12-01', '62345673', 'U006', '2023-03-05', 2),
('Carlos', 'Reyes', 'Suárez', 'pass777', '956789012', TRUE, '1989-03-25', '72345674', 'U007', '2023-05-12', 1),
('Valeria', 'Mendoza', 'Aguilar', 'passval', '967890123', TRUE, '1994-06-30', '82345675', 'U008', '2023-07-01', 4),
('Diego', 'Torres', 'Herrera', 'torres456', '978901234', TRUE, '1996-09-12', '92345676', 'U009', '2023-08-20', 2),
('Marta', 'Vargas', 'Ortega', 'marta321', '989012345', TRUE, '1990-10-05', '10345677', 'U010', '2023-09-18', 3),
('Elena', 'Salas', 'López', 'elena999', '901234567', TRUE, '1987-07-19', '11345678', 'U011', '2023-11-11', 2),
('Jorge', 'Quispe', 'Chávez', 'jorge001', '912345679', TRUE, '1992-02-23', '12345679', 'U012', '2023-12-01', 4),
('Diana', 'Morales', 'Fernández', 'dianaabc', '923456780', TRUE, '1993-03-11', '13345680', 'U013', '2024-01-10', 3),
('Sofía', 'Núñez', 'Mejía', 'sofia007', '934567891', TRUE, '1994-05-08', '14345681', 'U014', '2024-02-20', 2),
('Pablo', 'Herrera', 'Castro', 'pablox', '945678902', TRUE, '1990-11-30', '15345682', 'U015', '2024-03-15', 1);

-- Comunicado
INSERT INTO Comunicado (tituloComunicado, contenido, fechaComunicado, idUsuario, archivoAdjunto, estado, prioridad, tipoComunicado, subidoOneDrive) VALUES
('Política de Seguridad', 'Contenido sobre seguridad laboral.', '2024-04-01 08:00:00', 'U001', 'seguridad.pdf', 'ACT', 'ALT', 'POL', TRUE),
('Alerta por derrame', 'Se detectó un derrame químico.', '2024-04-02 09:00:00', 'U007', 'derrame.pdf', 'ACT', 'ALT', 'ALR', TRUE),
('Cambio de Protocolo', 'Nuevo protocolo en planta B.', '2024-04-03 10:00:00', 'U015', 'protocolo.docx', 'ACT', 'MED', 'CAM', FALSE),
('Informe Mensual', 'Informe de gestión HSE.', '2024-04-04 11:30:00', 'U001', 'informe.pdf', 'ACT', 'BAJ', 'INF', TRUE),
('Medidas de Seguridad', 'Actualización en normas.', '2024-04-05 13:00:00', 'U007', 'medidas.pdf', 'ACT', 'MED', 'SEG', TRUE),
('Salud Ocupacional', 'Recomendaciones médicas.', '2024-04-06 14:15:00', 'U015', 'salud.pdf', 'ACT', 'BAJ', 'SAL', FALSE),
('Mantenimiento Programado', 'Corte de energía.', '2024-04-07 15:45:00', 'U001', 'mantenimiento.docx', 'ACT', 'MED', 'MNT', TRUE),
('Capacitación EPP', 'Uso correcto del equipo.', '2024-04-08 08:45:00', 'U007', 'epp.pptx', 'ACT', 'ALT', 'CAP', TRUE),
('Comunicado General', 'Actualización semanal.', '2024-04-09 09:30:00', 'U015', 'general.pdf', 'ACT', 'BAJ', 'COM', FALSE),
('Urgencia por accidente', 'Emergencia zona 3.', '2024-04-10 10:00:00', 'U001', 'accidente.pdf', 'ACT', 'ALT', 'URG', TRUE),
('Investigación Interna', 'Reporte de incidente.', '2024-04-11 11:00:00', 'U007', 'investigacion.pdf', 'ACT', 'MED', 'INV', FALSE),
('Reciclaje', 'Nueva política ambiental.', '2024-04-12 12:00:00', 'U015', 'reciclaje.pdf', 'ACT', 'BAJ', 'REC', TRUE),
('Evacuación Simulada', 'Ejercicio programado.', '2024-04-13 13:00:00', 'U001', 'evacuacion.pdf', 'ACT', 'MED', 'EVT', TRUE),
('Instructivo COVID-19', 'Medidas preventivas.', '2024-04-14 14:00:00', 'U007', 'covid.pdf', 'ACT', 'ALT', 'INS', TRUE),
('Reporte HSE', 'Resultados del mes.', '2024-04-15 15:00:00', 'U015', 'reporte.pdf', 'ACT', 'BAJ', 'REP', FALSE);


-- DifusionComunicado
INSERT INTO DifusionComunicado (idComunicado, idUsuario, idDestinatario, fechaEnvio) VALUES
(1, 'U002', 'U003', '2024-04-01 08:30:00'),
(2, 'U004', 'U005', '2024-04-02 09:15:00'),
(3, 'U006', 'U008', '2024-04-03 10:30:00'),
(4, 'U009', 'U010', '2024-04-04 12:00:00'),
(5, 'U011', 'U012', '2024-04-05 13:30:00'),
(6, 'U013', 'U014', '2024-04-06 14:45:00'),
(7, 'U002', 'U006', '2024-04-07 15:15:00'),
(8, 'U004', 'U009', '2024-04-08 08:00:00'),
(9, 'U006', 'U011', '2024-04-09 09:00:00'),
(10, 'U009', 'U013', '2024-04-10 10:00:00'),
(11, 'U011', 'U015', '2024-04-11 11:30:00'),
(12, 'U013', 'U003', '2024-04-12 12:45:00'),
(13, 'U002', 'U004', '2024-04-13 13:30:00'),
(14, 'U004', 'U005', '2024-04-14 14:15:00'),
(15, 'U006', 'U007', '2024-04-15 15:00:00');

-- ConfirmacionComunicado
INSERT INTO ConfirmacionComunicado (idDifusion, idUsuario, fechaConfirmacion, estadoLectura, comprension) VALUES
(1, 'U003', '2024-04-01 10:00:00', 'LEO', 'SI'),
(2, 'U005', '2024-04-02 10:30:00', 'LEO', 'SI'),
(3, 'U008', '2024-04-03 12:00:00', 'LEO', 'NO'),
(4, 'U010', '2024-04-04 13:15:00', 'LEO', 'SI'),
(5, 'U012', '2024-04-05 14:45:00', 'LEO', 'NO'),
(6, 'U014', '2024-04-06 15:30:00', 'LEO', 'SI'),
(7, 'U006', '2024-04-07 16:00:00', 'NLE', 'NO'),
(8, 'U009', '2024-04-08 09:00:00', 'LEO', 'SI'),
(9, 'U011', '2024-04-09 10:00:00', 'NLE', 'NO'),
(10, 'U013', '2024-04-10 11:15:00', 'LEO', 'SI'),
(11, 'U015', '2024-04-11 12:00:00', 'LEO', 'NO'),
(12, 'U003', '2024-04-12 13:00:00', 'LEO', 'SI'),
(13, 'U004', '2024-04-13 14:30:00', 'NLE', 'NO'),
(14, 'U005', '2024-04-14 15:15:00', 'LEO', 'SI'),
(15, 'U007', '2024-04-15 16:00:00', 'NLE', 'NO');




-- Usuario
INSERT INTO Usuario (idUsuario, nombres, apellidoPaterno, apellidoMaterno, correo, contrasena, rol, estado, telefono, fechaRegistro, fechaNacimiento, edad, dni) VALUES
('USR00001', 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'password123', 'TRA', 'ACT', '555-1234', '2025-04-29', '1990-03-10', 35, '12345678'),
('USR00002', 'María', 'Lopez', 'Hernández', 'maria.lopez@example.com', 'password123', 'SUP', 'ACT', '555-5678', '2025-04-29', '1985-05-22', 40, '23456789'),
('USR00003', 'Carlos', 'García', 'Rodríguez', 'carlos.garcia@example.com', 'password123', 'ADM', 'ACT', '555-9012', '2025-04-29', '1975-07-15', 50, '34567890'),
('USR00004', 'Laura', 'Martínez', 'Fernández', 'laura.martinez@example.com', 'password123', 'TRA', 'ACT', '555-3456', '2025-04-29', '1988-11-25', 37, '45678901'),
('USR00005', 'Pedro', 'Sánchez', 'Rojas', 'pedro.sanchez@example.com', 'password123', 'SUP', 'ACT', '555-6789', '2025-04-29', '1993-04-17', 32, '56789012');

-- EventoHSE
INSERT INTO EventoHSE (idEvento, tipoEvento, fechaEvento, descripcion, idUsuario, estado) VALUES
('EVT00001', 'ACC', '2025-04-20', 'Accidente en la planta de producción', 'USR00001', 'ABI'),
('EVT00002', 'INC', '2025-04-22', 'Incidente menor con un equipo eléctrico', 'USR00002', 'INV'),
('EVT00003', 'CAS', '2025-04-25', 'Casi-accidente en la zona de carga', 'USR00003', 'REA'),
('EVT00004', 'ACC', '2025-04-26', 'Accidente en el área de maquinaria', 'USR00004', 'INV'),
('EVT00005', 'INC', '2025-04-28', 'Fuga de gas detectada en el área C', 'USR00005', 'ABI');

-- AccionCorrectiva
INSERT INTO AccionCorrectiva (idAccion, idEvento, responsable, descripcionAccion, fechaCompromiso, estado) VALUES
('ACC00001', 'EVT00001', 'Juan Pérez', 'Revisión de protocolos de seguridad y medidas preventivas', '2025-05-10', 'PEN'),
('ACC00002', 'EVT00002', 'Carlos García', 'Reemplazo de equipo eléctrico defectuoso', '2025-05-15', 'PRO'),
('ACC00003', 'EVT00003', 'Laura Martínez', 'Reforzar las medidas de seguridad en la zona de carga', '2025-05-20', 'VER'),
('ACC00004', 'EVT00004', 'Pedro Sánchez', 'Revisión y mantenimiento de maquinaria', '2025-05-25', 'PEN'),
('ACC00005', 'EVT00005', 'María López', 'Inspección de equipos de seguridad y medidas de evacuación', '2025-06-01', 'PRO');

-- VerificacionAccionesCorrectivas
INSERT INTO VerificacionAccionesCorrectivas (idVerificacion, idDecisionAccionesCorrectivas, idUsuario, hallazgos, descripcion, fecha) VALUES
('VER00001', 'DEC00001', 'USR00001', TRUE, 'Acción correctiva implementada con éxito, pero necesita seguimiento', '2025-05-12'),
('VER00002', 'DEC00002', 'USR00002', FALSE, 'Acción correctiva implementada correctamente, sin observaciones', '2025-05-18'),
('VER00003', 'DEC00003', 'USR00003', TRUE, 'Acción correctiva parcialmente implementada, falta capacitación adicional', '2025-05-22'),
('VER00004', 'DEC00004', 'USR00004', FALSE, 'Acción correcta implementada, inspección finalizada', '2025-05-30'),
('VER00005', 'DEC00005', 'USR00005', TRUE, 'Acción correctiva implementada con éxito', '2025-06-05');

-- DecisionAccionesCorrectivas
INSERT INTO DecisionAccionesCorrectivas (idDecisionAccionesCorrectivas, idInspeccion, idVerificacion, estado, decision, descripcion) VALUES
('DEC00001', 'INS00001', 'VER00001', 'PEN', 'REP', 'Reemplazo de equipo eléctrico y reparación de fugas'),
('DEC00002', 'INS00002', 'VER00002', 'PEN', 'REP', 'Reemplazo total del equipo defectuoso'),
('DEC00003', 'INS00003', 'VER00003', 'INV', 'REA', 'Reactivación de protocolos de seguridad en la zona de carga'),
('DEC00004', 'INS00004', 'VER00004', 'PEN', 'REP', 'Reparación de maquinaria en el área A'),
('DEC00005', 'INS00005', 'VER00005', 'PEN', 'REM', 'Mantenimiento preventivo en equipos de seguridad');

-- ReporteIncidencia (Ahora con 10 registros)
INSERT INTO ReporteIncidencia (idReporteIncidencia, tipoIncidencia, gravedadIncidencia) VALUES
('RPT00001', 'ACC', 'LE'),
('RPT00002', 'INC', 'MOD'),
('RPT00003', 'CAS', 'GRA'),
('RPT00004', 'ACC', 'MOD'),
('RPT00005', 'INC', 'LE'),
('RPT00006', 'ACC', 'MOD'),
('RPT00007', 'INC', 'LE'),
('RPT00008', 'CAS', 'GRA'),
('RPT00009', 'ACC', 'MOD'),
('RPT00010', 'INC', 'GRA');

-- ArchivoReporte (Ahora con 10 registros)
INSERT INTO ArchivoReporte (idArchivoReporte, idReporte, nombreArchivo, formatoArchivo, ubicacionArchivo) VALUES
('ARC00001', 'RPT00001', 'Reporte_Accidente_2025.pdf', 'PDF', '/reportes/accidentes/Reporte_Accidente_2025.pdf'),
('ARC00002', 'RPT00002', 'Reporte_Incidente_2025.csv', 'CSV', '/reportes/incidentes/Reporte_Incidente_2025.csv'),
('ARC00003', 'RPT00003', 'Reporte_CasiAccidente_2025.docx', 'DOC', '/reportes/casi_accidente/Reporte_CasiAccidente_2025.docx'),
('ARC00004', 'RPT00004', 'Reporte_Accidente_2025.pdf', 'PDF', '/reportes/accidentes/Reporte_Accidente_2025.pdf'),
('ARC00005', 'RPT00005', 'Reporte_Evento_2025.xlsx', 'XLSX', '/reportes/eventos/Reporte_Accidente_2025.xlsx'),
('ARC00006', 'RPT00006', 'Reporte_Incidente_2025.pdf', 'PDF', '/reportes/incidentes/Reporte_Incidente_2025.pdf'),
('ARC00007', 'RPT00007', 'Reporte_CasiAccidente_2025.csv', 'CSV', '/reportes/casi_accidente/Reporte_CasiAccidente_2025.csv'),
('ARC00008', 'RPT00008', 'Reporte_Accidente_2025.xlsx', 'XLSX', '/reportes/accidentes/Reporte_Accidente_2025.xlsx'),
('ARC00009', 'RPT00009', 'Reporte_Evento_2025.docx', 'DOC', '/reportes/eventos/Reporte_Evento_2025.docx'),
('ARC00010', 'RPT00010', 'Reporte_Incidente_2025.pdf', 'PDF', '/reportes/incidentes/Reporte_Incidente_2025.pdf');


-- Usuario
INSERT INTO Usuario (id_Usuario, nombres, apellido_Paterno, apellido_Materno, correo, constraseña, id_Rol, id_Estado, telefono, fecha_Registro, fecha_Nacimiento, Edad, DNI) VALUES
(1, 'Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'pass123', 1, 1, '987654321', '2024-02-20', '1990-05-15', 33, '12345678'),
(2, 'María', 'Gómez', 'Pérez', 'maria.gomez@example.com', 'pass456', 3, 1, '987123456', '2024-01-18', '1985-10-22', 38, '23456789'),
(3, 'Carlos', 'Sánchez', 'Ruiz', 'carlos.sanchez@example.com', 'pass789', 3, 1, '987987654', '2024-02-13', '1992-03-10', 31, '34567890'),
(4, 'Ana', 'Ruiz', 'Sánchez', 'ana.ruiz@example.com', 'passabc', 3, 1, '987456789', '2024-03-10', '1988-07-01', 35, '45678901'),
(5, 'Luis', 'López', 'Martínez', 'luis.lopez@example.com', 'passdef', 4, 1, '987654987', '2024-03-18', '1995-12-05', 28, '56789012'),
(6, 'Laura', 'Martínez', 'López', 'laura.martinez@example.com', 'passghi', 3, 1, '987321654', '2024-02-19', '1980-02-18', 43, '67890123'),
(7, 'Pedro', 'Castro', 'Díaz', 'pedro.castro@example.com', 'passjkl', 3, 1, '987147258', '2024-03-23', '1998-09-27', 25, '78901234'),
(8, 'Sofía', 'Díaz', 'Castro', 'sofia.diaz@example.com', 'passmno', 5, 1, '987258369', '2024-01-29', '1983-04-12', 40, '89012345'),
(9, 'Javier', 'Fernández', 'García', 'javier.fernandez@example.com', 'passpqr', 2, 1, '987369258', '2024-03-15', '1991-08-08', 32, '90123456'),
(10, 'Isabel', 'García', 'Fernández', 'isabel.garcia@example.com', 'passstu', 3, 1, '987258147', '2024-02-17', '1987-01-03', 37, '01234567'),
(11, 'Miguel', 'Rodríguez', 'Hernández', 'miguel.rodriguez@example.com', 'passvwx', 3, 1, '987159357', '2024-03-26', '1994-06-19', 29, '12345670'),
(12, 'Elena', 'Hernández', 'Rodríguez', 'elena.hernandez@example.com', 'passyz', 3, 1, '987951753', '2024-04-29', '1982-11-29', 41, '23456781'),
(13, 'Andrés', 'Martín', 'Sanz', 'andres.martin@example.com', 'pass111', 4, 1, '987753159', '2024-02-19', '1997-03-07', 26, '34567892'),
(14, 'Raquel', 'Sanz', 'Martín', 'raquel.sanz@example.com', 'pass222', 2, 1, '987357159', '2024-01-14', '1989-02-03', 34, '45678903'),
(15, 'Sergio', 'Gutiérrez', 'López', 'sergio.gutierrez@example.com', 'pass333', 1, 1, '987159753', '2024-01-19', '1993-05-21', 30, '56789014');

-- Reporte
INSERT INTO Reporte (id_Reporte, tipo_Reporte, fecha_Generacion, id_Usuario, formato_Archivo, url_Archivo) VALUES
(1, 'CAP', '2024-04-27', 1, 'PDF', '/reportes/capacitacion/rep001.pdf'),
(2, 'INC', '2024-04-26', 2, 'EXC', '/reportes/incidencias/rep002.xlsx'),
(3, 'INS', '2024-04-28', 3, 'EXC', '/reportes/inspecciones/rep003.xlsx'),
(4, 'CAP', '2024-04-25', 4, 'PDF', '/reportes/capacitacion/rep004.pdf'),
(5, 'INC', '2024-04-28', 5, 'EXC', '/reportes/incidencias/rep005.xlsx'),
(6, 'INS', '2024-04-29', 6, 'PDF', '/reportes/inspecciones/rep006.pdf'),
(7, 'CAP', '2024-04-30', 7, 'EXC', '/reportes/capacitacion/rep007.xlsx'),
(8, 'INC', '2024-04-29', 8, 'EXC', '/reportes/incidencias/rep008.xlsx'),
(9, 'INS', '2024-05-01', 9, 'EXC', '/reportes/inspecciones/rep009.xlsx'),
(10, 'CAP', '2024-05-02', 10, 'PDF', '/reportes/capacitacion/rep010.pdf'),
(11, 'CAP', '2024-05-03', 11, 'PDF', '/reportes/capacitacion/rep011.pdf'),
(12, 'INC', '2024-05-01', 12, 'EXC', '/reportes/incidencias/rep012.xlsx'),
(13, 'INS', '2024-05-02', 13, 'PDF', '/reportes/inspecciones/rep013.pdf'),
(14, 'CAP', '2024-05-04', 14, 'PDF', '/reportes/capacitacion/rep014.xlsx'),
(15, 'INC', '2024-05-03', 15, 'PDF', '/reportes/incidencias/rep015.pdf');

-- Reporte_Capacitacion
INSERT INTO Reporte_Capacitacion (id_Reporte_Capacitacion, tema_Capacitacion, numero_Participantes) VALUES
(1, 'Inducción de Seguridad', 25),
(2, 'Manejo Defensivo', 15),
(3, 'Primeros Auxilios', 20),
(4, 'Riesgos Eléctricos', 18),
(5, 'Trabajo en Alturas', 12),
(6, 'Manejo Defensivo', 30),
(7, 'Primeros Auxilios', 23),
(8, 'Riesgos Eléctricos', 27),
(9, 'Inducción de Seguridad', 22),
(10, 'Trabajo en Alturas', 16),
(11, 'Inducción de Seguridad', 25),
(12, 'Riesgos Eléctricos', 24),
(13, 'Primeros Auxilios', 21),
(14, 'Manejo Defensivo', 25),
(15, 'Bloqueo y Etiquetado (LOTO)', 17);

-- Reporte_Incidencia
INSERT INTO Reporte_Incidencia (id_Reporte_Incidencia , tipo_Incidencia, gravedad_Incidencia) VALUES
(1, 'ACC', 'LEV'),
(2, 'CUA', 'MOD'),
(3, 'CON', 'LEV'),
(4, 'CON', 'MOD'),
(5, 'ACC', 'GRA'),
(6, 'CUA', 'MOD'),
(7, 'CUA', 'LEV'),
(8, 'ACC', 'LEV'),
(9, 'CON', 'MOD'),
(10, 'CUA', 'LEV'),
(11, 'CON', 'MOD'),
(12, 'ACC', 'LEV'),
(13, 'CON', 'GRA'),
(14, 'ACC', 'MOD'),
(15, 'CUA', 'MOD');

-- Reporte_Inspeccion
INSERT INTO Reporte_Inspeccion (id_Reporte_Inspeccion, area_Inspeccionada, cumplimiento_Normativa) VALUES
(1, 'Almacén', TRUE),
(2, 'Lavanderia Industrial', FALSE),
(3, 'Cocina Central', TRUE),
(4, 'Area de Residuos solidos', FALSE),
(5, 'Planta de tratamiento de agua', FALSE),
(6, 'Cocina Central', TRUE),
(7, 'Area de Residuos solidos', TRUE),
(8, 'Lavanderia Industriall', TRUE),
(9, 'Cocina Central', FALSE),
(10, 'Planta de tratamiento de agua', FALSE),
(11, 'Area de Residuos solidos', TRUE),
(12, 'Lavanderia Industriall', TRUE),
(13, 'Cocina Central', TRUE),
(14, 'Almacen', TRUE),
(15, 'Area de Residuos solidos', FALSE);

-- Programacion_Reporte
INSERT INTO Programacion_Reporte (id_Programacion_Reporte, fecha_Generacion_Inicial, hora_Generacion_Inicial, frecuencia_Generacion, area_Trabajo, descripcion_Actividad, tipo_Reporte_Programado, nombre_Reporte_Generado, fecha_Proxima_Ejecucion, hora_Proxima_Ejecucion, id_Usuario) VALUES
(1, '2024-05-01', '08:00:00', 'DIA', 'Lavanderia Industrial', 'Lavado y procesamiento de ropa industrial', 'INC', 'Derrame de Detergente', '2025-05-02', '08:00:00', 1),
(2, '2024-05-05', '10:00:00', 'MEN', 'Cocina Central', 'Preparación de alimentos a gran escala', 'CAP', ' Manipulación Higiénica ', '2025-06-05', '10:00:00', 2),
(3, '2024-05-15', '14:00:00', 'SEM', 'Almacen', 'Recepción, almacenaje y despacho de materiales.', 'INS', 'Equipos de Elevación', '2025-05-22', '14:00:00', 3),
(4, '2024-05-02', '15:30:00', 'DIA', 'Area de residuos solidos', 'Seguimiento diario de equipos', 'INS', 'Almacenamiento de Residuos ', '2025-05-03', '15:30:00', 4),
(5, '2024-05-07', '09:30:00', 'SEM', 'Planta de tratamiento de agua', 'Segregación y disposición de residuos.', 'INS', 'Estado de Bombas y Tuberías', '2025-05-14', '09:30:00', 5),
(6, '2024-05-20', '11:30:00', 'MEN', 'Area de residuos solidos', 'Segregación y disposición de residuos', 'CAP', 'Segregación de Residuos', '2025-06-20', '11:30:00', 6),
(7, '2024-05-03', '13:00:00', 'DIA', 'Lavanderia Industrial', 'Lavado y procesamiento de ropa industrial', 'INS', 'Atrapamiento en Calandra', '2025-05-04', '13:00:00', 7),
(8, '2024-05-09', '16:30:00', 'MEN', 'Almacen', 'Recepción, almacenaje y despacho de materiales', 'INC', 'Caída de Herramienta ', '2025-06-09', '16:30:00', 8),
(9, '2024-05-24', '08:30:00', 'SEM', 'Cocina Central', 'Preparación de alimentos a gran escala', 'INS', 'Quemadura por Horno ', '2025-05-31', '08:30:00', 9),
(10, '2024-05-23', '15:30:00', 'SEM', 'Planta de tratamiento de agua', 'Tratamiento de aguas residuales', 'INS', 'Dosificación de Químicos', '2025-05-30', '08:30:00', 9),
(11, '2024-05-11', '09:30:00', 'MEN', 'Area de residuos solidos', 'Segregación y disposición de residuos', 'INC', 'Olores por Residuos', '2025-06-11', '16:30:00', 8),
(12, '2024-05-19', '10:30:00', 'MEN', 'Almacen', 'Recepción, almacenaje y despacho de materiales', 'INC', 'Caída de Estiba', '2025-06-19', '14:30:00', 8),
(13, '2024-05-29', '11:30:00', 'SEM', 'Lavanderia Industrial', 'Lavado y procesamiento de ropa industrial', 'INC', 'Atrapamiento en Calandra', '2025-06-05', '17:30:00', 8),
(14, '2024-05-17', '15:30:00', 'DIA', 'Almacen', 'Recepción, almacenaje y despacho de materiales.', 'INC', 'Lesión por Levantamiento', '2025-05-18', '13:30:00', 8),
(15, '2024-05-16', '14:30:00', 'MEN', 'Cocina Central', 'Preparación de alimentos a gran escala.', 'INC', 'Ventilación de Cocina', '2025-06-16', '12:00:00', 8);

-- Alerta_Programacion
INSERT INTO Alerta_Programacion (id_Alerta , id_Programacion_Reporte_Ref, tipo_Alerta, fecha_Alerta, mensaje_Alerta) VALUES
(1, 1, 'CONF', '2024-04-28 21:00:00', 'Programación de reporte 1 guardada.'),
(2, 2, 'REPO', '2024-04-11 08:00:00', 'Reporte generado para la programación 2.'),
(3, 3, 'ERRO', '2024-05-05 10:00:00', 'Error al generar el reporte para 3.'),
(4, 10, 'CONF', '2024-05-02 15:30:00', 'Programación de reporte 10 guardada.'),
(5, 9, 'ERRO', '2024-04-29 08:05:00', 'Error al generar el reporte para 9.'),
(6, 8, 'REPO', '2024-05-15 14:00:00', 'Reporte generado para la programación 8.'),
(7, 4, 'CONF', '2024-05-07 09:30:00', 'Programación de reporte 4 guardada.'),
(8, 5, 'REPO', '2024-04-30 19:00:00', 'Reporte generado para la programación 5.'),
(9, 12, 'ERRO', '2024-04-23 10:00:00', 'Error al generar el reporte para 12.'),
(10, 11, 'CONF', '2024-04-14 11:00:00', 'Programación de reporte 11 guardada.'),
(11, 15, 'REPO', '2024-04-19 15:00:00', 'Reporte generado para la programación 15.'),
(12, 6, 'ERRO', '2024-04-21 12:00:00', 'Error al generar el reporte para 6.'),
(13, 7, 'CONF', '2024-04-01 18:00:00', 'Programación de reporte 7 guardada.'),
(14, 13, 'REPO', '2024-04-03 09:00:00', 'Reporte generado para la programación 13.'),
(15, 14, 'CONF', '2024-04-27 17:00:00', 'Programación de reporte 14 guardada.');

-- Archivo_Reporte
INSERT INTO Archivo_Reporte (id_Archivo_Reporte, id_Reporte_Ref, nombre_Archivo, formato_Archivo, ubicacion_Archivo ) VALUES
(1, 2, 'Reporte_Capacitacion_Induccion.pdf', 'PDF', '/archivos/rep001.pdf'),
(2, 3, 'Reporte_Incidencia_Leve.xlsx', 'EXC', '/archivos/rep002.xlsx'),
(3, 4, 'Reporte_Inspeccion_Almacen.csv', 'EXC', '/archivos/rep003.xlsx'),
(4, 5, 'Reporte_Capacitacion_Manejo.pdf',  'PDF', '/archivos/rep004.pdf'),
(5, 9, 'Reporte_CuasiAccidente_Moderado.docx', 'EXC', '/archivos/rep005.xlsx'),
(6, 10, 'Reporte_Inspeccion_Linea1.pdf',  'PDF', '/archivos/rep006.pdf'),
(7, 11, 'Reporte_Capacitacion_PrimerosAuxilios.xlsx', 'EXC', '/archivos/rep007.xlsx'),
(8, 12, 'Reporte_CondicionInsegura.csv', 'EXC', '/archivos/rep008.xlsx'),
(9, 1, 'Reporte_Inspeccion_Oficinas.docx',  'PDF', '/archivos/rep009.pdf'),
(10, 6, 'Reporte_Capacitacion_RiesgosElectricos.pdf',  'PDF', '/archivos/rep010.pdf'),
(11, 7, 'Reporte_Capacitacion_TrabajoAlturas.pdf',  'PDF', '/archivos/rep011.pdf'),
(12, 8, 'Reporte_CuasiAccidente_Leve_02.xlsx', 'EXC', '/archivos/rep012.xlsx'),
(13, 15, 'Reporte_Inspeccion_TallerMecanico.csv',  'PDF', '/archivos/rep013.pdf'),
(14, 14, 'Reporte_Capacitacion_LOTO.docx', 'EXC', '/archivos/rep014.xlsx'),
(15, 13, 'Reporte_Accidente_Moderado_01.pdf',  'PDF', '/archivos/rep015.pdf');

-- Destinatario_Correo
INSERT INTO Destinatario_Correo (id_Destinatario, direccion_Correo, nombre_Destinatario) VALUES
(1, 'carlos.sanchez@example.com', 'Carlos Sanchez Ruiz'),
(2, 'juan.perez@example.com', 'Jaun Perez Gomez'),
(3, 'luis.lopez@example.com', 'Luis Lopez Gavidia'),
(4, 'Pedro.castro@example.com', 'Pedro Castro Encarnacion'),
(5, 'javier.fernandez@example.com', 'Javier Fernandez Perez'),
(6, 'isabel.garcia@example.com', 'Isabel Garcia Martinez'),
(7, 'Elena.hernandez@example.com', 'Elena Hernandez Gomez'),
(8, 'raquel.sanchez@example.com', 'Raquel Sanchez Ramos'),
(9, 'sergio.gutierrez@example.com', 'Sergio Gutierrez Cordova');

-- Programacion_Envio_Automatico
INSERT INTO Programacion_Envio_Automatico (id_Programacion_Envio, frecuencia_Envio, area_Trabajo_Filtro_Envio, fecha_Inicio_Envio, fecha_Fin_Envio, hora_Inicio_Envio, hora_FinEnvio, estado_Reporte_Filtro_Envio, id_Destinatario_Ref ) VALUES
(1, 'MEN', 'Lavanderia Industrial', '2024-04-08', '2024-05-09', '09:00:00', '09:30:00', 'PEN', 1),
(2, 'DIA', 'Planta de tratamiento de agua', '2024-04-08', '2024-04-09', '11:00:00', '12:00:00', 'FIN', 2),
(3, 'SEM', 'Cocina Cnetral', '2025-05-09', '2025-05-16', '15:00:00', '16:00:00', 'ACT', 3),
(4, 'DIA', 'Almacen', '2025-05-01', '2025-05-02', '12:00:00', '13:00:00', 'FIN', 4),
(5, 'SEM', 'Cocina Central', '2025-04-28', '2025-05-05', '16:00:00', '17:00:00', 'PEN', 5),
(6, 'MEN', 'Area de Residuos Solidos', '2024-05-01', '2024-06-01', '10:00:00', '11:00:00', 'PEN', 6),
(7, 'DIA', 'Lavanderia Industrial', '2025-05-01', '2025-05-02' , '17:00:00', '17:30:00', 'FIN', 7),
(8, 'SEM', 'Cocina Central', '2025-05-05', '2025-05-12', '08:00:00', '09:00:00', 'ACT', 8),
(9, 'MEN', 'Almacen', '2025-04-01', '2025-05-01', '14:00:00', '15:00:00', 'ACT', 9);


-- Usuarios
INSERT INTO Usuarios (primNombre, apellidoPaterno, apellidoMaterno, contrasena, telefono, estado, fechaNacimiento, dni, codigo, fechaIncorporacion, id_Rol)
VALUES
('Juan', 'Pérez', 'Gómez', 'clave123', '987654321', true, '1990-04-15', '12345678', 'U001', '2023-01-01', 1),
('María', 'Ramírez', 'López', 'segura456', '987123456', true, '1992-06-22', '87654321', 'U002', '2023-02-01', 2),
('Carlos', 'Sánchez', 'Reyes', 'pass321', '986111222', true, '1988-11-10', '11223344', 'U003', '2023-03-15', 1),
('Lucía', 'Torres', 'Fernández', 'lucia456', '985222333', true, '1995-09-03', '55667788', 'U004', '2023-03-20', 2),
('Miguel', 'López', 'Quispe', 'miglopez789', '984333444', true, '1991-12-25', '99887766', 'U005', '2023-04-01', 3),
('Sofía', 'García', 'Rojas', 'sofigarcia123', '983444555', true, '1993-08-08', '33445566', 'U006', '2023-04-10', 1),
('Andrés', 'Vega', 'Morales', 'andres321', '982555666', true, '1994-07-21', '55664433', 'U007', '2023-05-01', 2),
('Elena', 'Castro', 'Silva', 'elena999', '981666777', true, '1987-10-19', '77889900', 'U008', '2023-05-05', 1),
('Roberto', 'Herrera', 'Salas', 'robsalas321', '980777888', true, '1985-02-02', '66778899', 'U009', '2023-05-15', 2),
('Diana', 'Mendoza', 'Chávez', 'dianach12', '979888999', true, '1996-01-11', '11221133', 'U010', '2023-06-01', 3),
('José', 'Reyes', 'Cruz', 'joserey77', '978999000', true, '1990-03-03', '22113344', 'U011', '2023-06-10', 1),
('Patricia', 'Delgado', 'Suárez', 'patri456', '977000111', true, '1991-05-09', '44332211', 'U012', '2023-06-20', 2),
('Raúl', 'Ortega', 'Valverde', 'raul123', '976111222', true, '1989-06-30', '66554433', 'U013', '2023-07-01', 1),
('Camila', 'Núñez', 'Campos', 'cami321', '975222333', true, '1993-07-17', '99881122', 'U014', '2023-07-10', 2),
('Felipe', 'Aguilar', 'Paredes', 'feli999', '974333444', true, '1992-09-09', '77778888', 'U015', '2023-07-20', 3),
('Daniela', 'Ruiz', 'Peña', 'danipeña123', '973444555', true, '1995-04-04', '12344321', 'U016', '2023-08-01', 2),
('Javier', 'Mora', 'Soto', 'javmora789', '972555666', true, '1990-10-10', '56473829', 'U017', '2023-08-10', 1),
('Gabriela', 'Fernández', 'Marín', 'gabri321', '971666777', true, '1994-11-11', '83746291', 'U018', '2023-08-20', 2),
('Pedro', 'Salazar', 'Navarro', 'pedsala456', '970777888', true, '1988-12-12', '98237465', 'U019', '2023-08-25', 3),
('Alejandra', 'Ríos', 'Cornejo', 'ale123', '969888999', true, '1996-06-06', '82736451', 'U020', '2023-09-01', 1);

-- Induccion
INSERT INTO Induccion (titulo, descripcion, fechainicio, fechafinal, modalidad, estado, lugar)
VALUES
('Inducción General HSE', 'Curso introductorio sobre políticas de seguridad.', '2024-01-05', '2024-01-05', 'PRE', 'ACT', 'Sala A'),
('Inducción Virtual SST', 'Inducción remota para nuevos ingresos.', '2024-01-10', '2024-01-10', 'VIR', 'FIN', 'Zoom'),
('Inducción de Medio Ambiente', 'Normas de manejo ambiental en planta.', '2024-01-15', '2024-01-15', 'PRE', 'ESP', 'Auditorio Verde'),
('Inducción COVID-19', 'Medidas preventivas y protocolos de salud.', '2024-01-20', '2024-01-20', 'VIR', 'ACT', 'Sistema Web'),
('Inducción Planta Producción', 'Seguridad en zonas de riesgo.', '2024-01-25', '2024-01-25', 'PRE', 'FIN', 'Planta A'),
('Inducción Supervisores', 'Enfoque en liderazgo en seguridad.', '2024-02-01', '2024-02-01', 'PRE', 'ESP', 'Sala B'),
('Inducción Taller Mecánico', 'Procedimientos y riesgos mecánicos.', '2024-02-05', '2024-02-05', 'PRE', 'ACT', 'Taller'),
('Inducción Uso de EPP', 'Uso correcto de equipos de protección personal.', '2024-02-10', '2024-02-10', 'PRE', 'ACT', 'Campo 1'),
('Inducción Trabajos en Altura', 'Seguridad en alturas y arneses.', '2024-02-15', '2024-02-15', 'PRE', 'ESP', 'Planta B'),
('Inducción Manipulación Químicos', 'Riesgos de sustancias peligrosas.', '2024-02-20', '2024-02-20', 'PRE', 'FIN', 'Laboratorio'),
('Inducción Eléctrica', 'Precauciones en instalaciones eléctricas.', '2024-03-01', '2024-03-01', 'PRE', 'ACT', 'Sala E'),
('Inducción de Oficina', 'Seguridad y ergonomía en oficina.', '2024-03-05', '2024-03-05', 'VIR', 'FIN', 'Sistema Web'),
('Inducción Inicial Contratistas', 'Lineamientos para personal externo.', '2024-03-10', '2024-03-10', 'PRE', 'ESP', 'Sala C'),
('Inducción Básica de Evacuación', 'Simulacros y rutas de evacuación.', '2024-03-15', '2024-03-15', 'PRE', 'ACT', 'Zona Común'),
('Inducción Tareas Críticas', 'Identificación de tareas de alto riesgo.', '2024-03-20', '2024-03-20', 'PRE', 'FIN', 'Sala B'),
('Inducción Nuevos Colaboradores', 'Bienvenida e integración.', '2024-03-25', '2024-03-25', 'PRE', 'ESP', 'Auditorio'),
('Inducción Protocolo SST', 'Protocolos oficiales de seguridad.', '2024-04-01', '2024-04-01', 'VIR', 'ACT', 'Sistema Web'),
('Inducción Equipos Pesados', 'Seguridad en uso de maquinaria.', '2024-04-05', '2024-04-05', 'PRE', 'ACT', 'Zona Técnica'),
('Inducción Campo Minado', 'Protocolos en áreas restringidas.', '2024-04-10', '2024-04-10', 'PRE', 'ESP', 'Área Especial'),
('Inducción Logística', 'Riesgos en transporte y almacén.', '2024-04-15', '2024-04-15', 'VIR', 'FIN', 'Sistema Web');

-- EvaluacionInduccion
INSERT INTO EvaluacionInduccion (puntaje, resultado, id_Induccion)
VALUES
(18, 'APR', 1),
(12, 'NAP', 2),
(15, 'APR', 3),
(8, 'NAP', 4),
(20, 'APR', 5),
(14, 'APR', 6),
(10, 'NAP', 7),
(11, 'NAP', 8),
(17, 'APR', 9),
(13, 'APR', 10),
(7, 'NAP', 11),
(19, 'APR', 12),
(9, 'NAP', 13),
(16, 'APR', 14),
(12, 'NAP', 15),
(20, 'APR', 16),
(6, 'NAP', 17),
(18, 'APR', 18),
(14, 'APR', 19),
(5, 'NAP', 20);

-- ParticipanteInduccion
INSERT INTO ParticipanteInduccion (estado_eval, id_Usuario, id_Induccion, id_evalInduc)
VALUES
('APR', 1, 1, 1),
('NAP', 2, 2, 2),
('APR', 3, 3, 3),
('NAP', 4, 4, 4),
('APR', 5, 5, 5),
('APR', 6, 6, 6),
('NAP', 7, 7, 7),
('NAP', 8, 8, 8),
('APR', 9, 9, 9),
('APR', 10, 10, 10),
('NAP', 11, 11, 11),
('APR', 12, 12, 12),
('NAP', 13, 13, 13),
('APR', 14, 14, 14),
('NAP', 15, 15, 15),
('APR', 16, 16, 16),
('NAP', 17, 17, 17),
('APR', 18, 18, 18),
('APR', 19, 19, 19),
('NAP', 20, 20, 20);

-- MaterialInduccion
INSERT INTO MaterialInduccion (nombreArchivo, tipoArchivo, urlArchivo, id_Induccion)
VALUES
('Presentación General HSE', 'DOC', 'https://ejemplo.com/hse1', 1),
('Video Inducción SST', 'VID', 'https://ejemplo.com/sst2', 2),
('Manual Medio Ambiente', 'DOC', 'https://ejemplo.com/medioamb3', 3),
('Instructivo COVID', 'DOC', 'https://ejemplo.com/covid4', 4),
('Procedimientos Planta', 'REG', 'https://ejemplo.com/planta5', 5),
('Liderazgo en SST', 'INF', 'https://ejemplo.com/liderazgo6', 6),
('Seguridad Mecánica', 'DOC', 'https://ejemplo.com/mecanico7', 7),
('Uso Correcto EPP', 'VID', 'https://ejemplo.com/epp8', 8),
('Trabajo en Altura', 'VID', 'https://ejemplo.com/altura9', 9),
('Manipulación Químicos', 'DOC', 'https://ejemplo.com/quimicos10', 10),
('Riesgo Eléctrico', 'VID', 'https://ejemplo.com/electrico11', 11),
('Guía Ergonomía Oficina', 'DOC', 'https://ejemplo.com/oficina12', 12),
('Lineamientos Contratistas', 'REG', 'https://ejemplo.com/externos13', 13),
('Plan de Evacuación', 'INF', 'https://ejemplo.com/evacuacion14', 14),
('Tareas Críticas SST', 'DOC', 'https://ejemplo.com/tareas15', 15),
('Bienvenida Nuevos', 'VID', 'https://ejemplo.com/nuevos16', 16),
('Protocolos SST PDF', 'DOC', 'https://ejemplo.com/protocolo17', 17),
('Equipos Pesados Video', 'VID', 'https://ejemplo.com/maquinaria18', 18),
('Zonas Restringidas', 'INF', 'https://ejemplo.com/restringido19', 19),
('Guía de Logística', 'DOC', 'https://ejemplo.com/logistica20', 20);

-- PreguntasEvaluacion
INSERT INTO PreguntasEvaluacion (enunciado, id_evaluacion)
VALUES
('¿Qué es HSE?', 1),
('¿Qué medidas tomar frente a un derrame químico?', 2),
('¿Cuál es el uso correcto del casco de seguridad?', 3),
('¿Qué hacer en caso de incendio?', 4),
('¿Cuál es la norma básica de bioseguridad?', 5),
('¿Qué equipo se usa para trabajos en altura?', 6),
('¿Cómo actuar ante una emergencia eléctrica?', 7),
('¿Qué indica una señal de advertencia amarilla?', 8),
('¿Qué documento contiene los protocolos internos?', 9),
('¿Qué hacer si se detecta un gas tóxico?', 10),
('¿Qué tipo de extintor se usa para fuego eléctrico?', 11),
('¿Qué son las 5S en seguridad?', 12),
('¿Cuál es la ruta de evacuación?', 13),
('¿Qué es el EPP y por qué es importante?', 14),
('¿Cuántos tipos de riesgo existen en planta?', 15),
('¿Qué es una inducción preventiva?', 16),
('¿Qué hacer ante una caída de altura?', 17),
('¿Quién lidera el comité de seguridad?', 18),
('¿Cuándo usar guantes dieléctricos?', 19),
('¿Cuál es el protocolo frente a sismo?', 20);

-- PosiblesRespuestas
INSERT INTO PosiblesRespuestas (textoRespuesta, esCorrecta, id_pregunta)
VALUES
('Higiene, Seguridad y Ecología', false, 1),
('Salud, Seguridad y Medio Ambiente', true, 1),

('Llamar al jefe inmediato', false, 2),
('Usar absorbente químico y EPP', true, 2),

('Colocarlo correctamente y ajustarlo', true, 3),
('Solo llevarlo en la mano por si acaso', false, 3),

('Salir corriendo sin avisar', false, 4),
('Activar la alarma y evacuar ordenadamente', true, 4),

('No usar mascarilla', false, 5),
('Lavarse las manos y usar EPP', true, 5),

('Arnés de seguridad', true, 6),
('Guantes de cocina', false, 6),

('Ignorar la situación', false, 7),
('Cortar el suministro y avisar', true, 7),

('Zona de evacuación', false, 8),
('Advertencia de peligro', true, 8),

('Cartilla de inducción', true, 9),
('El menú del comedor', false, 9),

('Encender el aire acondicionado', false, 10),
('Evacuar y activar alarma', true, 10),

('Extintor tipo A', false, 11),
('Extintor tipo C', true, 11),

('Una técnica de organización', true, 12),
('Nombre de una brigada', false, 12),

('Salir por donde se entró', false, 13),
('Seguir la ruta señalizada', true, 13),

('Conjunto de equipos de protección', true, 14),
('Una bebida energética', false, 14),

('Uno solo', false, 15),
('Varios: físicos, químicos, biológicos...', true, 15),

('Inducción que se da tras accidentes', false, 16),
('Inducción dada antes del inicio de labores', true, 16),

('Revisar lesiones y pedir ayuda', true, 17),
('Esconderse hasta recuperarse', false, 17),

('Jefe de seguridad industrial', true, 18),
('El último que llega', false, 18),

('Cuando se cocina', false, 19),
('Cuando se trabaja con electricidad', true, 19),

('Quedarse en el lugar', false, 20),
('Evacuar y reunirse en punto seguro', true, 20);


-- RespuestasUsuarios
INSERT INTO RespuestasUsuarios (seleccionTexto, id_participante, id_pregunta, id_respuesta)
VALUES
('Salud, Seguridad y Medio Ambiente', 1, 1, 2),
('Usar absorbente químico y EPP', 2, 2, 4),
('Colocarlo correctamente y ajustarlo', 3, 3, 5),
('Activar la alarma y evacuar ordenadamente', 4, 4, 8),
('Lavarse las manos y usar EPP', 5, 5, 10),
('Arnés de seguridad', 6, 6, 11),
('Cortar el suministro y avisar', 7, 7, 14),
('Advertencia de peligro', 8, 8, 15),
('Cartilla de inducción', 9, 9, 17),
('Evacuar y activar alarma', 10, 10, 20),
('Extintor tipo C', 11, 11, 22),
('Una técnica de organización', 12, 12, 23),
('Seguir la ruta señalizada', 13, 13, 26),
('Conjunto de equipos de protección', 14, 14, 27),
('Varios: físicos, químicos, biológicos...', 15, 15, 30),
('Inducción dada antes del inicio de labores', 16, 16, 32),
('Revisar lesiones y pedir ayuda', 17, 17, 33),
('Jefe de seguridad industrial', 18, 18, 36),
('Cuando se trabaja con electricidad', 19, 19, 37),
('Evacuar y reunirse en punto seguro', 20, 20, 40);



-- 2.1) MaquinariasHerramientas
INSERT INTO MaquinariasHerramientas (nombre, estado, descripcion) VALUES
  ('Excavadora CAT 390',               'OPE', 'Excavadora oruga 390 para carga de material'),
  ('Perforadora Atlas Copco DM45',      'OPE', 'Perforadora de fondo de pozo para voladuras'),
  ('Cargador Frontal Komatsu WA900',    'INO', 'Cargador frontal para acarreo de estéril'),
  ('Camión Minero Caterpillar 793F',    'OPE', 'Camión de acarreo de alta capacidad'),
  ('Bulldozer Komatsu D275A',           'OPE', 'Bulldozer para movimiento de tierras'),
  ('Camión Articulado Volvo A40G',      'INO', 'Camión para terrenos irregulares'),
  ('Pala Hidráulica Hitachi EX8000',    'OPE', 'Pala de rueda para extracción de mineral'),
  ('Chancadora Primaria Gyratory HPGR', 'OPE', 'Trituradora primaria de rocas'),
  ('Chancadora Secundaria Metso HP5',   'INO', 'Chancadora de cono para triturado fino'),
  ('Cinta Transportadora 1200mm',       'OPE', 'Transporte de mineral molido'),
  ('Bomba de Lodos Warman AH',          'OPE', 'Bomba centrífuga para pulpas'),
  ('Ventilador de Galerías Axial',      'OPE', 'Ventilación subterránea'),
  ('Generador Diésel Cummins 1MW',      'INO', 'Fuente de energía auxiliar'),
  ('Compresor de Aire Atlas Copco GA90', 'OPE', 'Suministro de aire neumático'),
  ('Grúa Torre Liebherr 120 EC',        'OPE', 'Montaje de estructuras en altura'),
  ('Filtro de Polvo Baghouses',         'INO', 'Control de emisiones de polvo'),
  ('Equipo de Análisis XRF Móvil',      'OPE', 'Analizador de leyes de mineral'),
  ('Planta de Flotación Móvil',         'OPE', 'Flotación de minerales en campo'),
  ('Cinta Transportadora 800mm',        'OPE', 'Transporte secundario de mineral'),
  ('Bomba Sumergible Goulds 3196',      'INO', 'Desagüe de galerías');


-- 2.2) Cronogramas ( meses 01–12 de 2024 y 01–08 de 2025)
INSERT INTO Cronogramas (mes, anio) VALUES
  (1,2024),(2,2024),(3,2024),(4,2024),(5,2024),(6,2024),
  (7,2024),(8,2024),(9,2024),(10,2024),(11,2024),(12,2024),
  (1,2025),(2,2025),(3,2025),(4,2025),(5,2025),(6,2025),(7,2025),(8,2025);


-- 2.3) FechaInspecciones (20 registros)
INSERT INTO FechaInspecciones (idCronograma, idMaquinariaHerramienta, estado, dia) VALUES
  ( 5,  1, 'ASI', 3),
  ( 5,  2, 'PEN', NULL),
  ( 5,  3, 'REA', 1),
  ( 5,  4, 'ASI', 2),
  ( 5,  5, 'PEN', NULL),
  ( 5,  6, 'REA', 1),
  ( 5,  7, 'ASI', 2),
  ( 5,  8, 'PEN', NULL),
  ( 5,  9, 'REA', 1),
  ( 5, 10, 'ASI', 3),
  ( 5, 11, 'PEN', NULL),
  ( 5, 12, 'REA', 1),
  ( 5, 13, 'ASI', 2),
  ( 5, 14, 'PEN', NULL),
  ( 5, 15, 'REA', 1),
  ( 5, 16, 'ASI', 3),
  ( 5, 17, 'PEN', NULL),
  ( 5, 18, 'REA', 1),
  ( 5, 19, 'ASI', 2),
  ( 5, 20, 'PEN', NULL);


-- 2.4) InspeccionesProgramadas
INSERT INTO InspeccionesProgramadas (idFechaInspeccion, idUsuario, hallazgos, descripcion, fecha) VALUES
  ( 1,  1, FALSE, 'Sin anomalías en sistema hidráulico.',  '2024-01-10 08:30'),
  ( 2,  1, TRUE,  'Correa desgastada en cargador frontal.',   '2024-02-15 10:00'),
  ( 3,  1, FALSE, 'Operación normal de chancadora.',         '2024-03-12 15:00'),
  ( 4,  1, TRUE,  'Fuga de aceite en camión 793F.',         '2024-04-05 10:00'),
  ( 5,  1, FALSE, 'Panel de control funcionando correctamente.', '2024-05-20 09:00'),
  ( 6,  3, TRUE,  'Filtro de polvo saturado.',               '2024-06-20 16:30'),
  ( 7,  3, FALSE, 'Cadenas de dozer bien tensadas.',        '2024-07-08 08:15'),
  ( 8,  3, TRUE,  'Luz de ventilador fuera de servicio.',   '2024-08-12 11:00'),
  ( 9,  3, FALSE, 'Sistema de pulpa estable.',              '2024-09-15 13:30'),
  (10,  3, TRUE,  'Vibraciones excesivas en bomba de lodos.', '2024-10-22 10:50'),
  (11,  3, FALSE, 'Compresor sin sobrecalentamiento.',      '2024-11-30 14:00'),
  (12,  3, TRUE,  'Radiador de generador obstruido.',       '2024-12-01 12:10'),
  (13,  3, FALSE, 'Frenos de grúa en buen estado.',         '2025-01-18 09:00'),
  (14,  3, TRUE,  'Pequeñas grietas detectadas en equipo XRF.', '2025-02-05 14:30'),
  (15,  3, FALSE, 'Cinta transportadora alineada.',         '2025-03-03 15:45'),
  (16,  3, TRUE,  'Correa de flotación desgastada.',        '2025-04-10 09:30'),
  (17,  5, FALSE, 'Nivel de agua estable en sumidero.',     '2025-05-01 08:20'),
  (18,  5, TRUE,  'Sensor de nivel fuera de calibración.',  '2025-06-25 14:30'),
  (19,  5, FALSE, 'Alarma sonora funcionando.',             '2025-07-12 07:45'),
  (20,  5, TRUE,  'Motor sumergible con bajo rendimiento.', '2025-08-05 10:15');


-- 2.5) DecisionesAccionCorrectiva 
INSERT INTO DecisionesAccionCorrectiva (idInspeccion, idVerificacion, estado, decision, descripcion, fecha) VALUES
  ( 1,  NULL, 'REA', 'REP', 'Programar remediación de fuga hidráulica',  '2024-01-11 09:00'),
  ( 2,  NULL, 'REA', 'REP', 'Remplazar correa por otra mas resistente',         '2024-02-16 11:00'),
  ( 4,  NULL, 'REA', 'REP', 'Reparación de fuga de agua',            '2024-04-06 12:00'),
  ( 6,  NULL, 'REA', 'REP', 'Cambiar Filtro de polvo ',               '2024-06-21 17:00'),
  ( 8,  NULL, 'REA', 'REP', 'Remplazar LED de ventilador',          '2024-08-13 11:30'),
  (10, NULL, 'REA', 'REM', 'remplazar cinta por una nueva',           '2024-10-23 11:00'),
  (12, NULL, 'REA', 'REP', 'Realizar limpieza de radiador',          '2024-12-06 12:30'),
  (14, NULL, 'REA', 'REP', 'Aplicar sellado de grietas',             '2025-02-06 14:30'),
  (16, NULL, 'REA', 'REP', 'Remplazar correa de flotación ',         '2025-04-11 09:45'),
  (18, NULL, 'REA', 'REP', 'Recalibrar sensor ',                     '2025-06-26 15:00'),
  (NULL, 1, 'PEN', NULL, NULL,           NULL);



-- 2.6) VerificacionesAccionCorrectiva (20 registros)
INSERT INTO VerificacionesAccionCorrectiva (idDecisionAccionCorrectiva, idUsuario, hallazgos, descripcion, fecha) VALUES
  ( 1,  5, TRUE,  'Fuga hidráulica persistente.',             '2024-01-15 09:00'),
  ( 2,  6, FALSE,  'Correa en óptimas condiciones.',           '2024-02-20 10:30'),
  ( 4,  8, FALSE,  'Fuga completamente cerrada.',             '2024-04-10 11:00'),
  ( 6, 10, FALSE, 'Filtro instalado sin problemas.',          '2024-06-22 17:00'),
  ( 8, 12, FALSE,  'LED funcionando tras cambio.',            '2024-08-08 11:30'),
  (10, 14, FALSE,  'Bomba sin vibraciones anormales.',        '2024-10-30 10:45'),
  (12, 16, FALSE,  'Radiador desobstruido.',                  '2024-12-05 12:20'),
  (14, 18, FALSE,  'Grietas selladas de manera satisfactoria.', '2025-02-10 14:00'),
  (16, 20, FALSE,  'Correa de flotación en buenas condiciones.', '2025-04-15 09:45'),
  (18, 2, FALSE,  'Sensor alineado tras recalibración.',      '2025-06-30 14:20'),
  (20, 4, FALSE,  'Motor sumergible operando correctamente.',  '2025-08-10 10:00');


-- 2.7) EvidenciasInspecciones (20 registros)
INSERT INTO EvidenciasInspecciones (video, foto, idInspeccion, idVerificacion) VALUES
  ('https://mineraejemplo.com/videos/excavadora01.mp4', 'https://mineraejemplo.com/images/excavadora01.jpg',  1,  NULL),
  ('https://mineraejemplo.com/videos/perforadora02.mp4','https://mineraejemplo.com/images/perforadora02.jpg', 2,  NULL),
  ('https://mineraejemplo.com/videos/chancadora03.mp4',  'https://mineraejemplo.com/images/chancadora03.jpg',   3,  NULL),
  ('https://mineraejemplo.com/videos/fuga04.mp4',        'https://mineraejemplo.com/images/fuga04.jpg',        4,  NULL),
  ('https://mineraejemplo.com/videos/panel05.mp4',       'https://mineraejemplo.com/images/panel05.jpg',       5,  NULL),
  ('https://mineraejemplo.com/videos/filtro06.mp4',      'https://mineraejemplo.com/images/filtro06.jpg',      6,  NULL),
  ('https://mineraejemplo.com/videos/cadenas07.mp4',     'https://mineraejemplo.com/images/cadenas07.jpg',     7,  NULL),
  ('https://mineraejemplo.com/videos/led08.mp4',         'https://mineraejemplo.com/images/led08.jpg',         8,  NULL),
  ('https://mineraejemplo.com/videos/pulpa09.mp4',       'https://mineraejemplo.com/images/pulpa09.jpg',       9,  NULL),
  ('https://mineraejemplo.com/videos/bomba10.mp4',       'https://mineraejemplo.com/images/bomba10.jpg',      10,  NULL),
  ('https://mineraejemplo.com/videos/verif01Excavadora.mp4',       'https://mineraejemplo.com/images/verif01Excavadora.jpg',     NULL,   1);
 


 -- 2. POBLAMIENTO DE ROLES
INSERT INTO rol (nombreRol, descripcion) VALUES
  ('Administrador', 'Rol con todos los permisos'),
  ('Gerente',       'Rol de gestión intermedia'),
  ('Trabajador',    'Rol con permisos básicos'),
  ('Inspector',     'Rol de inspección'),
  ('Supervisor',    'Rol de supervisión');

-- 3. POBLAMIENTO DE PERMISOS
INSERT INTO permiso (nombrePermiso, descripcion, tipoPermiso) VALUES
  ('Ver Lista Usuarios',        'Permite ver todos los usuarios',          'P001'),
  ('Registrar Usuarios',        'Permite crear nuevos usuarios',          'P002'),
  ('Editar Usuarios',           'Permite modificar datos de usuario',      'P003'),
  ('Eliminar Usuarios',         'Permite eliminar usuarios',               'P004'),
  ('Asignar Roles',             'Permite asignar roles a usuarios',        'P005'),
  ('Cambiar Estado Usuarios',   'Permite activar/desactivar usuarios',     'P006'),
  ('Editar Cronogramas',        'Permite editar cronogramas',              'P007'),
  ('Acceso a Reportes',         'Permite acceder a reportes',              'P008'),
  ('Crear Comunicados',         'Permite crear comunicados',               'P009'),
  ('Crear Informes',            'Permite generar informes',                'P010'),
  ('Definir Acciones Correctivas','Permite definir acciones correctivas',  'P011'),
  ('Validar A. Correctivas',    'Permite validar acciones correctivas',    'P012'),
  ('Ver Eventos',               'Permite ver eventos de HSE',              'P013'),
  ('Asignar Responsables',      'Permite asignar responsables',            'P014'),
  ('Validar Comunicados',       'Permite validar lectura de comunicados',  'P015'),
  ('Programar Inducciones',     'Permite programar inducciones HSE',       'P016'),
  ('Difundir Comunicado',       'Permite difundir comunicados HSE',        'P017'),
  ('Ver Confirmaciones',        'Permite ver confirmaciones de lectura',   'P018'),
  ('Editar Inducciones Programadas','Permite editar inducciones programadas','P019'),
  ('Programar Capacitaciones',  'Permite programar capacitaciones HSE',    'P020'),
  ('Generar Informes',          'Permite generar informes HSE',            'P021'),
  ('Editar Informes',           'Permite editar informes generados',       'P022'),
  ('Registro Evento',           'Permite registrar incidentes/accidentes','P023'),
  ('Subir Evidencias',          'Permite subir evidencias de eventos',     'P024'),
  ('Visualización Comunicados', 'Permite visualizar comunicados HSE',      'P025'),
  ('Confirmar Lectura Comunicados','Permite confirmar lectura de comunicados','P026'),
  ('Acceso a Inducciones',      'Permite acceder a inducciones asignadas', 'P027'),
  ('Consultar Informes Propios','Permite consultar informes propios',     'P028');

-- 4. POBLAMIENTO DE USUARIOS
INSERT INTO usuarios (
    primNombre, apellidoPaterno, apellidoMaterno,
    contrasena, telefono, estado, correo,
    fechaNacimiento, dni, fechaincorporacion, id_rol
) VALUES
  ('Ana',    'Pérez',   'Gómez',    'clave123', '987654321', 'ACT', 'ana.perez@sodexo.com',    '1990-05-12', '87654321', '2023-01-01', 1),
  ('Luis',   'Ramírez', 'López',    'segura456','987123456', 'INA', 'luis.ramirez@sodexo.com', '1992-06-22', '12344321', '2023-02-01', 2),
  ('María',  'Sánchez','Reyes',     'pass321',  '986111222', 'SUS', 'maria.sanchez@sodexo.com','1988-11-10','11223344','2023-03-15', 3),
  ('Juan',   'Torres',  'Fernández', 'juan456',  '985222333', 'ACT', 'juan.torres@sodexo.com',   '1995-09-03','55667788','2023-03-20', 4),
  ('Elena',  'López',   'Quispe',    'elena789', '984333444', 'ACT', 'elena.lopez@sodexo.com',   '1991-12-25','99887766','2023-04-01', 5);
