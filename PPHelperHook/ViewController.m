//
//  ViewController.m
//  PPHelperHook
//
//  Created by leelinux on 16/7/21.
//  Copyright © 2016年 leelinux. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

}

- (IBAction)postButtonAction:(NSButtonCell *)sender {

    [[ApiClient sharedClient] postWithPageIndex:1 completion:^(id obj, Error *error) {

    }];
    
    
}

- (void)setRepresentedObject:(id)representedObject {

    [super setRepresentedObject:representedObject];

    

}



@end
