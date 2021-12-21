//
//  Person.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "Person.h"
#import <objc/runtime.h>
#import "Car.h"


@implementation Person

// 1、动态转发机制
+ (BOOL)resolveInstanceMethod:(SEL)sel{
//    if (sel == @selector(sendMessage)){
//        class_addMethod(self, sel, (IMP)dymicMethod, "v@:");
//        return YES;
//    }
    return [super resolveInstanceMethod:sel];
}

// 2、快速查找方法
- (id)forwardingTargetForSelector:(SEL)aSelector {
//    if (aSelector == @selector(sendMessage)){
//        return  [Car new];
//    }
    return  [super forwardingTargetForSelector:aSelector];
}


// 3、慢速查找方法
-(NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (aSelector == @selector(sendMessage)){
        //给方法签名
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

// 签名方法转发
- (void)forwardInvocation:(NSInvocation *)anInvocation{
    SEL sel = anInvocation.selector;
    Car *car = [Car new];
    if ([car respondsToSelector:sel]) {
        [anInvocation invokeWithTarget:car];
    }else{
        [self doesNotRecognizeSelector:sel];
    }
}


void dymicMethod(id obj, SEL cmd){
    NSLog(@"dymicMethod");
}

//- (id)forwardingTargetForSelector:(SEL)aSelector

-(void)doesNotRecognizeSelector:(SEL)aSelector{
    NSLog(@"没有该方法: %@",NSStringFromSelector(aSelector));
}

@end
