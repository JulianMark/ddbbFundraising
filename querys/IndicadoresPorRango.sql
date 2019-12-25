SELECT (SELECT COUNT (D.ID)
          FROM DONATIONS D
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND D.CREATE_DATE BETWEEN TO_DATE ('2014/02/01', 'yyyy/mm/dd')
                            AND TO_DATE ('2019/12/31', 'yyyy/mm/dd')) TOTALDONATIONS,
       (SELECT SUM (D.AMOUNT)
          FROM DONATIONS D
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND D.CREATE_DATE BETWEEN TO_DATE ('2014/02/01', 'yyyy/mm/dd')
                            AND TO_DATE ('2019/12/31', 'yyyy/mm/dd')) TOTALAMOUNTDONATIONS,
       (SELECT COUNT (D.ID_TYPE_PAY)
          FROM DONATIONS D
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND D.CREATE_DATE BETWEEN TO_DATE ('2014/02/01', 'yyyy/mm/dd')
                            AND TO_DATE ('2019/12/31', 'yyyy/mm/dd')
          AND D.ID_TYPE_PAY =1) CREDITTYPE,
       (SELECT SUM (DR.PRODUCTIVE_HOURS)
          FROM DAILY_RECORDS DR
          WHERE 1 = 1
          AND  DR.ID_EMPLOYEE_TEAM = 1
          AND DR.CREATE_DATE BETWEEN TO_DATE ('2014/02/01', 'yyyy/mm/dd')
                              AND TO_DATE ('2019/12/31', 'yyyy/mm/dd')) TOTALPRODUCTIVEHOURS,
       (SELECT SUM (DR.NON_PRODUCTIVE_HOURS)
          FROM DAILY_RECORDS DR
          WHERE 1 = 1
          AND  DR.ID_EMPLOYEE_TEAM =  1
          AND DR.CREATE_DATE BETWEEN TO_DATE ('2014/02/01', 'yyyy/mm/dd')
                              AND TO_DATE ('2019/12/31', 'yyyy/mm/dd')) TOTALNONPRODUCTIVEHOURS
