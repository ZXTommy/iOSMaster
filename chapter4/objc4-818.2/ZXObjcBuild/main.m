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
        // insert code here...

        ZXPerson *zxp = [[ZXPerson alloc]init];
        Class MateClass_ZXPerson = object_getClass(ZXPerson.class);
        NSLog(@"ZXPerson的元类 = %p",MateClass_ZXPerson);
//        zxp.zxName=@"zhaoxin";
//        zxp.zxAge= 30;
//        zxp.zxSex = 1;
//        zxp.zxHieght = 180.0;
//        [zxp eat];
//        [zxp drink];
//
//        NSLog(@"ZXPerson 的大小是： %d",class_getInstanceSize(ZXPerson.class));
//
//        NSLog(@"@p",zxp);
        
        ZXHuman *zxh = [[ZXHuman alloc]init];
        

        NSLog(@"Hello, World!");
        
    }
    return 0;
}
