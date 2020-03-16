//
//  vdRongcloudManager.h
//  WeexTestDemo
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 TomQin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface vdRongcloudManager : NSObject

+ (vdRongcloudManager *)sharedIntstance;

- (void)init:(NSString*)appKey appSecret:(NSString*)appSecret;

@end
