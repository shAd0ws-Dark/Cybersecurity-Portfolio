# 🔍 Analyse de Logs avec SQL : Enquête sur les accès réseau

## 📌 Présentation du Projet
Dans le cadre de ma formation, j'ai simulé le rôle d'un analyste de sécurité au sein d'une grande organisation. Ce projet consiste à interroger des bases de données (`log_in_attempts` et `employees`) pour identifier des vulnérabilités et des comportements suspects.

**Objectif :** Isoler les tentatives de connexion anormales et préparer des listes d'employés pour des mises à jour de sécurité critiques.

---

## 🛠️ Compétences SQL Démontrées
* **Opérateurs Logiques :** `AND`, `OR`, `NOT`
* **Filtrage Avancé :** Utilisation de `LIKE` avec des caractères génériques (`%`)
* **Analyse Temporelle :** Filtrage par dates et heures de connexion.

---

## 📑 Scénarios et Requêtes

### 1. Détection des connexions après les heures de bureau
**Scénario :** Identifier toutes les tentatives de connexion échouées survenues après 18h00.
```sql
SELECT * FROM log_in_attempts 
WHERE login_time > '18:00:00' AND success = 0;
