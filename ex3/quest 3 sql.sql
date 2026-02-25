SELECT l.id_location, l.date_debut, c.nom, c.prenom
FROM location l 
JOIN client c ON l.id_client = c.id_client; --liaison de la table location et client via l'id du client-- 

SELECT l.id_location, v.marque, v.modele
FROM location l
JOIN vehicule v on l.id_vehicule = v.id; --liaison de la table location et vehicule via l'id du vehicule--

SELECT	
	l.idlocation,
	s1.nom AS station_depart,
	s2.nom AS station_arrivee
FROM location l 
JOIN station s1 ON l.id_station_depart = s1.id_station
JOIN station s2 on l.id_station_arrivee = s2.id_station;
--jointures sur la table station avec les alias s1 et s2, pour afficher la station de départ et d'arrivée--