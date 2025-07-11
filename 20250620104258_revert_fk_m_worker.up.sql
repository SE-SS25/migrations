DROP TABLE db_migration;
DROP TABLE migration_worker;

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
    m_worker_id UUID             NOT NULL UNIQUE,
    "from"      TEXT             NOT NULL UNIQUE,
    "to"        TEXT             NOT NULL UNIQUE,
    status      MIGRATION_STATUS NOT NULL
);

CREATE TABLE migration_worker_jobs
(
    worker_id    UUID UNIQUE references migration_worker (id),
    migration_id UUID UNIQUE references db_migration (id),
    PRIMARY KEY (worker_id, migration_id)
)
