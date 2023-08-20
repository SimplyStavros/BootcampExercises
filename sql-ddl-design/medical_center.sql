DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    insurance TEXT NOT NULL,
    date_of_birth TEXT NOT NULL
);

CREATE TABLE illness
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT
);

CREATE TABLE diagnosis
(
    id SERIAL PRIMARY KEY,
    visit_id INTEGER REFERENCES visits(id),
    illness_id INTEGER REFERENCES illness(id),
    notes TEXT
);

CREATE TABLE visits
(
    id SERIAL PRIMARY KEY,
    doctor_id INTEGER REFERENCES doctors(id),
    patient_id INTEGER REFERENCES patients(id),
    date TEXT
);