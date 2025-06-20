CREATE TABLE db_conn_error
(
    worker_id    UUID REFERENCES worker_metric (id),
    db_id        UUID REFERENCES database_metric (id),
    failure_time TIMESTAMP,
    PRIMARY KEY (worker_id, db_id, failure_time)
);
