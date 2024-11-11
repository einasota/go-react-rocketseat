-- Write your migrate up statements here
CREATE TABLE IF NOT EXISTS messages (
    "id"        uuid            PRIMARY KEY     NOT NULL    DEFAULT gen_random_uuid(),
    "room_id"   uuid                            NOT NULL,
    "message"   VARCHAR(255)                    NOT NULL,
    "reaction"  BIGINT                          NOT NULL   DEFAULT 0,
    "answered"  BOOLEAN                         NOT NULL   DEFAULT false, 

    FOREING KEY (room_id) REFERENCES rooms(id)
);
---- create above / drop below ----
DROP TABLE IF EXISTS messages;
-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.