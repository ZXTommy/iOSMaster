//
//  ZXPerson.h
//  isa_test
//
//  Created by zx on 2021/7/8.
//

#import <Foundation/Foundation.h>
#import "ZXHuman.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZXPerson : ZXHuman //NSObject
{
    NSString *name;
}
@property (nonatomic,strong) NSString *nikeName;

-(void)eat;
-(void)drink;

@end

NS_ASSUME_NONNULL_END
