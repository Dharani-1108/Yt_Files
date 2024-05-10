--average number of likes per video across different years
SELECT YEAR(videoPublished) AS publish_year, AVG(videoLikeCount) AS avg_likes_per_video
FROM yt
WHERE videoPublished IS NOT NULL
GROUP BY YEAR(videoPublished)
ORDER BY publish_year;