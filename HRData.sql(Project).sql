CREATE EXTENSION IF NOT EXISTS tablefunc;

SELECT *
FROM crosstab(
'SELECT job_role, job_satisfaction, sum(employee_count) FROM hrdata
GROUP BY job_role, job_satisfaction
ORDER BY job_role, job_satisfaction' ) AS crosstab(job_role varchar (50), one numeric, two numeric, three numeric, four numeric)
ORDER BY job_role;
