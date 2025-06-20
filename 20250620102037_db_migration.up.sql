CREATE TABLE migration
(
    url    TEXT,
    "from" TEXT UNIQUE,
    "to"   TEXT UNIQUE,
    PRIMARY KEY ("from", "to")
);
