//
//  Car.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "Car.h"

@implementation Car


- (void)sendMessage{
    NSLog(@"%@ === %@",NSStringFromSelector(@selector(sendMessage)),NSStringFromClass([self class]));
}
@end
