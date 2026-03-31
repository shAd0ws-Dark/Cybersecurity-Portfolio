-- Requête 1 : Échecs de connexion après 18h
SELECT * FROM log_in_attempts WHERE login_time > '18:00:00' AND success = 0;

-- Requête 2 : Connexions hors Mexique
SELECT * FROM log_in_attempts WHERE NOT country LIKE 'MEX%';
