CREATE OR REPLACE TABLE salaries AS
SELECT *
FROM read_csv_auto('data/salaries.csv');
