-- JOB ANLEGEN
INSERT INTO jobs (name, label) VALUES
('krankenhaus', 'Krankenhaus')
ON DUPLICATE KEY UPDATE label='Krankenhaus';

-- RÄNGE ANLEGEN
INSERT INTO job_grades (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
('krankenhaus', 0, 'praktikant', 'Praktikant', 500, '{}', '{}'),
('krankenhaus', 1, 'pfleger', 'Krankenpfleger', 700, '{}', '{}'),
('krankenhaus', 2, 'arzt', 'Arzt', 950, '{}', '{}'),
('krankenhaus', 3, 'chefarzt', 'Chefarzt', 1200, '{}', '{}')
ON DUPLICATE KEY UPDATE label=VALUES(label);

-- SOCIETY (Boss Menü, Bankkonto)
INSERT INTO addon_account (name, label, shared) VALUES
('society_krankenhaus', 'Krankenhaus', 1)
ON DUPLICATE KEY UPDATE label='Krankenhaus';

INSERT INTO addon_inventory (name, label, shared) VALUES
('society_krankenhaus', 'Krankenhaus', 1)
ON DUPLICATE KEY UPDATE label='Krankenhaus';

INSERT INTO jobs_society (job_name, society_name, society_label) VALUES
('krankenhaus', 'society_krankenhaus', 'Krankenhaus')
ON DUPLICATE KEY UPDATE society_label='Krankenhaus';
