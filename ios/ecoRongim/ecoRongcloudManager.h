//
//  ecoRongcloudManager.h
//  WeexTestDemo
//
//  Created by apple on 2018/7/9.
//  Copyright © 2018年 TomQin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ecoRongcloudManager : NSObject

+ (ecoRongcloudManager *)sharedIntstance;

- (void)init:(NSString*)appKey appSecret:(NSString*)appSecret;

@end
