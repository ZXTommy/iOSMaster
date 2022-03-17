//
//  ZXPerson.h
//  alloc_test
//
//  Created by zx on 2021/6/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface ZXPerson : NSObject
{
    NSString *nikeName;
}
@property (nonatomic ,copy)  NSString *zxName;

+ (void)eat;
- (void)drink;
- (void)drink2;
- (void)drink3;
- (void)drink4;
- (void)drink5;

@end

NS_ASSUME_NONNULL_END
