const { handler } = require('./edge-function.js');

const fakeEvent = {
  response: {
    headers: {}
  }
};

const result = handler(fakeEvent);
console.log(result);