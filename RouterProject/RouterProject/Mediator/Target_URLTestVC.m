//
//  Target_Test.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "Target_URLTestVC.h"
#import "URLTestVC.h"

@implementation Target_URLTestVC

- (UIViewController *)Action_urlTestVC:(NSDictionary *)param{
    return  [URLTestVC new];;
}

@end
