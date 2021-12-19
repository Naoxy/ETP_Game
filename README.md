# ECRIS_TON_PRENOM

**[Demo version Alpha en ligne](https://www.profprogrammeur.com/EVAL/login.html)**

## 1. Présentation
Cette application propose sous forme de jeu de se familiariser avec l'écriture de son prénom. Pourquoi le prénom? Puisque c'est le premier mot que l'on va apprendre à écrire. Cela concerne donc principalement les enfants de 3 à 5 ans. L'entrée dans l'écriture étant un moment décisif il est bénéfique de varier les supports d'apprentissage.
C'est une première proposition modulable suivant l'équipe réunie.
J'ai déjà proposé à des classes de maternelle une version front Vanilla JS avec un bonne adhésion
d'élèves en difficulté, certains surpassant même les bons élèves habituels!

## 2. Parcours utilisateur
### 2.1 Parent
* Il s'inscrit éventuellement sur l'appli avec email / mot de passe
* Il peut choisir de fonctionner uniquement en local ou enregistré sur serveur
* Il renseigne le prénom de son enfant et sa photo
* Il peut choisir le niveau de difficulté et l'accès aux niveaux/jeux

### 2.2 Enfant
Un premier jeu consiste à rechercher son prénom au milieu d'autres mots.
* Il choisit un niveau/jeu disponible sur la page d'accueil
* Il joue, rejoue jusqu'à réussir
* Après cérémonie de victoire il accède au niveau suivant.
 
Un second jeu consiste à remettre les lettres dans l'ordre. 

## 3. Concrètement
Le jeu doit pouvoir fonctionner sur écran tactile
Il faut empêcher au maximum toute sortie de l'appli ou possibilité de zoom, sélection... en gros même si on appuie partout çà doit dérouler normalement!
Doit être portable et pouvoir tourner complètement en local sans connection et aussi en ligne sans inscription.

### 3.1. BDD
Base de donnée utilisateur : prénom, photo
Enregistrements des performances :
* avancée dans le jeu
* temps de réponse à chaque étapes
* nombre d’erreurs
* nombre de tentatives

Administration :
* CRUD des profils de réglage de tous les paramètres du jeu
* Synthèse/comparaison des performances : évolution, palmarès

### 3.2. Front
Au plus simple peut être constitué de boutons
Animations CSS
Si possible gérer le glisser-déposer, drag and drop
Il faudrait un univers graphique original et attrayant.

### 3.3. Back
Enregistrement Parent/admin et enfant/utilisateur
Gestion des images et sons : de l’appareil / importation / API  
Gestion de JSON/CSV/Excel
Compilation/présentations des performances

### 3.4. Besoins techniques
Etant plutôt front-end il faudrait surtout des fans de backend et un coup de patte graphique serait la bienvenue!
Donc idéalement : 
1 frontend, 2 backend et 1 dev-graphiste


## 4. MVP
Création d'un compte
Possibilité d'importer une photo et de créer plusieurs profils d'enfants
1 jeu de type point and click avec 3 niveaux de difficulté par exemple. 
Création de profils de réglage des paramètres.
Animations CSS 
Bruitage

## 5. Version finale
2ème jeu de type drag and drop
Reporting des performances, import export JSON/CSV/Excel
importation de sons, utilisation de la synthèse vocale.
Personnalisation de la charte graphique





