SELECT
  count(a.*) AS total_assistances,
  b.name
FROM
  assistance_requests a
  JOIN students AS b ON a.student_id = b.id
WHERE
  b.name = 'Elliot Dickinson'
GROUP BY
  b.name;