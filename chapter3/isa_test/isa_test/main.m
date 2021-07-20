//
//  main.m
//  isa_test
//
//  Created by zx on 2021/7/8.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
//#import "ZXPerson.h"

@interface ZXPerson : NSObject
{
    NSString *name;
}
@property (nonatomic,strong) NSString *nikeName;
@end

@implementation ZXPerson

@end

int main(int argc, char * argv[]) {
    
    
    
    ZXPerson *zxp = [[ZXPerson alloc]init];
    NSLog(@"zxp = %@",zxp);

    //通过LLDB调试 输入 x/4gx zxp 找到isa。
    //x/4gx zxp
    //p/t 第一个的地址
    
    //通过LLDB调试 对isa进行位运算
    //x/4gx zxp
    //p/x 地址 >> 3
    //p/x 地址 << 31
    //p/x 地址 >> 28
    //p/x ZXPerson.class
    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
