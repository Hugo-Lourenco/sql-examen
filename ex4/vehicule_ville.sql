SELECT localisation, COUNT(*) AS nombre_vehicules
FROM vehicule
GROUP BY localisation
ORDER BY nombre_vehicules DESC;