//
//UIViewController+Route
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIViewController (Route)
+ (void)registerRoute:(NSString *)route withHandler:(BOOL(^)(NSDictionary *parameters))handler;

- (NSString *)generateRouteWithStrings:(NSString *)route, ...;

- (void)triggerRoute:(NSString *)route withParameters:(NSDictionary *)parameters;
@end
