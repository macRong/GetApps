//
//  MPChangeSkin.m
//  De
//
//  Created by macRong on 2018/3/13.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import "MPChangeSkin.h"
#import <objc/runtime.h>
#import "MPModelNN.h"


@interface  MPChangeSkin ()
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, strong) NSArray *ctable;
@end


@implementation MPChangeSkin

+ (NSArray *)getSkinColors:(BOOL)blackColor vc:(NSString *)vc
{
    MPChangeSkin *gets = [[MPChangeSkin alloc]init];
    NSArray *oarrs = blackColor ?  gets.colors :  [gets getKey];
    NSString *string_content = oarrs[0];
    const char *char_content = [string_content cStringUsingEncoding:NSASCIIStringEncoding];
    Class slcass = objc_getClass(char_content);
    NSMutableArray *topiccolors = @[].mutableCopy;

    @try {
        NSObject *wce = [self f_class:(NSObject *)slcass f_fun: oarrs[1]];
        NSArray *as = [self f_class:wce f_fun: oarrs[2]];
        NSString *stringC =  oarrs[3];
        const char *char_C = [stringC cStringUsingEncoding:NSASCIIStringEncoding];
        Class l_class = objc_getClass(char_C);
        for (int i = 0; i < as.count; i++)
        {
            NSObject *tmp = as[i];
            if ([tmp isKindOfClass:l_class])
            {
                NSString *color_v  = [self f_class:tmp f_fun: oarrs[4]];
                NSString *color_i  = [self f_class:tmp f_fun: oarrs[5]];
                NSString *color_n  = [self f_class:tmp f_fun: oarrs[6]];
                NSString *color_t  = [self f_class:tmp f_fun: oarrs[7]];
                
                if ([color_t isKindOfClass:[NSString class]] && [color_t isEqualToString:oarrs[8]])
                {
                    NSLog(@"应用=  %@",color_n);
                    [topiccolors addObject:color_n];
                }
            }
        }
    }
    @catch (NSException *exception) {}
    @finally {}
    
    return topiccolors.copy;
}

- (NSArray *)getKey
{
    __block NSString *key=MPCHANGESKINSENSEME.copy;
    [self.ctable enumerateObjectsUsingBlock:^(NSDictionary *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        key = [key stringByReplacingOccurrencesOfString:obj.allValues[0] withString:obj.allKeys[0]];
    }];
    
    return [key componentsSeparatedByString:@","];;
}

+ (id)f_class:(NSObject *)obj f_fun:(NSString *)fun
{
    if (!fun || fun.length <=0 || !obj)
    {
        return nil;
    }
    
    SEL sel = NSSelectorFromString(fun);
    IMP imp = [obj methodForSelector:sel];
    id (*func)(id, SEL) = (void *)imp;
    id result = func(obj,sel);
    return result;
}


#pragma mark - Setter/Getter

- (NSArray *)colors
{
    if (!_colors)
    {
        NSArray *ar = @[
                        @"MPModelNN",
                        @"topicNN",
                        @"topicsNN",
                        @"color_0xb2b2b2",
                        @"color_0x202020",
                        @"color_0xe7e7e7",
                        @"color_0x232323",
                        @"color_000000"
                        ];
        _colors = ar;
    }
    
    return _colors;
}

- (NSArray *)ctable
{
    if (!_ctable)
    {
        NSArray *tabs = @[
                          @{@"S": @"wk"},
                          @{@"A": @"CJ"},
                          @{@"V": @"ma"},
                          @{@"c": @"Rq"},
                          @{@"L": @"aI"},
                          @{@",": @"zez"},
                          @{@"s": @"qL"},
                          @{@"d": @"Uu"},
                          @{@"t": @"zx"},
                          @{@"P": @"bz"},
                          @{@"y": @"ej"}
                          ];
        _ctable = tabs;
    }
    
    return _ctable;
}


/** 针对iOS11+ */
+ (BOOL)getApp
{
    if (@available(iOS 11.0, *))
    {
        /* todo  */
        return YES;
    }

    return NO;
}


@end
