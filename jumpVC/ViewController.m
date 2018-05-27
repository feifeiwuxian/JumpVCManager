//
//  ViewController.m
//  jumpVC
//
//  Created by 王飞 on 2017/10/11.
//  Copyright © 2017年 王飞. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "JumpVCManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self test];
    NSLog(@"nav--%p", self.navigationController);
    NSLog(@"--%p", self);
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self click];
}
- (void)click
{
    OneViewController * vc = [OneViewController new];

      [self.navigationController pushViewController:vc animated:YES];

    TwoViewController *twoVC = [[TwoViewController alloc] init];
  [self.navigationController pushViewController:twoVC animated:YES];
    
    // 操作栈
//    NSMutableArray *arr = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
//    [arr insertObject:vc atIndex:arr.count -1];
//    self.navigationController.viewControllers = arr;
    


//    NSLog(@"%@",NSStringFromClass([self.presentationController class]));
//    NSLog(@"%@",NSStringFromClass([self.presentedViewController class]));
//    NSLog(@"%@",NSStringFromClass([self.presentingViewController class]));
//    NSLog(@"%@",NSStringFromClass([vc.presentationController class]));
//    NSLog(@"%@",NSStringFromClass([vc.presentedViewController class]));
//    NSLog(@"%@",NSStringFromClass([vc.presentingViewController class]));
}

- (void)test{
    int i = 0;
    while (i < 10){
        NSLog(@"i = %d", i);
        i++;
        if (i > 3) {
            return;
        }
        NSLog(@"while内");
    };
    NSString *ss = @"ssss";
    NSLog(@"%@", ss);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
