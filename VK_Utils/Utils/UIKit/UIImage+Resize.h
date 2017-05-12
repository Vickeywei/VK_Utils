//
//  UIImage+Resize
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIImage (Resize)
/**
 *  返回一张自由拉伸的图片
 */
+ (UIImage *)resizedImageWithName:(NSString *)name;
+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top;
@end
