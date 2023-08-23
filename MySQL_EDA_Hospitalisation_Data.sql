/* A smaller data subset is first uploaded via 'Table Data Import Wizard' (table named "inpatient_data")
This is for faster automatic creation of table columns
To verify proper creation of table, "SELECT" command is first used*/
SELECT * FROM inpatient_data;

/* Column is renamed due to foreign characters present*/
ALTER TABLE inpatient_data
RENAME COLUMN `ï»¿Health Service Area` TO `Health Service Area`;

/* Existing data is deleted to allow for full data upload using "LOAD DATA INFILE" command
This allows for faster upload of >2 million rows of data*/
SET SQL_SAFE_UPDATES = 0;
DELETE FROM inpatient_data
WHERE `Hospital County` <> '';
SET SQL_SAFE_UPDATES = 1;

/* Complete cleaned data is uploaded */
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hospital_Inpatient_Discharges.csv' 
INTO TABLE inpatient_data 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

/* With data uploaded, exploratory data analysis can now be performed*/

/* Comparing age group with length of stay and charges*/
SELECT `Age Group`, COUNT(`Age Group`)/1000 AS `Number of People (Thousands)`, AVG(`Total Charges`)/1000 AS `Average Total Charges (Thousands)`, AVG(`Length of Stay`) AS `Average Length of Stay (days)` FROM inpatient_data
GROUP BY `Age Group`
ORDER BY `Average Length of Stay (days)` DESC;

/* Comparing age group with payment method*/
SELECT `Age Group`, `Payment Typology 1`, COUNT(`Payment Typology 1`)/1000 AS `Number of People (Thousands)` FROM inpatient_data
GROUP BY `Age Group`, `Payment Typology 1`
ORDER BY `Number of People (Thousands)` DESC;

/* Comparing hospital location (health service area and hospital county) with charges*/
SELECT `Health Service Area`, `Hospital County`, AVG(`Total Charges`)/1000 AS `Average Total Charges (Thousands)` FROM inpatient_data
GROUP BY `Health Service Area`, `Hospital County`
ORDER BY `Average Total Charges (Thousands)` DESC;

/* Comparing type of admission with severity and charges*/
SELECT `Type of Admission`, `APR Severity of Illness Description`, `APR Severity of Illness Code`, AVG(`Total Charges`)/1000 AS `Average Total Charges (Thousands)` FROM inpatient_data
WHERE `APR Severity of Illness Description` <> '' AND `Type of Admission` NOT LIKE '%Not Available%'
GROUP BY `Type of Admission`, `APR Severity of Illness Description`, `APR Severity of Illness Code`
ORDER BY `Average Total Charges (Thousands)` DESC;

/* Comparing race with medical condition and charges*/
SELECT `Race`, `APR MDC Description`, COUNT(`APR MDC Description`)/1000 AS `Number of People (Thousands)`, AVG(`Total Charges`)/1000 AS `Average Total Charges (Thousands)` FROM inpatient_data
GROUP BY `Race`, `APR MDC Description`
ORDER BY `Race`, `Number of People (Thousands)` DESC;

/* A new table for babies (named "babies_data") is created, containing length of stay and birth weight data*/
CREATE TABLE babies_data AS
SELECT `Length of Stay`, `Birth Weight` FROM inpatient_data
WHERE `Birth Weight` <> 0;

/*Comparing length of stay of babies with birth weight
For ease of data visibility, data has been further grouped using length of stay column (increments of 10 days)*/
SELECT CONCAT(10 * ROUND(`Length of Stay`/10), '-', 10 * ROUND(`Length of Stay`/10) + 9) AS `Range of Length of Stay`, COUNT(`Birth Weight`) AS `Number of Babies`, AVG(`Birth Weight`) AS `Average Birth Weight (g)`, STDDEV(`Birth Weight`) AS `Std. Deviation of Birth Weight (g)`
FROM babies_data
GROUP BY `Range of Length of Stay`
ORDER BY `Number of Babies` DESC;
