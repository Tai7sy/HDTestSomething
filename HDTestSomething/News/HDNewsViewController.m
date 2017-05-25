//
//  HDNewsViewController.m
//  HDTestSomething
//
//  Created by yscompany on 2017/5/22.
//  Copyright © 2017年 yscompany. All rights reserved.
//

#import "HDNewsViewController.h"
#import "HDNetworkingLearnController.h"

@interface HDNewsViewController ()<NSURLConnectionDelegate>

@end

@implementation HDNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"网络" style:UIBarButtonItemStylePlain target:self action:@selector(enterNetworkingInterface)];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
//    [self simpleSearchInternet];
//    [self learnURLLoading];
}
- (void)learnURLLoading {
    NSURL *url = [NSURL URLWithString:
                  @"http://www.onevcat.com/2011/11/debug/;param?p=307#more-307"];
    NSLog(@"Scheme: %@", [url scheme]);
    NSLog(@"Host: %@", [url host]);
    NSLog(@"Port: %@", [url port]);
    NSLog(@"Path: %@", [url path]);
    NSLog(@"Relative path: %@", [url relativePath]);
    NSLog(@"Path components as array: %@", [url pathComponents]);
    NSLog(@"Parameter string: %@", [url parameterString]);
    NSLog(@"Query: %@", [url query]);
    NSLog(@"Fragment: %@", [url fragment]);
}
- (void)simpleSearchInternet {
    NSString *urlStr = @"https://www.baidu.com";
    NSString *encodedString = KencodingCNtoEN(urlStr);
    NSURL *url = [NSURL URLWithString:encodedString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
    [connection start];
   
}
#pragma mark - button action method
- (void)enterNetworkingInterface {
    HDNetworkingLearnController *vc = [HDNetworkingLearnController new];
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - NSURLConnection delegate
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge  {
    NSLog(@"%@",NSStringFromSelector(@selector(connection:didReceiveAuthenticationChallenge:)));
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"%@",NSStringFromSelector(@selector(connection:didFailWithError:)));
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