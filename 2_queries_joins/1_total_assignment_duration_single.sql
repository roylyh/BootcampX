SELECT
  sum(b.duration) AS total_duration
FROM
  students AS a
  JOIN assignment_submissions AS b ON a.id = b.student_id
WHERE
  a.name = 'Ibrahim Schimmel';