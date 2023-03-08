SELECT
  b.name AS teacher,
  c.name AS student,
  d.name AS assignment,
  a.completed_at - a.started_at AS duration
FROM
  assistance_requests a
  JOIN teachers b ON a.teacher_id = b.id
  JOIN students c ON a.student_id = c.id
  JOIN assignments d ON a.assignment_id = d.id
ORDER BY
  duration;