SELECT 
    COUNT(job_id) as count_of_jobs
    CASE
    WHEN job_location = 'Anywhere' THEN 'Remote'
    WHEN job_location = 'New York, NY' THEN 'Local'
    ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
GROUP BY
     location_category;
