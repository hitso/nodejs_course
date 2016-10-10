should = require('should')
user = require('../src/user.coffee')

describe("first list of test", () ->
  it("should be marie", (done) ->
    user.get("marie", (name) ->
      name.should.equal("marie")
    )
    done()
  )
  it("should be marie", (done) ->
    user.get("marie", (name) ->
      name.should.not.equal("thomas");
    )
    done()
  )
)
