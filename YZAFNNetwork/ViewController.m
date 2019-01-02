//
//  ViewController.m
//  YZAFNNetwork
//
//  Created by jonzhang on 2018/11/21.
//  Copyright © 2018年 xinmei. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self nsurlesession];
    
    [self afnnetwork];
}
- (void)afnnetwork
{
    AFHTTPSessionManager * manager = [[AFHTTPSessionManager alloc] initWithBaseURL:[[NSURL alloc]initWithString:@"hostname"]];
    [manager GET:@"relative_url" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
                                      
    
}
- (void)nsurlesession
{
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc] initWithURL:[[NSURL alloc]initWithString:@"https://github.com"]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask * task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString * dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"datatstr == %@",dataStr);
    }];
    [task resume];
    
}

@end
