function() {
  var temp = 'username:password';
  var Base64 = Java.type('java.util.Base64');
  var encoded = Base64.getEncoder().encodeToString(temp.getBytes());
  return 'Basic ' + encoded;
}