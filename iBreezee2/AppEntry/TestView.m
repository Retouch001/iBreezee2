//
//  TestView.m
//  iBreezee2
//
//  Created by MIRACLE on 2017/8/30.
//  Copyright © 2017年 miracle. All rights reserved.
//

#import "TestView.h"

IB_DESIGNABLE
@interface TestView()

@property (nonatomic,strong) IBInspectable UIColor *lineColor;


@end




@implementation TestView

//- (void)awakeFromNib{
//    [super awakeFromNib];
//    
//}
//
//- (instancetype)initWithCoder:(NSCoder *)aDecoder{
//    if (self = [super initWithCoder:aDecoder]) {
//        
//    }
//    return self;
//}
//
//
//- (void)prepareForInterfaceBuilder{
//    [super prepareForInterfaceBuilder];
//    
//}



- (void)drawRect:(CGRect)rect{
    UIBezierPath *firtPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 180, 180)];
    CAShapeLayer *shapeL = [CAShapeLayer layer];
    shapeL.lineWidth = 20;
    shapeL.path =firtPath.CGPath;
    shapeL.strokeStart = 0;
    shapeL.strokeEnd = 1;
    shapeL.strokeColor = self.lineColor.CGColor;
    shapeL.fillColor = [UIColor clearColor].CGColor;
    [self.layer addSublayer:shapeL];
    self.layer.cornerRadius = 30;
    self.layer.masksToBounds = YES;
}




@end
