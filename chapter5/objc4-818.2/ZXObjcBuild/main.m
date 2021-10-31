//
//  main.m
//  ZXObjcBuild
//
//  Created by zx on 2021/6/11.
//

#import <Foundation/Foundation.h>
#import "ZXPerson.h"
#import "ZXHuman.h"
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

        
//        ZXPerson *zxp = [[ZXPerson alloc]init];
//        Class MateClass_ZXPerson = object_getClass(ZXPerson.class);
//        NSLog(@"ZXPerson的元类 = %p",MateClass_ZXPerson);
//        zxp.zxName=@"zhaoxin";
//        [zxp drink];
//        NSLog(@"ZXPerson 的大小是： %d",class_getInstanceSize(ZXPerson.class));
//        NSLog(@"@p",zxp);
//
////      测试类中FirstSubclass字段
//       ZXHuman *zxh = [[ZXHuman alloc]init];
//       NSLog(@"Hello, World!");
        
        
        ZXCar *car = [[ZXCar alloc]init];
        [car setWidth:@"2800mm"];
        [car setHeight:@"5000mm"];
    }
    return 0;
}
