//
//  AViewController.m
//  NavTrans
//
//  Created by yuanxuan on 16/6/15.
//  Copyright © 2016年 yuanxuan. All rights reserved.
//

#import "AViewController.h"
#import "Animation.h"

@interface AViewController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end


@implementation AViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationItem.backBarButtonItem setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor colorWithRed:220.0/255.0 green:104.0/255.0 blue:1.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
      [UIFont fontWithName:@"AmericanTypewriter" size:4.0], NSFontAttributeName,
      nil]
                                                         forState:UIControlStateNormal];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"哈哈";
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    [[[self.navigationController.navigationBar subviews] objectAtIndex:0] setAlpha:1];
    //设置NavigationBar背景颜色
//    [self.navigationController.navigationBar setBarTintColor:[UIColor redColor]];
//    //@{}代表Dictionary
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
//    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
//                                                         forBarMetrics:UIBarMetricsDefault];
    self.view.backgroundColor = [UIColor colorWithRed:0.937 green:0.937 blue:0.956 alpha:1.000];
//
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
//    backItem.title = @"返回";
//    self.navigationItem.backBarButtonItem = backItem;
//    [self.navigationController.navigationItem setBackBarButtonItem:barbtn];
//    [self.navigationItem setBackBarButtonItem:barbtn];
    
     self.navigationController.interactivePopGestureRecognizer.delegate =  self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (self.navigationController.viewControllers.count <= 1 ) {
        return NO;
    }
    
    return YES;
}


//- (id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController*)navigationController
//                          interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>)animationController
//{
//    
//    return self;
//}

@end
