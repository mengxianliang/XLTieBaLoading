//
//  XLTieBarLoading.h
//  XLTieBarLoadingDemo
//
//  Created by MengXianLiang on 2017/3/7.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLTieBarLoading : UIView

-(void)show;

-(void)hide;

/**
 * 显示方法
 */
+(void)showInView:(UIView*)view;

/**
 * 隐藏方法
 */
+(void)hideInView:(UIView*)view;

@end
