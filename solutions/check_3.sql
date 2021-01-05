USE sql_intro;
-- Creating tables
CREATE TABLE student(
    s_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    s_name VARCHAR(20),
    is_brilliant BOOLEAN
);

CREATE TABLE teacher(
    t_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    t_name VARCHAR(20),
    is_tenured BOOLEAN
);

CREATE TABLE student_teacher(
    student_id INT,
    teacher_id INT,

    FOREIGN KEY(student_id) REFERENCES student(s_id),
    FOREIGN KEY(teacher_id) REFERENCES teacher(t_id)
);

-- Inserting into join table: should *not* be in your solution file
INSERT INTO student_teacher VALUES(1, 1);
INSERT INTO student_teacher VALUES(1, 2);
INSERT INTO student_teacher VALUES(2, 1);
INSERT INTO student_teacher VALUES(2, 2);
INSERT INTO student_teacher VALUES(2, 3);
INSERT INTO student_teacher VALUES(3, 1);