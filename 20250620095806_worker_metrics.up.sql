CREATE TABLE worker_metrics
(
    uuid            UUID PRIMARY KEY,
    last_heartbeat  TIMESTAMP,
    uptime          INTERVAL,
    req_per_sec     INT,
    write_per_sec   INT,
    read_per_sec    INT,
    req_total       BIGINT,
    req_failed      BIGINT,
    db_availability REAL
);
