//
//  main.m
//  alloc_test
//
//  Created by zx on 2021/6/7.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ZXPerson.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>

/**
 结构体1
 */
struct ZXStruct1{
    double p1;
    char   p2;
    int    p3;
    short  p4;
    
}zx_t1;

/**
 结构体2
 */
struct ZXStruct2{
    double p1;
    int    p3;
    char   p2;
    short  p4;
}zx_t2;

/**
 结构体3
 */
struct ZXStruct3{
    int    p1;                //[0 - 3]
    struct ZXStruct1 zx_t1;   //24 [8 - 32]
}zx_t3;

int main(int argc, char * argv[]) {
    
    
    
//    NSLog(@"结构体 ZXStruct1 占用内存大小： %zd",sizeof(zx_t1));
//    NSLog(@"结构体 ZXStruct2 占用内存大小： %zd",sizeof(zx_t2));
//    NSLog(@"结构体 ZXStruct3 占用内存大小： %zd",sizeof(zx_t3));
    
    
    
    
    
    
    

    ZXPerson *zxp = [ZXPerson alloc];
    zxp.zxName      = @"zhaoxin";
    zxp.zxAge       = 30;
    zxp.zxSex       = 1;
    zxp.zxHieght    = 180.0;
    zxp.zxNikeName  = @"Tommy";

    NSLog(@"ZXPerson 实例对象大小： %zd",class_getInstanceSize(ZXPerson.class));
    NSLog(@"ZXPerson 占用内存大小： %zd",sizeof(zxp));
    NSLog(@"ZXPerson 实例对象大小： %zd",malloc_size((__bridge const void *)(zxp)));

    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
