//
//  TargetModule.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "Target_Module.h"
#import "MediatorVC.h"

@implementation Target_Module

- (UIViewController *)Action_nativeViewController:(NSDictionary *)param{
    NSLog(@"param: %@",param);
    MediatorVC *vc = [[MediatorVC alloc]init];
    return vc;
}

@end
