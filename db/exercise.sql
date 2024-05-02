CREATE TABLE Exercises (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Description TEXT,
  Duration INT,
  Category ENUM('Weightlifting', 'Cardio', 'Other'),
  Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_exercises_name ON Exercises (Name);