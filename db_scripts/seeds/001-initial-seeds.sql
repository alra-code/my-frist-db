INSERT INTO tbl_collections (collection_name, release_date, total_cards_in_collection)
VALUES ('Ultra Prism', '2018-02-02', 156);

INSERT INTO tbl_categories (category_name)
VALUES ('BASIC'), ('Stage 1'), ('Stage 2'), ('TREINER'), ('ENERGY');

INSERT INTO tbl_types (type_name)
VALUES ('Fire'), ('Water'), ('Grass'), ('Lightning'), ('Psychic'), ('Fighting');


INSERT INTO tbl_cards (
    name, 
    hp, 
    pokedex_description, 
    attack_name, 
    attack_cost, 
    attack_effects, 
    damage_caused, 
    illustrator, 
    retreat_cost, 
    expansion_symbol, 
    rarity_and_number, 
    weakness, 
    resistance, 
    card_number_in_collection,
    category_id,
    type_id,
    collection_id
) VALUES (
    'Chimchar',
    60,
    'It agilely scales rocky cliffs to live atop mountains. Its fire is put out when it sleeps.',
    'Fury Swipes',
    'Colorless',
    'Flip 3 coins. This attack does 10 damage for each heads.',
    '10x',
    'Kouki Saitou',
    'Colorless',
    'Sun & Moon — Ultra Prism',
    '21/156 Common',
    'Water x2',
    NULL,
    21,
    (SELECT category_id FROM tbl_categories WHERE category_name = 'BASIC'),
    (SELECT type_id FROM tbl_types WHERE type_name = 'Fire'),
    (SELECT collection_id FROM tbl_collections WHERE collection_name = 'Ultra Prism')
);