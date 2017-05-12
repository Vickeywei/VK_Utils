//
//  NSString+DeviceId
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import "NSString+DeviceId.h"
#import "NSString+UUID.h"
#import <SSKeychain.h>
#import "NSString+NSHash.h"
#define UUID_Device @"UUID_Device"
@implementation NSString (DeviceId)
+ (NSString *)staticUUID
{
    if ([SSKeychain passwordForService:[self keyChainServer] account:UUID_Device]) {
        return [SSKeychain passwordForService:[self keyChainServer] account:UUID_Device];
    }
    NSString * dynamicUUID = [[self UUID] MD5];
    [SSKeychain setPassword:dynamicUUID forService:[self keyChainServer] account:UUID_Device];
    return dynamicUUID;
}

+ (BOOL)hasStaticUUID
{
    if ([SSKeychain passwordForService:[self keyChainServer] account:UUID_Device]) {
        return YES;
    }
    return NO;
}

+ (NSString *)keyChainServer {
    return [NSString stringWithFormat:@"JZ.%@",[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]];
}
@end
