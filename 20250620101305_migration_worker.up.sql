CREATE TABLE migration_worker
(
    id              UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMP NOT NULL,
    uptime          INTERVAL  NOT NULL DEFAULT '0ms',
    working_on_from TEXT      NOT NULL,
    working_on_to   TEXT      NOT NULL
);
