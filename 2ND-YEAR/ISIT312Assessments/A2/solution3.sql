create table
    degree (
        degree_id INT,
        name VARCHAR(30),
        years INT
    ) row format delimited fields terminated by ',' stored as textfile;

load data local inpath '/home/bigdata/Desktop/degrees.tbl' into table degree;

create table
    school (
        school_id INT,
        name VARCHAR(30),
        budget DECIMAL(10, 2)
    ) row format delimited fields terminated by ',' stored as textfile;

LOAD DATA local INPATH '/home/bigdata/Desktop/schools.tbl' INTO TABLE school;

create table
    student (
        student_id INT,
        snum INT,
        school_id INT,
        first_name VARCHAR(30),
        last_name VARCHAR(30)
    ) row format delimited fields terminated by ',' stored as textfile;;

LOAD DATA local INPATH '/home/bigdata/Desktop/students.tbl' INTO TABLE student;

create table
    subject (
        subject_id INT,
        code VARCHAR(30),
        degree_id INT,
        title VARCHAR(30),
        credits DECIMAL(3)
    ) row format delimited fields terminated by ',' stored as textfile;;

LOAD DATA local INPATH '/home/bigdata/Desktop/subjects.tbl' INTO TABLE subject;

CREATE TABLE
    enrolment (
        student_id INT,
        subject_id INT,
        grade DECIMAL(3),
        fee DECIMAL(3),
        day INT,
        month INT,
        year INT
    ) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

LOAD DATA local INPATH '/home/bigdata/Desktop/enrolments.tbl' INTO TABLE enrolment;

SELECT
    *
FROM
    degree;

SELECT
    *
FROM
    school;

SELECT
    *
FROM
    student;

SELECT
    *
FROM
    subject;

SELECT
    *
FROM
    enrolment;

