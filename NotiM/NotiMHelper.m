//
//  NotiMHelper.m
//  NotiM
//
//  Created by iMokhles on 12/01/2019.
//

#import "NotiMHelper.h"
#import <Realm/Realm.h>

@implementation NotiMHelper

- (RLMRealmConfiguration *)setDefaultRealmConfiguration {
    RLMRealmConfiguration *configuration = [RLMRealmConfiguration defaultConfiguration];
    NSString* pathLibrary = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dataPath = [pathLibrary stringByAppendingPathComponent:@"NotiM.realm"];
    configuration.fileURL = [NSURL fileURLWithPath:dataPath];
    return configuration;
}
- (RLMRealm *)mainRealm {
    NSError *error = nil;
    RLMRealm *realm = [RLMRealm realmWithConfiguration:self.setDefaultRealmConfiguration error:&error];
    if (error != nil) {
        return nil;
    }
    return realm
}
@end
