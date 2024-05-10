--distribution of video counts across various channel categories for different subscriber ranges.
SELECT videoCategoryId, COUNT(CASE WHEN subscriberCount < 1000 THEN 1 ELSE NULL END) AS videos_under_1k,
       COUNT(CASE WHEN subscriberCount BETWEEN 1000 AND 10000 THEN 1 ELSE NULL END) AS videos_between_1k_10k,
       COUNT(CASE WHEN subscriberCount > 10000 THEN 1 ELSE NULL END) AS videos_over_10k
FROM yt
GROUP BY videoCategoryId
ORDER BY videoCategoryId;