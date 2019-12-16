SELECT (SELECT COUNT (D.ID) FROM DONATIONS D JOIN CAMPAIGNS CA ON CA.ID = D.ID_CAMPAIGN WHERE D.ID_EMPLOYEE_TEAM = E.ID AND CA.ID_OSC = C.ID_OSC) TOTALDONATIONS,
(SELECT SUM (D.AMOUNT) FROM DONATIONS D JOIN CAMPAIGNS CA ON CA.ID = D.ID_CAMPAIGN WHERE D.ID_EMPLOYEE_TEAM = E.ID AND CA.ID_OSC = C.ID_OSC) TOTALAMOUNTDONATIONS,
(SELECT COUNT (D.ID_TYPE_PAY) FROM DONATIONS D JOIN CAMPAIGNS CA ON CA.ID = D.ID_CAMPAIGN WHERE D.ID_EMPLOYEE_TEAM = E.ID AND CA.ID_OSC = C.ID_OSC AND D.ID_TYPE_PAY =1) CREDITTYPE,
(SELECT SUM (DR.PRODUCTIVE_HOURS) FROM DAILY_RECORDS DR JOIN CAMPAIGNS CA ON CA.ID = DR.ID_CAMPAIGN WHERE DR.ID_EMPLOYEE_TEAM = E.ID AND CA.ID_OSC = C.ID_OSC)TOTALPRODUCTIVEHOURS,
(SELECT SUM (DR.NON_PRODUCTIVE_HOURS) FROM DAILY_RECORDS DR JOIN CAMPAIGNS CA ON CA.ID = DR.ID_CAMPAIGN WHERE DR.ID_EMPLOYEE_TEAM = E.ID AND CA.ID_OSC = C.ID_OSC)TOTALNONPRODUCTIVEHOURS
FROM TEAM_EMPLOYEES E 
JOIN CAMPAIGNS C ON C.ID = E.ID_CAMPAIGN
WHERE 1 = 1
AND E.ID_EMPLOYEE = 1
AND C.ID_OSC = 1