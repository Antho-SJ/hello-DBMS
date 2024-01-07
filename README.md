# hello-DBMS

Le projet était de se familiariser avec les base de données pour cela on avait quelques questions préliminaires, puis du requêtage et un projet final consistant à créer une app web à l'aide de Flask.

Voici les réponses aux questions préliminaires :

A. Les données représentent des éléments bruts qui peuvent être utilisés comme base pour générer des informations.
Elles peuvent prendre différentes formes en fonction de leur nature et de leur représentation : données textuelles, données numériques, données binaires, image, etc...

B. Voici les critère de qualité de la Data : 
- Exactitude : L'exactitude mesure la proximité entre la valeur enregistrée dans les données et la valeur réelle.
- Complétude : La complétude évalue la présence de toutes les informations nécessaires. Des champs vides ou des données manquantes peuvent compromettre la qualité et l'utilité des données.
- Cohérence : La cohérence mesure la concordance des données entre différentes sources ou parties d'un ensemble de données.
- Actualité : Des données actualisées sont importantes pour refléter les conditions actuelles.
- Fiabilité : La fiabilité évalue la crédibilité des sources de données.
- Précision : La précision mesure le niveau de détail des données par rapport à la réalité. 
- Accessibilité : L'accessibilité évalue la facilité avec laquelle les utilisateurs peuvent accéder aux données.
- Uniformité : L'uniformité concerne la normalisation des formats et des structures de données.

C. Ces 3 notions sont liées à la gestion de données.
Data Lake : stocke principalement des données brutes.
Data Warehouse : Un Data Warehouse est une base de données centralisée optimisée pour l'analyse et le reporting. Il stocke des données structurées prêtes pour l'analyse. Cette technologie utilise un schéma en étoile ou en flocon pour structurer les données.
Lake House : C'est une approche hybride qui vise à combiner les avantages du Data Lake (stockage flexible de données brutes) avec ceux du Data Warehouse (optimisation pour l'analyse structurée).
Il cherche à réduire la distinction entre les données brutes et les données prêtes pour l'analyse.

D. Un systèmes de gestion de bases de données sert principalement à requeter des données dans une base de données.
Il en existe plusieurs comme :
-MySQL
-Oracle Database
-Microsoft SQL Server
-MongoDB
-SQLite

E. Une base de données relationnelle est un type de base de données qui organise les données sous forme de tables interconnectées.
Un exemple de base de données relationnelle est une application de gestion des employés d'une entreprise, où il peut y avoir des tables distinctes pour les employés, les départements et les projets, toutes interconnectées par des clés relationnelles.
Une base de données non relationnelle, ou NoSQL, diffère des bases de données relationnelles en n'utilisant pas toujours le modèle tabulaire traditionnel. Ces bases de données peuvent utiliser divers modèles de données, tels que le document, le graphe..
Les bases de données NoSQL sont conçues pour gérer des volumes de données massifs et offrir une flexibilité dans le stockage et la récupération des données.
Un exemple d'application pour une base de données non relationnelle est un système de gestion de contenu pour un site web.
Ce qui différencie ces deux schéma : le modèle de données, l'évolutivité, les systèmes de gestion..

F. Une clé primaire est une colonne ou un ensemble de colonnes dans une table de base de données qui identifie de manière unique chaque enregistrement de cette table.
Chaque table ne peut avoir qu'une seule clé primaire, et aucune des valeurs de la clé primaire ne peut être nulle (NULL). 
La clé primaire garantit l'unicité des enregistrements dans la table et facilite la référence à des enregistrements spécifiques.
Une clé étrangère est une colonne ou un ensemble de colonnes dans une table de base de données qui fait référence à la clé primaire d'une autre table.
La clé étrangère établit une relation entre deux tables en utilisant la valeur d'une colonne commune.

G. Les propriétés ACID (Atomicité, Cohérence, Isolation, Durabilité) sont un ensemble de caractéristiques qui définissent les garanties de fiabilité et de cohérence dans les transactions d'une base de données.
Ces propriétés sont cruciales pour assurer l'intégrité des données et la cohérence du système, même en cas de pannes ou d'erreurs.
-Atomicité : Une transaction est une opération unitaire indivisible. Soit toutes les modifications apportées par la transaction sont effectuées avec succès, soit aucune modification n'est apportée du tout.
-Cohérence : Une transaction doit maintenir la cohérence du système en garantissant que la base de données passe d'un état valide à un autre valide après son exécution.
-Isolation : Les transactions en cours ne doivent pas interférer les unes avec les autres. Chaque transaction doit être exécutée comme si elle était la seule opération en cours, indépendamment des autres transactions concurrentes.
-Durabilité : Une fois qu'une transaction est confirmée (commit), les modifications qu'elle a apportées doivent être persistantes et survivre à des pannes du système, y compris les pannes de matériel ou de logiciel.

H. Merise est une méthode de conception de systèmes d'information, développée en France dans les années 1970 et 1980. Elle repose sur une approche ascendante de la modélisation, consistant à décomposer un système en plusieurs niveaux d'abstraction, du plus général au plus détaillé.
Les principaux concepts de Merise incluent les modèles conceptuel, organisationnel et logique (MCD, MOD, MLD). . Il aide à définir la structure d'une base de données et à comprendre les flux d'information au sein d'une organisation.
UML est un langage de modélisation visuel qui offre une notation standardisée pour la conception et la représentation des systèmes logiciels. Il a été développé dans les années 1990 et est largement utilisé dans le domaine de l'informatique pour modéliser des systèmes complexes, que ce soit au niveau du logiciel, des processus métier ou de l'architecture.
Les principaux diagrammes UML incluent : Diagramme de Classes, Diagramme de Séquence, Diagramme d'état, Diagramme de cas d'utilisation.
UML est utilisé pour la modélisation, la spécification, la construction et la documentation des systèmes logiciels. Il offre une méthode visuelle pour décrire et représenter les aspects statiques et dynamiques d'un système.

I. Le language SQL est un language de requête pour intérroger les base de données. Les commandes les plus utilisées sont :
SELECT, FROM, WHERE, GROUP BY, ORDER BY, AVG, MAX, MIN,... On peut également faire des jointure externe, interne, à gauche et à droite, et le cross join.

job7 : Les cardinalités nous disent que un match peut être jouer par 0 ou plusieurs équipes (On pourrait aussi adopter la convention 1,n qui ne change pas grand chose) et que une équipe joue un seul et unique match. 
Une équipe marque un seul et unique but et un but est marqué par 0 ou plusieurs équipes (Ici il faudrait échanger les deux cardinalités pour qu'il y ait un réel sens).
Enfin, un but est marqué dans 0 ou plusieurs match et un match présente un seul et unique but (Ici aussi il faudrait changer les deux cardinalités).

job8 : j'ai oublié de finir la question 12. J'avais laissé une note : "établir la productivité en divisant le temps total de travail par le nombres de personnes par équipe."
___________________________________________________________________________________________________________________________________________________________________________

Les requêtes sont ajoutées dans le répositoire.

Pour le projet de l'app web, je n'ai pas réussi à faire la partie qui consistait à faire une opération avec un nombre entré dans un champ, ce qui m'a donc bloqué pour la question suivante également.
Je n'ai pas utilisé de CSS, j'ai utilisé l'outil Bootstrap pour styliser la page. La page a un style assez simple qui n'est pas désagréable selon moi.
