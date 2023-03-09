const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);

pool.query(`
SELECT
  DISTINCT b.name AS teacher,
  d.name AS cohort
FROM
  assistance_requests a
  JOIN teachers b ON a.teacher_id = b.id
  JOIN students c ON a.student_id = c.id
  JOIN cohorts d ON c.cohort_id = d.id
WHERE
  d.name = '${args[0] || 'JUL02'}'
ORDER BY
  teacher;
`)
  .then(res => {
    res.rows.forEach(item => {
      console.log(`${item.cohort}: ${item.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));