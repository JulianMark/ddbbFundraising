-- LOGIN
--PARAM: NICKNAME Y PASSWORD
SELECT E.ID, E.NAME, E.LASTNAME, AC.ID_CAMPAIGN IDCAMPAIGN, AC.ID_TYPE_EMPLOYEE IDTYPE
FROM EMPLOYEES E
JOIN ACTIVE_CAMPAIGNS AC ON AC.ID_EMPLOYEE = E.ID
WHERE 1 = 1
AND E.NICKNAME LIKE 'JMARK' 
AND E.PASSWORD LIKE '123'