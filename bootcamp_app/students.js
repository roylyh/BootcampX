const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);

pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students join cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name Like '${args[0]}%'
LIMIT ${args[1]} || 5;
`)
  .then(res => {
    res.rows.forEach(item => {
      console.log(`${item.name} has an id of ${item.student_id} and was in the ${item.cohort} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));