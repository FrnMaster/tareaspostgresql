CREATE TABLE usuarios (
id_usuario SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE estados (
id_estado SERIAL PRIMARY KEY,
nombre VARCHAR(20) NOT NULL UNIQUE,
descripcion TEXT
);

CREATE TABLE prioridades (
id_prioridad SERIAL PRIMARY KEY,
nombre VARCHAR(10) NOT NULL UNIQUE,
descripcion TEXT
);

CREATE TABLE tareas (
id_tarea SERIAL PRIMARY KEY,
id_usuario INTEGER NOT NULL,
titulo VARCHAR(100) NOT NULL,
descripcion TEXT,
id_estado INTEGER NOT NULL,
id_prioridad INTEGER NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE,
FOREIGN KEY (id_estado) REFERENCES estados(id_estado) ON DELETE RESTRICT,
FOREIGN KEY (id_prioridad) REFERENCES prioridades(id_prioridad) ON DELETE RESTRICT
);

CREATE TABLE categorias (
id_categoria SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL UNIQUE,
descripcion TEXT
);

CREATE TABLE tareas_categorias (
id_tarea INTEGER NOT NULL,
id_categoria INTEGER NOT NULL,
PRIMARY KEY (id_tarea, id_categoria),
FOREIGN KEY (id_tarea) REFERENCES tareas(id_tarea) ON DELETE CASCADE,
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria) ON DELETE CASCADE
);