INSERT INTO usuarios (nombre, email) VALUES

('Ana García', 'ana.garcia@email.com'),

('Pedro Martínez', 'pedro.martinez@email.com'),

('Laura Rodríguez', 'laura.rodriguez@email.com'),

('Carlos López', 'carlos.lopez@email.com'),

('María Sánchez', 'maria.sanchez@email.com');

 

INSERT INTO estados (nombre, descripcion) VALUES

('pendiente', 'Tarea que aún no se ha iniciado'),

('en_progreso', 'Tarea que está siendo realizada actualmente'),

('completada', 'Tarea que ya ha sido finalizada');

 

INSERT INTO prioridades (nombre, descripcion) VALUES

('baja', 'Tarea que puede esperar'),

('media', 'Tarea de importancia moderada'),

('alta', 'Tarea urgente o crítica');

 

INSERT INTO categorias (nombre, descripcion) VALUES

('Trabajo', 'Tareas relacionadas con el trabajo'),

('Personal', 'Tareas de la vida personal'),

('Estudio', 'Tareas académicas y de formación'),

('Hogar', 'Tareas domésticas'),

('Proyecto', 'Tareas relacionadas con proyectos específicos');

 

INSERT INTO tareas (id_usuario, titulo, descripcion, id_estado, id_prioridad) VALUES

– Ana

(1, 'Preparar presentación', 'Crear slides para la reunión semanal', 1, 3),

(1, 'Enviar informe mensual', 'Redactar y enviar informe de abril', 2, 2),

(1, 'Comprar material oficina', 'Reponer papel y tinta', 3, 1);

 

INSERT INTO tareas (id_usuario, titulo, descripcion, id_estado, id_prioridad) VALUES

-- Pedro

(2, 'Revisar propuesta cliente', 'Analizar términos y condiciones', 1, 3),

(2, 'Actualizar CV', 'Añadir nuevas habilidades y experiencias', 1, 2),

(2, 'Llamar al médico', 'Pedir cita para revisión anual', 3, 2);

 

INSERT INTO tareas (id_usuario, titulo, descripcion, id_estado, id_prioridad) VALUES

-- Laura

(3, 'Estudiar para examen', 'Repasar unidades 5-8', 2, 3),

(3, 'Organizar biblioteca', 'Clasificar libros por género', 1, 1),

(3, 'Preparar proyecto final', 'Terminar memoria y presentación', 2, 3);

 

INSERT INTO tareas (id_usuario, titulo, descripcion, id_estado, id_prioridad) VALUES

-- Carlos

(4, 'Reparar lavadora', 'Contactar con técnico', 3, 2),

(4, 'Planificar vacaciones', 'Buscar destinos y presupuesto', 1, 2),

(4, 'Renovar suscripciones', 'Revisar suscripciones anuales', 1, 1);

 

INSERT INTO tareas (id_usuario, titulo, descripcion, id_estado, id_prioridad) VALUES

-- María

(5, 'Desarrollar prototipo', 'Crear versión alpha del producto', 2, 3),

(5, 'Reunión con inversores', 'Preparar pitch y documentación', 1, 3),

(5, 'Corregir errores', 'Solucionar bugs reportados', 3, 2);

 

INSERT INTO tareas_categorias (id_tarea, id_categoria) VALUES

-- Tareas de Ana

(1, 1), -- Trabajo

(1, 5), -- Proyecto

(2, 1), -- Trabajo

(3, 1), -- Trabajo

(3, 4), -- Hogar

-- Tareas de Pedro

(4, 1), -- Trabajo

(5, 2), -- Personal

(6, 2), -- Personal

-- Tareas de Laura

(7, 3), -- Estudio

(8, 2), -- Personal

(8, 4), -- Hogar

(9, 3), -- Estudio

(9, 5), -- Proyecto

-- Tareas de Carlos

(10, 4), -- Hogar

(11, 2), -- Personal

(12, 2), -- Personal

-- Tareas de María

(13, 1), -- Trabajo

(13, 5), -- Proyecto

(14, 1), -- Trabajo

(14, 5), -- Proyecto

(15, 1), -- Trabajo

(15, 5); -- Proyecto

 

