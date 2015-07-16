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
    //NSURL *url = [NSURL URLWithString:@"http://raywenderlich.com"];
    NSURL *url = [NSURL URLWithString:@"http://mikhas.azurewebsites.net/"];
    //NSURL *url = [NSURL URLWithString:@"https://api.venmo.com/v1/oauth/authorize?client_id=2678&scope=make_payments%20access_payment_history%20access_profile%20access_friends%20access_phone%20access_balance&response_type=code"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.m_webView loadRequest:request];
    
    //[self.m_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://api.venmo.com/v1/oauth/authorize?client_id=2678&scope=make_payments%20access_payment_history%20access_profile%20access_friends%20access_phone%20access_balance&response_type=code"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end