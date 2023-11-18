/*
    Instructions: Build SQL Queries for each SCREEN designed in your Balsamiq project.
    You must include one or more SELECT, INSERT, UPDATE, or DELETE queries where appropriate in your design.
    These queries will be re-executed/verified in your Physical Design restored from your .bak file.


    Student Name: Naramsetty Easwar Manikanta Srinivas
    Date: 28-10-2022
    Assignment:Hospital Database Management
    Description of Assignment: SQL queries for Balsamic Screens

*/

-- SCREEN 13 SQL Queries
--Query to insert a new patient
INSERT INTO dbo.Patient VALUES ('William','Kane',39,14202,'Knob Hill','Tampa','Florida','33613-6494')

-- SCREEN 20 SQL Queries
--Query to get Doctor Details
SELECT d.Doctor_Number,d.Doctor_First_Name,d.Doctor_Last_Name,d.Department_Number,d.Backup_Doctor_Number, d.Office_Number,d.Telephone,deg.Degree_Type, deg.Major, deg.University 
from dbo.Doctor AS d INNER JOIN dbo.Degree AS deg ON d.Doctor_Number = deg.Doctor_Number where d.Doctor_Number = 6

-- SCREEN 27 SQL Queries
--Query to delete a nurse
DELETE FROM dbo.Nurse WHERE Nurse_Number=103

-- SCREEN 21 SQL Queries
--Query to get the details of Patient by providing Patient_Number
SELECT * FROM dbo.Patient WHERE Patient_Number=4

-- SCREEN 24 SQL Queries
--Query to update Backup_Doctor_Number for a doctor having Doctor_Number=10
UPDATE dbo.Doctor SET Backup_Doctor_Number=1 WHERE Doctor_Number=10