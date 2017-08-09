//
//  UIView+MIRXib.m
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/9.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import "UIView+MIRXib.h"

@implementation UIView (MIRXib)

#pragma mark createFromXib
+ (instancetype)createFromXib {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

+ (instancetype)createFromXibWithFrame:(CGRect)frame {
    UIView *view = [self createFromXib]; view.frame = frame; return view;
}


@end
