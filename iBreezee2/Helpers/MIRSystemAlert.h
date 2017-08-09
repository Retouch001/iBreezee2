//
//  MIRSystemAlert.h
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MIRSystemAlert : NSObject

/**
 *                          title
 *                <UIAlertActionStyleCancel>
 *
 *  @param viewController    从哪个控制器弹出
 *  @param alertTitle        标题
 *  @param defaultTtitle       默认按钮标题
 *  @param defaultHandler    默认按钮回调
 */
+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
      defaultTtitle:(NSString *)defaultTtitle
     defaultHandler:(void(^)(void))defaultHandler;

/**
 *                          title
 *  <UIAlertActionStyleCancel> <UIAlertActionStyleDestructive>
 *
 *  @param viewController     从哪个控制器弹出
 *  @param alertTitle         标题
 *  @param cancelTitle        取消按钮标题
 *  @param destructiveTitle   确定按钮标题
 *  @param cancelHandler      取消回调
 *  @param destructiveHandler 确定回调
 */
+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
        cancelTitle:(NSString *)cancelTitle
   destructiveTitle:(NSString *)destructiveTitle
      cancelHandler:(void(^)(void))cancelHandler
 destructiveHandler:(void(^)(void))destructiveHandler;

/**
 *                          title
 *                         message
 *  <UIAlertActionStyleCancel> <UIAlertActionStyleDestructive>
 *
 *  @param viewController     从哪个控制器弹出
 *  @param alertTitle         标题
 *  @param alertMessage       消息
 *  @param cancelTitle        取消按钮标题
 *  @param destructiveTitle   确定按钮标题
 *  @param cancelHandler      取消回调
 *  @param destructiveHandler 确定回调
 */
+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
       alertMessage:(NSString *)alertMessage
        cancelTitle:(NSString *)cancelTitle
   destructiveTitle:(NSString *)destructiveTitle
      cancelHandler:(void(^)(void))cancelHandler
 destructiveHandler:(void(^)(void))destructiveHandler;


@end
