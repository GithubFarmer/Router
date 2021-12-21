//
//  CTMediator+moduleAction.h
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (moduleAction)

- (UIViewController *)mediator_target_action_withParam:(NSDictionary *)param;

- (UIViewController *)mediator_urlTestVC;

@end

NS_ASSUME_NONNULL_END
