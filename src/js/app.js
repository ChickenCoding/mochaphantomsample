(function (root, factory) {
  'use strict';
  if (typeof define === 'function' && define.amd) {
      // AMD. Register as an anonymous module.
      define(['b'], factory);
  } else if (typeof module === 'object' && module.exports) {
      // Node. Does not work with strict CommonJS, but
      // only CommonJS-like environments that support module.exports,
      // like Node.
      module.exports = factory(require('b'));
  } else {
      // Browser globals (root is window)
      root.returnExports = factory(root.b);
  }
}(this, function (b) {
  'use strict';
  var hello = require('./hello');
  return hello('world');
}));
