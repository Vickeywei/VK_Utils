//
//  NSObject+Swizzling
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)
+ (void)swizzlingWithOriginalSEL:(SEL)originalSEL
                          newSEL:(SEL)newSEL;

+ (void)swizzlingWithOriginalSEL:(SEL)originalSEL
                          newSEL:(SEL)newSEL
                 targetClassName:(NSString *)targetClassName;

+ (void)swizzlingWithOriginalSEL:(SEL)originalSEL
                          newSEL:(SEL)newSEL
                      defaultSEL:(SEL)defaultSEL
                 targetClassName:(NSString *)targetClassName;
@end
