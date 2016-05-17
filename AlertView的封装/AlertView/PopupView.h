//
//  PopupView.h
//  AlertView
//
//  Created by Jcy on 16/4/14.
//  Copyright © 2016年 wujing. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PopupView : UIView


- (instancetype)initWithFrame:(CGRect)frame superView:(UIView *)superView Title:(NSString *)title titleFrame:(CGRect)titleFrame  TopView:(UIView*)topView  topViewFrame:(CGRect)topViewFrame BottomView:(UIView *)bottomView  bottomViewFrame:(CGRect)bottomViewFrame;


@end
