//
//  UILabel+Property
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import "UIImageView+Dashed.h"

@implementation UIImageView (Dashed)
- (void)creatDashedViewWithEachWidth:(float)eachWidth
                           lineColor:(UIColor *)lineColor
{
    UIGraphicsBeginImageContext(self.frame.size);
    [self.image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);
    CGFloat lengths[] = {eachWidth,eachWidth};
    CGContextRef line = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(line, lineColor.CGColor);
    CGContextSetLineDash(line, 0, lengths, 2);
    CGContextMoveToPoint(line, 0.0, 0);
    CGContextAddLineToPoint(line, self.frame.size.width, 0);
    CGContextStrokePath(line);
    self.image = UIGraphicsGetImageFromCurrentImageContext();
}
@end
