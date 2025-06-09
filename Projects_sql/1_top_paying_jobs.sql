SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title LIKE '%Data%'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Internship'
ORDER BY
     salary_year_avg DESC
LIMIT 100;





SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title LIKE '%Data%'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Full-time'
ORDER BY
     salary_year_avg DESC
LIMIT 100






SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title LIKE '%Data%'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Contractor'
ORDER BY
     salary_year_avg DESC
LIMIT 100;



SELECT DISTINCT
   job_schedule_type
FROM
job_postings_fact;



 
 SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title LIKE '%Data%'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Temp work'
ORDER BY
     salary_year_avg DESC
LIMIT 100;     



 SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title LIKE '%Data%'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Part-time'
ORDER BY
     salary_year_avg DESC
LIMIT 100;   