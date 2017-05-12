//
//  NSString+DeviceId
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (DeviceId)
//获取uuid 这个uuid  是存在keychain中的，不刷机的前提下 每次获取都是一样的
+ (NSString *)staticUUID;
@end
