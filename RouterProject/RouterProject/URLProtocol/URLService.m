//
//  URLService.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "URLService.h"

/// 协议管理控制中心
///
@interface URLService()

@property (nonatomic, strong) NSMutableDictionary *cacheProtocolDict;

@end

@implementation URLService

+ (id)shareInstance{
    static URLService *urlService;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        urlService = [[URLService alloc]init];
    });
    return  urlService;
}

/// 注册协议和类相互关联 key - value
- (void)registerProtocol:(Protocol *)protocol forClass:(Class )cls{
    [self.cacheProtocolDict setValue:cls forKey:NSStringFromProtocol(protocol)];
    NSLog(@"protocol List: %@",self.cacheProtocolDict);
}

//从协议字典中取出需要用到的类
- (Class)classForProtocol:(Protocol *)protocol{
    return self.cacheProtocolDict[NSStringFromProtocol(protocol)];
}

- (NSMutableDictionary *)cacheProtocolDict{
    if(_cacheProtocolDict == nil){
        _cacheProtocolDict = [NSMutableDictionary new];
    }
    return  _cacheProtocolDict;
}

@end
