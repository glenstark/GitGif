//
//  ViewController.m
//  GetGif
//
//  Created by Christopher Stark on 12/20/19.
//  Copyright © 2019 Christopher Stark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultSessionConfiguration];
    
    NSString *url_str = @"http://api.giphy.com/v1/gifs/search?q=ball&api_key=DLCVuTK6KZExOS7JoMq82bi5MaI6EbWO&limit=1";
    NSURL *url = [NSURL URLWithString:url_str];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];

    [request setURL:url];
    [request setHTTPMethod:@"GET"];
    //[request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    __block BOOL done = NO;
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        {
            NSLog(@"Response: %@",response);
            NSLog(@"Data: %@",data);
            NSLog(@"Error: %@",error);
            if (data) {
                [self->imgGif setAnimationImages:[NSArray arrayWithObjects:data, nil]];
                //[self->imgGif setImage:[UIImage imageWithData:data]];
            }
            
            done = YES;
        }
    }];
    
    [dataTask resume];
}


- (IBAction)cmdGifText:(id)sender {
}

- (IBAction)cmdGo:(id)sender {
}
@end
