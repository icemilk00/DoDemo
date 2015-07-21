//
//  BaseAPIManager.h
//  DoDemo
//
//  Created by hp on 15/7/14.
//  Copyright (c) 2015年 hp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseAPIManager;

#pragma mark -- APIManager --
@protocol APIManager <NSObject>

@required
-(NSString *)apiMethodName;

@end

#pragma mark -- APIManagerDelegate --
@protocol APIManagerDelegate <NSObject>

-(void)APIManagerDidSucess:(BaseAPIManager *)manager;
-(void)APIManagerDidFailed:(BaseAPIManager *)manager;

@end

#pragma mark -- 基类APIManager --
@interface BaseAPIManager : NSObject

@property (nonatomic, weak) id <APIManager> child;
@property (nonatomic, weak) id <APIManagerDelegate> delegate;

@end

#pragma mark -- 请求日韩男歌手的API --
@interface RiHanMaleSingersListAPIManager : BaseAPIManager <APIManager>

-(void)getDataWithCategoryId:(NSString *)categoryId andLastUpdateTime:(NSString *)lastUpdateTime;

@end