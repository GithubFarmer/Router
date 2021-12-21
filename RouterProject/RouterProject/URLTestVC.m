//
//  URLTestVC.m
//  RouterProject
//
//  Created by Rainy on 2021/12/10.
//

#import "URLTestVC.h"
#import "URLService.h"


@interface URLTestVC ()

@end

@implementation URLTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
}

+ (void)load {
    [[URLService shareInstance]registerProtocol:@protocol(UrlProtocolhelp) forClass:[self class]];
}

-(void)setParam1:(NSString *)param {
    NSLog(@"param: %@",param);
}


@end
