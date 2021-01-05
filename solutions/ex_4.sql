USE sql_intro;
SELECT id,survival_rate FROM `sql_intro`.`disease` AS D,`sql_intro`.`patient` AS P WHERE P.`disease` = D.`name` ORDER BY ID ASC;