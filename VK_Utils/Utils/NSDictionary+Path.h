//
//  NSDictionary+Path
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSDictionary (Path)
/**
 *  根据路径获取value
 *
 *  @param path 路径(xxx.yyy.sss)以"."做为分割符
 *
 *  @return value
 */
- (id)objectForPath:(id)path;
@end
