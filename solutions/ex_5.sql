USE sql_intro;
SELECT `symptoms_family`, COUNT(*) FROM `sql_intro`.`disease` AS D,`sql_intro`.`patient` AS P
WHERE P.`disease` = D.`name` AND D.`name` = "cabbage disease"
GROUP BY `symptoms_family`;