//
//  ApiClient.m
//  PPHelperHook
//
//  Created by leelinux on 16/7/21.
//  Copyright © 2016年 leelinux. All rights reserved.
//

#import "ApiClient.h"

#define HeaderDic @{@"Host":@"jsondata.25pp.com", @"User-Agent": @"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/601.5.17 (KHTML, like Gecko)", @"Accept": @"text,/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8", @"Accept-Language":@"zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3", @"Accept-Encoding": @"gzip, deflate", @"Tunnel-Command": @"4261433392", @"Content-Type": @"application/json", @"Referer":@"http://ppmac2.25pp.com/zb_pp_v3/index.html", @"Content-Length": @"87", @"Origin": @"http://ppmac2.25pp.com",@"Connection": @"keep-alive"}



@implementation ApiClient



+ (instancetype) sharedClient{

    static ApiClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
//        [config setHTTPAdditionalHeaders:HeaderDic];

       
        [config setRequestCachePolicy:NSURLRequestReloadIgnoringLocalCacheData];

        _sharedClient = [[ApiClient alloc] initWithBaseURL:[NSURL URLWithString:HTTP_HOST]
                                      sessionConfiguration:config];

//        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
        _sharedClient.responseSerializer = [AFHTTPResponseSerializer serializer];

    });

    return _sharedClient;

}
- (void)setHashedHeader{

    for (int i = 0 ; i < [HeaderDic allKeys].count; i++) {

        for ( int j = 0 ; j < [HeaderDic allValues].count; j++ ) {

            if (j == i) {

                [self.requestSerializer setValue:[HeaderDic allValues][j] forHTTPHeaderField:[HeaderDic allKeys][i]];
                
            }
            
        }
    }


}
- (NSURLSessionDataTask *)POST:(NSString *)URLString
                    parameters:(id)parameters
     constructingBodyWithBlock:(void (^)(id <AFMultipartFormData> formData))block
                      progress:(nullable void (^)(NSProgress * _Nonnull))uploadProgress
                       success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                       failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
{

    [self setHashedHeader];
    return [super POST:URLString parameters:parameters constructingBodyWithBlock:block progress:uploadProgress success:success failure:failure];
}


- (NSURLSessionDataTask *)postWithPageIndex:(NSInteger)pageIndex completion:(ObjCompletionBlock)completion{

    NSDictionary * formDic = @{@"dcType": @0, @"resType": @1, @"listType": @5, @"catId": @0, @"clFlag": @1, @"perCount": @32, @"page": @(pageIndex)};

    NSURLSessionDataTask *task = [self POST:@"index.html" parameters:formDic constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {

//
//
//        for (int  i = 0 ; i < [formDic allValues].count; i++) {
//
//            for (int j = 0; j < [formDic allKeys].count; j++) {
//
//                if (i == j) {
//
//                    NSMutableData *value = [[NSMutableData alloc] init];
//
//                    [value appendData:[[NSString stringWithFormat:@"%@",[formDic allValues][j]] dataUsingEncoding:NSUTF8StringEncoding]];
//
//                    [formData appendPartWithFormData:value name:[formDic allKeys][i]];
//
//                }
//
//            }
//
//        }

//        NSMutableData *value = [[NSMutableData alloc] init];
//
//        [value appendData:[[NSString stringWithFormat:@"%@",formDic] dataUsingEncoding:NSUTF8StringEncoding]];
//
//        [formData appendPartWithFormData:value name:@""];

//         NSLog(@"------------formData-formData-%@---------",formData);


    } progress:^(NSProgress * _Nonnull uploadProgress) {

    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"-------------%@---------",responseObject);

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-------------%@---------",error);
    }];

    return task;

}


@end
