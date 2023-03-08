SELECT
  c.name as teacher,
  d.name as cohort,
  count(a)
FROM
  assistance_requests a
  JOIN teachers b ON a.teacher_id = b.id
  JOIN students c ON a.student_id = c.id
  JOIN cohorts d ON c.cohort_id = d.id
WHERE
  d.name = 'JUL02'
GROUP BY
  c.name, d.name
ORDER BY
  teacher;