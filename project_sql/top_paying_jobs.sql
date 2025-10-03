/*
Question: What are the top-paying data analyst jobs ?
- Identify the top 10 highgest paying Data Analyst roles that are available remately.
- Focuses on job postings with specific salaries (remove nulls).
- Why? Highlight the top paying opportunities for Data Analysts, offering in sights into employment options and salary expectations.
*/
SELECT 
    name AS company_name,
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
LEFT JOIN 
    company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_location = 'Anywhere'
ORDER BY 
    salary_year_avg DESC   
LIMIT 10;