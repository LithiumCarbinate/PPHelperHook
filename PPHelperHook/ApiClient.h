//
//  ApiClient.h
//  PPHOOKHelperHook
//
//  Created by leelinux on 16/7/21.
//  Copyright © 2016年 leelinux. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"
#import "Error.h"

//#define     BUILD_DEV
//#define     BUILD_STAGE
#define     BUILD_PROD

// Base URL.
#define     PPHOOK_URL_DEV        @""
#define     PPHOOK_URL_STAGE      @""
#define     PPHOOK_URL_PROD       @"http://jsondata.25pp.com/"

#define     PPHOOK_SSL_URL_DEV        @""
#define     PPHOOK_SSL_URL_STAGE      @""
#define     PPHOOK_SSL_URL_PROD       @""

#ifdef BUILD_DEV
#define     HTTP_HOST                PPHOOK_URL_DEV
#define     HTTPS_HOST               PPHOOK_SSL_URL_DEV
#endif

#ifdef BUILD_STAGE
#define     HTTP_HOST                PPHOOK_URL_STAGE
#define     HTTPS_HOST            PPHOOK_SSL_URL_STAGE
#endif

#ifdef BUILD_PROD
#define     HTTP_HOST                PPHOOK_URL_PROD
#define     HTTPS_HOST            PPHOOK_SSL_URL_PROD
#endif


typedef void (^SuccessBlock)(NSURLSessionDataTask *task, id responseObject);
typedef void (^FailureBlock)(NSURLSessionDataTask *task, NSError *error);
typedef void (^ArrayCompletionBlock) (NSArray *results, Error *error);
typedef void (^ObjCompletionBlock) (id obj, Error *error);
typedef void (^CompletionBlock) (id obj);
@interface ApiClient : AFHTTPSessionManager

+ (instancetype) sharedClient;
/**
 *  @param pageIndex  请求实现
 *  @param completion  完成的block
 */
- (NSURLSessionDataTask *)postWithPageIndex:(NSInteger)pageIndex completion:(ObjCompletionBlock)completion;





@end
