//
//  NSDictionary+Path
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import "NSDictionary+Path.h"

@implementation NSDictionary (Path)
- (id)objectForPath:(id)path
{
    id value = self;
    for (NSString * key in [path componentsSeparatedByString:@"."]) {
        value = [value objectForKey:key];
    }
    return value;
}
@end
