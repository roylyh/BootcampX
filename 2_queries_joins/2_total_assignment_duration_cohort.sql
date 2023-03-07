SELECT
  sum(c.duration) AS total_duration
FROM
  students AS a
  JOIN cohorts AS b ON a.cohort_id = b.id
  JOIN assignment_submissions AS c ON a.id = c.student_id
WHERE
  b.name = 'FEB12';