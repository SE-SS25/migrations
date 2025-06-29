CREATE TABLE db_conn_err
(
    err_id    UUID PRIMARY KEY,
    worker_id UUID REFERENCES worker_metric (id),
    db_url    TEXT REFERENCES db_mapping (url),
    fail_time TIMESTAMPTZ NOT NULL
);
