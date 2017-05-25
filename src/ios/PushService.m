/********* PushService Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "Constants.h"


extern NSString *token;
@interface ServiceWrapper : CDVPlugin {
  // Member variables go here.
}

- (void)initService:(CDVInvokedUrlCommand*)command;
@end

@implementation ServiceWrapper

- (void)initService:(CDVInvokedUrlCommand*)command
{

    CDVPluginResult *pluginResult = nil;
    NSLog(@"ifs:%@",token);
     if(token!=nil && [token length] > 0){
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:token];
     } else {
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
     }
     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
