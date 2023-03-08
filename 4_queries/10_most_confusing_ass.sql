SELECT
  b.id AS id,
  b.name AS name,
  b.day AS day,
  b.chapter AS chapter,
  count(b.id) AS total_requests
FROM
  assistance_requests a
  JOIN assignments b ON a.assignment_id = b.id
GROUP BY
  b.id
ORDER BY
  total_requests DESC;