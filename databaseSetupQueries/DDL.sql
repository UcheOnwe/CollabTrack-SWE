
CREATE TABLE Users (
  user_id INTEGER PRIMARY KEY NOT NULL,
  username VARCHAR(15) NOT NULL UNIQUE,
  passcode VARCHAR(50) NOT NULL,
  legal_first VARCHAR(15) NOT NULL,
  legal_last VARCHAR(15),
  phone_number VARCHAR(10) NOT NULL,
  about_me VARCHAR(200),
  email VARCHAR(30) NOT NULL,
  age INTEGER
);

CREATE TABLE User_Tasks (
  task_id INTEGER PRIMARY KEY NOT NULL,
  owner_id INTEGER NOT NULL REFERENCES Users(user_id),
  task_name VARCHAR(100) NOT NULL,
  description VARCHAR(100),
  importance INTEGER,
  urgency INTEGER,
  due_date VARCHAR(10)
);

CREATE TABLE Group_Tasks (
  task_id INTEGER PRIMARY KEY NOT NULL,
  owner_id INTEGER NOT NULL REFERENCES Groups(group_id),
  name VARCHAR(25),
  description VARCHAR(100),
  importance INTEGER,
  urgency INTEGER,
  due_date VARCHAR(10)
);

CREATE TABLE Groups (
  group_id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(20),
  description VARCHAR(100),
  owner_id INTEGER NOT NULL REFERENCES Users(user_id)
);

CREATE TABLE Group_Members (
  group_id INTEGER NOT NULL REFERENCES Groups(group_id),
  user_id INTEGER NOT NULL REFERENCES Users(user_id)
);


-- ALTER TABLE User_Tasks ADD CONSTRAINT task_owner FOREIGN KEY (owner_id) REFERENCES Users(user_id);
-- ALTER TABLE Groups ADD CONSTRAINT group_owner FOREIGN KEY (owner_id) REFERENCES Users(user_id);
-- ALTER TABLE Group_Members ADD CONSTRAINT groupfk FOREIGN KEY (group_id) REFERENCES Groups(group_id);
-- ALTER TABLE Group_Members ADD CONSTRAINT userfk FOREIGN KEY (user_id) REFERENCES Users(user_id);



