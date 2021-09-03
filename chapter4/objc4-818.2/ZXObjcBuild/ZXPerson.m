//
//  ZXPerson.m
//  alloc_test
//
//  Created by zx on 2021/6/10.
//

#import "ZXPerson.h"

@implementation ZXPerson

- (instancetype)init{
    if (self = [super init]) {
        nikeName = @"Tommy";
        self.zxName = @"zxName";
//        self.zxAge= 30;
//        self.zxSex = 1;
//        self.zxHeight = 180.0;
        [ZXPerson eat];
        [self drink];
    }
    return self;
}

+ (void)eat{
    NSLog(@"eat");
}
- (void)drink{
    NSLog(@"drink");
}

@end
