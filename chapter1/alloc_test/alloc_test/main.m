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


int main(int argc, char * argv[]) {
    
    
    
    


    ZXPerson *zxp = [ZXPerson alloc];
    zxp.zxName      = @"zhaoxin";
    zxp.zxAge       = 30;
    zxp.zxSex       = 1;
    zxp.zxHieght    = 180.0;
    zxp.zxNikeName  = @"Tommy";


    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
