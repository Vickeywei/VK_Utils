//
//  NSScanner+HTML
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSScanner (HTML)

- (BOOL)scanCSSAttribute:(NSString * __autoreleasing*)name value:(id __autoreleasing*)value;

@end

