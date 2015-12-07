//
//  LoginViewController.m
//  storm
//
//  Created by Zack Pajka on 7/5/15.
//  Copyright (c) 2015 Swerve. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *url = [NSURL URLWithString:@"https://api.venmo.com/v1/oauth/authorize?client_id=2858&scope=make_payments%20access_payment_history%20access_profile%20access_friends%20access_phone%20access_balance&response_type=code"];
    
    //NSURL *url = [NSURL URLWithString:@"https://api.venmo.com/v1/oauth/authorize?scope=make_payments%2Caccess_feed%2Caccess_profile%2Caccess_email%2Caccess_phone%2Caccess_balance%2Caccess_friends&response_type=code&redirect_uri=https://coin-storm.herokuapp.com%2Fauth%2Fvenmo%2Fcallback&client_id=2858"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.m_webView loadRequest:request];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(LoginSuccess) name:@"NSURLConnectionDidFinish" object:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)LoginSuccess
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
