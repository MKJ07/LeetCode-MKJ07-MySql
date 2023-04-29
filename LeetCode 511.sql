-- 511. Game Play Analysis I

-- Write an SQL query to report the first login date for each player.
-- Return the result table in any order.


select distinct player_id, min(event_date) as first_login from activity
where player_id in (select distinct player_id from activity)
group by player_id;