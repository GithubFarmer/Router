//
//  ViewController.m
//  RouterProject
//
//  Created by Rainy on 2021/12/9.
//

#import "ViewController.h"
#import "URLProtocol/CommonProtocol.h"
#import "URLProtocol/URLService.h"
#import "MGJRouter/MGJRouter.h"
#import "CTMediator+moduleAction.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)urlProtocol:(id)sender {
    Class cls = [[URLService shareInstance]classForProtocol:@protocol(UrlProtocolhelp)];
    UIViewController<UrlProtocolhelp> *vc = [[cls alloc]init];
    [vc setParam1:NSStringFromClass([self class])];
    [self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)routerUrl:(id)sender {
    /// 传递控制器， 参数等
    [MGJRouter openURL:@"Rain://router" withUserInfo:@{@"fatherVC":self} completion:nil];
    
    /// 传递视图，事件等
    UIView *recieveView = [MGJRouter objectForURL:@"Rain://View"];
    [self.view addSubview:recieveView];
}

- (IBAction)mediator:(id)sender {
//    UIViewController *vc = [[CTMediator sharedInstance]mediator_target_action_withParam:@{@"111":@"test"}];
//    [self presentViewController:vc animated:YES completion:nil];

    UIViewController *vc = [[CTMediator sharedInstance]mediator_urlTestVC];
    [self presentViewController:vc animated:YES completion:nil];


    // runtime原理探究
//    Person *person = [[Person alloc]init];
//    [person sendMessage];
}


@end
