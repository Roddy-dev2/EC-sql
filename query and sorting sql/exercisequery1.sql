-- activity 1a select all from locations table

SELECT * FROM locations;
-- 7 rows returned

-- activity 1b 3 columns and be specifiic about where primary key is from
SELECT locations.location_id, city, state_province FROM locations;
-- 7 rows returned

-- 1c select a range from the jobs table
SELECT job_id, job_title, min_salary FROM jobs WHERE min_salary BETWEEN 4000 AND 8000;
-- returned 9 rows

-- 1d use alias on table name
select l.location_id, city, postal_code as 'zip code' from locations l;
-- returned 7 rows


-- 