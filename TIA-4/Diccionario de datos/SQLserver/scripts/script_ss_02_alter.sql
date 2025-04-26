-- NOT NULL Constraints
ALTER TABLE proyecto
ALTER COLUMN titulo_del_proyecto VARCHAR(255) NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN objetivo_proyecto TEXT NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN cod_tipo_proyecto INT NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN cod_entregable INT NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN cod_evaluacion INT NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN cod_rep INT NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN fecha_inicio_proyecto DATE NOT NULL;

ALTER TABLE proyecto
ALTER COLUMN fecha_fin_proyecto DATE NOT NULL;

ALTER TABLE tipo_proyecto
ALTER COLUMN tipo_proyecto VARCHAR(10) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN nombre1 VARCHAR(20) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN apellido1 VARCHAR(20) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN telefono1 VARCHAR(20) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN correo_electronico VARCHAR(50) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN nombre_ingreso_usuario VARCHAR(50) NOT NULL;

ALTER TABLE usuario
ALTER COLUMN contraseña_usuario VARCHAR(20) NOT NULL;

ALTER TABLE rol
ALTER COLUMN nombre_rol VARCHAR(20) NOT NULL;

ALTER TABLE rol
ALTER COLUMN descripcion_rol VARCHAR(100) NOT NULL;

ALTER TABLE permiso
ALTER COLUMN nombre_permiso VARCHAR(20) NOT NULL;

ALTER TABLE permiso
ALTER COLUMN descripcion_permiso VARCHAR(100) NOT NULL;

ALTER TABLE estudiante
ALTER COLUMN cod_Proyecto INT NOT NULL;

ALTER TABLE estudiante
ALTER COLUMN cod_usuario INT NOT NULL;

ALTER TABLE estudiante
ALTER COLUMN cod_programa_academico INT NOT NULL;

ALTER TABLE docente
ALTER COLUMN cod_usuario INT NOT NULL;

ALTER TABLE curso
ALTER COLUMN serie_curso VARCHAR(100) NOT NULL;

ALTER TABLE curso
ALTER COLUMN cod_asignatura INT NOT NULL;

ALTER TABLE curso
ALTER COLUMN cod_docente INT NOT NULL;

ALTER TABLE invitado
ALTER COLUMN cod_usuario INT NOT NULL;

ALTER TABLE invitado
ALTER COLUMN cod_institucion INT NOT NULL;

ALTER TABLE programa_academico
ALTER COLUMN nombre_programa_academico VARCHAR(100) NOT NULL;

ALTER TABLE programa_academico
ALTER COLUMN cod_departamento INT NOT NULL;

ALTER TABLE programa_academico_asignatura
ALTER COLUMN cod_programa INT NOT NULL;

ALTER TABLE programa_academico_asignatura
ALTER COLUMN cod_asignatura INT NOT NULL;

ALTER TABLE asignatura
ALTER COLUMN nombre_asignatura VARCHAR(100) NOT NULL;

ALTER TABLE asignatura
ALTER COLUMN creditos_asignatura INT NOT NULL;

ALTER TABLE era
ALTER COLUMN numero_era INT NOT NULL;

ALTER TABLE era
ALTER COLUMN descripcion_era VARCHAR(500) NOT NULL;

ALTER TABLE ira
ALTER COLUMN descripcion_ira VARCHAR(500) NOT NULL;

ALTER TABLE ira
ALTER COLUMN porcentaje_dominio_ira INT NOT NULL;

ALTER TABLE ira
ALTER COLUMN cod_era INT NOT NULL;

ALTER TABLE entregable
ALTER COLUMN nombre_entregable VARCHAR(200) NOT NULL;

ALTER TABLE entregable
ALTER COLUMN cod_tipo_entregable INT NOT NULL;

ALTER TABLE entregable
ALTER COLUMN cod_evaluacion INT NOT NULL;

ALTER TABLE entregable
ALTER COLUMN descripcion_entregable VARCHAR(500) NOT NULL;

ALTER TABLE entregable
ALTER COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE tipo_entregable
ALTER COLUMN nombre_tipo_entregable VARCHAR(200) NOT NULL;

ALTER TABLE tipo_entregable
ALTER COLUMN descripcion_tipo_entregable VARCHAR(500) NOT NULL;

ALTER TABLE evaluacion
ALTER COLUMN descripcion_evaluacion VARCHAR(500) NOT NULL;

ALTER TABLE evaluacion
ALTER COLUMN cod_evaluador INT NOT NULL;

ALTER TABLE evaluacion
ALTER COLUMN ponderacion_evaluacion DECIMAL(4,2) NOT NULL;

ALTER TABLE rep
ALTER COLUMN descripcion_rep VARCHAR(500) NOT NULL;

ALTER TABLE rep
ALTER COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE orientacion_del_proyecto
ALTER COLUMN categoria_orientacion_pryecto VARCHAR(200) NOT NULL;

ALTER TABLE orientacion_del_proyecto
ALTER COLUMN descripcion_orientacion VARCHAR(500) NOT NULL;

ALTER TABLE proyecto_orientacion_del_proyecto
ALTER COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE proyecto_orientacion_del_proyecto
ALTER COLUMN cod_orientacion INT NOT NULL;

ALTER TABLE evaluadores
ALTER COLUMN especialidad_evaluador VARCHAR(200) NOT NULL;

ALTER TABLE evaluadores
ALTER COLUMN cod_institucion VARCHAR(200) NOT NULL;

ALTER TABLE evaluadores
ALTER COLUMN cod_usuario INT NOT NULL;

ALTER TABLE departamento
ALTER COLUMN cod_facultad INT NOT NULL;

ALTER TABLE departamento
ALTER COLUMN nombre_departamento VARCHAR(200) NOT NULL;

ALTER TABLE facultad
ALTER COLUMN nombre_facultad VARCHAR(200) NOT NULL;

ALTER TABLE facultad
ALTER COLUMN institucion VARCHAR(10) NOT NULL;

ALTER TABLE institucion
ALTER COLUMN nombre_institucion VARCHAR(100) NOT NULL;

ALTER TABLE institucion
ALTER COLUMN tipo_institucion VARCHAR(100) NOT NULL;

ALTER TABLE usuario_rol
ALTER COLUMN cod_usuario INT NOT NULL;

ALTER TABLE usuario_rol
ALTER COLUMN cod_rol INT NOT NULL;

ALTER TABLE rol_permiso
ALTER COLUMN cod_rol INT NOT NULL;

ALTER TABLE rol_permiso
ALTER COLUMN cod_permiso INT NOT NULL;

ALTER TABLE proyecto_era
ALTER COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE proyecto_era
ALTER COLUMN cod_era INT NOT NULL;

ALTER TABLE curso_estudiante
ALTER COLUMN cod_curso INT NOT NULL;

ALTER TABLE curso_estudiante
ALTER COLUMN cod_estudiante INT NOT NULL;

-- CHECK Constraints
ALTER TABLE ira
ADD CONSTRAINT CK_ira_porcentaje_dominio CHECK (porcentaje_dominio_ira >= 0 AND porcentaje_dominio_ira <= 100);

ALTER TABLE evaluacion
ADD CONSTRAINT CK_evaluacion_ponderacion CHECK (ponderacion_evaluacion >= 0 AND ponderacion_evaluacion <= 5);

-- DEFAULT Constraints
ALTER TABLE facultad
ADD CONSTRAINT DF_facultad_institucion DEFAULT 'IUPB' FOR institucion;