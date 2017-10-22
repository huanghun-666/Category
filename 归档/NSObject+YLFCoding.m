//
//  NSObject+YLFCoding.m
//  TEST
//
//  Created by 姚立飞 on 16/6/14.
//  Copyright © 2016年 姚立飞. All rights reserved.
//

#import "NSObject+YLFCoding.h"
#import <objc/runtime.h>

@implementation NSObject (YLFCoding)

- (void)encodeWithCoder:(NSCoder *)coder
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i++)
    {
        // 取出所有成员变量
        Ivar ivar = ivars[0];
        const char *name = ivar_getName(ivar);
        NSString *key = [NSString stringWithUTF8String:name];
        // 归档
        [coder encodeObject:[self valueForKey:key] forKey:key];
    }
    free(ivars);
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [self init])
    {
        unsigned int count = 0;
        Ivar *ivars = class_copyIvarList([self class], &count);
        for (int i = 0; i < count; i++)
        {
            // 取出所有成员变量
            Ivar ivar = ivars[0];
            const char *name = ivar_getName(ivar);
            NSString *key = [NSString stringWithUTF8String:name];
            // 归档
            NSString *value = [aDecoder decodeObjectForKey:key];
            [self setValue:value forKey:key];            
        }
        free(ivars);
    }
    return self;
}



@end
