ALTER TABLE db_conn_err
    ALTER COLUMN err_id
        SET DEFAULT uuid_generate_v4();
