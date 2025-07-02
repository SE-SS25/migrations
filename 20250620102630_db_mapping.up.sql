CREATE TABLE db_mapping
(
    id     UUID PRIMARY KEY default uuid_generate_v4(),
    url    TEXT NOT NULL REFERENCES db_instance (url),
    "from" TEXT NOT NULL UNIQUE,
    size   BIGINT
);
