var should = require('should');
var user = require('../src/user.js');

describe("first list of test", function() {
  it("should be marie", function(done){
    user.get("marie", function(name){
      name.should.equal("marie");
    });
    done();
  });
  it("should be marie", function(done){
    user.get("marie", function(name){
      name.should.not.equal("thomas");
    });
    done();
  });
});
