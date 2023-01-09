--Problem 1: How many rows are in the dataset?
SELECT COUNT(Community_Area_Number) as 'Number of Rows' 
FROM chicago_socioeconomic_data;

--Problem 2: How many community areas in Chicago have a hardship index greater than 50.0?
SELECT COUNT(Community_Area_Number) as 'Answer' 
FROM chicago_socioeconomic_data
WHERE HARDSHIP_INDEX>=50.0;

--Problem 3: What is the maximum value of hardship index in this dataset?
SELECT MAX(HARDSHIP_INDEX) as 'Answer' 
FROM chicago_socioeconomic_data;

--Problem 4: Which community area which has the highest hardship index?
SELECT COMMUNITY_AREA_NAME
FROM chicago_socioeconomic_data
WHERE HARDSHIP_INDEX = (SELECT MAX(HARDSHIP_INDEX) FROM chicago_socioeconomic_data);

--Problem 5: Which Chicago community areas have per-capita incomes greater than $60,000?
SELECT COMMUNITY_AREA_NAME, PER_CAPITA_INCOME
FROM chicago_socioeconomic_data
WHERE PER_CAPITA_INCOME>60000;