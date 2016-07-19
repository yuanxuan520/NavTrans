//
//  ViewController.m
//  NavTrans
//
//  Created by yuanxuan on 16/6/15.
//  Copyright © 2016年 yuanxuan. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "Animation.h"
@interface ViewController ()<UINavigationControllerDelegate>

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"呵呵";
//    //设置NavigationBar背景颜色
    
//    self.navigationController.delegate = self;
//    [[[self.navigationController.navigationBar subviews] objectAtIndex:0] setAlpha:0];
    //@{}代表Dictionary
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn addTarget:self action:@selector(enterAView:) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(0, 50, 320, 50)];
    [btn setTitle:@"下一个" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)enterAView:(UIButton *)btn
{
    AViewController *aviewControl = [[AViewController alloc] init];
    self.navigationController.delegate = self;
    [self.navigationController pushViewController:aviewControl animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void) navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    // 如果进入的是当前视图控制器
//    if (viewController == self) {
//        // 背景设置为黑色
//        [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:1.000 green:0.432 blue:0.439 alpha:1.000]];
//        // 透明度设置为0.3
//        self.navigationController.navigationBar.alpha = 0.300;
//        // 设置为半透明
//        self.navigationController.navigationBar.translucent = YES;
//    } else {
//        // 进入其他视图控制器
//        self.navigationController.navigationBar.alpha = 1;
//        // 背景颜色设置为系统默认颜色
//        self.navigationController.navigationBar.tintColor = nil;
//        self.navigationController.navigationBar.translucent = NO;
//    }
//}
- (id<UIViewControllerAnimatedTransitioning>)
navigationController:(UINavigationController *)navigationController
animationControllerForOperation:(UINavigationControllerOperation)operation
fromViewController:(UIViewController*)fromVC
toViewController:(UIViewController*)toVC
{
    if (operation == UINavigationControllerOperationPop) {
//        Animation *animation  = [[Animation alloc] init];
//        return animation;
    }
    return nil;
}



@end
