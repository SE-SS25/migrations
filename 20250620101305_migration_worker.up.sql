CREATE TABLE migration_worker
(
    id              UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMP,
    uptime          INTERVAL,
    working_on_from TEXT,
    working_on_to   TEXT
);
