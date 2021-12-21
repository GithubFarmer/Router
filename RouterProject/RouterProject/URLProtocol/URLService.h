//
//  URLService.h
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface URLService : NSObject


+ (id)shareInstance;

- (void)registerProtocol:(Protocol *)protocol forClass:(Class )cls;
- (Class)classForProtocol:(Protocol *)protocol;

@end

NS_ASSUME_NONNULL_END
