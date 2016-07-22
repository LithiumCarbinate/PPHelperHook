//
//  Error.h
//  PPHelperHook
//
//  Created by leelinux on 16/7/22.
//  Copyright © 2016年 leelinux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Error : NSObject
@property (nonatomic, assign) NSInteger code;
@property (nonatomic, strong) NSString *message;

- (instancetype) initWithCode:(NSInteger) code message:(NSString *)message;

@end
