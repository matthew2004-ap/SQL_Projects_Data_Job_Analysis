SELECT *
FROM skills_job_dim
LIMIT 100;


SELECT job_posted_date
FROM job_postings_fact
LIMIT 30;

SELECT
   job_title_short AS title,
   job_location AS location,
   job_posted_date AS Date 
FROM job_postings_fact;


SELECT
   job_title_short AS title,
   job_location AS location,
   job_posted_date ::DATE AS Date 
FROM job_postings_fact;


SELECT
   job_title_short AS title,
   job_location AS location,
   job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
   EXTRACT(MONTH FROM job_posted_date) AS month,
   EXTRACT(YEAR FROM job_posted_date) AS year
FROM job_postings_fact
LIMIT 15;


SELECT
   job_id,
   EXTRACT(MONTH FROM job_posted_date) AS month
FROM job_postings_fact
LIMIT 30;


SELECT
  COUNT (job_id),
   EXTRACT(MONTH FROM job_posted_date) AS month
FROM job_postings_fact
GROUP BY
      month;                            


SELECT
   COUNT (job_id) AS job_posted_counts,
   EXTRACT(MONTH FROM job_posted_date) AS month
FROM 
   job_postings_fact
WHERE
   job_title_short = 'Data Analyst'
GROUP BY
   month  
ORDER BY
   job_posted_counts DESC ;


SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=1;


CREATE TABLE 
   january_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=1;


CREATE TABLE 
   march_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=3;



CREATE TABLE 
   april_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=4;
  

SELECT 
    job_posted_date
FROM 
   march_jobs;


SELECT
     job_location,
     job_title_short
FROM 
   job_postings_fact