//
//  UIView+MIRXib.h
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MIRXib)

// 从 xib 取得 view
+ (instancetype)createFromXib;
+ (instancetype)createFromXibWithFrame:(CGRect)frame;


@end
