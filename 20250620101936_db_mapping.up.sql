CREATE TABLE database_mapping
(
    url    TEXT,
    "from" TEXT UNIQUE,
    "to"   TEXT UNIQUE,
    PRIMARY KEY ("from", "to")
);
