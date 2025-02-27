-- worker - таблиця для працівників. У таблиці мають бути наступні поля:
-- ID - ідентифікатор працівника, ціле число, сурогатний первинний ключ.
-- NAME - ім'я працівника, рядок. Обмеження - не має бути NULL, довжина має бути від 2 до 1000 символів включно.
-- BIRTHDAY - дата народження. Рік у цій даті має бути більшим за 1900
-- LEVEL - рівень технічного розвитку працівника. Має бути обмеження - це поле не може бути NULL, значення поля може бути одним з - Trainee, Junior, Middle, Senior
-- SALARY - заробітна плата працівника за 1 місяць. Обмеження - ціле число, не менше 100 і не більше 100 000

CREATE TABLE worker (
    ID IDENTITY PRIMARY KEY,
    NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) BETWEEN 2 AND 1000),
    BIRTHDAY DATE CHECK (BIRTHDAY > '1900-01-01'),
    LEVEL VARCHAR(10) NOT NULL CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    SALARY INT CHECK (SALARY >= 100 AND SALARY <= 100000)
);

-- client - таблиця для клієнтів. Мають бути наступні поля:
-- ID - ідентифікатор клієнта, ціле число, сурогатний первинний ключ.
-- NAME - ім'я працівника, рядок. Обмеження - не має бути NULL, довжина має бути від 2 до 1000 символів включно.

CREATE TABLE client(
    ID IDENTITY PRIMARY KEY,
    NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) BETWEEN 2 AND 1000),
);

-- project - таблиця для проєктів. Мають бути наступні поля:
-- ID - ідентифікатор проєкту, ціле число, сурогатний первинний ключ.
-- CLIENT_ID - ідентифікатор клієнта, що замовив цей проєкт
-- START_DATE - дата початку виконання проєкту
-- FINISH_DATE - дата кінця виконання проєкту

CREATE TABLE project(
    ID IDENTITY PRIMARY KEY,
    CLIENT_ID BIGINT NOT NULL,
    START_DATE DATE,
    FINISH_DATE DATE,
    ADD CONSTRAINT CLIENT_ID_DK FOREIGN KEY(CLIENT_ID) REFERENCES client(ID)
);

-- project_worker - таблиця, що показує, які працівники над якими проєктами працюють. Поля таблиці:
-- PROJECT_ID - ідентифікатор проєкту. Зовнішній ключ для таблиці project(id)
-- WORKER_ID - ідентифікатор клієнту. Зовнішній ключ для таблиці worker(id)
-- первинний ключ для цієї таблиці - складений, пара (PROJECT_ID, WORKER_ID)

CREATE TABLE project_worker(
    PROJECT_ID BIGINT,
    WORKER_ID BIGINT,
    PRIMARY KEY(PROJECT_ID, WORKER_ID),
    ADD CONSTRAINT PROJECT_ID_FK FOREIGN KEY(PROJECT_ID) REFERENCES project(ID),
    ADD CONSTRAINT WORKER_ID_FK FOREIGN KEY(WORKER_ID) REFERENCES worker(ID)
);

