//
//  ecoRongcloud.m
//
//  Created by 高一 on 2019/3/1.
//

#import "ecoRongcloud.h"
#import "WeexSDKManager.h"
#import "WeexInitManager.h"
#import "ecoRongcloudManager.h"
#import "Config.h"

WEEX_PLUGIN_INIT(ecoRongcloud)
@implementation ecoRongcloud

+ (instancetype) sharedManager {
    static dispatch_once_t onceToken;
    static ecoRongcloud *instance;
    dispatch_once(&onceToken, ^{
        instance = [[ecoRongcloud alloc] init];
    });
    return instance;
}

+ (NSString*) getRongKey {
    return rongKey;
};

+ (NSString*) getRongSec {
    return rongSec;
};

//初始化融云
- (void) didFinishLaunchingWithOptions:(NSMutableDictionary*)lanchOption
{
    NSMutableDictionary *rongim = [[Config getObject:@"rongim"] objectForKey:@"ios"];
    NSString *enabled = [NSString stringWithFormat:@"%@", rongim[@"enabled"]];
    //
    if ([enabled containsString:@"1"] || [enabled containsString:@"true"]) {
        rongKey = [NSString stringWithFormat:@"%@", rongim[@"appKey"]];
        rongSec = [NSString stringWithFormat:@"%@", rongim[@"appSecret"]];
        [[ecoRongcloudManager sharedIntstance] init:rongKey appSecret:rongSec];
    }
}

@end
