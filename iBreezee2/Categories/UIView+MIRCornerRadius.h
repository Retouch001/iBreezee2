//
//  UIView+MIRCornerRadius.h
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UIView (MIRCornerRadius)

@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;
@property (nonatomic, assign)IBInspectable CGFloat borderWidth;
@property (nonatomic, strong)IBInspectable UIColor *borderColor;


@end
