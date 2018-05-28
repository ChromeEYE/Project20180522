-- Create a new database called 'crow_emp_sys_db'
-- Connect to the 'master' database to run this snippet
USE master
GO

DROP TABLE m_employee
DROP TABLE m_section
DROP TABLE m_user
DROP TABLE m_gender

-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'crow_emp_sys_db'
)
CREATE DATABASE crow_emp_sys_db

CREATE TABLE m_section(
    section_cd CHAR(2) NOT NULL PRIMARY KEY,
    seciton_nm NVARCHAR(24) NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NOT NULL,
)

CREATE TABLE m_user(
    user_id VARCHAR(24) PRIMARY KEY NOT NULL,
    password VARCHAR(32) NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME,
)

CREATE TABLE m_gender(
    gender_cd TINYINT PRIMARY KEY NOT NULL,
    gender_nm NVARCHAR(4) NOT NULL,
    created DATETIME NOT NULL,
    updated DATETIME NOT NULL,
)

CREATE TABLE m_employee (
    emp_cd CHAR(4) PRIMARY KEY NOT NULL,
    last_nm NVARCHAR(16) NOT NULL,
    first_nm NVARCHAR(16) NOT NULL,
    last_nm_kana NVARCHAR(24),
    first_nm_kana NVARCHAR(24),
    gender_cd TINYINT NOT NULL,
    birth_date DATE,
    section_cd CHAR(2),
    emp_date DATE,
    created DATETIME NOT NULL,
    updated DATETIME NOT NULL,
    FOREIGN KEY (gender_cd) REFERENCES m_gender (gender_cd),
    FOREIGN KEY (section_cd) REFERENCES m_section (section_cd)
)

GO