-- Add down migration script here
DROP TABLE migration_worker;
DROP TABLE db_migration;

CREATE TABLE migration_worker
(
    id              UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMPTZ NOT NULL,
    uptime          INTERVAL    NOT NULL DEFAULT '0ms',
    working_on_from TEXT,
    working_on_to   TEXT
);

CREATE TABLE db_migration
(
    id          UUID PRIMARY KEY,
    url         TEXT             NOT NULL UNIQUE,
    m_worker_id UUID             NOT NULL UNIQUE references migration_worker (id),
    "from"      TEXT             NOT NULL UNIQUE,
    "to"        TEXT             NOT NULL UNIQUE,
    status      MIGRATION_STATUS NOT NULL
);
