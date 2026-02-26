SELECT marque, modele, autonomie_km, etat
FROM vehicule
WHERE etat = 'Disponible'
ORDER BY autonomie_km DESC
LIMIT 3;
--affichage des 3 véhicules les plus autonomes et qui sont dispo--

SELECT localisation, COUNT(*) AS nb_dispo
FROM vehicule 
WHERE etat = 'Disponible'
GROUP BY localisation 
ORDER BY nb_dispo DESC
LIMIT 1;
--on compte les véhicules par ville puis on les trie par le compte et on prend le premier--

SELECT c.nom, C.prenom, COUNT(l.id_location) AS total_location
FROM client c
JOIN location l ON c.id_client = l.id_client
GROUP BY c.id_client, c.nom, c.prenom
HAVING COUNT (l.id_location) >= 2;
--utilisation de havi,g pour filtrer les résultats de calcul du count; affichage des clients ayant effectueé au min 2 location"

SELECT v.marque, v.modele, v.imatriculation
FROM vehicule v
LEFT JOIN location l ON v.id = l.id_vehicule
Where l.id_location IS NULL;
-- affichage des vehicules qui n'ont jamais été loué; left join: on cherche les vehicule qui n'ont pas de correspondance dans la table location"