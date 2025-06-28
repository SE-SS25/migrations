CREATE TABLE db_conn_err
(
    worker_id UUID REFERENCES worker_metric (id),
    db_url    TEXT REFERENCES db_mapping (url),
    fail_time TIMESTAMP NOT NULL,
    PRIMARY KEY (worker_id, db_id, fail_time)
);
