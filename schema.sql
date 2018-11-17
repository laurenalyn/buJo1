-- =======================
--      USERS TABLE
-- =======================

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    username VARCHAR(200) UNIQUE NOT NULL,
    pwhash VARCHAR(60) NOT NULL
);

CREATE TABLE entries (
    id SERIAL PRIMARY KEY,
    title TEXT,
    completed BOOLEAN,
    date_completed TIMESTAMP,
    user_id INTEGER references users (id) ON DELETE CASCADE
);