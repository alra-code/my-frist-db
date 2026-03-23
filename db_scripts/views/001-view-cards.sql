#Tive que apagar a View para alterar a tabela e depois recriei a view. 
DROP VIEW IF EXISTS vw_cards_details;


CREATE OR REPLACE VIEW vw_cards_details AS
SELECT 
    c.card_id,
    c.name AS pokemon_name,
    cat.category_name AS category,
    t.type_name AS pokemon_type,
    c.hp,
    c.attack_name,
    c.damage_caused,
    c.illustrator,
    col.collection_name AS collection,
    c.card_number_in_collection || '/' || col.total_cards_in_collection AS card_number,
    col.release_date AS collection_release
FROM tbl_cards c
JOIN tbl_categories cat ON c.category_id = cat.category_id
JOIN tbl_types t ON c.type_id = t.type_id
JOIN tbl_collections col ON c.collection_id = col.collection_id;

#mais perfomatica em bases de grande escala - evite usar com select*

SELECT 
    card_id,
    pokemon_name,
    category,
    pokemon_type,
    hp,
    attack_name,
    damage_caused,
    illustrator,
    collection,
    card_number,
    collection_release
FROM vw_cards_details;