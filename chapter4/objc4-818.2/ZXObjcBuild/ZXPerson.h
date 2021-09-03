//
//  ZXPerson.h
//  alloc_test
//
//  Created by zx on 2021/6/10.
//

#import <Foundation/Foundation.h>
#import "ZXHuman.h"

NS_ASSUME_NONNULL_BEGIN


@interface ZXPerson :ZXHuman
{
    NSString *nikeName;
}
@property (nonatomic ,copy)  NSString *zxName;

+ (void)eat;
- (void)drink;

@end

NS_ASSUME_NONNULL_END
