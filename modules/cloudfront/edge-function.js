function handler(event) {
  var response = event.response;
  response.headers['strict-transport-security'] = { value: 'max-age=63072000' };
  return response;
}

// module.exports = { handler };