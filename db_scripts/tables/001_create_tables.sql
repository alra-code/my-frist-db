
CREATE TABLE tbl_collections (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(100) NOT NULL,
    release_date DATE,
    total_cards_in_collection INTEGER
);

CREATE TABLE tbl_categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tbl_types (
    type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE tbl_cards (
    card_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    hp INTEGER,
    pokedex_description TEXT,
    attack_name VARCHAR(100),
    attack_cost VARCHAR(50),
    attack_effects TEXT,
    damage_caused VARCHAR(20),
    illustrator VARCHAR(100),
    retreat_cost VARCHAR(20),
    expansion_symbol VARCHAR(50),
    rarity_and_number VARCHAR(50),
    weakness VARCHAR(30),
    resistance VARCHAR(30),
    card_number_in_collection INTEGER,
    

    category_id INTEGER REFERENCES tbl_categories(category_id),
    type_id INTEGER REFERENCES tbl_types(type_id),
    collection_id INTEGER REFERENCES tbl_collections(collection_id) ON DELETE CASCADE
);