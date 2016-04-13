'use strict'

describe 'Filter: name', ->

  # load the filter's module
  beforeEach module 'searchApp'

  # initialize a new instance of the filter before each test
  name = {}
  beforeEach inject ($filter) ->
    name = $filter 'name'

  it 'should return the input prefixed with "name filter:"', ->
    text = 'angularjs'
    expect(name text).toBe ('name filter: ' + text)
