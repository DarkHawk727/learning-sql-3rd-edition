SELECT tens.num + ones.num AS n
FROM (
    SELECT 0 AS num
    UNION ALL
    SELECT 1 AS num
    UNION ALL
    SELECT 2 AS num
    UNION ALL
    SELECT 3 AS num
    UNION ALL
    SELECT 4 AS num
    UNION ALL
    SELECT 5 AS num
    UNION ALL
    SELECT 6 AS num
    UNION ALL
    SELECT 7 AS num
    UNION ALL
    SELECT 8 AS num
    UNION ALL
    SELECT 9 AS num
    UNION ALL
    SELECT 10 AS num
) AS ones
CROSS JOIN (
    SELECT 0 as num
    UNION ALL
    SELECT 10 AS num
    UNION ALL
    SELECT 20 AS num
    UNION ALL
    SELECT 30 AS num
    UNION ALL
    SELECT 40 AS num
    UNION ALL
    SELECT 50 AS num
    UNION ALL
    SELECT 60 AS num
    UNION ALL
    SELECT 70 AS num
    UNION ALL
    SELECT 80 AS num
    UNION ALL
    SELECT 90 AS num
) as tens
ORDER BY n;
