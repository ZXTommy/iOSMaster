//
//  ZXHuman.h
//  class_isa
//
//  Created by zx on 2021/8/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXHuman : NSObject
{
    NSString *super_nikeName;
}
@property (nonatomic ,copy)  NSString *super_zxName;

+ (void)super_eat;
- (void)super_drink;

@end

NS_ASSUME_NONNULL_END
