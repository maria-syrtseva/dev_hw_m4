Task 2

-- worker
INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
('Fiona', '1985-12-10', 'Senior', 5500),
('Charlie', '1995-11-05', 'Junior', 900),
('Diana', '1988-07-30', 'Middle', 3000),
('Larisa', '1979-03-12', 'Trainee', 600),
('Frank', '1982-09-25', 'Senior', 6500),
('Ferit', '1998-01-17', 'Junior', 1200),
('Boris', '1993-12-07', 'Middle', 2800),
('Viktor', '1987-05-12', 'Senior', 5500),
('Jack', '1996-10-10', 'Junior', 1500),
('Melanie', '2000-03-19', 'Trainee', 600);

-- client
INSERT INTO client (NAME) VALUES
('Client A'),
('Client B'),
('Client C'),
('Client D'),
('Client E');

-- projects
INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE, NAME) VALUES
(1, '2023-01-01', '2023-06-01', 'Project 1'),
(1, '2023-02-15', '2023-12-15', 'Project 2'),
(2, '2023-03-10', '2024-01-10', 'Project 3'),
(3, '2022-07-20', '2023-09-20', 'Project 4'),
(4, '2022-05-01', '2023-08-01', 'Project 5'),
(4, '2023-02-01', '2023-11-01', 'Project 6'),
(5, '2023-05-05', '2024-02-05', 'Project 7'),
(1, '2023-07-15', '2024-03-15', 'Project 8'),
(3, '2023-08-20', '2024-06-20', 'Project 9'),
(2, '2022-12-10', '2023-12-10', 'Project 10');

-- project_worker
INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
(1, 1), (1, 3), (1, 5),
(2, 2), (2, 4),
(3, 6),
(4, 7), (4, 8), (4, 9),
(5, 10), (5, 1),
(6, 2), (6, 3), (6, 5),
(7, 6), (7, 7),
(8, 8), (8, 9), (8, 10),
(9, 1), (9, 2), (9, 3),
(10, 4), (10, 5);