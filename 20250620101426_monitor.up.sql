CREATE TABLE monitor
(
    id             UUID PRIMARY KEY,
    last_heartbeat TIMESTAMP NOT NULL,
    url            TEXT      NOT NULL
);
