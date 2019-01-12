//
//  NotiMHelper.h
//  NotiM
//
//  Created by iMokhles on 12/01/2019.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

NS_ASSUME_NONNULL_BEGIN

@interface NotiMHelper : NSObject

- (RLMRealmConfiguration *)setDefaultRealmConfiguration;
- (RLMRealm *)mainRealm;

@end

NS_ASSUME_NONNULL_END
