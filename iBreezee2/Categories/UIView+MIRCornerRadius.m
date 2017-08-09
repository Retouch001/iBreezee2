//
//  UIView+MIRCornerRadius.m
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import "UIView+MIRCornerRadius.h"
#import <objc/runtime.h>


@implementation UIView (MIRCornerRadius)

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, @selector(cornerRadius)) floatValue];
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}


- (CGFloat)borderWidth
{
    return [objc_getAssociatedObject(self, @selector(borderWidth)) floatValue];
}


- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
}


- (UIColor *)borderColor
{
    return objc_getAssociatedObject(self, @selector(borderColor));
}


- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}


@end
