var exec = require('cordova/exec');
exports.initService = function (host, port, topic, username, password, success, error) {
  exec(success, error, "ServiceWrapper", "initService", [host, port, topic, username, password]);
};
exports.stopService = function (success, error) {
  exec(success, error, "ServiceWrapper", "stopService", []);
};