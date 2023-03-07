-- exercise is to select all from medical
-- my db is stored as sqlcoursemedical.sql
-- the following code will be copy/paste into phpmyadmin
-- results will be in results subfolder

-- 2a select something from tbldoctors
select LastName, Postcode, HomePhone from tbldoctors;
-- reurned 4 rows

-- 2b with distcint keyword
select DISTINCT LastName, Postcode, HomePhone from tbldoctors;
-- returned 4 rows



-- 2c select something from tblpatient
select FirstName, Gender, County from tblpatient;
--returned 25 rows
-- 2d
select DISTINCT FirstName, Gender, County from tblpatient;
--returned 22 rows


-- 2e select something from tblreceptionist
select County, FirstName, LastName from tblreceptionist;
-- returned 5 rows

-- 2f now repeat with distinct keyword
select DISTINCT County, FirstName, LastName from tblreceptionist;
-- returned 5 rows, no change from above
