    SELECT
       job_title_short,
       job_location,
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York,NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact;


SELECT
COUNT(job_id) AS number_of_jobs,
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York,NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact
WHERE job_title_short = 'Data Analyst'   
GROUP BY
    location_category;



SELECT *
FROM (--subquery starts here
SELECT *
FROM job_postings_fact
WHERE EXTRACT (MONTH FROM job_posted_date)=1
) AS january_jobs;

WITH january_jobs AS  (--CTE definition starts here
SELECT *
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date)= 1
)--CTE definition Ends here

SELECT * 
FROM january_jobs;


SELECT
    company_id,
    job_no_degree_mention
FROM 
    job_postings_fact
WHERE
    job_no_degree_mention = TRUE
ORDER BY
     --company_id ASC
     company_id DESC
    



SELECT
    company_id,
    name AS company_name
FROM 
    company_dim
WHERE 
    company_id IN (
SELECT
    company_id
FROM 
    job_postings_fact
WHERE
    job_no_degree_mention = FALSE
ORDER BY
    company_id DESC)


SELECT
    company_id,
    name AS company_name
FROM 
    company_dim
WHERE 
    company_id IN (
SELECT
    company_id
FROM 
    job_postings_fact
WHERE
    job_no_degree_mention = TRUE
ORDER BY
    company_id);






/* 
Find the number of company with the most job opening.
-Get the total number of job_posting per company_id (job_postings_fact)
-Return the total number of jobs with the company name (company name)
*/

WITH company_job_count AS (SELECT 
     company_id,
     COUNT(*)
FROM 
    job_postings_fact
GROUP BY
    company_id
    )
SELECT *
FROM
   company_job_count

/* This is how CTE is written
-You insert a temporary query into a subquery "Using 'WITH' any suggested name of your choice"



/* 
Find the number of company with the most job opening.
-Get the total number of job_posting per company_id (job_postings_fact)
-Return the total number of jobs with the company name (company name)
*/

WITH company_job_count AS (SELECT 
     company_id,
     COUNT(*) AS total_jobs
FROM 
    job_postings_fact
GROUP BY
    company_id)


SELECT 
    company_dim.name AS company_name,
    company_job_count.total_jobs 
FROM 
        company_dim
LEFT JOIN 
        company_job_count ON company_job_count.company_id  = company_dim.company_id
ORDER BY total_jobs DESC;

/* This is how CTE is written
-You insert a temporary query into a subquery "Using 'WITH' any suggested name of your choice"
*/

WITH remote_job_skills AS (
  SELECT 
    skill_id,
    COUNT(*) AS skills_count
FROM
   skills_job_dim AS skills_to_job
INNER JOIN job_postings_fact AS job_postings ON job_postings.job_id = skills_to_job.job_id
WHERE 
   job_postings.job_work_from_home = TRUE  AND
   job_title_short = 'Data Analyst'
GROUP BY 
   skill_id)

SELECT 
 skills.skill_id,
 skills AS skills_name,
 skills_count
FROM 
    remote_job_skills
INNER JOIN 
   skills_dim AS skills ON skills.skill_id = remote_job_skills.skill_id
ORDER BY 
     skills_count DESC
LIMIT 10


