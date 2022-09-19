-- GET EGRESADOS 
/*
mo_role -> id=16
mo_user -> id
mo_role_assignments -> roleid userid
*/
SELECT u.id,
u.username,
u.firstname,
u.lastname,
u.email,
u.phone1,
u.institution,
u.department,
u.address,
u.city,
u.country
FROM mo_user u
INNER JOIN mo_role_assignments ra
ON u.id = ra.userid
WHERE ra.roleid = '16';

-- GET COURSE
SELECT * FROM mo_course WHERE id = 3163;


-- GET ENCUESTAS 
/*
mo_questionnaire -> course,name, id=3163
*/
SELECT * FROM mo_questionnaire_question_type;
SELECT * FROM mo_questionnaire WHERE course = 3163;
SELECT * FROM mo_questionnaire_response WHERE userid = 3;




-- GET ENCUESTAS X EGRESADOS



-- 2. GET GENDER



-- 7. GET LENGUA MATERNA


-- 8. GET TIENE HIJOS


-- 9. GET NRO HIJOS