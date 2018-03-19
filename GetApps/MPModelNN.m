//
//  MPModelNN.m
//  De
//
//  Created by macRong on 2018/3/13.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import "MPModelNN.h"

@implementation MPModelNN

+ (MPTopicNN *)topicNN
{
    return [[MPTopicNN alloc]init];
}

@end


@implementation MPTopicNN

- (NSArray *)topicsNN
{
    if (!_topicsNN)
    {
        _topicsNN = @[@"color_000000"];
    }
    
    return _topicsNN;
}

@end
