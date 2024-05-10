WITH SubscriberGroups AS (
    SELECT
        CASE 
            WHEN subscriberCount > 80000 THEN 'Above 80k subscribers'
            ELSE 'Below 80k subscribers'
        END AS subscriber_group,
        COUNT(*) AS channel_count
    FROM yt
    GROUP BY 
        CASE 
            WHEN subscriberCount > 80000 THEN 'Above 80k subscribers'
            ELSE 'Below 80k subscribers'
        END
)

SELECT 
    subscriber_group,
    channel_count,
    ROUND((channel_count * 100.0) / SUM(channel_count) OVER(), 2) AS percentage
FROM SubscriberGroups;