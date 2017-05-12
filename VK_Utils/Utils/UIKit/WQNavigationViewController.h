//
//  WQNavigationViewController.h
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WQNavigationViewController;
@protocol WQNavigationViewControllerPopDelegate <NSObject>

- (BOOL)selectSystemBackBtnWithNavigationController:(WQNavigationViewController*)navigationController;


@end
@interface WQNavigationViewController : UINavigationController
@end
