{expect} = require '../spec_helper'
{check_num} = require '../../app/assets/javascripts/foo'
# {check_num} = require 'foo' # I want to do this

describe "check_num", ->
  it "accepts 3 as the correct answer", ->
    expect(check_num(3)).to.equal "you guessed it"
  it "says no for 2", ->
    expect(check_num(2)).to.equal "no"
