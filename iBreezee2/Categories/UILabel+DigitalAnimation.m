//
//  UILabel+DigitalAnimation.m
//  iBreezeeNewest
//
//  Created by 方景琦 on 2017/4/11.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import "UILabel+DigitalAnimation.h"
#import "POP.h"

@implementation UILabel (DigitalAnimation)


#pragma mark - 动态更新label数字
-(void)animatedForKey:(NSString *)key fromValue:(CGFloat)fromValue toValue:(CGFloat) toValue{
    
    POPAnimatableProperty *prop = [POPAnimatableProperty propertyWithName:key initializer:^(POPMutableAnimatableProperty *prop) {
        
        prop.readBlock = ^(id obj, CGFloat values[]) {
            
        };
        prop.writeBlock = ^(id obj, const CGFloat values[]) {
            
            NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
            formatter.numberStyle = NSNumberFormatterDecimalStyle;
            NSString *string = nil;
            
            string = [NSString stringWithFormat:@"%.f",values[0]];
            
            self.text = string;
        };
        
        //prop.threshold = 0.1;
    }];
    
    POPBasicAnimation *anBasic = [POPBasicAnimation easeInEaseOutAnimation];   //动画属性
    anBasic.property = prop;    //自定义属性
    anBasic.fromValue = @(fromValue);   //从0开始
    anBasic.toValue = @(toValue);  //
    anBasic.duration = 2;    //持续时间
    anBasic.beginTime = CACurrentMediaTime() + 0.0;    //延迟0.0秒开始
    [self pop_addAnimation:anBasic forKey:key];
}


@end
