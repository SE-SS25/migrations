CREATE TABLE db_conn_err
(
    worker_id UUID REFERENCES worker_metric (id),
    db_id     UUID REFERENCES db_mapping (id),
    fail_time TIMESTAMP NOT NULL,
    PRIMARY KEY (worker_id, db_id, fail_time)
);
