//
//  TGJSBridge
//
//  Created by 魏琦 on 17/2/7.
//  Copyright © 2017年 com.drcacom.com. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class TGJSBridge;

@protocol TGJSBridgeDelegate <UIWebViewDelegate>

- (void)jsBridge:(TGJSBridge *)bridge 
didReceivedNotificationName:(NSString*)name    
        userInfo:(NSDictionary*)userInfo 
     fromWebView:(UIWebView*)webview;

@end


@interface TGJSBridge : NSObject <UIWebViewDelegate>
{
    NSMutableDictionary *_infoList;
}

@property (nonatomic, assign) IBOutlet id <TGJSBridgeDelegate> delegate;

+ (id)jsBridgeWithDelegate:(id <TGJSBridgeDelegate>)delegate;

- (void)postNotificationName:(NSString *)name
                    userInfo:(NSDictionary*)userInfo
                   toWebView:(UIWebView *)webView;

@end
