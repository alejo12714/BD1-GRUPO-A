-- Primary Keys
ALTER TABLE proyecto_curso
ADD CONSTRAINT PK_proyecto_curso PRIMARY KEY (cod_proyecto, cod_curso);

ALTER TABLE usuario_rol
ADD CONSTRAINT PK_usuario_rol PRIMARY KEY (cod_usuario, cod_rol);

ALTER TABLE rol_permiso
ADD CONSTRAINT PK_rol_permiso PRIMARY KEY (cod_rol, cod_permiso);

ALTER TABLE programa_academico_asignatura
ADD CONSTRAINT PK_programa_academico_asignatura PRIMARY KEY (cod_programa, cod_asignatura);

ALTER TABLE proyecto_orientacion_del_proyecto
ADD CONSTRAINT PK_proyecto_orientacion_del_proyecto PRIMARY KEY (cod_proyecto, cod_orientacion);

ALTER TABLE proyecto_era
ADD CONSTRAINT PK_proyecto_era PRIMARY KEY (cod_proyecto, cod_era);

ALTER TABLE curso_estudiante
ADD CONSTRAINT PK_curso_estudiante PRIMARY KEY (cod_curso, cod_estudiante);

ALTER TABLE proyecto
ADD CONSTRAINT PK_proyecto PRIMARY KEY (cod_proyecto);

ALTER TABLE tipo_proyecto
ADD CONSTRAINT PK_tipo_proyecto PRIMARY KEY (cod_tipo_proyecto);

ALTER TABLE usuario
ADD CONSTRAINT PK_usuario PRIMARY KEY (cod_usuario);

ALTER TABLE rol
ADD CONSTRAINT PK_rol PRIMARY KEY (cod_rol);

ALTER TABLE permiso
ADD CONSTRAINT PK_permiso PRIMARY KEY (cod_permiso);

ALTER TABLE estudiante
ADD CONSTRAINT PK_estudiante PRIMARY KEY (cod_estudiante);

ALTER TABLE docente
ADD CONSTRAINT PK_docente PRIMARY KEY (cod_docente);

ALTER TABLE curso
ADD CONSTRAINT PK_curso PRIMARY KEY (cod_curso);

ALTER TABLE invitado
ADD CONSTRAINT PK_invitado PRIMARY KEY (cod_invitado);

ALTER TABLE programa_academico
ADD CONSTRAINT PK_programa_academico PRIMARY KEY (cod_programa);

ALTER TABLE asignatura
ADD CONSTRAINT PK_asignatura PRIMARY KEY (cod_asignatura);

ALTER TABLE era
ADD CONSTRAINT PK_era PRIMARY KEY (cod_era);

ALTER TABLE ira
ADD CONSTRAINT PK_ira PRIMARY KEY (cod_ira);

ALTER TABLE entregable
ADD CONSTRAINT PK_entregable PRIMARY KEY (cod_entregable);

ALTER TABLE tipo_entregable
ADD CONSTRAINT PK_tipo_entregable PRIMARY KEY (cod_tipo_entregable);

ALTER TABLE evaluacion
ADD CONSTRAINT PK_evaluacion PRIMARY KEY (cod_evaluacion);

ALTER TABLE rep
ADD CONSTRAINT PK_rep PRIMARY KEY (cod_rep);

ALTER TABLE orientacion_del_proyecto
ADD CONSTRAINT PK_orientacion_del_proyecto PRIMARY KEY (cod_orientacion);

ALTER TABLE evaluadores
ADD CONSTRAINT PK_evaluadores PRIMARY KEY (cod_evaluador);

ALTER TABLE departamento
ADD CONSTRAINT PK_departamento PRIMARY KEY (cod_departamento);

ALTER TABLE facultad
ADD CONSTRAINT PK_facultad PRIMARY KEY (cod_facultad);

ALTER TABLE institucion
ADD CONSTRAINT PK_institucion PRIMARY KEY (cod_institucion);

-- Foreign Keys
ALTER TABLE proyecto_curso
ADD CONSTRAINT FK_proyecto_curso_proyecto FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

ALTER TABLE proyecto_curso
ADD CONSTRAINT FK_proyecto_curso_curso FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso);

ALTER TABLE usuario_rol
ADD CONSTRAINT FK_usuario_rol_usuario FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario);

ALTER TABLE usuario_rol
ADD CONSTRAINT FK_usuario_rol_rol FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);

ALTER TABLE rol_permiso
ADD CONSTRAINT FK_rol_permiso_rol FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);

ALTER TABLE rol_permiso
ADD CONSTRAINT FK_rol_permiso_permiso FOREIGN KEY (cod_permiso) REFERENCES permiso(cod_permiso);

ALTER TABLE programa_academico_asignatura
ADD CONSTRAINT FK_programa_academico_asignatura_programa_academico FOREIGN KEY (cod_programa) REFERENCES programa_academico(cod_programa);

ALTER TABLE programa_academico_asignatura
ADD CONSTRAINT FK_programa_academico_asignatura_asignatura FOREIGN KEY (cod_asignatura) REFERENCES asignatura(cod_asignatura);

ALTER TABLE proyecto_orientacion_del_proyecto
ADD CONSTRAINT FK_proyecto_orientacion_del_proyecto_proyecto FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

ALTER TABLE proyecto_orientacion_del_proyecto
ADD CONSTRAINT FK_proyecto_orientacion_del_proyecto_orientacion_del_proyecto FOREIGN KEY (cod_orientacion) REFERENCES orientacion_del_proyecto(cod_orientacion);

ALTER TABLE proyecto_era
ADD CONSTRAINT FK_proyecto_era_proyecto FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto);

ALTER TABLE proyecto_era
ADD CONSTRAINT FK_proyecto_era_era FOREIGN KEY (cod_era) REFERENCES era(cod_era);

ALTER TABLE curso_estudiante
ADD CONSTRAINT FK_curso_estudiante_curso FOREIGN KEY (cod_curso) REFERENCES curso