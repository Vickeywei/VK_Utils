//
//  NSString+NSHash
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSString (NSHash_AdditionalHashingAlgorithms)

- (NSString*) MD5;

- (NSString*) SHA1;

- (NSString*) SHA256;

@end
