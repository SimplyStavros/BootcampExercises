DROP DATABASE IF EXISTS craigs_list;

CREATE DATABASE craigs_list;

\c craigs_list

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    region_id INTEGER REFERENCES regions(id)
);

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    content TEXT,
    location TEXT,
    user_id INTEGER REFERENCES users(id),
    region_id INTEGER REFERENCES regions(id),
    category_id INTEGER REFERENCES categories(id)
);