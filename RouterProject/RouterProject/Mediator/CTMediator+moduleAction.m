//
//  CTMediator+moduleAction.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "CTMediator+moduleAction.h"

//  1. 字符串 是类名 Target_xxx.h 中的 xxx 部分
NSString * const kCTMediatorTarget_Course = @"Module";

//  2. 字符串是 Target_xxx.h 中 定义的 Action_xxxx 函数名的 xxx 部分
NSString * const kCTMediatorActionNativTo_nativeCourseListPage = @"nativeViewController";

@implementation CTMediator (moduleAction)

- (UIViewController *)mediator_target_action_withParam:(NSDictionary *)param{
    UIViewController *vc = [self performTarget:kCTMediatorTarget_Course action:kCTMediatorActionNativTo_nativeCourseListPage params:param shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]){
        return  vc;
    }else{
        // 异常处理
        NSLog(@"%@ 未能实例化页面",NSStringFromSelector(_cmd));
        return [UIViewController new];
    }
}

- (UIViewController *)mediator_urlTestVC{
//    UIViewController *vc = [self performTarget:@"URLTestVC" action:@"urlTestVC" params:@{} shouldCacheTarget:NO];
//    if ([vc isKindOfClass:[UIViewController class]]){
//        return  vc;
//    }else{
//        // 异常处理
//        NSLog(@"%@ 未能实例化页面",NSStringFromSelector(_cmd));
//        return [UIViewController new];
//    }
    return  [self performTarget:@"URLTestVC" action:@"urlTestVC" params:@{} shouldCacheTarget:NO];
}
@end
