Présentation

Dans ce projet, nous avons travaillé sur une base de données fournie par l’entreprise fictive cIAra Mobility, spécialisée dans la location de véhicules électriques partagés en France. L’objectif était d’utiliser le langage SQL afin d’interroger cette base de données et de répondre à différents besoins métier liés à la gestion des véhicules et au suivi des locations.

Nous avons utilisé PostgreSQL pour exécuter nos requêtes SQL, principalement via pgAdmin. La gestion de version du projet a été réalisée avec GitHub, ce qui nous a permis de sauvegarder notre travail et de suivre notre progression.

Rapport d’analyse

Nous avons organisé notre travail en binôme en répartissant les quêtes afin d’avancer efficacement tout en relisant et vérifiant les requêtes ensemble. Cette méthode nous a permis de mieux comprendre les différentes parties du projet et d’être capables d’expliquer chaque requête. Nous avons effectué des commits réguliers sur GitHub afin d’assurer une bonne gestion de version et d’éviter toute perte de données.

La base de données est composée de quatre tables principales : vehicule, station, client et location. La table location est la table centrale, car elle relie les clients, les véhicules et les stations grâce à des clés étrangères. Chaque table possède une clé primaire permettant d’identifier chaque enregistrement de manière unique. Cette structure relationnelle est cohérente avec les besoins de l’entreprise, car elle permet de gérer la flotte de véhicules et de suivre précisément chaque location effectuée.

Pour construire nos requêtes, nous avons commencé par utiliser les bases du SQL comme SELECT, WHERE et ORDER BY afin de filtrer et trier les données. Pour les requêtes plus complexes, nous avons utilisé des JOIN pour relier les tables entre elles et des fonctions d’agrégation comme COUNT, AVG et GROUP BY pour produire des statistiques. Pour certains cas métier plus avancés, nous avons utilisé HAVING et LEFT JOIN afin de répondre précisément aux consignes demandées. Nous avons construit nos requêtes progressivement, en testant chaque partie afin de limiter les erreurs.

La principale difficulté rencontrée a été la prise en main de pgAdmin, dont l’interface n’est pas très intuitive au début. Il a fallu du temps pour comprendre son fonctionnement et interpréter correctement les messages d’erreur. Nous avons également rencontré quelques erreurs de syntaxe, notamment lors de l’utilisation des jointures et des regroupements.

En revanche, nous avons trouvé que le SQL est un langage logique et relativement simple à comprendre une fois les bases maîtrisées. La structure claire des requêtes nous a aidés à progresser rapidement et à mieux comprendre le fonctionnement d’une base de données relationnelle.

Ce projet nous a permis de renforcer nos compétences en SQL, de mieux comprendre la logique des bases de données et d’apprendre à justifier nos choix techniques, aussi bien à l’écrit qu’à l’oral.
