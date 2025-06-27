CREATE TABLE worker_metric
(
    id             UUID PRIMARY KEY,
    last_heartbeat TIMESTAMPTZ      NOT NULL,
    uptime         INTERVAL         NOT NULL DEFAULT '0ms',
    req_per_sec    DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    read_per_sec   DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    write_per_sec  DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    req_total      BIGINT           NOT NULL DEFAULT 0,
    req_failed     BIGINT           NOT NULL DEFAULT 0,
    db_err_rate    DOUBLE PRECISION NOT NULL DEFAULT 0.0
);
