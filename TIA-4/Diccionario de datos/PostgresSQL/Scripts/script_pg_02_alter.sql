-- Primary Keys
ALTER TABLE "proyecto-curso"
ADD PRIMARY KEY (cod_proyecto, cod_curso);

ALTER TABLE "usuario-rol"
ADD PRIMARY KEY (cod_usuario, cod_rol);

ALTER TABLE "rol-permiso"
ADD PRIMARY KEY (cod_rol, cod_permiso);

ALTER TABLE "programa_academico-asignatura"
ADD PRIMARY KEY (cod_programa, cod_asignatura);

ALTER TABLE "proyecto_orientacion_del_proyecto"
ADD PRIMARY KEY (cod_proyecto, cod_orientacion);

ALTER TABLE "proyecto-era"
ADD PRIMARY KEY (cod_proyecto, cod_era);

ALTER TABLE "curso-estudiante"
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
-- Claves foráneas (Foreign Keys)
ALTER TABLE proyecto
ADD FOREIGN KEY (cod_tipo_proyecto) REFERENCES tipo_proyecto(cod_tipo_proyecto),
ADD FOREIGN KEY (cod_entregable) REFERENCES entregable(cod_entregable),
ADD FOREIGN KEY (cod_evaluacion) REFERENCES evaluacion(cod_evaluacion),
ADD FOREIGN KEY (cod_rep) REFERENCES rep(cod_rep);

ALTER TABLE "proyecto-curso"
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_curso) REFERENCES curso(cod_curso);

ALTER TABLE "usuario-rol"
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
ADD FOREIGN KEY (cod_rol) REFERENCES rol(cod_rol);

ALTER TABLE "rol-permiso"
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

ALTER TABLE "programa_academico-asignatura"
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

ALTER TABLE "proyecto_orientacion_del_proyecto"
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_orientacion) REFERENCES orientacion_del_proyecto(cod_orientacion);

ALTER TABLE evaluadores
ADD FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario);

ALTER TABLE departamento
ADD FOREIGN KEY (cod_facultad) REFERENCES facultad(cod_facultad);

ALTER TABLE "proyecto-era"
ADD FOREIGN KEY (cod_proyecto) REFERENCES proyecto(cod_proyecto),
ADD FOREIGN KEY (cod_era) REFERENCES era(cod_era);

ALTER TABLE "curso-estudiante"
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
