//
//  VCRoot.m
//  分栏控制器基础
//
//  Created by zh dk on 2017/8/25.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个分栏按钮对象
    //方法一：
//    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"111" image:nil tag:101];
    
    //方法二：
    //根据系统风格创建分栏按钮
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:101];
    tabBarItem.badgeValue = @"22";
    self.tabBarItem = tabBarItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
