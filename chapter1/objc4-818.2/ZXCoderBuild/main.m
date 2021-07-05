//
//  main.m
//  ZXCoderBuild
//
//  Created by zx on 2021/6/28.
//

#import <Foundation/Foundation.h>
#import "ZXCoder.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        ZXCoder *zxc = [ZXCoder alloc];
        NSLog(@"ZXPerson 的大小是： %zu",class_getInstanceSize(ZXCoder.class));
    }
    return 0;
}
