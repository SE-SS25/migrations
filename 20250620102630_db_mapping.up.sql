CREATE TABLE db_mapping
(
    id     UUID PRIMARY KEY,
    url    TEXT NOT NULL UNIQUE,
    "from" TEXT NOT NULL UNIQUE,
    "to"   TEXT NOT NULL UNIQUE
);
