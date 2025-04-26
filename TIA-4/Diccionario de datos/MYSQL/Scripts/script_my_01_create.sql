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

ALTER TABLE proyecto_curso
ADD PRIMARY KEY (cod_proyecto, cod_curso);

ALTER TABLE usuario_rol
ADD PRIMARY KEY (cod_usuario, cod_rol);

ALTER TABLE rol_permiso
ADD PRIMARY KEY (cod_rol, cod_permiso);

ALTER TABLE programa_academico_asignatura
ADD PRIMARY KEY (cod_programa, cod_asignatura);

ALTER TABLE proyecto_orientacion_del_proyecto
ADD PRIMARY KEY (cod_proyecto, cod_orientacion);

ALTER TABLE proyecto_era
ADD PRIMARY KEY (cod_proyecto, cod_era);

ALTER TABLE curso_estudiante
ADD PRIMARY KEY (cod_curso, cod_estudiante);

ALTER TABLE proyecto
ADD PRIMARY KEY (cod_proyecto);

ALTER TABLE tipo_proyecto
ADD PRIMARY KEY (cod_tipo_proyecto);

ALTER TABLE usuario
ADD PRIMARY KEY (cod_usuario);

ALTER TABLE rol
ADD PRIMARY KEY (cod_rol);

ALTER TABLE permiso
ADD PRIMARY KEY (cod_permiso);

ALTER TABLE estudiante
ADD PRIMARY KEY (cod_estudiante);

ALTER TABLE docente
ADD PRIMARY KEY (cod_docente);

ALTER TABLE curso
ADD PRIMARY KEY (cod_curso);

ALTER TABLE invitado
ADD PRIMARY KEY (cod_invitado);

ALTER TABLE programa_academico
ADD PRIMARY KEY (cod_programa);

ALTER TABLE asignatura
ADD PRIMARY KEY (cod_asignatura);

ALTER TABLE era
ADD PRIMARY KEY (cod_era);

ALTER TABLE ira
ADD PRIMARY KEY (cod_ira);

ALTER TABLE entregable
ADD PRIMARY KEY (cod_entregable);

ALTER TABLE tipo_entregable
ADD PRIMARY KEY (cod_tipo_entregable);

ALTER TABLE evaluacion
ADD PRIMARY KEY (cod_evaluacion);

ALTER TABLE rep
ADD PRIMARY KEY (cod_rep);

ALTER TABLE orientacion_del_proyecto
ADD PRIMARY KEY (cod_orientacion);

ALTER TABLE evaluadores
ADD PRIMARY KEY (cod_evaluador);

ALTER TABLE departamento
ADD PRIMARY KEY (cod_departamento);

ALTER TABLE facultad
ADD PRIMARY KEY (cod_facultad);

ALTER TABLE institucion
ADD PRIMARY KEY (cod_institucion);

-- Foreign Keys
ALTER TABLE proyecto
ADD FOREIGN KEY (cod_tipo_proyecto) REFERENCES tipo_proyecto(cod_tipo_proyecto),
ADD FOREIGN KEY (cod_entregable) REFERENCES entregable(cod_entregable),
ADD FOREIGN KEY (cod_evaluacion) REFERENCES evaluacion(cod_evaluacion),
ADD FOREIGN KEY (cod_rep) REFERENCES rep(cod_rep);

ALTER TABLE proyecto_curso
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso);

ALTER TABLE usuario_rol
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
ADD FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);

ALTER TABLE rol_permiso
ADD FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol),
ADD FOREIGN KEY (cod_permiso) REFERENCES permiso(cod_permiso);

ALTER TABLE estudiante
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
ADD FOREIGN KEY (cod_programa_academico) REFERENCES programa_academico(cod_programa);

ALTER TABLE docente
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario);

ALTER TABLE curso
ADD FOREIGN KEY (cod_asignatura) REFERENCES asignatura(cod_asignatura),
ADD FOREIGN KEY (cod_docente) REFERENCES docente(cod_docente);

ALTER TABLE invitado
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
ADD FOREIGN KEY (cod_institucion) REFERENCES institucion(cod_institucion),
ADD FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);

ALTER TABLE programa_academico
ADD FOREIGN KEY (cod_departamento) REFERENCES departamento(cod_departamento);

ALTER TABLE programa_academico_asignatura
ADD FOREIGN KEY (cod_programa) REFERENCES programa_academico(cod_programa),
ADD FOREIGN KEY (cod_asignatura) REFERENCES asignatura(cod_asignatura);

ALTER TABLE ira
ADD FOREIGN KEY (cod_era) REFERENCES era(cod_era);

ALTER TABLE entregable
ADD FOREIGN KEY (cod_tipo_entregable) REFERENCES tipo_entregable(cod_tipo_entregable),
ADD FOREIGN KEY (cod_evaluacion) REFERENCES evaluacion(cod_evaluacion),
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

ALTER TABLE evaluacion
ADD FOREIGN KEY (cod_evaluador) REFERENCES evaluadores(cod_evaluador);

ALTER TABLE rep
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

ALTER TABLE proyecto_orientacion_del_proyecto
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_orientacion) REFERENCES orientacion_del_proyecto(cod_orientacion);

ALTER TABLE evaluadores
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario);

ALTER TABLE departamento
ADD FOREIGN KEY (cod_facultad) REFERENCES facultad(cod_facultad);

ALTER TABLE proyecto_era
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_era) REFERENCES era(cod_era);

ALTER TABLE curso_estudiante
ADD FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso),
ADD FOREIGN KEY (cod_estudiante) REFERENCES estudiante(cod_estudiante);

-- Restricciones únicas (Unique Keys)
ALTER TABLE usuario
ADD UNIQUE (correo_electronico),
ADD UNIQUE (nombre_ingreso_usuario);

ALTER TABLE departamento
ADD UNIQUE (nombre_departamento);

ALTER TABLE facultad
ADD UNIQUE (nombre_facultad);

ALTER TABLE institucion
ADD UNIQUE (nombre_institucion);

CREATE TABLE curso_estudiante (
    cod_curso INT,
    cod_estudiante INT
);