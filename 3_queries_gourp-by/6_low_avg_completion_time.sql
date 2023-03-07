SELECT
  students.name AS student,
  avg(assignment_submissions.duration) AS average_assignment_duration,
  avg(assignments.duration) as average_estimated_duration
FROM
  students
  JOIN assignment_submissions ON students.id = assignment_submissions.student_id
  join assignments on assignments.id = assignment_submissions.assignment_id
WHERE
  students.end_date IS NULL
GROUP BY
  student having avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY
  average_assignment_duration;