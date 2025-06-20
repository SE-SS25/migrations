CREATE TABLE migration_workers
(
    uuid            UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMP,
    uptime          INTERVAL,
    working_on_from TEXT,
    working_on_to   TEXT
);
