CREATE TABLE db_mapping
(
    id          UUID PRIMARY KEY,
    url         TEXT NOT NULL,
    "from"      TEXT NOT NULL UNIQUE
);
