## ao subir mais algumas seeds deu erro no db e tive  que realizar a alteração abaixo 

ALTER TABLE tbl_cards 
ALTER COLUMN damage_caused TYPE VARCHAR(100);

ALTER TABLE tbl_cards 
ALTER COLUMN retreat_cost TYPE VARCHAR(100);

ALTER TABLE tbl_cards 
ALTER COLUMN weakness TYPE VARCHAR(100);

ALTER TABLE tbl_cards 
ALTER COLUMN resistance TYPE VARCHAR(100);

ALTER TABLE tbl_cards 
ALTER COLUMN rarity_and_number TYPE VARCHAR(100);