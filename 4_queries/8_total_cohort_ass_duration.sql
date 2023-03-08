SELECT c.name AS cohort, sum(completed_at - started_at) AS total_duration
FROM assistance_requests a
JOIN students b ON a.student_id = b.id
JOIN cohorts c ON b.cohort_id = c.id
GROUP BY c.name
ORDER BY total_duration;