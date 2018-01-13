//
//  UIImage+YLF.m
//
//  Created by 姚立飞 on 2017/8/31.
//  Copyright © 2017年 KK. All rights reserved.
//

#import "UIImage+FF.h"

@implementation UIImage (FF)

- (UIImage *)cutCircleImage
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    // 获取上下文
    CGContextRef ctr = UIGraphicsGetCurrentContext();
    // 设置圆形
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctr, rect);
    // 裁剪
    CGContextClip(ctr);
    // 将图片画上去
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
