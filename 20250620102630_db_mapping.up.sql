CREATE TABLE db_mapping
(
    id          UUID PRIMARY KEY,
    m_worker_id UUID NOT NULL UNIQUE references migration_worker (id),
    url         TEXT NOT NULL,
    "from"      TEXT NOT NULL UNIQUE,
    "to"        TEXT NOT NULL UNIQUE
);
