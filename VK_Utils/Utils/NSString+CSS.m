//
//  NSString+CSS
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import "NSString+CSS.h"
#import "NSScanner+HTML.h"
@implementation NSString (CSS)

- (NSDictionary *)dictionaryOfCSSStyles
{
	NSScanner *scanner = [NSScanner scannerWithString:self];
	
	NSString *name = nil;
	NSString *value = nil;
	
	NSMutableDictionary *tmpDict = [NSMutableDictionary dictionary];
	
	@autoreleasepool
	{
		while ([scanner scanCSSAttribute:&name value:&value])
		{
			[tmpDict setObject:value forKey:name];
		}
	}
	return tmpDict;
}

@end
