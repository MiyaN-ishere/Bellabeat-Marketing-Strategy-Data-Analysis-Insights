/*Track the Number of Active Days per User*/
SELECT 
  Id,
  COUNT(DISTINCT ActivityDate) AS active_days,
  EXTRACT(WEEK FROM ActivityDate) AS week_number
FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
GROUP BY Id, week_number
ORDER BY Id, week_number;

/*Calculate Daily Engagement Rate*/
WITH daily_users AS (
  SELECT ActivityDate, COUNT(DISTINCT Id) AS active_users
  FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
  GROUP BY ActivityDate
),
total_users AS (
  SELECT COUNT(DISTINCT Id) AS total_users
  FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
)
SELECT 
  d.ActivityDate,
  d.active_users,
  t.total_users,
  ROUND((d.active_users / t.total_users) * 100, 2) AS daily_engagement_rate
FROM daily_users d, total_users t
ORDER BY ActivityDate;

/*Identify Drop-off Patterns*/
WITH last_active AS (
  SELECT Id, MAX(ActivityDate) AS last_activity
  FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
  GROUP BY Id
)
SELECT 
  Id,
  last_activity,
  DATE_DIFF(CURRENT_DATE(), last_activity, DAY) AS days_since_last_activity
FROM last_active
WHERE DATE_DIFF(CURRENT_DATE(), last_activity, DAY) > 30
ORDER BY days_since_last_activity DESC;

/*Identify Returning Users After a Break*/
WITH user_activity AS (
  SELECT 
    Id, 
    ActivityDate,
    LAG(ActivityDate) OVER (PARTITION BY Id ORDER BY ActivityDate) AS prev_activity
  FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
)
SELECT 
  Id,
  ActivityDate AS return_date,
  prev_activity,
  DATE_DIFF(ActivityDate, prev_activity, DAY) AS days_between
FROM user_activity
WHERE DATE_DIFF(ActivityDate, prev_activity, DAY) > 30
ORDER BY Id, return_date;
