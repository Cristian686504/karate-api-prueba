function fn() {
  var env = karate.env;
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    baseUrl: 'https://automationexercise.com/api'
  }
  return config;
}
