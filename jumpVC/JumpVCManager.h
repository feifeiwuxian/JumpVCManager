//
//  JumpVCManager.h
//  jumpVC
//
//  Created by 王飞 on 2017/10/20.
//  Copyright © 2017年 王飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, AnimationType) {
    AnimationTypeBottom,
    AnimationTypeLeft,
};

@interface JumpVCManager : NSObject
//@property (nonatomic,strong) UIViewController* rootVC;
+ (instancetype)shareInstance;
- (void)backToRootVCAnimation:(AnimationType)type;
- (void)backToRootVC;
- (UIViewController *)visibleVC;
@end
