ALTER TABLE proyecto
MODIFY COLUMN titulo_del_proyecto VARCHAR(255) NOT NULL,
MODIFY COLUMN objetivo_proyecto TEXT NOT NULL,
MODIFY COLUMN cod_tipo_proyecto INT NOT NULL,
MODIFY COLUMN cod_entregable INT NOT NULL,
MODIFY COLUMN cod_evaluacion INT NOT NULL,
MODIFY COLUMN cod_rep INT NOT NULL,
MODIFY COLUMN fecha_inicio_proyecto DATE NOT NULL,
MODIFY COLUMN fecha_fin_proyecto DATE NOT NULL;

ALTER TABLE tipo_proyecto
MODIFY COLUMN tipo_proyecto VARCHAR(10) NOT NULL;

ALTER TABLE usuario
MODIFY COLUMN nombre1 VARCHAR(20) NOT NULL,
MODIFY COLUMN apellido1 VARCHAR(20) NOT NULL,
MODIFY COLUMN telefono1 VARCHAR(20) NOT NULL,
MODIFY COLUMN correo_electronico VARCHAR(50) NOT NULL,
MODIFY COLUMN nombre_ingreso_usuario VARCHAR(50) NOT NULL,
MODIFY COLUMN contraseña_usuario VARCHAR(20) NOT NULL;

ALTER TABLE rol
MODIFY COLUMN nombre_rol VARCHAR(20) NOT NULL,
MODIFY COLUMN descripcion_rol VARCHAR(100) NOT NULL;

ALTER TABLE permiso
MODIFY COLUMN nombre_permiso VARCHAR(20) NOT NULL,
MODIFY COLUMN descripcion_permiso VARCHAR(100) NOT NULL;

ALTER TABLE estudiante
MODIFY COLUMN cod_Proyecto INT NOT NULL,
MODIFY COLUMN cod_usuario INT NOT NULL,
MODIFY COLUMN cod_programa_academico INT NOT NULL;

ALTER TABLE docente
MODIFY COLUMN cod_usuario INT NOT NULL;

ALTER TABLE curso
MODIFY COLUMN serie_curso VARCHAR(100) NOT NULL,
MODIFY COLUMN cod_asignatura INT NOT NULL,
MODIFY COLUMN cod_docente INT NOT NULL;

ALTER TABLE invitado
MODIFY COLUMN cod_usuario INT NOT NULL,
MODIFY COLUMN cod_institucion INT NOT NULL;

ALTER TABLE programa_academico
MODIFY COLUMN nombre_programa_academico VARCHAR(100) NOT NULL,
MODIFY COLUMN cod_departamento INT NOT NULL;

ALTER TABLE programa_academico_asignatura
MODIFY COLUMN cod_programa INT NOT NULL,
MODIFY COLUMN cod_asignatura INT NOT NULL;

ALTER TABLE asignatura
MODIFY COLUMN nombre_asignatura VARCHAR(100) NOT NULL,
MODIFY COLUMN creditos_asignatura INT NOT NULL;

ALTER TABLE era
MODIFY COLUMN numero_era INT NOT NULL,
MODIFY COLUMN descripcion_era VARCHAR(500) NOT NULL;

ALTER TABLE ira
MODIFY COLUMN descripcion_ira VARCHAR(500) NOT NULL,
MODIFY COLUMN porcentaje_dominio_ira INT NOT NULL,
MODIFY COLUMN cod_era INT NOT NULL;

ALTER TABLE entregable
MODIFY COLUMN nombre_entregable VARCHAR(200) NOT NULL,
MODIFY COLUMN cod_tipo_entregable INT NOT NULL,
MODIFY COLUMN cod_evaluacion INT NOT NULL,
MODIFY COLUMN descripcion_entregable VARCHAR(500) NOT NULL,
MODIFY COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE tipo_entregable
MODIFY COLUMN nombre_tipo_entregable VARCHAR(200) NOT NULL,
MODIFY COLUMN descripcion_tipo_entregable VARCHAR(500) NOT NULL;

ALTER TABLE evaluacion
MODIFY COLUMN descripcion_evaluacion VARCHAR(500) NOT NULL,
MODIFY COLUMN cod_evaluador INT NOT NULL,
MODIFY COLUMN ponderacion_evaluacion DECIMAL(4,2) NOT NULL;

ALTER TABLE rep
MODIFY COLUMN descripcion_rep VARCHAR(500) NOT NULL,
MODIFY COLUMN cod_proyecto INT NOT NULL;

ALTER TABLE orientacion_del_proyecto
MODIFY COLUMN categoria_orientacion_pryecto VARCHAR(200) NOT NULL,
MODIFY COLUMN descripcion_orientacion VARCHAR(500) NOT NULL;

ALTER TABLE proyecto_orientacion_del_proyecto
MODIFY COLUMN cod_proyecto INT NOT NULL,
MODIFY COLUMN cod_orientacion INT NOT NULL;

ALTER TABLE evaluadores
MODIFY COLUMN especialidad_evaluador VARCHAR(200) NOT NULL,
MODIFY COLUMN cod_institucion VARCHAR(200) NOT NULL,
MODIFY COLUMN cod_usuario INT NOT NULL;

ALTER TABLE departamento
MODIFY COLUMN cod_facultad INT NOT NULL,
MODIFY COLUMN nombre_departamento VARCHAR(200) NOT NULL;

ALTER TABLE facultad
MODIFY COLUMN nombre_facultad VARCHAR(200) NOT NULL,
MODIFY COLUMN institucion VARCHAR(10) NOT NULL;

ALTER TABLE institucion
MODIFY COLUMN nombre_institucion VARCHAR(100) NOT NULL,
MODIFY COLUMN tipo_institucion VARCHAR(100) NOT NULL;

ALTER TABLE usuario_rol
MODIFY COLUMN cod_usuario INT NOT NULL,
MODIFY COLUMN cod_rol INT NOT NULL;

ALTER TABLE rol_permiso
MODIFY COLUMN cod_rol INT NOT NULL,
MODIFY COLUMN cod_permiso INT NOT NULL;

ALTER TABLE proyecto_era
MODIFY COLUMN cod_proyecto INT NOT NULL,
MODIFY COLUMN cod_era INT NOT NULL;

ALTER TABLE curso_estudiante
MODIFY COLUMN cod_curso INT NOT NULL,
MODIFY COLUMN cod_estudiante INT NOT NULL;

-- CHECK Constraints
ALTER TABLE ira
ADD CONSTRAINT chk_ira_porcentaje_dominio CHECK (porcentaje_dominio_ira >= 0 AND porcentaje_dominio_ira <= 100);

ALTER TABLE evaluacion
ADD CONSTRAINT chk_evaluacion_ponderacion CHECK (ponderacion_evaluacion >= 0 AND ponderacion_evaluacion <= 5);

-- DEFAULT Constraints
ALTER TABLE facultad
ALTER COLUMN institucion SET DEFAULT 'IUPB';