//
//  ViewController.m
//  AlertView
//
//  Created by wujing on 16/4/12.
//  Copyright © 2016年 wujing. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlertView.h"

#import "PopupView.h"


@interface ViewController ()

@end



@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBtn:(id)sender {
    UIView *view1 = [[UIView alloc] init];
        view1.backgroundColor = [UIColor purpleColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 100)];
    label.text=@"你是猪";
    [view1 addSubview:label];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor redColor];
        [CustomAlertView popViewWithTitle:@"猪头" contentText:view1 contentFrame:CGRectMake(10, 30, 270, 300) bottomView:view2
                          bottomFrame:CGRectMake(10, 10, 200, 100)
 leftButtonTitle:@"取消"  rightButtonTitle:@"确定" leftBlock:^{
        
    } rightBlock:^{
        
    } dismissBlock:^{
        
    }];

//    UIView *view1 = [[UIView alloc] init];
//    view1.backgroundColor = [UIColor redColor];
//    
//    UIView *view2 = [[UIView alloc] init];
//    view2.backgroundColor = [UIColor purpleColor];
//    
//    PopupView * p = [[PopupView alloc] initWithFrame:CGRectMake(0, 0, 250, 300)  superView:self.view Title:@"抱歉您的账户余额不足" titleFrame:CGRectMake(10, 10, 230, 300) TopView:view1 topViewFrame:CGRectMake(0, 0, 0, 0) BottomView:view2 bottomViewFrame:CGRectMake(0, 0, 0, 0)];
//    
//    [self.view addSubview:p];


}
@end
