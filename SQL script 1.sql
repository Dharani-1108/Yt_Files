SELECT channelelapsedtime, SUM(totalviews) AS total_views
FROM dataset_table
GROUP BY channelelapsedtime
ORDER BY channelelapsedtime;