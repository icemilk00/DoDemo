//
//  DoMainViewController.m
//  DoDemo
//
//  Created by hp on 15/7/14.
//  Copyright (c) 2015年 hp. All rights reserved.
//

#import "DoMainViewController.h"

@interface DoMainViewController ()

@end

@implementation DoMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *urlstr = [[NSURL URLWithString:[@"http://m.mvbox.cn/sod?action=1&parameter={\"newTime\":\"\",\"beginIndex\":\"0\",\"rows\":\"30\",\"categoryID\":\"1418\"}" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding] relativeToURL:nil] absoluteString];
    NSLog(@"urlstr = %@", urlstr);
    
    [self.riHanMaleSingersListAPIManager getDataWithCategoryId:@"1418" andLastUpdateTime:@""];
    
}

#pragma RiHanMaleSingersListAPIManager getter
-(RiHanMaleSingersListAPIManager *)riHanMaleSingersListAPIManager
{
    if (!_riHanMaleSingersListAPIManager) {
        _riHanMaleSingersListAPIManager = [[RiHanMaleSingersListAPIManager alloc] init];
        _riHanMaleSingersListAPIManager.delegate = self;
    }
    return _riHanMaleSingersListAPIManager;
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
