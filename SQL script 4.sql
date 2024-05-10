--proportion of dislikes per view for each video category
SELECT videoCategoryId, SUM(videoDislikeCount) / SUM(videoViewCount) AS total_dislikes_per_view
FROM yt
GROUP BY videoCategoryId
ORDER BY total_dislikes_per_view DESC;