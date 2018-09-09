// conf.js
exports.config = {
  framework: 'jasmine',
  specs: ['spec.js'],
  capabilities: {
    browserName: 'chrome',

    chromeOptions: {
        args: [ "--no-sandbox", "--disable-dev-shm-usage", "--headless", "--disable-gpu", "--window-size=800,600" ]
    }
}
}