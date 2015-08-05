module.exports = function () {
  'use strict';

  var App = require('app');

  describe('app', function () {

    it.skip('should find this test');

    it('should say hello', function () {
      var hello = hello('world');
      hello.should.equals('hello world');
    });
  });

};
