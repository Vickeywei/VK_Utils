//
//  NSString+FontSize
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (FontSize)
- (CGSize)suggestedSizeWithFont:(UIFont *)font width:(CGFloat)width;
@end
