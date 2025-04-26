-- NOT NULL Constraints
ALTER TABLE proyecto
ALTER COLUMN titulo_del_proyecto SET NOT NULL,
ALTER COLUMN objetivo_proyecto SET NOT NULL,
ALTER COLUMN cod_tipo_proyecto SET NOT NULL,
ALTER COLUMN cod_entregable SET NOT NULL,
ALTER COLUMN cod_evaluacion SET NOT NULL,
ALTER COLUMN cod_rep SET NOT NULL,
ALTER COLUMN fecha_inicio_proyecto SET NOT NULL,
ALTER COLUMN fecha_fin_proyecto SET NOT NULL;

ALTER TABLE tipo_proyecto
ALTER COLUMN tipo_proyecto SET NOT NULL;

ALTER TABLE usuario
ALTER COLUMN nombre1 SET NOT NULL,
ALTER COLUMN apellido1 SET NOT NULL,
ALTER COLUMN telefono1 SET NOT NULL,
ALTER COLUMN correo_electronico SET NOT NULL,
ALTER COLUMN nombre_ingreso_usuario SET NOT NULL,
ALTER COLUMN contraseña_usuario SET NOT NULL;

ALTER TABLE rol
ALTER COLUMN nombre_rol SET NOT NULL,
ALTER COLUMN descripcion_rol SET NOT NULL;

ALTER TABLE permiso
ALTER COLUMN nombre_permiso SET NOT NULL,
ALTER COLUMN descripcion_permiso SET NOT NULL;

ALTER TABLE estudiante
ALTER COLUMN cod_Proyecto SET NOT NULL,
ALTER COLUMN cod_usuario SET NOT NULL,
ALTER COLUMN cod_programa_academico SET NOT NULL;

ALTER TABLE docente
ALTER COLUMN cod_usuario SET NOT NULL;

ALTER TABLE curso
ALTER COLUMN serie_curso SET NOT NULL,
ALTER COLUMN cod_asignatura SET NOT NULL,
ALTER COLUMN cod_docente SET NOT NULL;

ALTER TABLE invitado
ALTER COLUMN cod_usuario SET NOT NULL,
ALTER COLUMN cod_institucion SET NOT NULL;

ALTER TABLE programa_academico
ALTER COLUMN nombre_programa_academico SET NOT NULL,
ALTER COLUMN cod_departamento SET NOT NULL;

ALTER TABLE "programa_academico-asignatura"
ALTER COLUMN cod_programa SET NOT NULL,
ALTER COLUMN cod_asignatura SET NOT NULL;

ALTER TABLE asignatura
ALTER COLUMN nombre_asignatura SET NOT NULL,
ALTER COLUMN creditos_asignatura SET NOT NULL;

ALTER TABLE era
ALTER COLUMN numero_era SET NOT NULL,
ALTER COLUMN descripcion_era SET NOT NULL;

ALTER TABLE ira
ALTER COLUMN descripcion_ira SET NOT NULL,
ALTER COLUMN porcentaje_dominio_ira SET NOT NULL,
ALTER COLUMN cod_era SET NOT NULL;

ALTER TABLE entregable
ALTER COLUMN nombre_entregable SET NOT NULL,
ALTER COLUMN cod_tipo_entregable SET NOT NULL,
ALTER COLUMN cod_evaluacion SET NOT NULL,
ALTER COLUMN descripcion_entregable SET NOT NULL,
ALTER COLUMN cod_proyecto SET NOT NULL;

ALTER TABLE tipo_entregable
ALTER COLUMN nombre_tipo_entregable SET NOT NULL,
ALTER COLUMN descripcion_tipo_entregable SET NOT NULL;

ALTER TABLE evaluacion
ALTER COLUMN descripcion_evaluacion SET NOT NULL,
ALTER COLUMN cod_evaluador SET NOT NULL,
ALTER COLUMN ponderacion_evaluacion SET NOT NULL;

ALTER TABLE rep
ALTER COLUMN descripcion_rep SET NOT NULL,
ALTER COLUMN cod_proyecto SET NOT NULL;

ALTER TABLE orientacion_del_proyecto
ALTER COLUMN categoria_orientacion_pryecto SET NOT NULL,
ALTER COLUMN descripcion_orientacion SET NOT NULL;

ALTER TABLE "proyecto_orientacion_del_proyecto"
ALTER COLUMN cod_proyecto SET NOT NULL,
ALTER COLUMN cod_orientacion SET NOT NULL;

ALTER TABLE evaluadores
ALTER COLUMN especialidad_evaluador SET NOT NULL,
ALTER COLUMN cod_institucion SET NOT NULL,
ALTER COLUMN cod_usuario SET NOT NULL;

ALTER TABLE departamento
ALTER COLUMN cod_facultad SET NOT NULL,
ALTER COLUMN nombre_departamento SET NOT NULL;


ALTER TABLE facultad
ALTER COLUMN nombre_facultad SET NOT NULL,
ALTER COLUMN institucion SET NOT NULL;

ALTER TABLE institucion
ALTER COLUMN nombre_institucion SET NOT NULL,
ALTER COLUMN tipo_institucion SET NOT NULL;

ALTER TABLE "usuario-rol"
ALTER COLUMN cod_usuario SET NOT NULL,
ALTER COLUMN cod_rol SET NOT NULL;

ALTER TABLE "rol-permiso"
ALTER COLUMN cod_rol SET NOT NULL,
ALTER COLUMN cod_permiso SET NOT NULL;

ALTER TABLE "proyecto-era"
ALTER COLUMN cod_proyecto SET NOT NULL,
ALTER COLUMN cod_era SET NOT NULL;

ALTER TABLE "curso-estudiante"
ALTER COLUMN cod_curso SET NOT NULL,
ALTER COLUMN cod_estudiante SET NOT NULL;

-- CHECK Constraints
ALTER TABLE ira
ADD CONSTRAINT chk_ira_porcentaje_dominio CHECK (porcentaje_dominio_ira >= 0 AND porcentaje_dominio_ira <= 100);

ALTER TABLE evaluacion
ADD CONSTRAINT chk_evaluacion_ponderacion CHECK (ponderacion_evaluacion >= 0 AND ponderacion_evaluacion <= 5);

-- DEFAULT Constraints
ALTER TABLE facultad
ALTER COLUMN institucion SET DEFAULT 'IUPB';