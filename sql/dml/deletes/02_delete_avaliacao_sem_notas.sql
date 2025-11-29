DELETE FROM avaliacao WHERE id NOT IN (SELECT DISTINCT id_avaliacao FROM nota);
