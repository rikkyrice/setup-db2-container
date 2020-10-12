CREATE TABLE users (
    id VARCHAR(36) NOT NULL,
    name VARCHAR(40) NOT NULL,
    mail VARCHAR(100) NOT NULL,
    password VARCHAR(30) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    PRIMARY KEY (
        id
    )
);