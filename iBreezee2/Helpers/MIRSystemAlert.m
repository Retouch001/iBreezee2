//
//  MIRSystemAlert.m
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import "MIRSystemAlert.h"

@implementation MIRSystemAlert

+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
      defaultTtitle:(NSString *)defaultTtitle
     defaultHandler:(void (^)(void))defaultHandler {
    
    UIAlertController *alertCtl = [UIAlertController alertControllerWithTitle:alertTitle message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionDefault = [UIAlertAction actionWithTitle:defaultTtitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        !defaultHandler ? : defaultHandler();
    }];
    [alertCtl addAction:actionDefault];
    [viewController presentViewController:alertCtl animated:YES completion:nil];
}

+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
        cancelTitle:(NSString *)cancelTitle
   destructiveTitle:(NSString *)destructiveTitle
      cancelHandler:(void (^)(void))cancelHandler
 destructiveHandler:(void (^)(void))destructiveHandler {
    
    [self alertFromVC:viewController alertTitle:alertTitle alertMessage:nil cancelTitle:cancelTitle destructiveTitle:destructiveTitle cancelHandler:cancelHandler destructiveHandler:destructiveHandler];
}

+ (void)alertFromVC:(UIViewController *)viewController
         alertTitle:(NSString *)alertTitle
       alertMessage:(NSString *)alertMessage
        cancelTitle:(NSString *)cancelTitle
   destructiveTitle:(NSString *)destructiveTitle
      cancelHandler:(void (^)(void))cancelHandler
 destructiveHandler:(void (^)(void))destructiveHandler {
    
    UIAlertController *alertCtl = [UIAlertController alertControllerWithTitle:alertTitle message:alertMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        !cancelHandler ? : cancelHandler();
    }];
    UIAlertAction *actionDestructive = [UIAlertAction actionWithTitle:destructiveTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        !destructiveHandler ? : destructiveHandler();
    }];
    [alertCtl addAction:actionCancel];
    [alertCtl addAction:actionDestructive];
    [viewController presentViewController:alertCtl animated:YES completion:nil];
}


@end
