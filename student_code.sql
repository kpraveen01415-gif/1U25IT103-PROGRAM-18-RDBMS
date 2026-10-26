
CREATE OR REPLACE FUNCTION count_students_in_dept (


3	+
    p_dept IN VARCHAR2
4	+
) RETURN NUMBER IS
5	+
    v_count NUMBER := 0;
6	+
BEGIN
7	+
    SELECT COUNT(*)
8	+
    INTO v_count
9	+
    FROM Student
10	+
    WHERE department = p_dept;
11	+
12	+
    RETURN v_count;
13	+
END count_students_in_dept;
14	+
/
