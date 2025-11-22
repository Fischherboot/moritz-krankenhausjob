-- ███ Krankenhaus Society (KH) ███

INSERT INTO `addon_account` (name, label, shared) VALUES
    ('krankenhaus', 'KH', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
    ('krankenhaus', 'KH', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
    ('krankenhaus', 'KH', 1)
;

-- ███ Job Eintrag ███

INSERT INTO `jobs` (name, label) VALUES
    ('krankenhaus','KH')
;

-- ███ Krankenhaus Ränge (0–4) ███

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
    ('krankenhaus',0,'praktikant','Praktikant',50,'{}','{}'),
    ('krankenhaus',1,'pfleger','Pflegekraft',75,'{}','{}'),
    ('krankenhaus',2,'arzt','Arzt',100,'{}','{}'),
    ('krankenhaus',3,'facharzt','Facharzt',125,'{}','{}'),
    ('krankenhaus',4,'chef','Chefarzt',150,'{}','{}')
;
