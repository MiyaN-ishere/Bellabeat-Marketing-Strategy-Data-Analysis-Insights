/*Check for Duplicates*/
-- Check duplicates in dailyActivity
SELECT 'dailyActivity' AS table_name, Id, ActivityDate, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

-- Check duplicates in hourlyCalories
SELECT 'hourlyCalories' AS table_name, Id, ActivityHour, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories`
GROUP BY Id, ActivityHour
HAVING COUNT(*) > 1;

-- Check duplicates in hourlyIntensities
SELECT 'hourlyIntensities' AS table_name, Id, ActivityHour, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities`
GROUP BY Id, ActivityHour
HAVING COUNT(*) > 1;

-- Check duplicates in hourlySteps
SELECT 'hourlySteps' AS table_name, Id, ActivityHour, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlySteps`
GROUP BY Id, ActivityHour
HAVING COUNT(*) > 1;

-- Check duplicates in minuteCaloriesNarrow
SELECT 'minuteCaloriesNarrow' AS table_name, Id, ActivityMinute, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteCaloriesNarrow`
GROUP BY Id, ActivityMinute
HAVING COUNT(*) > 1;

-- Check duplicates in minuteIntensitiesNarrow
SELECT 'minuteIntensitiesNarrow' AS table_name, Id, ActivityMinute, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteIntensitiesNarrow`
GROUP BY Id, ActivityMinute
HAVING COUNT(*) > 1;

-- Check duplicates in minuteMETsNarrow
SELECT 'minuteMETsNarrow' AS table_name, Id, ActivityMinute, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteMETsNarrow`
GROUP BY Id, ActivityMinute
HAVING COUNT(*) > 1;

-- Check duplicates in minuteSleep
SELECT 'minuteSleep_merged' AS table_name, Id, date, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged`
GROUP BY Id, date
HAVING COUNT(*) > 1;

-- Check duplicates in minuteStepsNarrow
SELECT 'minuteStepsNarrow' AS table_name, Id, ActivityMinute, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteStepsNarrow`
GROUP BY Id, ActivityMinute
HAVING COUNT(*) > 1;

-- Check duplicates in weightLogInfo
SELECT 'weightLogInfo' AS table_name, Id, Date, COUNT(*) AS duplicate_count
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`
GROUP BY Id, Date
HAVING COUNT(*) > 1;

/*Check for Missing (NULL) Values*/
SELECT 
  'dailyActivity' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityDate IS NULL THEN 1 ELSE 0 END) AS null_ActivityDate,
  SUM(CASE WHEN TotalSteps IS NULL THEN 1 ELSE 0 END) AS null_TotalSteps,
  SUM(CASE WHEN Calories IS NULL THEN 1 ELSE 0 END) AS null_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`;

SELECT 
  'hourlyCalories' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityHour IS NULL THEN 1 ELSE 0 END) AS null_ActivityHour,
  SUM(CASE WHEN Calories IS NULL THEN 1 ELSE 0 END) AS null_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories`;

SELECT 
  'hourlyIntensities' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityHour IS NULL THEN 1 ELSE 0 END) AS null_ActivityHour,
  SUM(CASE WHEN TotalIntensity IS NULL THEN 1 ELSE 0 END) AS null_TotalIntensity
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities`;

SELECT 
  'hourlySteps' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityHour IS NULL THEN 1 ELSE 0 END) AS null_ActivityHour,
  SUM(CASE WHEN StepTotal IS NULL THEN 1 ELSE 0 END) AS null_StepTotal
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlySteps`;

SELECT 
  'minuteCaloriesNarrow' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityMinute IS NULL THEN 1 ELSE 0 END) AS null_ActivityMinute,
  SUM(CASE WHEN Calories IS NULL THEN 1 ELSE 0 END) AS null_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteCaloriesNarrow`;

SELECT 
  'minuteIntensitiesNarrow' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityMinute IS NULL THEN 1 ELSE 0 END) AS null_ActivityMinute,
  SUM(CASE WHEN Intensity IS NULL THEN 1 ELSE 0 END) AS null_Intensity
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteIntensitiesNarrow`;

SELECT 
  'minuteMETsNarrow' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityMinute IS NULL THEN 1 ELSE 0 END) AS null_ActivityMinute,
  SUM(CASE WHEN METs IS NULL THEN 1 ELSE 0 END) AS null_METs
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteMETsNarrow`;

SELECT 
  'minuteSleep_merged' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS null_date,
  SUM(CASE WHEN Value IS NULL THEN 1 ELSE 0 END) AS null_SleepValue
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged`;

SELECT 
  'minuteStepsNarrow' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN ActivityMinute IS NULL THEN 1 ELSE 0 END) AS null_ActivityMinute,
  SUM(CASE WHEN Steps IS NULL THEN 1 ELSE 0 END) AS null_Steps
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteStepsNarrow`;

SELECT 
  'weightLogInfo' AS table_name,
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Id IS NULL THEN 1 ELSE 0 END) AS null_Id,
  SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END) AS null_Date,
  SUM(CASE WHEN WeightKg IS NULL THEN 1 ELSE 0 END) AS null_WeightKg,
  SUM(CASE WHEN Fat IS NULL THEN 1 ELSE 0 END) AS null_Fat,
  SUM(CASE WHEN BMI IS NULL THEN 1 ELSE 0 END) AS null_BMI
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`;

/*Check Incorrect Data Types*/
SELECT 
  'dailyActivity' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityDate AS DATE) IS NULL) AS invalid_ActivityDate,
  COUNTIF(SAFE_CAST(TotalSteps AS INT64) IS NULL) AS invalid_TotalSteps,
  COUNTIF(SAFE_CAST(Calories AS INT64) IS NULL) AS invalid_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`;

SELECT 
  'hourlyCalories' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityHour AS TIMESTAMP) IS NULL) AS invalid_ActivityHour,
  COUNTIF(SAFE_CAST(Calories AS FLOAT64) IS NULL) AS invalid_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories`;

SELECT 
  'hourlyIntensities' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityHour AS TIMESTAMP) IS NULL) AS invalid_ActivityHour,
  COUNTIF(SAFE_CAST(TotalIntensity AS INT64) IS NULL) AS invalid_TotalIntensity
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities`;

SELECT 
  'hourlySteps' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityHour AS TIMESTAMP) IS NULL) AS invalid_ActivityHour,
  COUNTIF(SAFE_CAST(StepTotal AS INT64) IS NULL) AS invalid_StepTotal
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlySteps`;

SELECT 
  'minuteCaloriesNarrow' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityMinute AS TIMESTAMP) IS NULL) AS invalid_ActivityMinute,
  COUNTIF(SAFE_CAST(Calories AS FLOAT64) IS NULL) AS invalid_Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteCaloriesNarrow`;

SELECT 
  'minuteIntensitiesNarrow' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityMinute AS TIMESTAMP) IS NULL) AS invalid_ActivityMinute,
  COUNTIF(SAFE_CAST(Intensity AS INT64) IS NULL) AS invalid_Intensity
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteIntensitiesNarrow`;

SELECT 
  'minuteMETsNarrow' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityMinute AS TIMESTAMP) IS NULL) AS invalid_ActivityMinute,
  COUNTIF(SAFE_CAST(METs AS FLOAT64) IS NULL) AS invalid_METs
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteMETsNarrow`;

SELECT 
  'minuteSleep_merged' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(date AS TIMESTAMP) IS NULL) AS invalid_Timestamp,
  COUNTIF(SAFE_CAST(Value AS INT64) IS NULL) AS invalid_SleepValue
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged`;

SELECT 
  'minuteStepsNarrow' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(ActivityMinute AS TIMESTAMP) IS NULL) AS invalid_ActivityMinute,
  COUNTIF(SAFE_CAST(Steps AS INT64) IS NULL) AS invalid_Steps
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteStepsNarrow`;

SELECT 
  'weightLogInfo' AS table_name,
  COUNT(*) AS total_rows,
  COUNTIF(SAFE_CAST(Id AS INT64) IS NULL) AS invalid_Id,
  COUNTIF(SAFE_CAST(Date AS TIMESTAMP) IS NULL) AS invalid_Date,
  COUNTIF(SAFE_CAST(WeightKg AS FLOAT64) IS NULL) AS invalid_WeightKg,
  COUNTIF(SAFE_CAST(Fat AS FLOAT64) IS NULL) AS invalid_Fat,
  COUNTIF(SAFE_CAST(BMI AS FLOAT64) IS NULL) AS invalid_BMI
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`;

/* check for outliers and inconsistent values*/
-- Check for unrealistic Total Steps (>50,000) or negative values
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.dailyActivity`
WHERE TotalSteps > 50000 OR TotalSteps < 0;

-- Check for unrealistic Calories (>10,000) or negative values
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories`
WHERE Calories > 10000 OR Calories < 0;

-- Check for unrealistic Sleep Minutes (>1440 minutes in a day) or negative values
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged`
WHERE value > 1440 OR value < 0;

-- Check for extreme Weight (Assuming realistic range: 30-250 kg)
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`
WHERE WeightKg > 250 OR WeightKg < 30;

-- Check for extreme BMI (Realistic range: 10-50)
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`
WHERE BMI > 50 OR BMI < 10;

-- Check for negative TotalIntensity values in hourlyIntensities
SELECT * 
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities`
WHERE TotalIntensity < 0 OR AverageIntensity < 0;

/*Fix data types issues*/
CREATE OR REPLACE TABLE `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo` AS
SELECT 
  Id,
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %I:%M %p', Date), 
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %H:%M', Date)
  ) AS Date,
  WeightKg,
  WeightPounds,
  Fat,
  BMI,
  IsManualReport,
  LogId
FROM `useful-flame-450100-s0.Bellabeat_casestudy.weightLogInfo`;

CREATE OR REPLACE TABLE `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged` AS
SELECT 
  Id,
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %I:%M %p', date), 
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %H:%M', date)
  ) AS date,
  value,
  logId
FROM `useful-flame-450100-s0.Bellabeat_casestudy.minuteSleep_merged`;

CREATE OR REPLACE TABLE `useful-flame-450100-s0.Bellabeat_casestudy.hourlySteps` AS
SELECT 
  Id,
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %I:%M %p', ActivityHour), 
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %H:%M', ActivityHour)
  ) AS ActivityHour,
  StepTotal
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlySteps`;

CREATE OR REPLACE TABLE `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities` AS
SELECT 
  Id,
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %I:%M %p', ActivityHour), 
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %H:%M', ActivityHour)
  ) AS ActivityHour,
  TotalIntensity,
  AverageIntensity
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyIntensities`;

CREATE OR REPLACE TABLE `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories` AS
SELECT 
  Id,
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %I:%M %p', ActivityHour), 
    SAFE.PARSE_TIMESTAMP('%m/%d/%Y %H:%M', ActivityHour)
  ) AS ActivityHour,
  Calories
FROM `useful-flame-450100-s0.Bellabeat_casestudy.hourlyCalories`;
