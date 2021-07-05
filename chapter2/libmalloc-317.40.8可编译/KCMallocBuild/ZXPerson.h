//
//  ZXPerson.h
//  KCMallocBuild
//
//  Created by zx on 2021/7/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXPerson : NSObject

//隐藏 属性 Isa                                      //8
@property (nonatomic ,assign)double    zxHieght;    //8
@property (nonatomic ,copy)  NSString *zxName;      //8
@property (nonatomic ,assign)int       zxAge;       //4
@property (nonatomic ,assign)char      zxSex;       //1
@property (nonatomic ,copy)NSString   *zxNikeName;  //8

@end

NS_ASSUME_NONNULL_END
