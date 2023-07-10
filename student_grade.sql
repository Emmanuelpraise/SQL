CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student_grade`(score INT)
BEGIN
DECLARE grade VARCHAR(1);
IF score >= 70 THEN
	SET grade = 'A';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSEIF score < 70 AND score >= 60 THEN
	SET grade =  'B';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSEIF score < 60 AND score >= 50 THEN
	SET grade =  'C';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSEIF score < 50 AND score >= 40 THEN
	SET grade =  'D';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSEIF score < 40 AND score >= 30 THEN
	SET grade =  'E';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSEIF score < 30 THEN
	SET grade =  'F';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
ELSE
	SET grade = '-';
    UPDATE student_details
	SET grades = grade WHERE test_score = score;
    END IF;
SELECT * FROM student_details WHERE test_score = score;
END