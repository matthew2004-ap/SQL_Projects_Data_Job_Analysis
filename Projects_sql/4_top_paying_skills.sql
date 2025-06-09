SELECT 
  skills,
 ROUND( AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
job_title_short= 'Data Analyst' AND
job_work_from_home =True   
--job_country ='United State' 
AND salary_year_avg IS NOT NULL
GROUP BY
skills
ORDER BY
   avg_salary DESC

   /*Insight:

These reflect a blend of data engineering, ML/AI, and DevOps tools.

PySpark, Jupyter, and Pandas indicate value in big data and Python-based analytics.

GitLab, Bitbucket: High demand in environments with CI/CD workflows, suggesting overlap with data engineering or ML ops roles.

🔬 Key Trends
1. Hybrid Skills Pay More
Skills like PySpark, Databricks, Airflow, and Kubernetes reflect crossover into data engineering and cloud infrastructure — these roles often command $125K+ salaries.

2. ML & AI Tools Command Premiums
Tools like DataRobot, Watson, Scikit-learn, and Jupyter show that ML-related skills are well-paid, especially when combined with data science or analytics.

3. Modern Version Control & Collaboration Tools
High salaries for Bitbucket, GitLab, and Atlassian tools highlight how data professionals who integrate into DevOps and team-based development environments are valued.

4. Cloud & Big Data Technologies
Tools like Databricks, GCP, AWS, Snowflake, BigQuery, and Hadoop show strong correlation with above-average salaries.

Suggests that cloud fluency is increasingly essential.

5. Programming Languages: Python > SQL > R
Python: $101K

SQL: $97K

R: $100K

Shows that Python leads, especially when paired with libraries like NumPy, Pandas, Scikit-learn.

💼 Practical Takeaways for Data Analysts
Upskilling in PySpark, Databricks, or Airflow can be a path to a $130K+ role, especially in data engineering-heavy orgs.

Version control and collaboration tools (Git, GitLab, Bitbucket, JIRA) are increasingly essential.

Machine learning literacy (even basic familiarity with tools like Jupyter or Scikit-learn) boosts salary potential.

Cloud proficiency (esp. GCP, AWS, Azure) is becoming a baseline expectation.

📉 Lower Salary Tiers (<$90K)
Tools like Excel ($87K), PowerPoint, Outlook, Windows, and Visual Basic are associated with traditional business analysis and have limited earning ceiling unless complemented by more advanced tools
*/




/*💡 Top Paying Skills Overview:
PySpark is by far the highest-paying skill, with an average salary of over $208K.

Tools related to version control and collaborative coding like Bitbucket and GitLab are among the top.

Niche or specialized tools like Couchbase, Watson, and DataRobot also command high salaries, suggesting demand for specialized expertise.

📈 Key Trends:
Big Data & Cloud: Skills like PySpark, Databricks, and GCP appear high on the list, emphasizing the ongoing demand for data engineers and analysts with cloud and big data processing skills.

Programming & Libraries: Python ecosystem tools (Pandas, NumPy, Jupyter, Scikit-learn) have strong salaries, showing the value of technical proficiency in data manipulation and machine learning.

Tool Familiarity: Even general collaboration tools like Jupyter, Notion, and Airflow are valued highly, likely due to their importance in daily workflows
*/