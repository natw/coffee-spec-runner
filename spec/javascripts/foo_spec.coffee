require '../spec_helper'

foo = require '../../app/assets/javascripts/foo'
# foo = require 'foo' # maybe I want to do this?
$ = require 'jquery'

describe "check_num", ->
  it "accepts 3 as the correct answer", ->
    expect(foo.check_num(3)).to.equal "you guessed it"
  it "says no for 2", ->
    expect(foo.check_num(2)).to.equal "no"
