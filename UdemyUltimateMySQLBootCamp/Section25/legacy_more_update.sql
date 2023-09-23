SELECT * FROM legacy_shirts
WHERE article = 'polo shirt';

UPDATE legacy_shirts SET shirt_size = 'L'
WHERE article = 'polo shirt';

SELECT * FROM legacy_shirts
WHERE article = 'polo shirt';

SELECT * FROM legacy_shirts;

UPDATE legacy_shirts SET last_worn = 0
WHERE last_worn = 15;

SELECT * FROM legacy_shirts;

UPDATE legacy_shirts
SET
    shirt_size = 'XS',
    color = 'off white'
WHERE color = 'white';

