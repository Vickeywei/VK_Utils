//
//  NSString+URLEncoding
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

/** Encoding suitable for use in URLs.
 
 stringByAddingPercentEscapes does not replace serveral characters which are problematics in URLs.
 
 @return The encoded version of the receiver.
 */
- (NSString *)stringByURLEncoding;

@end
