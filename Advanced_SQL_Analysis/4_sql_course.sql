SELECT *
FROM(
   SELECT * 
   FROM september_jobs
   UNION ALL
   SELECT * 
   FROM october_jobs
   UNION ALL
   SELECT * 
   FROM november_jobs
)AS Quarter_1_job_postings;





SELECT 
     Quarter_1_job_postings.job_title_short,
     Quarter_1_job_postings.job_location,
     Quarter_1_job_postings.job_posted_date::DATE,
     Quarter_1_job_postings.salary_year_avg
FROM(
   SELECT * 
   FROM september_jobs
   UNION ALL
   SELECT * 
   FROM october_jobs
   UNION ALL
   SELECT * 
   FROM november_jobs
)AS Quarter_1_job_postings
WHERE
   Quarter_1_job_postings.salary_year_avg > 70000 AND 
   Quarter_1_job_postings.job_title_short = 'Machine Learning Engineer' AND
   Quarter_1_job_postings.job_location = 'India'
ORDER BY 
    Quarter_1_job_postings.salary_year_avg DESC