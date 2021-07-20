//
//  ZXPerson.h
//  alloc_test
//
//  Created by zx on 2021/6/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface ZXPerson : NSObject

@property (nonatomic ,copy)  NSString *zxName;
@property (nonatomic ,assign)int       zxAge;
@property (nonatomic ,assign)char      zxSex;
@property (nonatomic ,assign)double    zxHieght;

@end

NS_ASSUME_NONNULL_END
