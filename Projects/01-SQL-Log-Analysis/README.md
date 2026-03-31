
En tant qu'analyste de sécurité, j'ai été chargé d'enquêter sur des incidents potentiels en interrogeant les bases de données de l'organisation. L'objectif était d'identifier des tentatives de connexion suspectes (hors horaires, échecs répétés) et de cibler des groupes d'employés spécifiques pour des mises à jour de sécurité critiques. Pour ce faire, j'ai utilisé SQL pour filtrer les tables employees et log_in_attempts afin d'isoler les données pertinentes pour l'équipe de réponse aux incidents."
2. Synthèse des requêtes SQL
A. Tentatives de connexion échouées (Après 18h00)

    Objectif : Identifier les échecs de connexion suspects après les heures de bureau.

    Requête :
    SQL

    SELECT * FROM log_in_attempts 
    WHERE login_time > '18:00:00' AND success = 0;

    Logique : L'opérateur AND combine deux conditions strictes : l'heure doit être supérieure à 18h00 et la colonne success doit être égale à 0 (ou FALSE), ce qui indique un échec.

B. Connexions à des dates spécifiques

    Objectif : Enquêter sur un événement suspect survenu entre le 8 et le 9 mai 2022.

    Requête :
    SQL

    SELECT * FROM log_in_attempts 
    WHERE login_date = '2022-05-08' OR login_date = '2022-05-09';

    Logique : L'opérateur OR permet d'élargir la recherche pour inclure les enregistrements correspondant à l'une ou l'autre de ces dates précises.

C. Filtrage géographique (Hors Mexique)

    Objectif : Isoler les connexions provenant de l'étranger, en excluant le Mexique.

    Requête :
    SQL

    SELECT * FROM log_in_attempts 
    WHERE NOT country LIKE 'MEX%';

    Logique : NOT inverse la condition. L'utilisation de LIKE 'MEX%' avec le joker % permet de capturer toutes les variantes comme "MEX" ou "MEXICO", et de les exclure du résultat.

D. Employés du Marketing (Bâtiment Est)

    Objectis : Cibler les machines du département Marketing situées dans le bâtiment Est.

    Requête :
    SQL

    SELECT * FROM employees 
    WHERE department = 'Marketing' AND office LIKE 'East%';

    Logique : Ici, LIKE 'East%' identifie tous les bureaux commençant par "East" (ex: East-170, East-320), assurant que seuls les employés du bon bâtiment et du bon service sont listés.

E. Départements Ventes ou Finances

    Objectif : Lister les employés pour une mise à jour logicielle spécifique.

    Requête :
    SQL

    SELECT * FROM employees 
    WHERE department = 'Sales' OR department = 'Finance';

F. Exclusion du département Informatique

    Objectif : Identifier tous les employés n'ayant pas encore reçu la mise à jour (déjà faite pour l'IT).

    Requête :
    SQL

    SELECT * FROM employees 
    WHERE NOT department = 'Information Technology';

3. Résumé final:
 Ce projet a permis de démontrer ma maîtrise des filtres SQL (AND, OR, NOT) et des recherches par modèles (LIKE avec %) pour sécuriser un système d'information. En isolant précisément les tentatives de connexion anormales et en ciblant les actifs par département ou localisation, j'ai prouvé ma capacité à transformer des données brutes en informations exploitables pour la cybersécurité. Cette compétence est essentielle pour la surveillance continue et la réponse rapide aux menaces.
