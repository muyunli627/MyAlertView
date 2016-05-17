//
//  PopupView.m
//  AlertView
//
//  Created by Jcy on 16/4/14.
//  Copyright © 2016年 wujing. All rights reserved.
//

#import "PopupView.h"



@interface PopupView ()

@property (nonatomic, strong)UILabel * titleLabel;

@property (nonatomic, strong)UIImageView * bgImageView;

@end

@implementation PopupView



- (instancetype)initWithFrame:(CGRect)frame superView:(UIView *)superView Title:(NSString *)title titleFrame:(CGRect)titleFrame  TopView:(UIView*)topView  topViewFrame:(CGRect)topViewFrame BottomView:(UIView *)bottomView  bottomViewFrame:(CGRect)bottomViewFrame{
    
    if (self = [super initWithFrame:frame]){

        [self makeUiWithFrame:frame title:title  titleFrame:titleFrame topView:topView topViewFrame:topViewFrame bottomView:bottomView bottomViewFrame:bottomViewFrame];
        
        self.bgImageView.frame = CGRectMake(frame.origin.x,frame.origin.y,frame.size.width, CGRectGetMaxY(bottomView.frame)+ 10);
        
        self.center = superView.center;
        
    }
    
    return self;
    
}


- (void)makeUiWithFrame:(CGRect)frame title:(NSString *)title titleFrame:(CGRect)titleFrame topView:(UIView *)topView topViewFrame:(CGRect)topViewFrame  bottomView:(UIView *)bottomView bottomViewFrame:(CGRect)bottomViewFrame{
    
    _bgImageView = [[UIImageView alloc] initWithFrame:frame];
    _bgImageView.backgroundColor = [UIColor lightGrayColor];
    _bgImageView.userInteractionEnabled = YES;
    [self addSubview:_bgImageView];
    
    //title
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(titleFrame.origin.x, titleFrame.origin.y, titleFrame.size.width, [self getLableHeight:title labelWidth:titleFrame.size.width])];
    _titleLabel.text = title;
    _titleLabel.numberOfLines = 0;
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.backgroundColor = [UIColor cyanColor];
    [self addSubview:_titleLabel];
    
    topView.frame = CGRectMake(0, CGRectGetMaxY(_titleLabel.frame) + 10, topViewFrame.size.width, topViewFrame.size.height);
    [_bgImageView addSubview:topView];
    
    //确定
    UIButton * doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    doneButton.frame = CGRectMake((frame.size.width - 100* 2 - 15) / 2, CGRectGetMaxY(topView.frame) + 10, 100, 30);
    doneButton.backgroundColor = [UIColor orangeColor];
    [doneButton setTitle:@"确定" forState:UIControlStateNormal];
    [doneButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_bgImageView addSubview:doneButton];
    
    UIButton * cancleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancleButton.backgroundColor = [UIColor grayColor];
    cancleButton.frame = CGRectMake(CGRectGetMaxX(doneButton.frame) + 15, CGRectGetMaxY(topView.frame) + 10, 100, 30);
    [cancleButton setTitle:@"取消" forState:UIControlStateNormal];
    [cancleButton addTarget:self action:@selector(disMiss) forControlEvents:UIControlEventTouchUpInside];
    [cancleButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_bgImageView addSubview:cancleButton];
    
    bottomView.frame = CGRectMake(0, CGRectGetMaxY(cancleButton.frame) + 10, bottomViewFrame.size.width, bottomViewFrame.size.height);
    [_bgImageView addSubview:bottomView];
    
}

- (CGFloat)getLableHeight:(NSString *)str labelWidth:(CGFloat)width{
    
    NSDictionary * dic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:17.0], NSFontAttributeName,nil];
    
    CGRect rect = [str boundingRectWithSize:CGSizeMake(width, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil];

    return rect.size.height;

}


- (void)disMiss{
    
    [self removeFromSuperview];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
