//
//  ThreeViewController.m
//  jumpVC
//
//  Created by 王飞 on 2017/10/20.
//  Copyright © 2017年 王飞. All rights reserved.
//

#import "ThreeViewController.h"
#import "TwoViewController.h"
#import "JumpVCManager.h"
@interface ThreeViewController ()
@property (weak, nonatomic) IBOutlet UIView *oneView;
@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"nav--%p", self.navigationController);
    NSLog(@"--%p", self);
}
- (IBAction)btnClick:(id)sender {

    
    UIStoryboard *stroryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [stroryBoard instantiateViewControllerWithIdentifier:@"nav"];
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)goNav:(id)sender {
    TwoViewController *two = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:two animated:YES];
}
- (IBAction)goBack:(id)sender {
    for (NSInteger i = 0; i < 5; i++) {
         [[JumpVCManager shareInstance] backToRootVCAnimation:AnimationTypeBottom];
    }
}
- (IBAction)showCurrentVc:(id)sender {
    NSLog(@"%@",[[JumpVCManager shareInstance] visibleVC]);
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
