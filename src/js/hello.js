module.exports = function (name) {
  if (!name) {
    name = 'world';
  }
  return 'hello' + name;
}
