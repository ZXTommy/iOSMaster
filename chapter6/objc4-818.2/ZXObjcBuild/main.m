//
//  main.m
//  ZXObjcBuild
//
//  Created by zx on 2021/6/11.
//

#import <Foundation/Foundation.h>
#import "ZXPerson.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Class zxClass = [ZXPerson class];
        NSLog(@"%@",zxClass);

    }
    return 0;
}
