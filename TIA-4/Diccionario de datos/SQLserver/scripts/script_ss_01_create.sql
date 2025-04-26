CREATE TABLE proyecto (
    cod_proyecto INT,
    titulo_del_proyecto VARCHAR(255),
    objetivo_proyecto TEXT,
    cod_tipo_proyecto INT,
    cod_entregable INT,
    cod_evaluacion INT,
    cod_rep INT,
    fecha_inicio_proyecto DATE,
    fecha_fin_proyecto DATE
);

CREATE TABLE proyecto_curso (
    cod_proyecto INT,
    cod_curso INT
);

CREATE TABLE tipo_proyecto (
    cod_tipo_proyecto INT,
    tipo_proyecto VARCHAR(10)
);

CREATE TABLE usuario (
    cod_usuario INT,
    nombre1 VARCHAR(20),
    nombre2 VARCHAR(20),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    telefono1 VARCHAR(20),
    telefono2 VARCHAR(20),
    correo_electronico VARCHAR(50),
    nombre_ingreso_usuario VARCHAR(50),
    contraseña_usuario VARCHAR(20)
);

CREATE TABLE usuario_rol (
    cod_usuario INT,
    cod_rol INT
);

CREATE TABLE rol (
    cod_rol INT,
    nombre_rol VARCHAR(20),
    descripcion_rol VARCHAR(100)
);

CREATE TABLE rol_permiso (
    cod_rol INT,
    cod_permiso INT
);

CREATE TABLE permiso (
    cod_permiso INT,
    nombre_permiso VARCHAR(20),
    descripcion_permiso VARCHAR(100)
);

CREATE TABLE estudiante (
    cod_estudiante INT,
    cod_Proyecto INT,
    cod_usuario INT,
    cod_programa_academico INT
);

CREATE TABLE docente (
    cod_docente INT,
    cod_usuario INT
);

CREATE TABLE curso (
    cod_curso INT,
    serie_curso VARCHAR(100),
    cod_asignatura INT,
    cod_docente INT
);

CREATE TABLE invitado (
    cod_invitado INT,
    cod_usuario INT,
    cod_institucion INT,
    cod_departamento INT
);

CREATE TABLE programa_academico (
    cod_programa INT,
    nombre_programa_academico VARCHAR(100),
    cod_departamento INT
);

CREATE TABLE programa_academico_asignatura (
    cod_programa INT,
    cod_asignatura INT
);

CREATE TABLE asignatura (
    cod_asignatura INT,
    nombre_asignatura VARCHAR(100),
    creditos_asignatura INT
);

CREATE TABLE era (
    cod_era INT,
    numero_era INT,
    descripcion_era VARCHAR(500)
);

CREATE TABLE ira (
    cod_ira INT,
    descripcion_ira VARCHAR(500),
    porcentaje_dominio_ira INT,
    cod_era INT
);

CREATE TABLE entregable (
    cod_entregable INT,
    nombre_entregable VARCHAR(200),
    cod_tipo_entregable INT,
    cod_evaluacion INT,
    descripcion_entregable VARCHAR(500),
    cod_proyecto INT
);

CREATE TABLE tipo_entregable (
    cod_tipo_entregable INT,
    nombre_tipo_entregable VARCHAR(200),
    descripcion_tipo_entregable VARCHAR(500)
);

CREATE TABLE evaluacion (
    cod_evaluacion INT,
    descripcion_evaluacion VARCHAR(500),
    ponderacion_evaluacion DECIMAL(4,2),
    cod_evaluador INT
);

CREATE TABLE rep (
    cod_rep INT,
    descripcion_rep VARCHAR(500),
    cod_proyecto INT
);

CREATE TABLE orientacion_del_proyecto (
    cod_orientacion INT,
    categoria_orientacion_pryecto VARCHAR(200),
    descripcion_orientacion VARCHAR(500)
);

CREATE TABLE proyecto_orientacion_del_proyecto (
    cod_proyecto INT,
    cod_orientacion INT
);

CREATE TABLE evaluadores (
    cod_evaluador INT,
    especialidad_evaluador VARCHAR(200),
    cod_institucion VARCHAR(200),
    cod_usuario INT
);

CREATE TABLE departamento (
    cod_departamento INT,
    nombre_departamento VARCHAR(200),
    cod_facultad INT
);

CREATE TABLE facultad (
    cod_facultad INT,
    nombre_facultad VARCHAR(200),
    institucion VARCHAR(10)
);

CREATE TABLE institucion (
    cod_institucion INT,
    nombre_institucion VARCHAR(100),
    tipo_institucion VARCHAR(100)
);

CREATE TABLE proyecto_era (
    cod_proyecto INT,
    cod_era INT
);

CREATE TABLE curso_estudiante (
    cod_curso INT,
    cod_estudiante INT
);