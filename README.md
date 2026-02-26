Rapport d'Analyse - Projet SQL clAra Mobility
1. Objectif du document
Ce rapport synthétise notre compréhension du projet clAra Mobility, notre méthodologie de travail en binôme ainsi que les choix techniques opérés pour répondre aux besoins métier de gestion de flotte de véhicules électriques.

2. Organisation du travail en binôme
Méthodologie
Pour mener à bien ce projet, nous avons adopté une approche hybride. Nous avons réparti les requêtes simples (Quêtes 1 et 2) pour avancer efficacement, mais avons privilégié la programmation en binôme (travail synchrone) pour les quêtes complexes (3, 4 et 5). Cela nous a permis de confronter nos logiques et de nous assurer que chaque membre maîtrisait l'intégralité du code produit.
+1

Gestion de version (Git/GitHub)
Nous avons utilisé un dépôt GitHub commun pour centraliser notre travail. Notre flux de travail reposait sur des commits réguliers après la validation de chaque quête ou sous-partie fonctionnelle. Cette rigueur nous a permis de sauvegarder notre progression et d'assurer la synchronisation de nos codes locaux sans conflit majeur.
+1

Environnement de travail
Le développement a été réalisé à l'aide du SGBD PostgreSQL. Nous avons principalement utilisé l'interface graphique pgAdmin pour écrire, tester et déboguer nos requêtes SQL avant de les intégrer aux fichiers finaux.
+1

3. Analyse du Modèle de Données (MCD)
Structure et Relations
La base de données fournie est relationnelle et s'articule autour de quatre tables principales : vehicule, station, client et location.
+1

La table location agit comme la table centrale (table de fait). Elle contient des clés étrangères (id_client, id_vehicule, id_station_depart) qui font référence aux clés primaires des autres tables.

C'est cette structure qui permet de relier un véhicule spécifique à un client donné et à un trajet précis.

Pertinence Métier
Cette modélisation répond aux besoins de clAra Mobility en garantissant l'intégrité des données. Elle permet un suivi historique précis : nous pouvons analyser la flotte (disponibilité, autonomie) tout en conservant l'historique des locations passées pour des analyses statistiques (fréquentation, usage client).
+1

4. Choix Techniques et Syntaxe SQL
Pour répondre aux quêtes nécessitant des manipulations de données (Quêtes 3, 4 et 5), nous avons suivi une logique progressive :

Stratégie de requête
Nous avons décomposé chaque problème complexe en sous-étapes. Par exemple, nous commencions par sélectionner les colonnes nécessaires (SELECT), puis nous appliquions les jointures (JOIN), et enfin les filtres (WHERE/HAVING).

Justification des commandes et Logique de filtrage
Les Jointures (JOIN) : Pour la Quête 3, nous avons utilisé INNER JOIN pour lier les tables location et client. Cela nous a permis d'afficher les noms des clients à côté des détails de leur location, ce qui est impossible avec une seule table.
+1

Les Agrégations (GROUP BY) : Pour la Quête 4 (statistiques), nous avons utilisé COUNT et AVG associés à GROUP BY. Par exemple, pour "le nombre de véhicules par ville", nous avons regroupé les données par ville pour que la fonction COUNT s'applique à chaque sous-ensemble géographique.
+1

Filtrage avancé (HAVING vs WHERE) : Dans la Quête 5, pour afficher "les clients ayant effectué au moins deux locations", nous avons utilisé HAVING COUNT(*) >= 2. Nous avons choisi HAVING plutôt que WHERE car la condition portait sur le résultat d'une agrégation (le nombre total de locations) et non sur une ligne brute.
+1

Identification des données manquantes (LEFT JOIN) : Pour trouver les "véhicules n'ayant jamais été loués", nous avons utilisé une jointure LEFT JOIN entre vehicule et location, en filtrant sur location.id_location IS NULL. Cela permet de conserver tous les véhicules, même ceux qui n'ont aucune correspondance dans la table des locations.
+1

5. Difficultés rencontrées et Solutions
Difficultés techniques
Erreurs de regroupement (GROUP BY) : Nous avons initialement rencontré des erreurs de syntaxe type "column must appear in the GROUP BY clause".

Solution : Nous avons compris qu'en SQL, toute colonne sélectionnée qui n'est pas utilisée dans une fonction d'agrégation doit obligatoirement figurer dans la clause GROUP BY.

Compréhension des Jointures Externes : La distinction entre INNER JOIN et LEFT JOIN n'était pas immédiate pour le cas des véhicules non loués.


Solution : Nous avons dessiné le schéma des tables pour visualiser que INNER JOIN supprimait les véhicules sans location, alors que nous avions besoin de les conserver pour les identifier.

Conclusion
Ce projet nous a permis de consolider nos bases en SQL, notamment sur l'importance de bien structurer les requêtes d'agrégation et de comprendre la logique relationnelle pour extraire des données pertinentes.
