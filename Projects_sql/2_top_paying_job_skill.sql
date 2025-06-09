 WITH top_paying_jobs AS (
   SELECT
    job_id,
    job_title,
    --job_location,
   -- job_schedule_type,
    --job_posted_date,
    salary_year_avg,
    NAME AS company_name
FROM
    job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
     job_title ='Data Analyst'AND
     job_location ='Anywhere' AND
     salary_year_avg IS NOT NULL AND
     job_schedule_type ='Full-time'
ORDER BY
     salary_year_avg DESC
LIMIT 100  
 )

 SELECT
 top_paying_jobs.*,
 skills
 FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
ORDER BY 
     salary_year_avg DESC




 /*    Here is a bar chart showing the top 10 in-demand skills for data analyst roles in 2023. As you can see:

SQL clearly leads the list.

Python and Tableau are nearly tied, showing strong demand for both programming and data visualization.

Excel, R, and SAS indicate continued value for statistical and spreadsheet tools.

Power BI and Looker reinforce the need for modern BI tools knowledge
*/


INSERT INTO images (top_skills, c:\Users\Sean\Downloads\top_skills)
VALUES ('top_skills', c:\Users\Sean\OneDrive\Attachments\Pictures\top_skills.jpg);


[
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 456042,
    "job_title": "Data Analyst",
    "salary_year_avg": "151500.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "sql"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "python"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "r"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "golang"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "elasticsearch"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "aws"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "bigquery"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "gcp"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "pandas"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "scikit-learn"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "looker"
  },
  {
    "job_id": 479485,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "Level",
    "skills": "kubernetes"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "python"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "java"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "r"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "javascript"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "c++"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "tableau"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "power bi"
  },
  {
    "job_id": 405581,
    "job_title": "Data Analyst",
    "salary_year_avg": "145000.0",
    "company_name": "CyberCoders",
    "skills": "qlik"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1090975,
    "job_title": "Data Analyst",
    "salary_year_avg": "140500.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "sql"
  },
  {
    "job_id": 1482852,
    "job_title": "Data Analyst",
    "salary_year_avg": "138500.0",
    "company_name": "Overmind",
    "skills": "python"
  },
  {
    "job_id": 1326467,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "EPIC Brokers",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "excel"
  },
  {
    "job_id": 479965,
    "job_title": "Data Analyst",
    "salary_year_avg": "135000.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "sql"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "python"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "spark"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "pandas"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "numpy"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "unix"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "git"
  },
  {
    "job_id": 1209798,
    "job_title": "Data Analyst",
    "salary_year_avg": "130000.0",
    "company_name": "Doximity",
    "skills": "github"
  },
  {
    "job_id": 1148444,
    "job_title": "Data Analyst",
    "salary_year_avg": "127000.0",
    "company_name": "Acorns",
    "skills": "outlook"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sql"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "python"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "r"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "databricks"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "snowflake"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "sas"
  },
  {
    "job_id": 900945,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "The Walt Disney Company",
    "skills": "spss"
  },
  {
    "job_id": 285447,
    "job_title": "Data Analyst",
    "salary_year_avg": "125000.0",
    "company_name": "Robert Half",
    "skills": "flow"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "sql"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "python"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "hadoop"
  },
  {
    "job_id": 876656,
    "job_title": "Data Analyst",
    "salary_year_avg": "119200.0",
    "company_name": "CVS Health",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "excel"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "word"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "powerpoint"
  },
  {
    "job_id": 945180,
    "job_title": "Data Analyst",
    "salary_year_avg": "117713.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "ms access"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "sql"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "python"
  },
  {
    "job_id": 685438,
    "job_title": "Data Analyst",
    "salary_year_avg": "117500.0",
    "company_name": "Jobot",
    "skills": "tableau"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 131427,
    "job_title": "Data Analyst",
    "salary_year_avg": "117000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sql"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "excel"
  },
  {
    "job_id": 1788827,
    "job_title": "Data Analyst",
    "salary_year_avg": "115791.5",
    "company_name": "Kern Health Systems",
    "skills": "sas"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1403108,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "sql"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "python"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "r"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "vba"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "snowflake"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "tableau"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "power bi"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "dax"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "powerpoint"
  },
  {
    "job_id": 1139755,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Lighthouse Professional Services",
    "skills": "alteryx"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "sql server"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "azure"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "databricks"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "oracle"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "tableau"
  },
  {
    "job_id": 357990,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "Robert Half",
    "skills": "power bi"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "sql"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "excel"
  },
  {
    "job_id": 24351,
    "job_title": "Data Analyst",
    "salary_year_avg": "115000.0",
    "company_name": "ManyPets",
    "skills": "tableau"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "sql"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "python"
  },
  {
    "job_id": 236397,
    "job_title": "Data Analyst",
    "salary_year_avg": "112661.0",
    "company_name": "Get It Recruit - Healthcare",
    "skills": "tableau"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 185960,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "sql"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "python"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "r"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1006256,
    "job_title": "Data Analyst",
    "salary_year_avg": "112500.0",
    "company_name": "InvestM Technology LLC",
    "skills": "power bi"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "sql"
  },
  {
    "job_id": 894317,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Transportation",
    "skills": "python"
  },
  {
    "job_id": 991817,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "excel"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "python"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "r"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1814437,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "power bi"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "javascript"
  },
  {
    "job_id": 446319,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "looker"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1047698,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Insight Global",
    "skills": "aws"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "t-sql"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "sql server"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "excel"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "power bi"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "dax"
  },
  {
    "job_id": 409831,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "company_name": "Trinity Solar Careers",
    "skills": "ssis"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sql"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "python"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "r"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "hadoop"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "excel"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "tableau"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "power bi"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "sas"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "word"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "powerpoint"
  },
  {
    "job_id": 1119269,
    "job_title": "Data Analyst",
    "salary_year_avg": "107500.0",
    "company_name": "CODING DOJO INC.",
    "skills": "outlook"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "sql"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "python"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "r"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "pandas"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "numpy"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "scikit-learn"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 107274,
    "job_title": "Data Analyst",
    "salary_year_avg": "106562.5",
    "company_name": "Cherry Bekaert Advisory, LLC",
    "skills": "alteryx"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 800017,
    "job_title": "Data Analyst",
    "salary_year_avg": "106000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "git"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "sql"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "python"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "r"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "excel"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1069248,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Starr And Associates LLC",
    "skills": "qlik"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "python"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "r"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "aws"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "redshift"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1344229,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "company_name": "Vista Global Solutions, LLC",
    "skills": "qlik"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "c++"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 909351,
    "job_title": "Data Analyst",
    "salary_year_avg": "104000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "python"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "bash"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "gcp"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "spark"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "hadoop"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jenkins"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "flow"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "github"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "jira"
  },
  {
    "job_id": 535535,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Orion Groups",
    "skills": "confluence"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 949643,
    "job_title": "Data Analyst",
    "salary_year_avg": "102500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "sql"
  },
  {
    "job_id": 1277458,
    "job_title": "Data Analyst",
    "salary_year_avg": "102250.0",
    "company_name": "ZipRecruiter",
    "skills": "python"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "hadoop"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1234973,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 686507,
    "job_title": "Data Analyst",
    "salary_year_avg": "101500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sql"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "oracle"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "excel"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "tableau"
  },
  {
    "job_id": 736533,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "LHH",
    "skills": "sap"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "sql"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "oracle"
  },
  {
    "job_id": 734020,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Govcio LLC",
    "skills": "atlassian"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "sql"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "python"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "r"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "tableau"
  },
  {
    "job_id": 524146,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Hearth",
    "skills": "looker"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "sas"
  },
  {
    "job_id": 284410,
    "job_title": "Data Analyst",
    "salary_year_avg": "98750.0",
    "company_name": "Goldbelt, Inc.",
    "skills": "flow"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "sql"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "python"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "r"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "tableau"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "power bi"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "qlik"
  },
  {
    "job_id": 1791218,
    "job_title": "Data Analyst",
    "salary_year_avg": "95700.0",
    "company_name": "Booz Allen Hamilton",
    "skills": "powerpoint"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 354407,
    "job_title": "Data Analyst",
    "salary_year_avg": "95329.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "crystal"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "sas"
  },
  {
    "job_id": 1240374,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Insight Global",
    "skills": "qlik"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 78069,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sql"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "python"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "r"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "excel"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "tableau"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "looker"
  },
  {
    "job_id": 796604,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Polygence",
    "skills": "sheets"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "tableau"
  },
  {
    "job_id": 204667,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "power bi"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "power bi"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "dax"
  },
  {
    "job_id": 542425,
    "job_title": "Data Analyst",
    "salary_year_avg": "95000.0",
    "company_name": "Jobot",
    "skills": "microstrategy"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "python"
  },
  {
    "job_id": 1127339,
    "job_title": "Data Analyst",
    "salary_year_avg": "94871.5",
    "company_name": "Protect Democracy",
    "skills": "r"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1178655,
    "job_title": "Data Analyst",
    "salary_year_avg": "91000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "sql"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "python"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "r"
  },
  {
    "job_id": 196796,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Angi",
    "skills": "excel"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "sql"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "python"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "r"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "tableau"
  },
  {
    "job_id": 680315,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Gotely",
    "skills": "power bi"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 419649,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "python"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "sql"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "python"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "aws"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "redshift"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "tableau"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "power bi"
  },
  {
    "job_id": 354417,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "EcoCart",
    "skills": "clickup"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "python"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "r"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "tableau"
  },
  {
    "job_id": 714930,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Motion Recruitment",
    "skills": "looker"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 258262,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "excel"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "powerpoint"
  },
  {
    "job_id": 293077,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Administrative",
    "skills": "microsoft teams"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "sql"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "bigquery"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "tableau"
  },
  {
    "job_id": 1244897,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Real Estate",
    "skills": "ssrs"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sql"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "vb.net"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "oracle"
  },
  {
    "job_id": 1647550,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Get It Recruit - Finance",
    "skills": "sas"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "powerpoint"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "jira"
  },
  {
    "job_id": 1729407,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "General Dynamics Information Technology",
    "skills": "confluence"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "sql"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "python"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "java"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "r"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c++"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "c#"
  },
  {
    "job_id": 116825,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "hackajob",
    "skills": "matlab"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "python"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "java"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "shell"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "javascript"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "html"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "t-sql"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "oracle"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "unix"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "excel"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "tableau"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "power bi"
  },
  {
    "job_id": 1228142,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "company_name": "Grant Leading Technology, LLC",
    "skills": "visio"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "sql"
  },
  {
    "job_id": 1489901,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Predictive Data Lab",
    "skills": "azure"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 915649,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "c#"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "sql server"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 30317,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "company_name": "Insight Global",
    "skills": "flow"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "mysql"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "sql server"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "azure"
  },
  {
    "job_id": 384007,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Motion Recruitment",
    "skills": "jira"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1640252,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "windows"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sharepoint"
  },
  {
    "job_id": 496663,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "webex"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 444259,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 547661,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "jenkins"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 367476,
    "job_title": "Data Analyst",
    "salary_year_avg": "84500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 894665,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "flow"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "azure"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 23358,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "dax"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1551217,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1558833,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "arch"
  },
  {
    "job_id": 1683817,
    "job_title": "Data Analyst",
    "salary_year_avg": "84000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "word"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "javascript"
  },
  {
    "job_id": 1153109,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "node.js"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 1632454,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 309335,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1366794,
    "job_title": "Data Analyst",
    "salary_year_avg": "83500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sql"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "excel"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "tableau"
  },
  {
    "job_id": 604141,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Alameda Health Consortium/Community Health Center Network",
    "skills": "sas"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "redshift"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "snowflake"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matplotlib"
  },
  {
    "job_id": 1656466,
    "job_title": "Data Analyst",
    "salary_year_avg": "83000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "qlik"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 95123,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sheets"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 103900,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 1715658,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "spss"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "sql"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "python"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "tableau"
  },
  {
    "job_id": 672574,
    "job_title": "Data Analyst",
    "salary_year_avg": "82500.0",
    "company_name": "Emotive",
    "skills": "looker"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1115037,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "power bi"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  },
  {
    "job_id": 1296038,
    "job_title": "Data Analyst",
    "salary_year_avg": "82000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 980665,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "scala"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 143947,
    "job_title": "Data Analyst",
    "salary_year_avg": "81000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "excel"
  }
]
