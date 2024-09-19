SELECT 
    u.user_id,
    u.username,
    SUM(o.total_amount) AS total_spend
FROM 
    public.users u
JOIN 
    public.orders o ON u.user_id = o.user_id
WHERE 
    o.order_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY 
    u.user_id, u.username
ORDER BY 
    total_spend DESC
LIMIT 5;


