CREATE TABLE users (
  id          SERIAL PRIMARY KEY,
  first_name  VARCHAR(255) NOT NULL,
  last_name   VARCHAR(255) NOT NULL,
  email       VARCHAR(255) NOT NULL UNIQUE,
  country     VARCHAR(255) NOT NULL
);

CREATE TABLE migrations (
   migration_id    SERIAL PRIMARY KEY,  
   migration_name  VARCHAR(255) NOT NULL, 
   applied_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
   status          VARCHAR(50) NOT NULL,  
   environment     VARCHAR(50) NOT NULL  
);