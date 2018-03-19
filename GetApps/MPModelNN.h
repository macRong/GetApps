//
//  MPModelNN.h
//  De
//
//  Created by macRong on 2018/3/13.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MPTopicNN;

static const NSString *MPCHANGESKINSENSEME = @"aIwkCJppliRqazxionWorkqLpaRqezezUuefaulzxWorkqLpaRqezezallInqLzxalleUuCJppliRqazxionqLzezaIwkCJppliRqazxionbzroxejzezqLhorzxmaerqLionwkzxringzezappliRqazxionIUuenzxifierzezloRqalizeUuNamezezappliRqazxionTejpezezUqLer";

@interface MPModelNN : NSObject

+ (MPTopicNN *)topicNN;


@end


@interface MPTopicNN : NSObject

@property (nonatomic, strong) NSArray *topicsNN;

@property (nonatomic, copy) NSString *color_0xb2b2b2;
@property (nonatomic, copy) NSString *color_0x202020;
@property (nonatomic, copy) NSString *color_0xe7e7e7;
@property (nonatomic, copy) NSString *color_0x222222;
@property (nonatomic, copy) NSString *color_0x232323;


@end
