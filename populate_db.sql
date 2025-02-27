--Створи файл populate_db.sql, у якому напиши SQL для заповнення таблиць. Після виконання SQL БД має бути приведена у наступний стан:
--
--додано щонайменше 10 працівників, мінімальна зарплата має бути менше за 1000,
--максимальна - більше за 5 000, мають бути всі технічні рівні (Trainee, Junior, Middle, Senior)
--додано щонайменше 5 клієнтів
--додано щонайменше 10 проєктів. Тривалість кожного проєкту (різниця START_DATE та FINISH_DATE) має бути від 1 до 100 місяців.
--назначені працівники на кожен проєкт. Над кожним проєктом має працювати від 1 до 5 працівників.

INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
('John Doe', '1990-05-15', 'Trainee', 800),
('Jane Smith', '1985-09-20', 'Junior', 1200),
('Michael Johnson', '1992-12-02', 'Junior', 1500),
('Emily Davis', '1988-04-10', 'Middle', 3000),
('William Brown', '1995-01-18', 'Middle', 3500),
('Sarah Wilson', '1987-11-30', 'Senior', 5000),
('David Lee', '1990-03-25', 'Senior', 6000),
('Olivia Martinez', '1991-06-12', 'Junior', 1100),
('Liam Anderson', '1993-02-28', 'Middle', 2500),
('Sophia Taylor', '1986-07-07', 'Senior', 5500);

INSERT INTO client (NAME) VALUES
('Acme Corp'),
('Tech Innovations'),
('Global Solutions'),
('Webify Ltd'),
('Future Enterprises');

INSERT INTO project(CLIENT_ID, START_DATE, FINISH_DATE) VALUES
(1, '2023-01-01', '2023-12-01'),
(2, '2022-06-15', '2023-06-15'),
(3, '2022-03-01', '2024-01-01'),
(4, '2021-07-10', '2022-07-10'),
(5, '2023-02-01', '2024-02-01'),
(1, '2023-05-15', '2024-05-15'),
(2, '2022-08-01', '2023-12-01'),
(3, '2023-01-01', '2024-06-01'),
(4, '2022-04-05', '2023-11-05'),
(5, '2022-12-01', '2023-09-01');
(3, '2023-01-14', '2023-12-04'),
(3, '2022-06-17', '2023-06-30'),
(3, '2022-03-18', '2024-01-23'),
(5, '2021-07-23', '2022-07-25'),
(2, '2023-02-24', '2024-02-28'),
(5, '2023-05-23', '2024-05-24'),
(2, '2022-08-11', '2023-12-21'),
(1, '2023-01-05', '2024-06-04'),
(2, '2022-04-13', '2023-11-09'),
(1, '2022-12-30', '2023-09-24');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 3),
(6, 4),
(7, 2),
(7, 5),
(8, 3),
(8, 7),
(9, 1),
(9, 6),
(10, 4);
