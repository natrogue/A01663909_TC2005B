USE PokemoNat;

INSERT INTO Usuario (ID_Usuario, Nombre, Puntos, Correo_electronico, Contraseña, Fecha_registro)
VALUES
    (1001, 'Ash Ketchum', 1200, 'ash.ketchum@example.com', 'pikachu123', '2024-06-01'),
    (1002, 'Misty Waterflower', 800, 'misty.waterflower@example.com', 'starmie456', '2024-06-01'),
    (1003, 'Brock Rockwell', 950, 'brock.rockwell@example.com', 'onix789', '2024-06-02'),
    (1004, 'Serena Moon', 1100, 'serena.moon@example.com', 'sylveon567', '2024-06-03'),
    (1005, 'Gary Oak', 1400, 'gary.oak@example.com', 'blastoise321', '2024-06-04'),
    (1006, 'May Maple', 750, 'may.maple@example.com', 'beautifly987', '2024-06-05'),
    (1007, 'Dawn Diamond', 920, 'dawn.diamond@example.com', 'piplup654', '2024-06-06'),
    (1008, 'Cynthia Champion', 1800, 'cynthia.champion@example.com', 'garchomp123', '2024-06-07'),
    (1009, 'Red Vermilion', 1600, 'red.vermilion@example.com', 'charizard789', '2024-06-08'),
    (1010, 'Leaf Green', 700, 'leaf.green@example.com', 'venusaur456', '2024-06-09'),
    (1011, 'Erika Celadon', 880, 'erika.celadon@example.com', 'vileplume987', '2024-06-10'),
    (1012, 'Lt. Surge', 1050, 'lt.surge@example.com', 'raichu123', '2024-06-11'),
    (1013, 'Sabrina Psychic', 1100, 'sabrina.psychic@example.com', 'alakazam987', '2024-06-14');


INSERT INTO Baraja (ID_Baraja, ID_Usuario, Numero_Cartas)
VALUES
    (1, 1001, 30),
    (2, 1002, 25),
    (3, 1003, 20),
    (4, 1004, 28),
    (5, 1005, 22),
    (6, 1006, 18),
    (7, 1007, 10),
    (8, 1008, 15),
    (9, 1009, 12),
    (10, 1010, 10),
    (11, 1011, 8),
    (12, 1012, 14),
    (13, 1013, 16);


INSERT INTO Carta (ID_Carta, ID_Baraja, Nombre, Tipo, Descripcion, Poder, Nivel_rareza, Energia)
VALUES
    (1, 1, 'Pikachu', 'Eléctrico', 'Ratón eléctrico amarillo', 50, 'Común', 10),
    (2, 1, 'Charizard', 'Fuego', 'Dragón de fuego', 100, 'Raro', 20),
    (3, 2, 'Bulbasaur', 'Planta', 'Pequeño dinosaurio con una planta en su espalda', 40, 'Común', 15),
    (4, 2, 'Squirtle', 'Agua', 'Tortuga acuática con habilidades de agua', 45, 'Común', 12),
    (5, 1, 'Jigglypuff', 'Normal', 'Pequeña criatura rosa con habilidades de canto', 30, 'Común', 8),
    (6, 2, 'Venusaur', 'Planta', 'Evolución de Bulbasaur con una planta gigante en su espalda', 80, 'Raro', 18),
    (7, 1, 'Raichu', 'Eléctrico', 'Evolución de Pikachu con cola eléctrica', 70, 'Raro', 14),
    (8, 2, 'Blastoise', 'Agua', 'Evolución de Squirtle con cañones de agua en su espalda', 95, 'Épico', 22),
    (9, 1, 'Meowth', 'Normal', 'Gato con monedas en la frente', 35, 'Común', 10),
    (10, 2, 'Arcanine', 'Fuego', 'Gran perro legendario con habilidades de fuego', 110, 'Épico', 25),
    (11, 1, 'Eevee', 'Normal', 'Criatura adaptable con múltiples evoluciones', 40, 'Común', 10),
    (12, 2, 'Gyarados', 'Agua', 'Dragón acuático gigante y feroz', 120, 'Épico', 28),
    (13, 1, 'Ditto', 'Normal', 'Criatura gelatinosa que puede transformarse en cualquier otra', 20, 'Común', 5);


INSERT INTO Habilidad (ID_Habilidad, ID_Carta, Nombre, Efecto)
VALUES
    (1, 1, 'Impacto Eléctrico', 'Inflige daño eléctrico a un oponente'),
    (2, 1, 'Rayo Veloz', 'Ataque eléctrico rápido'),
    (3, 2, 'Lanzallamas', 'Inflige daño de fuego al oponente'),
    (4, 3, 'Hoja Afilada', 'Corte rápido con una hoja afilada'),
    (5, 3, 'Ráfaga de Viento', 'Ataque de viento que reduce la velocidad del oponente'),
    (6, 4, 'Curación Leve', 'Restaura una pequeña cantidad de puntos de vida'),
    (7, 5, 'Teletransporte', 'Se mueve instantáneamente a otro lugar'),
    (8, 6, 'Forma de Roca', 'Se convierte en una roca para evitar daños'),
    (9, 7, 'Ilusión', 'Crea una imagen falsa para confundir al oponente'),
    (10, 8, 'Golpe Sónico', 'Ataque sónico que aturde al oponente'),
    (11, 9, 'Escudo Mágico', 'Crea un escudo protector'),
    (12, 10, 'Invisibilidad', 'Se vuelve invisible temporalmente'),
    (13, 11, 'Telepatía', 'Comunicación mental con otros seres');


INSERT INTO Logro (ID_Logro, Nombre, Puntos, Descripcion)
VALUES
    (1, 'Campeón Novato', 100, 'Gana tu primera partida'),
    (2, 'Maestro de Cartas', 250, 'Colecciona todas las cartas disponibles'),
    (3, 'Leyenda del Torneo', 500, 'Gana 10 torneos consecutivos'),
    (4, 'Explorador de Mapas', 150, 'Descubre todos los escenarios del juego'),
    (5, 'Cazador de Logros', 200, 'Completa todos los logros disponibles'),
    (6, 'Estratega Supremo', 300, 'Gana una partida sin perder ninguna carta'),
    (7, 'Coleccionista de Trofeos', 400, 'Obtén todos los trofeos del juego'),
    (8, 'Líder de la Liga', 600, 'Alcanza el primer lugar en la clasificación mundial'),
    (9, 'Guardián del Conocimiento', 350, 'Desbloquea todas las habilidades secretas'),
    (10, 'Héroe Anónimo', 180, 'Ayuda a otros jugadores en 50 partidas'),
    (11, 'Destructor de Barreras', 220, 'Supera todos los desafíos del juego'),
    (12, 'Mago de los Logros', 280, 'Desbloquea todos los logros ocultos'),
    (13, 'Rey de las Cartas', 700, 'Gana una partida con una baraja personalizada de 100 cartas');


INSERT INTO Turno (ID_Turno, ID_Partida, ID_Usuario, Accion, Resultado)
VALUES
    (1, 1001, 1, 'Ataque', 'Éxito'),
    (2, 1001, 2, 'Defensa', 'Fracaso'),
    (3, 1001, 1, 'Ataque', 'Éxito'),
    (4, 1002, 2, 'Ataque', 'Fracaso'),
    (5, 1002, 1, 'Defensa', 'Éxito'),
    (6, 1003, 3, 'Ataque', 'Éxito'),
    (7, 1003, 1, 'Defensa', 'Fracaso'),
    (8, 1004, 2, 'Ataque', 'Éxito'),
    (9, 1004, 1, 'Ataque', 'Éxito'),
    (10, 1005, 3, 'Defensa', 'Fracaso'),
    (11, 1005, 2, 'Ataque', 'Éxito'),
    (12, 1006, 1, 'Ataque', 'Éxito'),
    (13, 1006, 3, 'Defensa', 'Fracaso');


INSERT INTO Partida (ID_Partida, ID_Usuario_A, ID_Usuario_B, ID_Baraja, Resultado, Fecha_hora, Duracion)
VALUES
    (1001, 1001, 2, 1002, 'Victoria', '2024-06-01 14:30:00', '00:15:00'),
    (1002, 2, 1, 2, 'Derrota', '2024-06-02 18:45:00', '00:20:00'),
    (1003, 3, 1, 3, 'Empate', '2024-06-03 20:15:00', '00:30:00'),
    (1004, 1, 4, 1, 'Victoria', '2024-06-04 16:00:00', '00:18:00'),
    (1005, 2, 3, 2, 'Derrota', '2024-06-05 22:10:00', '00:25:00'),
    (1006, 1, 5, 1, 'Victoria', '2024-06-06 19:30:00', '00:22:00'),
    (1007, 3, 2, 3, 'Empate', '2024-06-07 21:45:00', '00:28:00'),
    (1008, 4, 1, 1, 'Victoria', '2024-06-08 17:20:00', '00:16:00'),
    (1009, 1, 6, 2, 'Victoria', '2024-06-09 15:40:00', '00:19:00'),
    (1010, 5, 1, 1, 'Derrota', '2024-06-10 23:05:00', '00:24:00'),
    (1011, 1, 7, 3, 'Victoria', '2024-06-11 20:50:00', '00:26:00'),
    (1012, 2, 8, 2, 'Derrota', '2024-06-12 18:10:00', '00:17:00'),
    (1013, 1, 9, 1, 'Victoria', '2024-06-13 14:55:00', '00:21:00');


INSERT INTO Compra (ID_Compra, ID_Usuario, ID_Carta, Precio)
VALUES
    (1, 1001, 1, 50.00),
    (2, 1002, 3, 30.00),
    (3, 1003, 2, 25.00),
    (4, 1004, 4, 40.00),
    (5, 1005, 5, 35.00),
    (6, 1006, 6, 28.00),
    (7, 1007, 7, 20.00),
    (8, 1008, 8, 45.00),
    (9, 1009, 9, 22.00),
    (10, 1010, 10, 18.00),
    (11, 1011, 11, 15.00),
    (12, 1012, 12, 38.00),
    (13, 1013, 13, 32.00);


INSERT INTO Evento (ID_Evento, Nombre, Fecha)
VALUES
    (1, 'Torneo de Verano', '2024-07-15'),
    (2, 'Lanzamiento de Nuevas Cartas', '2024-08-10'),
    (3, 'Entrenamiento Especial', '2024-06-20'),
    (4, 'Evento de Halloween', '2024-10-31'),
    (5, 'Competencia Regional', '2024-09-05'),
    (6, 'Fiesta de Fin de Año', '2024-12-31'),
    (7, 'Evento de Doble Experiencia', '2024-11-15'),
    (8, 'Desafío de Habilidades', '2024-07-25'),
    (9, 'Torneo de Clanes', '2024-09-20'),
    (10, 'Evento de Navidad', '2024-12-24'),
    (11, 'Competencia Internacional', '2024-08-25'),
    (12, 'Evento de Aniversario', '2024-06-01'),
    (13, 'Entrenamiento de Élite', '2024-10-15');

