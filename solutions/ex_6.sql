USE sql_intro;
SELECT E.name, COUNT(*) FROM `sql_intro`.`disease` AS D,`sql_intro`.`patient` AS P, `sql_intro`.`ethnicity` AS E
WHERE P.`disease` = D.`name` AND D.`name` = "lettuce disease" AND E.`id` = P.`ethnicity`
GROUP BY `ethnicity`;