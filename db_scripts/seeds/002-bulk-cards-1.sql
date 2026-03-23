
INSERT INTO tbl_collections (collection_name, release_date, total_cards_in_collection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Team Rocket', '2000-04-24', 83)
ON CONFLICT DO NOTHING;


INSERT INTO tbl_cards (name, hp, attack_name, damage_caused, illustrator, card_number_in_collection, category_id, type_id, collection_id)
VALUES 
('Pikachu', 40, 'Gnaw', '10', 'Mitsuhiro Arita', 58, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Lightning'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Charizard', 120, 'Fire Spin', '100', 'Mitsuhiro Arita', 4, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Blastoise', 100, 'Hydro Pump', '40+', 'Ken Sugimori', 2, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Venusaur', 100, 'Solarbeam', '60', 'Ken Sugimori', 15, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Grass'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Bulbasaur', 40, 'Leech Seed', '20', 'Mitsuhiro Arita', 44, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Grass'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Charmander', 50, 'Ember', '30', 'Mitsuhiro Arita', 46, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Squirtle', 40, 'Bubble', '10', 'Mitsuhiro Arita', 63, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Mewtwo', 60, 'Psychic', '10+', 'Ken Sugimori', 10, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Gyarados', 100, 'Dragon Rage', '50', 'Mitsuhiro Arita', 6, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Alakazam', 80, 'Confuse Ray', '30', 'Ken Sugimori', 1, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Arcanine', 100, 'Flamethrower', '50', 'Ken Sugimori', 23, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Base Set')),
('Eevee', 30, 'Tail Wag', '0', 'Mitsuhiro Arita', 51, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Normal'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Jungle')),
('Vaporeon', 80, 'Water Gun', '30+', 'Mitsuhiro Arita', 12, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Jungle')),
('Jolteon', 70, 'Double Kick', '30x', 'Mitsuhiro Arita', 4, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Lightning'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Jungle')),
('Flareon', 70, 'Flamethrower', '60', 'Mitsuhiro Arita', 3, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Jungle')),
('Scyther', 70, 'Slash', '30', 'Mitsuhiro Arita', 10, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Grass'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Jungle')),
('Gengar', 80, 'Dark Mind', '30', 'Ken Sugimori', 5, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Fossil')),
('Dragonite', 100, 'Slam', '40x', 'Kagemaru Himeno', 4, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Normal'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Fossil')),
('Zapdos', 80, 'Thunder', '60', 'Mitsuhiro Arita', 15, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Lightning'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Fossil')),
('Dark Raichu', 70, 'Surprise Thunder', '30', 'Mitsuhiro Arita', 83, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Lightning'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Team Rocket'));