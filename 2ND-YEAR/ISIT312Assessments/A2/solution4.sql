CREATE TABLE employment (
    employee_number INT,
    full_name STRING,
    -- Project record
    project_name STRING,
    percentage_contribution DOUBLE,
    programming_language STRING,
    -- Employment record
    hire_date DATE,
    salary DOUBLE,
    supervisor_employee_number INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

-- Insert sample data into the table
-- Employee 1: Assigned to multiple projects, knows multiple programming languages
INSERT INTO employment VALUES
(1, 'Dean Over a ton', 'DigiWyse', 50.0, 'Python', '2015-06-01', 90000.0, 3),
(1, 'Dean Over a ton', 'DeepThought', 100.0, 'Java', '2015-06-01', 90000.0, 3),
(1, 'Dean Over a ton', 'DeepThought', 100.0, 'C++', '2015-06-01', 90000.0, 3);

INSERT INTO employment VALUES
(2, 'Tanya Fly', 'DigiWyse', 50.0, NULL, '2017-09-10', 85000.0, 1),
(2, 'Tanya Fly', 'Whitenight', 100.0, NULL, '2017-09-10', 85000.0, 1);

INSERT INTO employment VALUES
(3, 'Ryan Tweem', NULL, NULL, 'JavaScript', '2019-11-22', 95000.0, 2),
(3, 'Ryan Tweem', NULL, NULL, 'Python', '2019-11-22', 95000.0, 2);

INSERT INTO employment VALUES
(4, 'Phil Leeson', NULL, NULL, NULL, '2020-02-15', 80000.0, NULL);

INSERT INTO employment VALUES
(5, 'Jake Mgoy', 'Armadillo', 100.0, 'Python', '2018-08-30', 78000.0, 4),
(5, 'Jake Mgoy', 'Armadillo', 100.0, 'Java', '2018-08-30', 78000.0, 4);

SELECT * FROM employment;