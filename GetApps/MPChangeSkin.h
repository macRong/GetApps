//
//  MPChangeSkin.h
//  De
//
//  Created by macRong on 2018/3/13.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MPChangeSkin : NSObject

+ (NSArray *)getSkinColors:(BOOL)blackColor vc:(NSString *)vc;
+ (BOOL)changeSKineSuc:(NSString*)bd;

@end

void async_Track_module_Queue(dispatch_block_t block);
