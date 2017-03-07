//
//  ViewController.m
//  XLTieBarLoadingDemo
//
//  Created by MengXianLiang on 2017/3/7.
//  Copyright © 2017年 MengXianLiang. All rights reserved.
//

#import "ViewController.h"
#import "XLTieBarLoading.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XLTieBarLoading *loading = [[XLTieBarLoading alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    loading.center = self.view.center;
    [self.view addSubview:loading];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
