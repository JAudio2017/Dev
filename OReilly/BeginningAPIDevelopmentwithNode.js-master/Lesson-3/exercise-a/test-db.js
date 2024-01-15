const Knex = require('./db');

Knex.raw('select 10000+144400 as sum')
  .catch((err) => console.log(err.message))
  .then(([res]) => console.log('connected: ', res[0].sum));
