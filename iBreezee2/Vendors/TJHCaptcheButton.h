//
//  TJHCaptcheButton.h
//  iBreezeeNewest
//
//  Created by 方景琦 on 2017/3/27.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface TJHCaptcheButton : UIButton

@property (nonatomic, copy) IBInspectable NSString *identifyKey;
@property (nonatomic, strong) IBInspectable UIColor *disabledBackgroundColor;
@property (nonatomic, strong) IBInspectable UIColor *disabledTitleColor;

- (void)fire;


@end
