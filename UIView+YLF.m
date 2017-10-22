//
//  UIView+YLF.m
//  Player
//
//  Created by YLF on 2017/9/8.
//  Copyright © 2017年 YLF. All rights reserved.
//

#import "UIView+YLF.h"

@implementation UIView (YLF)

- (void)cutRoundWithRadius:(CGFloat)radius
{
    if (self == nil) return;
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    UIBezierPath *path  = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    shapeLayer.path     = path.CGPath;
    self.layer.mask     = shapeLayer;
}

@end
