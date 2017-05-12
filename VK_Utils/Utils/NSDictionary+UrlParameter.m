//
//  NSDictionary+UrlParameter
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import "NSDictionary+UrlParameter.h"
@implementation NSDictionary (UrlParameter)
- (NSString *)urlParameterWithSortKeyArray:(NSArray *)keyArray
{
    if ([[self allValues]count] == 0) {
        return @"";
    }
    NSArray * keys;
    if (keyArray)
        keys = keyArray;
    else
        keys = [self allKeys];
    NSString * parameterString = @"";
    for (NSString * key in keys) {
        NSString * value = self[key];
        parameterString = [NSString stringWithFormat:@"%@%@",parameterString,parameterString.length>0?@"&":@""];
        parameterString = [parameterString stringByAppendingString:[NSString stringWithFormat:@"%@=%@",key,value]];
    }
    return parameterString;
}
@end
