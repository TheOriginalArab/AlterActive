CREATE TABLE Daily_sessions (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  User_id INT NOT NULL,
  DATE DATE NOT NULL,
  Duration INT,
  Notes TEXT,
  Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (User_id) REFERENCES Users(ID) ON DELETE CASCADE
);

CREATE INDEX idx_daily_sessions_user_id ON Daily_sessions (User_id);

-- Daily_session.sql --> double check its usefulness. 