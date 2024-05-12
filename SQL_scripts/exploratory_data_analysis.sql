/* Exploratory Data Analysis -  FLores Ledezma Fabricio Lennart - 12/05/2024 */

/* Looking the number of rows in the table */
SELECT
	"The number of rows is:",
	COUNT(*),
	"And the number of columns is:"
FROM
	sales_data;
-- RETURN 2823

/* Looking the number of columns in the table and therir data types */
pragma table_info(sales_data);

/* Columns with null values */
SELECT
	SUM(CASE WHEN address_line2 IS NULL THEN 1 ELSE 0 END) AS address_line2_nulls,
	SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS state_nulls,
	SUM(CASE WHEN postal_code IS NULL THEN 1 ELSE 0 END) AS postal_code_nulls
FROM
    sales_data;
    
/* Descriptive stadistics */
select * from sales_data sd 