//
//  main.m
//  property_test
//
//  Created by zx on 2021/10/9.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
/**
  * 将ZXEngine、ZXCar 声明在main中是为了使用xcrun命名将main文件编译成c++代码。
 */
@interface ZXEngine : NSObject

@end

@interface ZXCar : NSObject
{
    NSString    *carName;
    ZXEngine    *carEngine;
}
@property (nonatomic,strong) NSString *carHeight;
@property (nonatomic,copy) NSString *carWidth;

/**
    *类方法的存储引出设计元类的原因
 */

+(void)fire;
-(void)fire;

@end

@implementation ZXCar


@end

@implementation ZXEngine


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        ZXCar *car = [ZXCar alloc];
        car.carWidth = @"3000mm";
        NSLog(@"Hello, World!");
    }
    return 0;
}
