//
//  DoMainViewController.h
//  DoDemo
//
//  Created by hp on 15/7/14.
//  Copyright (c) 2015年 hp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoMainViewController : UIViewController <APIManagerDelegate>

@property (nonatomic, strong) RiHanMaleSingersListAPIManager *riHanMaleSingersListAPIManager;

@end
