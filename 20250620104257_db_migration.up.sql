CREATE TABLE db_migration
(
    id          UUID PRIMARY KEY,
    url         TEXT             NOT NULL UNIQUE,
    m_worker_id UUID             NOT NULL UNIQUE references migration_worker (id),
    "from"      TEXT             NOT NULL UNIQUE,
    "to"        TEXT             NOT NULL UNIQUE,
    status      MIGRATION_STATUS NOT NULL
);
