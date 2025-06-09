--Get jobs and companies from january
SELECT
    job_title_short,
    job_location,
    job_id,
    job_via
FROM
    january_jobs

UNION ALL

SELECT
    job_title_short,
    job_location,
    job_id,
    job_via
FROM
    march_jobs
   
UNION ALL

SELECT
    job_title_short,
    job_location,
    job_id,
    job_via
FROM
    april_jobs;



    SELECT DISTINCT
         job_title_short
    FROM
        job_postings_fact;



SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=9;


CREATE TABLE 
   september_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=9;


SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=10;


CREATE TABLE 
   october_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=10;

SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=10;


CREATE TABLE 
   october_jobs AS
SELECT *
FROM 
   job_postings_fact
WHERE 
    EXTRACT(MONTH FROM job_posted_date)=10;
