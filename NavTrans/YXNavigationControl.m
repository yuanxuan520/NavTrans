//
//  YXNavigationControl.m
//  NavTrans
//
//  Created by yuanxuan on 16/6/22.
//  Copyright © 2016年 yuanxuan. All rights reserved.
//

#import "YXNavigationControl.h"

@implementation YXNavigationControl


- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScreenEdgePanGestureRecognizer *leftege = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgePanGesture:)];
    leftege.edges = UIRectEdgeLeft;
    
    [self.navigationController.view addGestureRecognizer:leftege];
}

#pragma mark - pop gesture

- (void)edgePanGesture:(UIScreenEdgePanGestureRecognizer *)recognizer {
    CGFloat progress = [recognizer translationInView:self.view].x / (self.view.bounds.size.width * 4.0);
    progress = MIN(1.0, MAX(0.0, progress));
    
    switch (recognizer.state) {
        case UIGestureRecognizerStateBegan: {
//            self.interactivePopTransition = [UIPercentDrivenInteractiveTransition new];
            [self.navigationController popViewControllerAnimated:YES];
            break;
        }
        case UIGestureRecognizerStateChanged: {
//            [self.interactivePopTransition updateInteractiveTransition:progress];
            break;
        }
        case UIGestureRecognizerStateEnded:
        case UIGestureRecognizerStateCancelled: {
//            if (progress > 0.3) {
//                [self.interactivePopTransition finishInteractiveTransition];
//            } else {
//                [self.interactivePopTransition cancelInteractiveTransition];
//            }
//            self.interactivePopTransition = nil;
            break;
        }
        default: {
            break;
        }
    }
}


@end
