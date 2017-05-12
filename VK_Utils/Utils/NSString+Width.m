//
//  NSString+Width
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import "NSString+Width.h"

@implementation NSString (Width)

-(float) suggestedSizeWithFont:(UIFont *)font;
{
    CGSize size =[self sizeWithAttributes:@{NSFontAttributeName:font}];
    
    return size.width;
}
@end
