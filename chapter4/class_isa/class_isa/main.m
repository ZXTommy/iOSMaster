//
//  main.m
//  class_isa
//
//  Created by zx on 2021/8/4.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ZXPerson.h"

int main(int argc, char * argv[]) {
    
    
    ZXPerson *zxp = [[ZXPerson alloc]init];
    
    Class c1 = zxp.class;
    Class c2 = [ZXPerson class];
    
    NSLog(@"%p   ,  %p",c1,c2);
    
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
