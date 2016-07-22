//
//  AppInfoModel.h
//  PPHelperHook
//
//  Created by leelinux on 16/7/21.
//  strongright © 2016年 leelinux. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppInfoModel : NSObject

@property(retain, nonatomic) NSString *updateDate;

@property(retain, nonatomic) NSString *publishDate;

@property unsigned int verextid;

@property unsigned char have_sinf;

@property unsigned int ver_id;

@property(retain, nonatomic) NSString *hdScreenUrl;

@property(retain, nonatomic) NSString *phScreenUrl;

@property(retain, nonatomic) NSString *verDescription; 

@property(retain, nonatomic) NSString *descriptions;

@property unsigned int updateTime;

@property unsigned int inputTime;

@property unsigned int price;

@property unsigned int downCount;

@property unsigned int reviewCount;

@property unsigned char starts;

@property(retain, nonatomic) NSString *language;

@property(retain, nonatomic) NSString *requirements;

@property(retain, nonatomic) NSString *seller;

@property(retain, nonatomic) NSString *downUrl;

@property(retain, nonatomic) NSString *iconUrl;

@property(retain, nonatomic) NSString *appSize;

@property unsigned int deviceFamily;

@property unsigned char resType;

@property(retain, nonatomic) NSString *catName;

@property unsigned int catId;

@property(retain, nonatomic) NSString *version;

@property(retain, nonatomic) NSString *name;

@property(retain, nonatomic) NSString *bundleId;

@property unsigned int itemId;

@property unsigned int appId; 

@end
