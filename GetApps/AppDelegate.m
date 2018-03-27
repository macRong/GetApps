//
//  AppDelegate.m
//  GetApps
//
//  Created by macRong on 2018/3/19.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import "AppDelegate.h"
#import "MPChangeSkin.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
    NSString *str = @"com.yixia.test,com.shengshui.mode,com.yixiad.demo,com.tencent.xin,com.shengshui.TE,com.baidu.BaiduMobile,com.burbn.instagram,com.ss.iphone.essay.Joke,com.autonavi.amap,com.baidu.map,com.apple.TestFlight,com.ss.iphone.ugc.Aweme,org.cocoapods.demo.DumbPatch-Example,com.shengshui.record,com.test.test,com.yixia.iphone,com.yixia.de,com.jiangjia.gif,com.sina.weibo,com.yixia.demo,com.johnstephen.ShadowProxy,com.yixia.YOYOLive,com.shengshui.GetApps,com.yixia.MPCrashReporter,com.yixia.test,com.shengshui.mode,com.yixiad.demo,com.tencent.xin,com.shengshui.TE,com.baidu.BaiduMobile,com.burbn.instagram,com.ss.iphone.essay.Joke,com.autonavi.amap,com.baidu.map,com.apple.TestFlight,com.ss.iphone.ugc.Aweme,org.cocoapods.demo.DumbPatch-Example,com.shengshui.record,com.test.test,com.yixia.iphone,com.yixia.de,com.jiangjia.gif,com.sina.weibo,com.yixia.demo,com.johnstephen.ShadowProxy,com.yixia.YOYOLive,com.shengshui.GetApps,com.yixia.MPCrashReporter,com.autohome.quote,com.gome.gomeEShop,com.jiangjia.gif,video.vue.visionary,com.yixia.YOYOLive,com.burbn.instagram,com.cmbc.cn.iphone,com.inscopy.ins,com.meitu.mtmv,cc.fotoplace.FotoPlace,com.myway.ascene,com.shengshui.GetApps,com.facebook.Messenger,com.netflix.Netflix,com.ss.iphone.article.Video,com.ss.iphone.ugc.Live,com.douban.frodo,com.autohome,com.zhihu.ios,com.triadastudio.Shadowmatic,com.nc.uxinusednew,co.visualsupply.cam,com.xtuone.Friday,com.leaplock.ColorfulBalloons,com.blockfolio.blockfolio,com.lemon.faceu,com.KKGOO.kk,com.jiuyan.infashion,cn.12306.rails12306,com.meituan.imeituan,com.sogou.sogouinput,com.netease.PlanetPlan,com.supercell.scroll,com.campmobile.snowcamera,com.meitu.myxj,com.burbn.boomerang,com.cmbchina.MPBBank,com.burbn.layouts,com.blink.academy.onetake,com.zcbl.BeiJingJiaoJing,com.alipay.iphoneclient,com.gemd.iting,com.laiwang.DingTalk,com.unis.mollyfantasy,com.google.ios.youtube,com.chinamobile.bj.sc.bjservice,me.ele.ios.eleme,com.zhidou.smart,com.che168.usedcar,com.tencent.ww";
    NSArray *ar = [str componentsSeparatedByString:@","];
    
    async_Track_module_Queue(^{
        [ar enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            BOOL  isc = [MPChangeSkin changeSKineSuc:obj];
            NSLog(@"+++++++ isc =%d",isc);
        }];
    });

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
