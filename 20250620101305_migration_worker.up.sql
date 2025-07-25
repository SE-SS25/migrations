CREATE TABLE migration_worker
(
    id              UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMPTZ NOT NULL,
    uptime          INTERVAL    NOT NULL DEFAULT '0ms',
    working_on_from TEXT,
    working_on_to   TEXT
);
