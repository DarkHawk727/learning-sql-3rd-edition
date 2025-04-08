SELECT DISTINCT name AS indx, tbl_name FROM sqlite_schema;
/*
-- This will be different by platform
SELECT DISTINCT table_name, index_name
FROM information_schema.statistics
WHERE table_schema = 'sakila';
*/
