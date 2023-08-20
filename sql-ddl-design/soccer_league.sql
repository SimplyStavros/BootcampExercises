DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;

CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    city TEXT NOT NULL
);

CREATE TABLE players
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    birthday DATE NOT NULL,
    height TEXT,
    current_team_id INTEGER REFERENCES teams(id)
);

CREATE TABLE referees
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE season
(
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
);

CREATE TABLE lineups
(
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(id),
    team_id INTEGER REFERENCES teams(id),
    match_id INTEGER REFERENCES matches(id)
);

CREATE TABLE goals
(
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(id),
    match_id INTEGER REFERENCES matches(id)
);

CREATE TABLE matches
(
    id SERIAL PRIMARY KEY,
    home_id INTEGER REFERENCES teams(id),
    away_id INTEGER REFERENCES teams(id),
    location TEXT NOT NULL,
    date DATE NOT NULL,
    start_time TEXT NOT NULL,
    season_id INTEGER REFERENCES season(id),
    head_ref_id INTEGER REFERENCES referees(id),
    first_ref_id INTEGER REFERENCES referees(id),
    second_ref_id INTEGER REFERENCES referees(id)
);

CREATE TABLE results
(
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams(id),
    match_id INTEGER REFERENCES matches(id),
    result TEXT NOT NULL
);
