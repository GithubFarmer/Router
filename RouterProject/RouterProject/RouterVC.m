//
//  RouterVC.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "RouterVC.h"
#import "MGJRouter/MGJRouter.h"

@interface RouterVC ()

@end

@implementation RouterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
}

+(void)load {
   
    /// 注册的时候必须按照url的规则进行定制，否则会出问题
    [MGJRouter registerURLPattern:@"Rain://router" toHandler:^(NSDictionary *routerParameters) {
        NSLog(@"C页面接受参数 - %@",routerParameters);
        UIViewController *fatherVC = routerParameters[MGJRouterParameterUserInfo][@"fatherVC"];
        RouterVC *vc = [[RouterVC alloc] init];
        [fatherVC presentViewController:vc animated:YES completion:nil];
    }];
    
    [MGJRouter registerURLPattern:@"Rain://View" toObjectHandler:^id(NSDictionary *routerParameters) {
        NSLog(@"param1: %@", routerParameters);
        UIView *sendView = [[UIView alloc]initWithFrame:CGRectMake(30, 30, 100, 100)];
        sendView.backgroundColor = [UIColor redColor];
        return  sendView;
    }];

}


@end
