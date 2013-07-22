chai = require 'chai'
global.sinon = sinon = require 'sinon'
sinonChai = require 'sinon-chai'
chai.use sinonChai
global.expect = chai.expect

jsdom = require 'jsdom'
global.window = jsdom.jsdom().createWindow('<html><body></body></html>')
global.document = global.window.document
global.navigator =
  userAgent: "nodejs"
  platform: "nodejs"
  product: "nodejs"
