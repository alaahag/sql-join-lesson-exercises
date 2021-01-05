USE sql_intro;
SELECT COUNT(*) FROM `sql_intro`.`disease` AS D,`sql_intro`.`patient` AS P WHERE P.`disease` = D.`name` AND D.`survival_rate` IS NOT NULL;