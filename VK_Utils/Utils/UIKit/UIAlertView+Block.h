//
//  UIAlertView+Block
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <UIKit/UIKit.h>

typedef void(^CompleteBlock) (NSInteger buttonIndex);

@interface UIAlertView (Blcok)

- (void)showAlertViewWithCompleteBlock:(CompleteBlock) block;

@end
