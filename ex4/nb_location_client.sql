SELECT id_client, COUNT(*) AS nombre_locations
FROM location
GROUP BY id_client
ORDER BY nombre_locations DESC;