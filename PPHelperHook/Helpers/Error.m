//
//  Error.m
//  PPHelperHook
//
//  Created by leelinux on 16/7/22.
//  Copyright © 2016年 leelinux. All rights reserved.
//

#import "Error.h"

@implementation Error
- (instancetype) initWithCode:(NSInteger) code message:(NSString *)message; {
    self = [super init];
    if (self) {
        self.code = code;
        self.message = message;
    }
    return self;
}
@end
