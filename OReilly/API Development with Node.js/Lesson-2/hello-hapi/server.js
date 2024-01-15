const Hapi = require('@hapi/hapi'); // Make sure to install '@hapi/hapi' if you haven't already
const { request } = require('http');
const good = require('good');

const init = async () => {
  const server = Hapi.server({
    port: 8000,
    host: 'localhost',
 });

 server.route({
    method: 'GET',
    path: '/',
    handler: (request, h) => {
      return { message: 'Hello, world!' };
    },
  });

  server.route({
    method: 'GET',
    path: '/data',
    handler: (request, h) => {
      return { message: 'Hello, you are getting data from /data!' };
    },
  });


//set up logging
const options = {
    ops: {
      interval: 1000,
    },
    reporters: {
      console: [{
        module: 'good-console',
        name: 'Squeeze',
        args: [{ log: '*', response: '*' }],
      }, {
        module: 'good-console',
      }, 'stdout'],
    },
  };  

  
 try {
    await server.start();
    console.log(`Server running at: ${server.info.uri}`);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
};


init();
