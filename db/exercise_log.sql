CREATE TABLE Exercise_logs (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Session_id INT NOT NULL,
  Exercise_id INT NOT NULL,
  Sets INT,
  Repetitions INT,
  Weight_used DECIMAL(5, 2),
  Duration INT,
  Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (Session_id) REFERENCES Daily_sessions(ID),
  FOREIGN KEY (Exercise_id) REFERENCES Exercises(ID)
);

CREATE INDEX idx_exercise_logs_session_id ON Exercise_logs (Session_id);
CREATE INDEX idx_exercise_logs_exercise_id ON Exercise_logs (Exercise_id);