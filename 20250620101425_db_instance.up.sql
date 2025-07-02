CREATE TABLE db_instance
(
    url              TEXT PRIMARY KEY,
    created          TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    max_space        BIGINT      NOT NULL, --size in bytes; maybe default?
    occupied_space   BIGINT,               --in bytes
    collection_count BIGINT,
    last_queried     TIMESTAMPTZ
);
