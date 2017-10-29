//
//  LFBlock.h
//  TEST
//
//  Created by 姚立飞 on 2017/10/29.
//  Copyright © 2017年 姚立飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LFBlock : NSObject

+ (void)dispatchOnMainThread:(dispatch_block_t)block;

@end
