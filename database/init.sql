CREATE TABLE seekers (
  id              SERIAL, 
  username        varchar(255) NOT NULL, 
  password_digest bytea NOT NULL, 
  time_joined     timestamp NOT NULL, 
  PRIMARY KEY (id));

CREATE TABLE cryptids (
  id           SERIAL, 
  name         varchar(255) NOT NULL, 
  flavor_text  varchar(255), 
  time_created timestamp NOT NULL, 
  PRIMARY KEY (id));

CREATE TABLE stories (
  id           SERIAL, 
  title        varchar(255) NOT NULL, 
  summary      varchar(255), 
  content      text NOT NULL, 
  time_created timestamp NOT NULL, 
  PRIMARY KEY (id));

CREATE TABLE tags (
  id    SERIAL, 
  "tag" varchar(255) NOT NULL, 
  PRIMARY KEY (id));

CREATE TABLE tags_stories (
  stories_id SERIAL, 
  tags_id    SERIAL, 
  PRIMARY KEY (stories_id, 
  tags_id));

CREATE TABLE cryptids_stories (
  cryptids_id SERIAL, 
  stories_id SERIAL, 
  PRIMARY KEY (cryptids_id, 
  stories_id)); 

CREATE TABLE active_sessions (
  session_id    SERIAL, 
  user_id       SERIAL, 
  session_token uuid NOT NULL, 
  PRIMARY KEY (session_id));

CREATE TABLE reviews (
  id            SERIAL, 
  author_id     SERIAL, 
  story_id      SERIAL, 
  body          varchar(255), 
  rating        float8, 
  time_created  timestamp NOT NULL, 
  time_modified timestamp NOT NULL, 
  PRIMARY KEY (id));

CREATE TABLE seekers_unlocked_cryptids (
  seekers_id    SERIAL, 
  cryptids_id   SERIAL, 
  time_unlocked timestamp NOT NULL, 
  PRIMARY KEY (seekers_id, 
  cryptids_id));

CREATE UNIQUE INDEX seekers_id 
  ON seekers (id);

CREATE UNIQUE INDEX seekers_username 
  ON seekers (username);

CREATE UNIQUE INDEX cryptids_id 
  ON cryptids (id);

CREATE UNIQUE INDEX cryptids_name 
  ON cryptids (name);

CREATE UNIQUE INDEX stories_id 
  ON stories (id);

CREATE INDEX stories_title 
  ON stories (title);

CREATE UNIQUE INDEX tags_id 
  ON tags (id);

CREATE UNIQUE INDEX tags_tag 
  ON tags ("tag");

CREATE UNIQUE INDEX reviews_id 
  ON reviews (id);

CREATE INDEX reviews_author_id 
  ON reviews (author_id);

CREATE INDEX reviews_story_id 
  ON reviews (story_id);

ALTER TABLE tags_stories ADD CONSTRAINT FKtags_stori356670 FOREIGN KEY (tags_id) REFERENCES tags (id);

ALTER TABLE tags_stories ADD CONSTRAINT FKtags_stori146496 FOREIGN KEY (stories_id) REFERENCES stories (id);

ALTER TABLE cryptids_stories ADD CONSTRAINT FKcryptids_s876647 FOREIGN KEY (cryptids_id) REFERENCES cryptids (id);

ALTER TABLE cryptids_stories ADD CONSTRAINT FKcryptids_s825833 FOREIGN KEY (stories_id) REFERENCES stories (id);

ALTER TABLE active_sessions ADD CONSTRAINT FKactive_ses142758 FOREIGN KEY (user_id) REFERENCES seekers (id);

ALTER TABLE reviews ADD CONSTRAINT FKreviews406383 FOREIGN KEY (author_id) REFERENCES seekers (id);

ALTER TABLE reviews ADD CONSTRAINT FKreviews445075 FOREIGN KEY (story_id) REFERENCES stories (id);

ALTER TABLE seekers_unlocked_cryptids ADD CONSTRAINT FKseekers_un950777 FOREIGN KEY (seekers_id) REFERENCES seekers (id);

ALTER TABLE seekers_unlocked_cryptids ADD CONSTRAINT FKseekers_un142214 FOREIGN KEY (cryptids_id) REFERENCES cryptids (id);

