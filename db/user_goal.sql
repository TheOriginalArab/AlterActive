CREATE TABLE User_goals (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  User_id INT NOT NULL,
  Exercise_id INT NOT NULL,
  Weight_goal DECIMAL(5, 2),
  Current_weight DECIMAL(5, 2),
  Duration_goal INT,
  Current_duration INT,
  Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (User_id) REFERENCES Users(ID),
  FOREIGN KEY (Exercise_id) REFERENCES Exercises(ID)
);

CREATE INDEX idx_user_goals_user_id ON User_goals (User_id);