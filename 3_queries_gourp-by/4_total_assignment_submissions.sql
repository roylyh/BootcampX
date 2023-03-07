SELECT
  a.name AS cohort,
  count(c.id) AS total_submissions
FROM
  cohorts AS a
  JOIN students AS b ON a.id = b.cohort_id
  JOIN assignment_submissions c ON c.student_id = b.id
GROUP BY
  a.name
ORDER BY
  total_submissions DESC;