CREATE TABLE criador (
    id_criador SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE dueno (
    id_dueno SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    fecha_compra DATE NOT NULL
);



CREATE TABLE crianza (
    id_crianza SERIAL PRIMARY KEY,
    tipo_alimentacion VARCHAR(100),
    ambiente VARCHAR(100),
    cuidados_especiales VARCHAR(200)
);

CREATE TABLE toro (
    id_toro SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    lugar_nacimiento VARCHAR(100) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    disponible BOOLEAN NOT NULL,
    edad INT NOT NULL,
    id_criador INT,
    id_dueno INT,
    id_crianza INT,
    FOREIGN KEY (id_criador) REFERENCES criador(id_criador),
    FOREIGN KEY (id_dueno) REFERENCES dueno(id_dueno),
    FOREIGN KEY (id_crianza) REFERENCES crianza(id_crianza)
);
CREATE TABLE comprador (
    id_comprador SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(150),
    telefono VARCHAR(20)
	FOREIGN KEY (id_toro) REFERENCES 
);

CREATE TABLE venta (
    id_venta SERIAL PRIMARY KEY,
    id_toro INT,
    id_comprador INT,
    fecha_venta DATE NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_toro) REFERENCES toro(id_toro),
    FOREIGN KEY (id_comprador) REFERENCES comprador(id_comprador)
);

CREATE TABLE evento (
    id_evento SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    lugar VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE toro_evento (
    id_toro INT,
    id_evento INT,
    PRIMARY KEY (id_toro, id_evento),
    FOREIGN KEY (id_toro) REFERENCES toro(id_toro),
    FOREIGN KEY (id_evento) REFERENCES evento(id_evento)
);

CREATE TABLE publicidad (
    id_publicidad SERIAL PRIMARY KEY,
    id_toro INT,
    descripcion VARCHAR(200),
    fecha_inicio DATE,
    fecha_fin DATE,
    FOREIGN KEY (id_toro) REFERENCES toro(id_toro)
);
