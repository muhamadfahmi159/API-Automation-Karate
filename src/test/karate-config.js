function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    username: {username},
    baseURL: 'https://petstore.swagger.io/v2'
  }
  if (env == 'dev') {
    config.baseURL = 'https://petstore.swagger.io/v2/swagger.json'
  } else if (env == 'e2e') {
    // customize
  }

  karate.configure('connectTimeout', 30000)
  karate.configure('readTimeout', 30000)

  return config;
}