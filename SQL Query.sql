CREATE DATABASE hr_attrition;
USE hr_attrition;

SELECT * FROM hr_data
LIMIT 10;

-- What percentage of employees left the company?

SELECT ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data;

-- Total number of employees who left the company

SELECT COUNT(*) AS TotalEmployeesLeft
FROM hr_data
WHERE Attrition = 1;

-- Department-wise attrition rate

SELECT Department,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY Department
ORDER BY AttritionRate DESC;

-- Job Role-wise Attrition Rate

SELECT JobRole,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY JobRole
ORDER BY AttritionRate DESC;

-- Attrition rate based on overtime

SELECT OverTime,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY OverTime
ORDER BY AttritionRate DESC;

-- Average monthly income of employees based on attrition

SELECT Attrition,ROUND(AVG(MonthlyIncome),2) AS AvgIncome
FROM hr_data
GROUP BY Attrition
ORDER BY AvgIncome DESC;

-- Attrition rate based on Salary Slab

SELECT SalarySlab,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY SalarySlab
ORDER BY AttritionRate DESC;

-- Attrition rate based on Job Satisfaction

SELECT JobSatisfaction,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction ASC;

-- Attrition rate by Age Group

SELECT AgeGroup,ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY AgeGroup
ORDER BY AttritionRate DESC;

-- Attrition rate by Experience Level

SELECT ExperienceLevel,
ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY ExperienceLevel
ORDER BY AttritionRate DESC;

-- Attrition rate based on Work-Life Balance

SELECT WorkLifeBalance,
ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance ASC;

-- Attrition rate based on Business Travel frequency

SELECT BusinessTravel,
ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY BusinessTravel
ORDER BY AttritionRate DESC;

-- Attrition rate based on Tenure Group

SELECT TenureGroup,
ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY TenureGroup
ORDER BY AttritionRate DESC;

-- Attrition rate based on Years Since Last Promotion

SELECT YearsSinceLastPromotion,
ROUND(AVG(Attrition)*100,2) AS AttritionRate
FROM hr_data
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion ASC;

-- Top high-risk department and job role combinations with highest attrition

SELECT Department, 
JobRole,
ROUND(AVG(Attrition)*100,2)
AS AttritionRate
FROM hr_data
GROUP BY Department, JobRole
ORDER BY AttritionRate DESC 