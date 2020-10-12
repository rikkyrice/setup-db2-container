CREATE TABLE replys (
    id VARCHAR(36) NOT NULL,
    tweet_id VARCHAR(36) NOT NULL,
    user_id VARCHAR(36) NOT NULL,
    body VARCHAR(300),
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY (
        id
    ),

    FOREIGN KEY (tweet_id) REFERENCES tweets(id)
        ON DELETE CASCADE
        ON UPDATE NO ACTION,
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
        ON UPDATE NO ACTION
);