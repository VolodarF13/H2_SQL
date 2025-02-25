--Завдання №5 - знайти проєкт з найбільшою тривалістю
--Створи файл find_longest_project.sql. У ньому напиши SQL,
-- який виведе проєкт з найбільшою тривалістю в місяцях.
-- Якщо таких проєктів декілька - потрібно вивести всі ці проєкти.
--
--Приклад результуючої таблиці:
--
--NAME	MONTH_COUNT
--Project A	27
--Project B	27

SELECT client_ID, DATEDIFF('MONTH', START_DATE , FINISH_DATE )
FROM project
WHERE DATEDIFF('MONTH', START_DATE , FINISH_DATE )= (
    SELECT MAX(DATEDIFF('MONTH', START_DATE , FINISH_DATE )) FROM project
)