CREATE TABLE db_mapping
(
    id     UUID PRIMARY KEY,
    url    TEXT NOT NULL REFERENCES db_instance (url),
    "from" TEXT NOT NULL UNIQUE,
    size   BIGINT
);
