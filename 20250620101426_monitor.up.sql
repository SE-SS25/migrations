CREATE TABLE monitor
(
    id             UUID PRIMARY KEY,
    last_heartbeat TIMESTAMPTZ NOT NULL,
    url            TEXT        NOT NULL REFERENCES db_instance (url)
);
