INSERT INTO tbl_types (type_name) 
VALUES ('Darkness'), ('Metal'), ('Colorless') 
ON CONFLICT (type_name) DO NOTHING;

INSERT INTO tbl_collections (collection_name, release_date, total_cards_in_collection)
VALUES 
('Gym Heroes', '2000-08-14', 132),
('Neo Genesis', '2000-12-16', 111),
('Neo Discovery', '2001-06-01', 75),
('Expedition Base Set', '2002-09-15', 165)
ON CONFLICT DO NOTHING;

INSERT INTO tbl_cards (name, hp, attack_name, damage_caused, illustrator, card_number_in_collection, category_id, type_id, collection_id)
VALUES 
('Blaine''s Arcanine', 90, 'Firestorm', '120', 'Ken Sugimori', 1, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Gym Heroes')),
('Brock''s Onix', 90, 'Rock Throw', '20', 'Ken Sugimori', 21, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fighting'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Gym Heroes')),
('Misty''s Starmie', 70, 'Star Freeze', '30', 'Ken Sugimori', 35, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Gym Heroes')),
('Lugia', 90, 'Aeroblast', '20+', 'Hironobu Yoshida', 9, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Colorless'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Typhlosion', 100, 'Flame Wheel', '80', 'Shin-ichi Yoshida', 17, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Feraligatr', 100, 'Riptide', '10+', 'Ken Sugimori', 4, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Water'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Meganium', 100, 'Solarbeam', '40', 'Ken Sugimori', 10, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Grass'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Steelix', 110, 'Iron Tail', '20x', 'Ken Sugimori', 15, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Metal'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Skarmory', 60, 'Steel Wing', '20', 'Ken Sugimori', 13, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Metal'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Umbreon', 80, 'Feint Attack', '30', 'Naoyo Kimura', 13, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Darkness'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Espeon', 80, 'Psybeam', '30', 'Atsuko Nishida', 1, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Tyranitar', 100, 'Trample', '50', 'Ken Sugimori', 12, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Darkness'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Smeargle', 50, 'Sketch', '0', 'Kanako Ebina', 11, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Colorless'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Pichu', 30, 'Zzzap', '0', 'Ken Sugimori', 12, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Lightning'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Genesis')),
('Houndoom', 80, 'Crunch', '30', 'Shin-ichi Yoshida', 8, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 1'), (SELECT type_id FROM tbl_types WHERE type_name = 'Darkness'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Larvitar', 40, 'Mountain Eater', '0', 'Mitsuhiro Arita', 40, (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fighting'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Neo Discovery')),
('Butterfree', 80, 'Gust', '40', 'Kagemaru Himeno', 38, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Grass'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Expedition Base Set')),
('Alakazam', 100, 'Syncroblast', '80', 'Kagemaru Himeno', 33, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Psychic'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Expedition Base Set')),
('Machamp', 120, 'Terraform', '60', 'Mitsuhiro Arita', 51, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Fighting'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Expedition Base Set')),
('Dragonite', 100, 'Dragon Shell', '0', 'Atsuko Nishida', 43, (SELECT category_id FROM tbl_categories WHERE category_name = 'Stage 2'), (SELECT type_id FROM tbl_types WHERE type_name = 'Colorless'), (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Expedition Base Set'));