CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE IF NOT EXISTS Roles (
    id SERIAL PRIMARY KEY,
    read VARCHAR(128),
    modify VARCHAR(128)
);

CREATE TABLE IF NOT EXISTS LoginDetails (
    id SERIAL PRIMARY KEY,
    username VARCHAR(128) UNIQUE NOT NULL,
    password VARCHAR(512) NOT NULL
);

-- INSERT INTO LoginDetails(username, password) VALUES ('lokesh', digest('supersecretpassowrd', 'sha512'));