SELECT
  c.name AS name,
  avg(a.completed_at - a.started_at) AS average_assistance_time
FROM
  assistance_requests a
  JOIN students b ON a.student_id = b.id
  JOIN cohorts c ON c.id = b.id
GROUP BY
  c.name
ORDER BY
  average_assistance_time DESC
LIMIT 1;