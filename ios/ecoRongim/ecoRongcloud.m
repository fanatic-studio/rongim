//
//  vdRongcloud.m
//
//  Created by 高一 on 2019/3/1.
//

#import "vdRongcloud.h"
#import "WeexSDKManager.h"
#import "WeexInitManager.h"
#import "vdRongcloudManager.h"
#import "Config.h"

WEEX_PLUGIN_INIT(vdRongcloud)
@implementation vdRongcloud

+ (instancetype) sharedManager {
    static dispatch_once_t onceToken;
    static vdRongcloud *instance;
    dispatch_once(&onceToken, ^{
        instance = [[vdRongcloud alloc] init];
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
        [[vdRongcloudManager sharedIntstance] init:rongKey appSecret:rongSec];
    }
}

@end
