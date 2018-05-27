//
//  TwoViewController.m
//  jumpVC
//
//  Created by 王飞 on 2017/10/16.
//  Copyright © 2017年 王飞. All rights reserved.
//

#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    NSLog(@"3%@",NSStringFromClass([self.presentationController class]));
//    NSLog(@"3%@",NSStringFromClass([self.presentedViewController class]));
//    NSLog(@"3%@",NSStringFromClass([self.presentingViewController class]));
    NSLog(@"nav--%p", self.navigationController);
    NSLog(@"--%p", self);
}
- (IBAction)btnClick:(id)sender {
//    NSLog(@"3-%@",NSStringFromClass([self.presentationController class]));
//    NSLog(@"3-%@",NSStringFromClass([self.presentedViewController class]));
//    NSLog(@"3-%@",NSStringFromClass([self.presentingViewController class]));

    ThreeViewController *three = [[ThreeViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:three];
    [self presentViewController:nav animated:YES completion:nil];
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
