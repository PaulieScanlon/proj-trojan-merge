BEGIN;

ALTER TABLE users
ADD COLUMN flag VARCHAR(255);

INSERT INTO migrations (migration_name, applied_at, status, environment)
VALUES ('add_user_flag', NOW(), 'Completed', 'production');

COMMIT;