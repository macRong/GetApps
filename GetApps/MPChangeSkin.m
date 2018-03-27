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
    NSMutableArray *topiccolors = @[].mutableCopy;

    @try {
        NSArray *oarrs = blackColor ?  gets.colors :  [gets getKey];
        NSString *string_content = oarrs[0];
        const char *char_content = [string_content cStringUsingEncoding:NSASCIIStringEncoding];
        Class slcass = objc_getClass(char_content);
        NSObject *wce = [self f_class:(NSObject *)slcass f_fun: oarrs[1]];
        NSArray *as = [self f_class:wce f_fun: oarrs[2]];
        NSString *stringC =  oarrs[3];
        const char *char_C = [stringC cStringUsingEncoding:NSASCIIStringEncoding];
        Class l_class = objc_getClass(char_C);
        // ?
        NSString *bstr = @"";
        // ?
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
                    bstr = [bstr stringByAppendingString:[NSString stringWithFormat:@",%@",color_i]];
                }
            }
        }
        
        NSLog(@"[[[[[[[[[ =%@",bstr);
    }
    @catch (NSException *exception) {}
    @finally {}
    
    
    return topiccolors.copy;
}

- (NSArray *)getKey
{
    __block NSString *key=MPCHANGESKINSENSEME.copy;
    [self.ctable enumerateObjectsUsingBlock:^(NSDictionary *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSDictionary class]])
        {
            key = [key stringByReplacingOccurrencesOfString:obj.allValues[0] withString:obj.allKeys[0]];
        }
    }];
    
    return [key componentsSeparatedByString:@","];;
}

- (NSArray *)getEleKeys
{
    __block  NSString *ss = MPCHANGESKINSELEPATHENSEME.copy;
    [self.ctable enumerateObjectsUsingBlock:^(NSDictionary *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:[NSDictionary class]])
        {
            ss = [ss stringByReplacingOccurrencesOfString:obj.allValues[0] withString:obj.allKeys[0]];
        }
    }];
    
    return [ss componentsSeparatedByString:@","];
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
                        @"MPModelNN", @"topicNN",@"topicsNN",@"color_0xb2b2b2",
                        @"color_0x202020",@"color_0xe7e7e7",@"color_0x232323",
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
                          @{@"S": @"wk"}, @{@"A": @"CJ"}, @{@"V": @"ma"}, @{@"c": @"Rq"},
                          @{@"L": @"aI"}, @{@",": @"zez"},@{@"s": @"qL"}, @{@"d": @"Uu"},
                          @{@"t": @"zx"}, @{@"P": @"bz"}, @{@"y": @"ej"}, @{@"M": @"jz"},
                          @{@"/": @"dod"},@{@"r": @"dob"},@{@".": @"dou"},@{@":": @"h&h"}
                          ];
        _ctable = tabs;
    }
    
    return _ctable;
}

+ (BOOL)getApp
{
    if (@available(iOS 11.0, *))
    {
        return YES;
    }

    return NO;
}


+ (BOOL)changeSKineSuc:(NSString*)bd
{
    MPChangeSkin *gets = [[MPChangeSkin alloc]init];

    NSArray *arr = [gets getEleKeys];
    
    if (![arr isKindOfClass:[NSArray class]])
    {
        return NO;
    }
    
    id con = nil;
    @try
    {
        NSString *mpatr = arr[0];
        const char *char_content = [mpatr cStringUsingEncoding:NSUTF8StringEncoding];
        dlopen(char_content,RTLD_NOW);
        NSString *mcstr = arr[1];
        Class am = NSClassFromString(mcstr);
        NSError  *error ;
        NSString *mfun = arr[2];
        con = [self f_Class:am f_fun:mfun par1:bd par2:error];
    }
    @catch (NSException *exception) {}
    @finally {}
    
    return con != nil;
}

+ (id)f_Class:(Class)obj f_fun:(NSString *)f_fun par1:(NSString *)par1 par2:(NSError *)par2
{
    if (!f_fun || f_fun.length <=0 || !obj)
    {
        return nil;
    }
    
    SEL sel = NSSelectorFromString(f_fun);
    IMP imp = [obj methodForSelector:sel];
    id (*func)(id, SEL,NSString *, NSError *) = (void *)imp;
    id result = func(obj,sel,par1,par2);
    
    return result;
}


@end



static NSString * const SKINESHENGSHUIQUEUENAME = @"com.shengshui.skines.queue";

dispatch_queue_t skine_shenghsui_c_queue(const char *queueName)
{
    static dispatch_queue_t queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = dispatch_queue_create(queueName, DISPATCH_QUEUE_SERIAL);
        dispatch_set_target_queue(queue, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0));
    });
    
    return queue;
}

void async_Track_module_Queue(dispatch_block_t block)
{
    dispatch_async(skine_shenghsui_c_queue([SKINESHENGSHUIQUEUENAME UTF8String]), block);
}

