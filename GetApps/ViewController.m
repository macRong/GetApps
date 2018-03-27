//
//  ViewController.m
//  GetApps
//
//  Created by macRong on 2018/3/19.
//  Copyright © 2018年 macRong. All rights reserved.
//

#import "ViewController.h"
#import "MPChangeSkin.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textV;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)switchAction:(id)sender
{
    UISwitch *swit = (UISwitch *)sender;
    NSArray *arr = [MPChangeSkin getSkinColors:swit.isOn vc:@""];
    NSString *tempString = [arr componentsJoinedByString:@","];
    self.textV.text = tempString;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
