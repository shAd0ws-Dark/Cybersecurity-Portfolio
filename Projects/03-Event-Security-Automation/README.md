# 🎟️ Automatisation & Sécurisation de Billetterie Événementielle (Cas Réel : WEI AEG26)

## 📌 Présentation du Projet
Dans le cadre de l'organisation d'un week-end d'intégration (WEI), j'ai conçu et déployé un système de billetterie automatisé "Zero-Budget" mais hautement sécurisé. L'enjeu était de prévenir la fraude aux paiements et d'assurer un contrôle d'accès fluide et infalsifiable.

**Problématique :** Comment garantir que 100% des participants ont payé et disposent d'un titre d'accès unique sans utiliser de plateforme payante ?

---

## 🏗️ Architecture du Système (Workflow Sécurisé)

### 1. Collecte et Preuve de Paiement (Ingestion des données)
Utilisation de **Google Forms** pour centraliser les inscriptions. 
* **Sécurité financière :** Obligation d'uploader une capture d'écran du reçu de paiement (Orange Money/Wave) directement dans le formulaire.
* **Intégrité :** Les données sont envoyées vers un Google Sheets protégé, accessible uniquement par l'équipe organisatrice.

### 2. Validation par Tiers de Confiance (Le "Gatekeeper")
Le billet n'est pas généré automatiquement à l'inscription. Il nécessite une validation humaine (la trésorière).
* **Processus :** La trésorière vérifie la correspondance entre la capture d'écran et le compte bancaire. 
* **Déclencheur :** Le passage du statut en "PAYÉ" active dynamiquement la génération du QR Code via l'API **QuickChart**.

### 3. Génération de Tokens Uniques (QR Codes)
Chaque billet contient un token d'authentification unique : `[NOM_PRENOM] - WEI AEG26`.
* **Anti-fraude :** Le QR Code est généré dynamiquement. Un étudiant ne peut pas "inventer" son billet tant que sa ligne n'est pas validée dans la base de données.

### 4. Distribution Sécurisée (WhatsApp API & Mail)
Mise en place d'une communication multicanale pour l'envoi des pass :
* **Automatisation WhatsApp :** Utilisation de l'API `wa.me` pour générer des liens de discussion pré-remplis avec l'indicatif Sénégal (+221), permettant à la trésorière d'envoyer le pass en un clic dès validation.



## 🛠️ Outils utilisés
* **Database :** Google Sheets (Logique de calcul & Formules dynamiques)
* **Identity Management :** Google Forms
* **Security Tokens :** QuickChart API (QR Codes)
* **Communication :** WhatsApp Business API (détournée pour l'automatisation)



## 📊 Impact Cybersécurité
Ce projet démontre des compétences en **Sécurité Opérationnelle (SecOps)** :
1. **Contrôle d'accès :** Seuls les utilisateurs validés en base de données possèdent un secret (le QR Code).
2. **Prévention de la fraude :** Double vérification (Preuve visuelle + Validation humaine).
3. **Disponibilité :** Système cloud accessible sur mobile pour le scan à l'entrée de l'événement.
