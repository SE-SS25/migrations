CREATE TABLE monitor
(
    id             UUID PRIMARY KEY,
    last_heartbeat TIMESTAMP,
    url            TEXT NOT NULL
);
