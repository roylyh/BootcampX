SELECT
  count(b.*) AS total_assistances,
  a.name
FROM
  teachers AS a
  JOIN assistance_requests AS b ON a.id = b.teacher_id
WHERE
  a.name = 'Waylon Boehm'
GROUP BY
  a.name;