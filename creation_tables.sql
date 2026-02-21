CREATE TABLE vehicule (
    id SERIAL PRIMARY KEY,   --permet de compter automatiquement et évite les doublons--
    marque VARCHAR(50),      --max de caractères"
    modele VARCHAR(50),
    annee INT, 
    energie VARCHAR(50),
    autonomie_km INT,
    immatriculation VARCHAR(20),
    etat VARCHAR(50),
    localisation VARCHAR(50)
);

CREATE TABLE station (
    id_station SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    ville VARCHAR(50)
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE location (
    id_location SERIAL PRIMARY KEY,
    date_debut TIMESTAMP,       --dates précises pour les heures précises des loca"
    date_fin TIMESTAMP,
    id_client INT REFERENCES client(id_client),
    id_vehicule INT REFERENCES vehicule(id), --lie la location à une voiture spécifique--
    id_station_depart INT REFERENCES station(id_station), --station de location départ--
    id_station_arrivee INT REFERENCES station(id_station) --station de location arrivée--
);