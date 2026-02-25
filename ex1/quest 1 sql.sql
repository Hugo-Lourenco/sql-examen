SELECT * FROM vehicule -- selectionne tout les véhicule--

SELECT * FROM vehicule
WHERE etat = 'Disponible'; --selectionne tout les véhicules dispo--

SELECT * FROM vehicule
WHERE localisation = 'Strasbourg' --selectionne tout les véhicules à Strasbourg--

SELECT * FROM vehicule  --selectionne tout les véhicules ayant une autonomie supérieur à 400km--
WHERE autonomie_km > 400;