var exec = require('cordova/exec');
exports.initService = function (host, port, topic, success, error) {
  exec(success, error, "ServiceWrapper", "initService", [host, port, topic]);
};
exports.stopService = function (success, error) {
  exec(success, error, "ServiceWrapper", "stopService", []);
};