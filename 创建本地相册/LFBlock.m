//
//  LFBlock.m
//  TEST
//
//  Created by 姚立飞 on 2017/10/29.
//  Copyright © 2017年 姚立飞. All rights reserved.
//

#import "LFBlock.h"

@implementation LFBlock

+ (void)dispatchOnMainThread:(dispatch_block_t)block {
    if (block) {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}

@end
