CREATE TABLE controller_status
(
    scaling        BOOL        NOT NULL DEFAULT false,
    last_heartbeat TIMESTAMPTZ NOT NULL
);
