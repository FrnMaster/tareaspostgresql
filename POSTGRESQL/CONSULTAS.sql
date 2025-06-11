SELECT t.id_tarea, t.titulo, t.descripcion, e.nombre AS estado, p.nombre AS prioridad
FROM tareas t
JOIN estados e ON t.id_estado = e.id_estado
JOIN prioridades p ON t.id_prioridad = p.id_prioridad
WHERE t.id_usuario = 3;

SELECT t.id_tarea, u.nombre AS usuario, t.titulo, t.descripcion
FROM tareas t
JOIN usuarios u ON t.id_usuario = u.id_usuario
JOIN estados e ON t.id_estado = e.id_estado
JOIN prioridades p ON t.id_prioridad = p.id_prioridad
WHERE e.nombre = 'pendiente' AND p.nombre = 'alta';

SELECT t.id_tarea, u.nombre AS usuario, t.titulo, e.nombre AS estado, p.nombre AS prioridad
FROM tareas t
JOIN usuarios u ON t.id_usuario = u.id_usuario
JOIN estados e ON t.id_estado = e.id_estado
JOIN prioridades p ON t.id_prioridad = p.id_prioridad
JOIN tareas_categorias tc ON t.id_tarea = tc.id_tarea
JOIN categorias c ON tc.id_categoria = c.id_categoria
WHERE c.nombre = 'Proyecto'
ORDER BY p.nombre DESC;

SELECT t.id_tarea, u.nombre AS usuario, t.titulo, e.nombre AS estado, p.nombre AS prioridad
FROM tareas t
JOIN usuarios u ON t.id_usuario = u.id_usuario
JOIN estados e ON t.id_estado = e.id_estado
JOIN prioridades p ON t.id_prioridad = p.id_prioridad
JOIN tareas_categorias tc ON t.id_tarea = tc.id_tarea
JOIN categorias c ON tc.id_categoria = c.id_categoria
WHERE c.nombre = 'Personal'
ORDER BY p.nombre DESC

SELECT u.id_usuario, u.nombre, COUNT(t.id_tarea) AS tareas_completadas
FROM usuarios u
LEFT JOIN tareas t ON u.id_usuario = t.id_usuario
LEFT JOIN estados e ON t.id_estado = e.id_estado AND e.nombre = 'completada'
WHERE e.id_estado IS NULL OR e.nombre = 'completada'
GROUP BY u.id_usuario, u.nombre
ORDER BY tareas_completadas DESC;