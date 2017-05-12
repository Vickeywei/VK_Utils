//
//  NSString+FontSize
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import "NSString+FontSize.h"

@implementation NSString (FontSize)
- (CGSize)suggestedSizeWithFont:(UIFont *)font width:(CGFloat)width {
    CGRect bounds = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: font} context:nil];
    return bounds.size;
}

@end
