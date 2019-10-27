CREATE TABLE employees(
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    maddle_name VARCHAR(255),
    age INT NOT NULL, 
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed', 
    PRIMARY KEY(id)
);

-- another way:

CREATE TABLE employees2 (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);
